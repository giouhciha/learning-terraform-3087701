terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    random = {
      source  = "hashicorp/random"
    }
  } 
}

provider "aws" {
  region  = "us-east-2"
  default_tags {
    tags = var.tags
  }
}