output "ec2_public_ip_1" {
   description = "Public IP of the EC2 instance"
   value = aws_instance.public_instance_1.public_ip
}

output "ec2_public_ip_2" {
   description = "Public IP of the EC2 instance"
   value = aws_instance.public_instance_2.public_ip
}

output "ec2_private_state_1" {
   description = "Private IP of the EC2 instance"
   value = aws_instance.private_instance_1.instance_state
  
}