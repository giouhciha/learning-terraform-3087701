virginia_cidr  = "10.10.0.0/16"

subnets = [ "10.10.0.0/24", "10.10.1.0/24" ]

amis = {
  us-east-1 = "ami-0341d95f75f311023"
  us-east-2 = "ami-0199d4b5b8b4fde0e"
}

tags = {
  "env" = "dev"
  "owner" = "igortega"
  "IAC" = "Terraform"
}