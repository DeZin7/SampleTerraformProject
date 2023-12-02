terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }

  backend "s3" {
    bucket = "dezin7-bucket"
    key    = "aws-vm-local-modules/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      owner      = "dezin7"
      managed-by = "terraform"
    }
  }
}

module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = var.environment
}