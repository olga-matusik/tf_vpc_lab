resource "aws_route_table" "nat_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "nat_route_table"
  }
}

resource "aws_route_table_association" "association_priv1" {
  subnet_id      = aws_subnet.priv1.id
  route_table_id = aws_route_table.nat_route_table.id
}

resource "aws_route_table_association" "association_priv2" {
  subnet_id      = aws_subnet.priv2.id
  route_table_id = aws_route_table.nat_route_table.id
}

resource "aws_route_table_association" "association_priv3" {
  subnet_id      = aws_subnet.priv3.id
  route_table_id = aws_route_table.nat_route_table.id
}