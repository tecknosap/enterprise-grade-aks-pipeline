# ===============================
# Terraform Backend Configuration
# ===============================
terraform {
  backend "azurerm" {
    resource_group_name  = "az-03-rg"
    storage_account_name = "stro90......."
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
