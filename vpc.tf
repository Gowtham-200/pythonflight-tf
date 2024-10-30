#create vpc
resource "aws_vpc" "Gowtham-VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "Gowtham-VPC"
  }
}

