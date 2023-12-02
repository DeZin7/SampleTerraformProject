variable "cidr_vpc" {
  description = "VPC cidr created at AWS"
  type        = string
}

variable "cidr_subnet" {
  description = "Subnet cidr created at AWS"
  type        = string
}

variable "environment" {
  description = "Resources environemt at AWS"
  type        = string
}