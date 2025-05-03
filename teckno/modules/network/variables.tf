variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "teckno-vnet"
}

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
