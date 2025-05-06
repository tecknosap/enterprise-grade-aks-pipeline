# ===============================
# Output the Application Gateway resource ID
# ===============================
output "appgw_id" {
  value = azurerm_application_gateway.appgw.id
}

# ===============================
# Output the public IP address of the Application Gateway
# ===============================
output "appgw_public_ip" {
  value = azurerm_public_ip.appgw_pip.ip_address
}
