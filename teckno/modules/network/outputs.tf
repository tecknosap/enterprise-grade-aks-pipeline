# ===============================
# Outputs for Subnet IDs
# ===============================

# The ID of the AKS subnet
output "aks_subnet_id" {
  value = azurerm_subnet.aks_subnet.id
}

# The ID of the Application Gateway subnet
output "appgw_subnet_id" {
  value = azurerm_subnet.appgw_subnet.id
}
