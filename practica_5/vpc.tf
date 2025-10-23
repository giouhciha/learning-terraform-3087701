resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "VPC_Ohio-${local.sufix}"
  }
}

resource "aws_subnet" "subnet_publica" {
  vpc_id                  = aws_vpc.vpc_ohio.id
  cidr_block              = var.subnets["public_ohio"]
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet-${local.sufix}"
  }
}

resource "aws_subnet" "subnet_private" {
  vpc_id            = aws_vpc.vpc_ohio.id
  cidr_block        = var.subnets["private_ohio"]
  tags = {
    Name = "Private Subnet-${local.sufix}"
  }
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_ohio.id

  tags = {
    Name = "igw-vpc-ohio-${local.sufix}"
  }
}

resource "aws_route_table" "public_crt" {
  vpc_id = aws_vpc.vpc_ohio.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public crt-${local.sufix}"
  }
}

resource "aws_route_table_association" "crta_public_subnet" {
  subnet_id      = aws_subnet.subnet_publica.id
  route_table_id = aws_route_table.public_crt.id
}


resource "aws_security_group" "sg_public_instance" {
  name        = "Public Instance SG"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc_ohio.id

  ingress {
    description      = "SSH from Virginia CIDR"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.sg_ingress_cidr]
  } 

  ingress {
    description      = "HTTPm Virginia CIDR"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.sg_ingress_cidr]
  } 

  egress {
    description      = "All outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"] 
    }

  tags = {
    Name = "Public Instance SG-${local.sufix}"
  }
}