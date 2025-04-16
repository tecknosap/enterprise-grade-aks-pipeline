resource "azurerm_kubernetes_cluster" "aks" {
  name                = "teckno-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "teckno-aks"

  default_node_pool {
    name           = "default"
    node_count     = 2
    vm_size        = "Standard_DS2_v2"
    vnet_subnet_id = var.aks_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
    service_cidr      = "10.0.3.0/24"
    dns_service_ip    = "10.0.3.10"
  }

  ingress_application_gateway {
    gateway_id = var.appgw_id
  }
}