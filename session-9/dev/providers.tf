provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = "~> 0.15.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.45.0"
    }
  }
}
