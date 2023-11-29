output "subnet_id" {
  description = "Subnet ID created on Azure"
  value       = azurerm_subnet.subnet.id
}

output "network_security_group_id" {
  description = "Network Security Group ID created on Azure"
  value       = azurerm_network_security_group.nsg.id
}