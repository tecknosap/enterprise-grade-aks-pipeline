# Inside modules/role_assignment/main.tf
resource "azurerm_role_assignment" "aks_contributor_appgw" {
  principal_id         = var.aks_principal_id
  role_definition_name = "Contributor"
  scope                = var.appgw_id
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id         = var.aks_principal_id
  role_definition_name = "AcrPull"
  scope                = var.acr_id
}
