resource "aws_instance" "public_instance" {
  ami           = var.amis["ohio"]
  instance_type = "t3.micro"
  subnet_id = aws_subnet.subnet_publica.id
  key_name = data.aws_key_pair.deployer_key.key_name

  vpc_security_group_ids = [ aws_security_group.sg_public_instance.id ]

  tags = {
    Name = "Publica Instance"
  }
}

#resource "aws_instance" "private_instance" {
#  ami           = var.amis["ohio"]
#  instance_type = "t3.micro"
#  subnet_id = aws_subnet.subnet_private.id
#  key_name = data.aws_key_pair.deployer_key.key_name

  #iam_instance_profile = aws_iam_instance_profile.ssm_instance_profile.name

#  depends_on = [ aws_subnet.subnet_private ]

#  tags = {
#    Name = "backend Instance"
#  }
#}