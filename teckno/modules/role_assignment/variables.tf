
# Inside modules/role_assignment/variables.tf
variable "aks_principal_id" {
  description = "AKS Principal ID"
}

variable "appgw_id" {
  description = "App Gateway ID"
}

variable "acr_id" {
  description = "Azure Container Registry ID"
}
