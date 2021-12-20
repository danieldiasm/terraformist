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

variable "alias" {
  description = "Alias name to KMS key"
  type = string
}

# Note this variable has default value, so it won't be required
variable "description" {
  description = "Description record to KMW key"
  type = string
  default = "Default description"
}

variable deletion_window_in_days {
    description = "Deletion period of keys in days"
    type = number
    default = 10
}