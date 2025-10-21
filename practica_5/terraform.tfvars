virginia_cidr  = "10.10.0.0/16"
ohio_cidr = "10.20.0.0/16"

subnets = {
  public_virginia  = "10.10.0.0/24"
  private_virginia = "10.10.1.0/24"

  public_ohio      = "10.20.0.0/24"
  private_ohio     = "10.20.1.0/24"
}

amis = {
  virnigia = "ami-0341d95f75f311023"
  ohio = "ami-0199d4b5b8b4fde0e"
}

tags = {
  "env" = "dev"
  "owner" = "igortega"
  "IAC" = "Terraform"
}

sg_ingress_cidr = "0.0.0.0/0"