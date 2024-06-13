

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  
}

resource "aws_lightsail_instance" "custom" {
  name              = "jalloh"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Created by Jalloh</h1>' | sudo tee /var/www/html/index.html"
key_pair_name = "week2" 
tags = {
  Team = "DevOps"
  env = "dev"
  created_by = "terraform"

}
}

output "my-public-ip" {
  value = aws_lightsail_instance.custom.public_ip_address
  
}

output "my_username" {
  value = aws_lightsail_instance.custom.username
  
}

output "my_key" {
  value = aws_lightsail_instance.custom.key_pair_name
  
}

