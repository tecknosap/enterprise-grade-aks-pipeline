# ===============================
# Generate a random suffix for uniqueness (not used in the ACR name currently)
# ===============================
resource "random_string" "acr_suffix" {
  length  = 4
  special = false
  upper   = false
}

# ===============================
# Create an Azure Container Registry (ACR) in the specified resource group and region
# ===============================
resource "azurerm_container_registry" "acr" {
  name                = "tecknoacr"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Basic"
  admin_enabled       = false
}
