terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}

}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Network
module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

# App Gateway
module "app_gateway" {
  source              = "./modules/application_gateway"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  appgw_subnet_id     = module.network.appgw_subnet_id
}

# AKS
module "aks" {
  source              = "./modules/kubernetes_cluster"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  aks_subnet_id       = module.network.aks_subnet_id
  appgw_id            = module.app_gateway.appgw_id
}

# ACR
module "acr" {
  source              = "./modules/container_registry"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

# DNS
module "dns" {
  source              = "./modules/dns"
  resource_group_name = azurerm_resource_group.rg.name
  appgw_public_ip     = module.app_gateway.appgw_public_ip
}

module "role_assignment" {
  source           = "./modules/role_assignment"
  aks_principal_id = module.aks.aks_principal_id
  appgw_id         = module.app_gateway.appgw_id
  acr_id           = module.acr.acr_id
}


module "log_analytics_workspace" {
  source = "./modules/monitoring"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  acr_id = module.acr.acr_id
  aks_cluster_id = module.aks.aks_id  
}
