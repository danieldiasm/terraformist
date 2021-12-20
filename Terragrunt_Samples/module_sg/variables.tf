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

variable "security_group_name" {
  description = "Name of Security Group"
  type = string
}

variable "security_group_description" {
  description = "Description of Security Group"
  type = string
  default = "Default description of security group"
}

variable "vpc_id" {
  description = "ID of VPC for Security Group"
  type = string
}

variable "security_group_rules" {
  description = "Map of rules for a Security Group"
  type = map
  default = {}
}