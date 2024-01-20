# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "******"
  secret_key = "******"
}

# resource "aws_instance" "my-first-tf-server" {
#   ami           = "ami-06aa3f7caf3a30282"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "test-123"
#   }

# }
resource "aws_subnet" "main" {
  vpc_id = aws_vpc.first-vpc_id.id

  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}

resource "aws_vpc" "first-vpc_id" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}


