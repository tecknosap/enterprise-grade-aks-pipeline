resource "random_string" "acr_suffix" {
  length  = 4
  special = false
  upper   = false
}

resource "azurerm_container_registry" "acr" {
  name                = "tecknoacr"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Basic"
  admin_enabled       = false
}