output security_group_id {
    description = "ID of Security Group"
    value = aws_security_group.this.id
}

output "security_group_name" {
  description = "Name of Security Group"
  value = var.security_group_name
}

output "security_group_vpc_id" {
    description = "VPC ID of the Security Group"
    value = var.vpc_id
}

output "security_group_rules" {
    description = "Rules of Security Group"
    value = var.security_group_rules
}