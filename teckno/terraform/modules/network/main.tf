# ===============================
# Virtual Network Configuration
# ===============================

# Create the Azure Virtual Network with the specified address space
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}

# ===============================
# AKS Subnet Configuration
# ===============================

# Create the subnet for Azure Kubernetes Service (AKS)
resource "azurerm_subnet" "aks_subnet" {
  name                 = var.aks_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.aks_address_prefixes
}

# ===============================
# Application Gateway Subnet Configuration
# ===============================

# Create the subnet for the Azure Application Gateway
resource "azurerm_subnet" "appgw_subnet" {
  name                 = var.appgw_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.appgw_address_prefixes
}
