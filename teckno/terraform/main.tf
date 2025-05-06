# ===============================
# Terraform Providers
# ===============================
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

# ===============================
# Azure Provider Configuration
# ===============================
provider "azurerm" {
  features {}
}

# ===============================
# Resource Group
# ===============================
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# ===============================
# Network Module
# ===============================
module "network" {
  source                 = "./modules/network"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  address_space          = var.address_space
  aks_address_prefixes   = var.aks_address_prefixes
  appgw_address_prefixes = var.appgw_address_prefixes

}

# ===============================
# Application Gateway Module
# ===============================
module "app_gateway" {
  source              = "./modules/application_gateway"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  appgw_subnet_id     = module.network.appgw_subnet_id
}

# ===============================
# Azure Kubernetes Service (AKS) Module
# ===============================
module "aks" {
  source              = "./modules/kubernetes_cluster"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  aks_subnet_id       = module.network.aks_subnet_id
  appgw_id            = module.app_gateway.appgw_id
}

# ===============================
# Azure Container Registry (ACR) Module
# ===============================
module "acr" {
  source              = "./modules/container_registry"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

# ===============================
# DNS Module
# ===============================
module "dns" {
  source              = "./modules/dns"
  resource_group_name = azurerm_resource_group.rg.name
  appgw_public_ip     = module.app_gateway.appgw_public_ip
}

# ===============================
# Role Assignment Module
# ===============================
module "role_assignment" {
  source           = "./modules/role_assignment"
  aks_principal_id = module.aks.aks_principal_id
  appgw_id         = module.app_gateway.appgw_id
  acr_id           = module.acr.acr_id
}

# ===============================
# Log Analytics Workspace Module
# ===============================
module "log_analytics_workspace" {
  source              = "./modules/monitoring"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  acr_id              = module.acr.acr_id
  aks_cluster_id      = module.aks.aks_id
}
