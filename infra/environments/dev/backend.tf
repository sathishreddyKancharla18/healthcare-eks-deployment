# This resource creates an AWS S3 bucket with specified configuration.
terraform {
  backend "s3" {
    bucket         = "healthcare-eks-terraform-state-825765405000"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "healthcare-eks-terraform-locks"
    encrypt        = true
  }
}