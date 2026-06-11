output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = { for k, v in aws_subnet.public : k => v.id }
}

output "private_subnet_ids" {
  value = { for k, v in aws_subnet.private : k => v.id }
}

output "bastion_sg_id" {
  value = aws_security_group.bastion.id
}

output "config" {
  value = {
    prefix     = local.name_prefix
    cidrs      = local.public_cidrs
    versioning = local.env_config[var.environment].versioning
  }
}
