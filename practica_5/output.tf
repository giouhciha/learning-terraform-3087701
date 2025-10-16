output "ec2_public_ip" {
   description = "Public IP of the EC2 instance"
   value = aws_instance.public_instance.public_ip
}

output "ec2_private_state" {
   description = "Private IP of the EC2 instance"
   value = aws_instance.private_instance.instance_state
}