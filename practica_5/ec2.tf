#resource "aws_instance" "public_instance" {
#  ami           = "ami-0341d95f75f311023"
#  instance_type = "t3.micro"
#  subnet_id = aws_subnet.subnet_publica.id
#
#  tags = {
#    Name = "Publica Instance"
#  }
#}

resource "aws_instance" "private_instance" {
  ami           = var.amis["us-east-2"]
  instance_type = "t3.micro"
  subnet_id = aws_subnet.subnet_private.id
  key_name = data.aws_key_pair.deployer_key.key_name

  #iam_instance_profile = aws_iam_instance_profile.ssm_instance_profile.name

  tags = {
    Name = "backend Instance"
  }
}