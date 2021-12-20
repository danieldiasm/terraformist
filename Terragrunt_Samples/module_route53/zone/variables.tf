# Global variables

variable "environment" {
  description = "Environment name"
  type = string
}

variable "provider_region" {
  description = "Target region for the infrastructure"
  type = string
}

# Module variables

variable "domain_name" {
  description = "Domain name"
  type = string
}