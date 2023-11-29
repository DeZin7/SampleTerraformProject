variable "location" {
  description = "Region wherer resources are created in Azure."
  type        = string
  default     = "West US"
}

variable "account_tier" {
  description = "Storage Account tier in Azure."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage Account data replication type."
  type        = string
  default     = "LRS"
}