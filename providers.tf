terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }
  backend "s3" {
    key    = "terraform"
    bucket = "mytestingbuck12"
    region = "us-east-1"

  }
}

provider "aws" {
  region  = var.region
  profile = "default"
}