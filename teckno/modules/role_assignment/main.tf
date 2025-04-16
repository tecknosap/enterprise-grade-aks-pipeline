
resource "azurerm_role_assignment" "aks_contributor_appgw" {
    principal_id = var.principal_id
    role_definition_name = var.role_contributor
    scope = var.scope 
}

resource "azurerm_role_assignment" "aks_acr_pull" {
    principal_id = var.principal_id
    role_definition_name  = var.role_acr_pull
    scope = var.scope
  
}

# # Grant AKS permissions to manage App Gateway
# resource "azurerm_role_assignment" "aks_contributor_appgw" {
#   principal_id         = module.aks.aks_principal_id
#   role_definition_name = "Contributor"
#   scope                = module.app_gateway.appgw_id
# }

# # Grant AKS permissions to pull from ACR
# resource "azurerm_role_assignment" "aks_acr_pull" {
#   principal_id         = module.aks.aks_principal_id
#   role_definition_name = "AcrPull"
#   scope                = module.acr.acr_id
# }