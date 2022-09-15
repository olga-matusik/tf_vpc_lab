resource "aws_route_table" "pub_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }

  tags = {
    Name = "pub_route_table"
  }
}

resource "aws_route_table_association" "association_pub1" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.pub_route_table.id
}

resource "aws_route_table_association" "association_pub2" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.pub_route_table.id
}

resource "aws_route_table_association" "association_pub3" {
  subnet_id      = aws_subnet.pub3.id
  route_table_id = aws_route_table.pub_route_table.id
}
