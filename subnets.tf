#creating public subnet web2
resource "aws_subnet" "web1-public-subnet" {
  vpc_id                  = aws_vpc.Gowtham-VPC.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = "web2-public-subnet"
  }
}

#creating application-1 subnet
resource "aws_subnet" "app1-public-subnet" {
  vpc_id                  = aws_vpc.Gowtham-VPC.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    Name = "app1-public-subnet"
  }
}
