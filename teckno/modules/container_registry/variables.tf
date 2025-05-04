# ===============================
# Name of the resource group where the DNS zone is created
# ===============================
variable "resource_group_name" {
  type = string
}

# ===============================
# Azure region for resource deployment (if needed)
# ===============================
variable "location" {
  type = string
}
