# ===============================
# Azure region and resource group details
# ===============================
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources are deployed"
  type        = string
}

# ===============================
# Application Gateway configuration
# ===============================
variable "appgw_subnet_id" {
  description = "The subnet ID for the Application Gateway"
  type        = string
}

variable "appgw_public_ip_name" {
  description = "The name for the Application Gateway public IP"
  type        = string
  default     = "appgw-public-ip"
}

variable "appgw_name" {
  description = "The name of the Application Gateway"
  type        = string
  default     = "teckno-appgw"
}

variable "appgw_sku_name" {
  description = "The SKU name for the Application Gateway"
  type        = string
  default     = "Standard_v2"
}

variable "appgw_sku_tier" {
  description = "The SKU tier for the Application Gateway"
  type        = string
  default     = "Standard_v2"
}

variable "appgw_capacity" {
  description = "The capacity of the Application Gateway"
  type        = number
  default     = 2
}

variable "appgw_fe_port" {
  description = "The port for the frontend configuration of the Application Gateway"
  type        = number
  default     = 80
}

variable "appgw_http_timeout" {
  description = "The request timeout for backend HTTP settings"
  type        = number
  default     = 20
}

# ===============================
# Frontend and backend settings
# ===============================
variable "frontend_ip_name" {
  description = "The name for the frontend IP configuration"
  type        = string
  default     = "appgw-fe"
}

variable "frontend_port_name" {
  description = "The name for the frontend port"
  type        = string
  default     = "frontendPort"
}

variable "http_listener_name" {
  description = "The name for the HTTP listener"
  type        = string
  default     = "dummy-listener"
}

variable "backend_address_pool_name" {
  description = "The name for the backend address pool"
  type        = string
  default     = "dummy-backend-pool"
}

variable "backend_http_settings_name" {
  description = "The name for the backend HTTP settings"
  type        = string
  default     = "dummy-backend-http-settings"
}

# ===============================
# Request routing and IP configuration
# ===============================
variable "request_routing_rule_name" {
  description = "The name for the request routing rule"
  type        = string
  default     = "dummy-routing-rule"
}

variable "request_routing_priority" {
  description = "The priority for the request routing rule"
  type        = number
  default     = 1
}

variable "appgw_ip_config_name" {
  description = "The name for the Application Gateway IP configuration"
  type        = string
  default     = "appgw-ip-config"
}
