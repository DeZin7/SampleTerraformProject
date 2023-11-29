output "subnet_id" {
  description = "Subnet ID created on AWS"
  value       = aws_subnet.subnet.id
}

output "security_group" {
  description = "Security group ID created on AWS"
  value       = aws_security_group.security_group.id
}