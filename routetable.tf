#Create a Route Table
resource "aws_route_table" "Gowtham-route-table" {
  vpc_id = aws_vpc.Gowtham-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Gowtham-igw.id
  }

  tags = {
    Name = "Gowtham-route-table"
  }
}

# Associate the Route Table with the Subnet
resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.web1-public-subnet.id
  route_table_id = aws_route_table.Gowtham-route-table.id
}

# Associate the Route Table with the Subnet
resource "aws_route_table_association" "rt2" {
  subnet_id      = aws_subnet.app1-public-subnet.id
  route_table_id = aws_route_table.Gowtham-route-table.id
}
