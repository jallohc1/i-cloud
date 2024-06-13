output "My_username" {
    value = aws_lightsail_instance.custom.username
  
}

output "my_public_ip" {
    value = aws_lightsail_instance.custom.public_ip_address
  
}

output "private_ip" {
    value = aws_lightsail_instance.custom.private_ip_address
  
}

output "my_key" {
    value = aws_lightsail_instance.custom.key_pair_name
  
}