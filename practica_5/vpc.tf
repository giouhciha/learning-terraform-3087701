resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "VPC_VIRGINIA"
  }
}

resource "aws_subnet" "subnet_publica" {
  vpc_id                  = aws_vpc.vpc_ohio.id
  cidr_block              = var.subnets["ohio"]
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "subnet_private" {
  vpc_id            = aws_vpc.vpc_ohio.id
  cidr_block        = var.subnets["ohio"]
  tags = {
    Name = "Private Subnet"
  }
}