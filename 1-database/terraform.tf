terraform {
  backend "s3" {
    #BUCKET tiene que cambier
    bucket = "teraform-backend-sandbox-107"
    key    = "sankdbox8/database/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "" 
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}