terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0"
    }
  }

}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}
resource "aws_s3_bucket" "backend" {
    
    bucket = "backend-dev"
    acl = "private"
    region = "us-east-1"
}