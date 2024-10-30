#Create an Internet Gateway
resource "aws_internet_gateway" "Gowtham-igw" {
  vpc_id = aws_vpc.Gowtham-VPC.id

  tags = {
    Name = "Gowtham-igw"
  }
}
