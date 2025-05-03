variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "aks_subnet_id" {
  type = string
}

variable "appgw_id" {
  type = string
}

variable "service_cidr" {
  description = "CIDR block for the Kubernetes service network"
  type        = string
  default     = "10.0.3.0/24"
}

variable "dns_service_ip" {
  description = "IP address for the Kubernetes DNS service"
  type        = string
  default     = "10.0.3.10"
}