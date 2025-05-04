# ===============================
# Resource Group Name
# ===============================
variable "resource_group_name" {
  type    = string
  default = "teckno-rg"
}

# ===============================
# Location
# ===============================
variable "location" {
  type    = string
  default = "eastus"
}

# ===============================
# VNet Address Space
# ===============================
variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}

# ===============================
# AKS Subnet Name
# ===============================
variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
  default     = "aks-subnet"
}

# ===============================
# AKS Subnet Address Prefixes
# ===============================
variable "aks_address_prefixes" {
  description = "Address prefixes for the AKS subnet"
  type        = list(string)
}

# ===============================
# Application Gateway Subnet Name
# ===============================
variable "appgw_subnet_name" {
  description = "Name of the Application Gateway subnet"
  type        = string
  default     = "appgw-subnet"
}

# ===============================
# Application Gateway Subnet Address Prefixes
# ===============================
variable "appgw_address_prefixes" {
  description = "Address prefixes for the Application Gateway subnet"
  type        = list(string)
}
