variable "resource_group_name" {
  description = "The name of the resource group containing AKS and ACR"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources are deployed"
  type        = string
}


variable "log_analytics_workspace_name" {
  description = "The ID of the Log Analytics workspace for diagnostics"
  type        = string
  default = "teckno-law"
}


variable "aks_cluster_id" {
  description = "The resource ID of the AKS cluster"
  type        = string
}

# Log Analytics SKU
variable "sku" {
  description = "Log analytics workspace SKU"
  type        = string
  default     = "PerGB2018"
}


variable "acr_id" {
  description = "The resource ID of the Azure Container Registry"
  type        = string
}

# Optional naming variables for diagnostic settings
variable "diagnostic_setting_name_aks" {
  description = "Name for the AKS diagnostic setting"
  type        = string
  default     = "teckno-aks-diagnostics"
}

variable "diagnostic_setting_name_acr" {
  description = "Name for the ACR diagnostic setting"
  type        = string
  default     = "teckno-acr-diagnostics"
}
