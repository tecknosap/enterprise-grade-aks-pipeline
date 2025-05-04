# ===============================
# Resource Group and Location
# ===============================

# The name of the resource group containing AKS and ACR
variable "resource_group_name" {
  description = "The name of the resource group containing AKS and ACR"
  type        = string
}

# The Azure region where the resources are deployed
variable "location" {
  description = "The Azure region where the resources are deployed"
  type        = string
}

# ===============================
# Log Analytics Workspace
# ===============================

# The name of the Log Analytics workspace for diagnostics
variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace for diagnostics"
  type        = string
  default     = "teckno-law"
}

# The Log Analytics SKU
variable "sku" {
  description = "Log analytics workspace SKU"
  type        = string
  default     = "PerGB2018"
}

# ===============================
# Azure Kubernetes Service (AKS)
# ===============================

# The resource ID of the AKS cluster
variable "aks_cluster_id" {
  description = "The resource ID of the AKS cluster"
  type        = string
}

# ===============================
# Azure Container Registry (ACR)
# ===============================

# The resource ID of the Azure Container Registry
variable "acr_id" {
  description = "The resource ID of the Azure Container Registry"
  type        = string
}

# ===============================
# Diagnostic Settings for AKS and ACR
# ===============================

# Name for the AKS diagnostic setting
variable "diagnostic_setting_name_aks" {
  description = "Name for the AKS diagnostic setting"
  type        = string
  default     = "teckno-aks-diagnostics"
}

# Name for the ACR diagnostic setting
variable "diagnostic_setting_name_acr" {
  description = "Name for the ACR diagnostic setting"
  type        = string
  default     = "teckno-acr-diagnostics"
}
