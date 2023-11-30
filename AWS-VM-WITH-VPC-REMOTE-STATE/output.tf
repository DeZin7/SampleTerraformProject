output "vm_ip" {
  description = "VM IP created on AWS"
  value       = aws_instance.vm.public_ip
}