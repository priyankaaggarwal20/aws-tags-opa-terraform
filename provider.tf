

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "a502675a-c97f-4ac1-a6a8-cf9f76c5c20b-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
