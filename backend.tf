# Backend configuration to store the Terraform state in an S3 bucket

terraform {
  backend "s3" {
    # Name of the S3 bucket where the Terraform state will be stored
    bucket  = "simple-app-java-state"

    # Name of the file in the bucket that will contain the Terraform state
    key     = "terraform.tfstate"

    # AWS region where the S3 bucket is located
    region  = "us-east-1"

    # Enable Terraform state encryption
    encrypt = true
  }
}
