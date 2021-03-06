terraform {
  required_version = ">= 1.0.0"

  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = ">= 3.15"
      }
  }
}

provider "aws" {
  region = var.provider_region
}