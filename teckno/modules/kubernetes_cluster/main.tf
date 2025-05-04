# ===============================
# Kubernetes Cluster Resource
# ===============================

resource "azurerm_kubernetes_cluster" "aks" {
  # General Kubernetes Cluster Configuration
  name                = "teckno-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "teckno-aks"

  # Default Node Pool Configuration
  default_node_pool {
    name           = "default"
    node_count     = 2
    vm_size        = "Standard_DS2_v2"
    vnet_subnet_id = var.aks_subnet_id
  }

  # Managed Identity for the Kubernetes Cluster
  identity {
    type = "SystemAssigned"
  }

  # Network Profile for Kubernetes Cluster
  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
    service_cidr      = var.service_cidr
    dns_service_ip    = var.dns_service_ip
  }

  # Ingress Configuration Using Application Gateway
  ingress_application_gateway {
    gateway_id = var.appgw_id
  }
}
