output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}
output "security_group_id" {
  description = "Security group ID for EC2"
  value       = aws_security_group.ec2_sg.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}
