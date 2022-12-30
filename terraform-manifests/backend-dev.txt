terraform {
  backend "s3" {
    encrypt = true    
    bucket = "backend-dev-20231611"
    dynamodb_table = "terraform-state-lock-dynamo-1611"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}