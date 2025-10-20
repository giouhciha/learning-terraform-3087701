#resource "aws_instance" "public_instance" {
#  ami           = "ami-0341d95f75f311023"
#  instance_type = "t3.micro"
#  subnet_id = aws_subnet.subnet_publica.id
#
#  tags = {
#    Name = "Publica Instance"
#  }
#}

#resource "aws_instance" "private_instance" {
#  ami           = "ami-0341d95f75f311023"
#  instance_type = "t3.micro"
#  subnet_id = aws_subnet.subnet_private.id
#
#  iam_instance_profile = aws_iam_instance_profile.ssm_instance_profile.name
#
#  tags = {
#    Name = "backend Instance"
#  }
#}