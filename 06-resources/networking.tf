resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name      = "06-resources"
    ManagedBy = "Terraform"
    Project   = "06-resources"
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name      = "06-resources-public"
    ManagedBy = "Terraform"
    Project   = "06-resources"
  }
}