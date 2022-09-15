resource "aws_eip" "lb" {
  vpc      = true
}


resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.pub1.id
  connectivity_type = "public"

  tags = {
    Name = "NAT"
  }

  depends_on = [aws_internet_gateway.gateway]
}