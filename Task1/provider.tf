provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "monty-terraform-task"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks" # Optional for state locking
    encrypt        = true
  }
}