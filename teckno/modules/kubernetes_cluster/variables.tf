# ===============================
# Resource Group Name
# ===============================

variable "resource_group_name" {
  type = string
}

# ===============================
# Location
# ===============================

variable "location" {
  type = string
}

# ===============================
# AKS Subnet ID
# ===============================

variable "aks_subnet_id" {
  type = string
}

# ===============================
# Application Gateway ID
# ===============================

variable "appgw_id" {
  type = string
}

# ===============================
# Service CIDR for Kubernetes Network
# ===============================

variable "service_cidr" {
  description = "CIDR block for the Kubernetes service network"
  type        = string
  default     = "10.0.3.0/24"
}

# ===============================
# DNS Service IP for Kubernetes
# ===============================

variable "dns_service_ip" {
  description = "IP address for the Kubernetes DNS service"
  type        = string
  default     = "10.0.3.10"
}
