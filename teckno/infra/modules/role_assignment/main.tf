# ===============================
# Role Assignment for AKS Contributor on App Gateway
# ===============================

resource "azurerm_role_assignment" "aks_contributor_appgw" {
  principal_id         = var.aks_principal_id
  role_definition_name = "Contributor"
  scope                = var.appgw_id
}

# ===============================
# Role Assignment for AKS AcrPull on Azure Container Registry
# ===============================
resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id         = var.aks_principal_id
  role_definition_name = "AcrPull"
  scope                = var.acr_id
}
