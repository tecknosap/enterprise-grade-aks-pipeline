variable "principal_id" {
  description = "The principal ID to assign the role to"
  type        = string
}
variable "role_contributor" {
  description = "The role definition name for Contributor"
  type        = string
  default     = "Contributor"
}

variable "role_acr_pull" {
  description = "The role definition name for AcrPull"
  type        = string
  default     = "AcrPull"
}

variable "scope" {
  description = "The scope at which to assign the role"
  type        = string
}
