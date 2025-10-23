echo "Este es un mensaje" > > ~/hello.txt
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
yum update -y