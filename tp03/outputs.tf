output "bastion_public_ip" {
  value = aws_eip.bastion.public_ip
}

output "web_private_ips" {
  value = { for k, v in aws_instance.web : k => v.private_ip }
}

output "vpc_id" {
  value = aws_vpc.main.id
}
