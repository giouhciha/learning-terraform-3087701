output "ec2_public_ip_instance_1" {
   description = "Public IP of the EC2 instance"
   value = aws_instance.public_instance.public_instance_1.public_ip
}

output "ec2_public_ip_instance_2" {
   description = "Public IP of the EC2 instance"
   value = aws_instance.public_instance.public_instance_2.public_ip
}