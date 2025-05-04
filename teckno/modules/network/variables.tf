# ===============================
# Resource Group Configuration
# ===============================

# The name of the resource group where resources will be created
variable "resource_group_name" {
  type = string
}

# The Azure region where resources will be deployed
variable "location" {
  type = string
}

# ===============================
# Virtual Network Configuration
# ===============================

# The name of the Virtual Network that will be created
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "teckno-vnet"
}

# The address space for the Virtual Network in CIDR format
variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}

# ===============================
# AKS Subnet Configuration
# ===============================

# The name of the subnet used for Azure Kubernetes Service (AKS)
variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
  default     = "aks-subnet"
}

# The address prefixes to be used for the AKS subnet in CIDR format
variable "aks_address_prefixes" {
  description = "Address prefixes for the AKS subnet"
  type        = list(string)
}

# ===============================
# Application Gateway Subnet Configuration
# ===============================

# The name of the subnet used for the Azure Application Gateway
variable "appgw_subnet_name" {
  description = "Name of the Application Gateway subnet"
  type        = string
  default     = "appgw-subnet"
}

# The address prefixes to be used for the Application Gateway subnet in CIDR format
variable "appgw_address_prefixes" {
  description = "Address prefixes for the Application Gateway subnet"
  type        = list(string)
}
