resource "aws_subnet" "pub1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Pub1"
  }
}

resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Pub2"
  }
}

resource "aws_subnet" "pub3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.3.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "Pub3"
  }
}

resource "aws_subnet" "priv1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.11.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "Priv1"
  }
}

resource "aws_subnet" "priv2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.12.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "Priv2"
  }
}

resource "aws_subnet" "priv3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.13.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "Priv3"
  }
}
