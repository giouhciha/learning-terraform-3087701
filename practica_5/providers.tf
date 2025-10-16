terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
}
provider "aws" {
  region = "us-east-2"
  alias  = "ohio"
}