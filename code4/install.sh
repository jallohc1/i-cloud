sudo yum install -y httpd 
sudo systemctl start httpd 
sudo systemctl enable httpd 
echo '<h1>This is my first Terraform Project</h1>' | sudo tee /var/www/html/index.html
sudu useradd u5bt2024
sudo groupadd cloudteam