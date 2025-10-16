resource "aws_instance" "public_instance" {
  ami           = "ami-0341d95f75f311023"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.subnet_publica.id

  tags = {
    Name = "Publica Instance"
  }
}