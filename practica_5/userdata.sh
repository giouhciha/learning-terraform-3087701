#!/bin/bash
echo "Este es un mensaje"  > ~/hello.txt
yum update -y
yum install -y httpd
echo "Hola desde la instancia Apache" > /var/www/html/index.html
systemctl enable httpd
systemctl start httpd