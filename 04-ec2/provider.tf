terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
      backend "s3" {
    bucket = "terraform-vpc-bucket-arun-practice"     
    key    = "terraform-roboshop-ec2"
    region = "us-east-1"
    dynamodb_table = "terraform-vpc-bucket-arundev-online-practice"     
  }
}

provider "aws" {
   region = "us-east-1"

}
