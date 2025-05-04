# ===============================
# Output the Azure Container Registry (ACR) resource ID
# ===============================
output "acr_id" {
  value = azurerm_container_registry.acr.id
}
