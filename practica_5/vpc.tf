resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_VIRGINIA"
    name = "prueba"
    env  = "Dev"
  }
}

resource "aws_subnet" "subnet_publica" {
  vpc_id            = aws_vpc.vpc_virginia.id
  cidr_block        = var.public_subnet
  map_customer_owned_ip_on_launch = true
}

resource "aws_subnet" "subnet_private" {
  vpc_id            = aws_vpc.vpc_virginia.id
  cidr_block        = var.private_subnet
}
