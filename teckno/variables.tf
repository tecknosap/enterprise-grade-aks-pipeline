variable "resource_group_name" {
  type = string
  default = "teckno-rg"
}

variable "location" {
  type = string
  default = "eastus"
}


# vent variables
variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)

}

variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
  default     = "aks-subnet"
}

variable "aks_address_prefixes" {
  description = "Address prefixes for the AKS subnet"
  type        = list(string)

}

variable "appgw_subnet_name" {
  description = "Name of the Application Gateway subnet"
  type        = string
  default     = "appgw-subnet"
}

variable "appgw_address_prefixes" {
  description = "Address prefixes for the Application Gateway subnet"
  type        = list(string)

}


