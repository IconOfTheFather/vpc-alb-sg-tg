terraform {
  backend "s3" {
    bucket = "aws-sucks-but-i-like-terraform"
    region = "us-east-2"
    dynamodb_table = "Terraform-Lock"
    key = "week10/terraform.tfstate"
    encrypt = true
  }
}