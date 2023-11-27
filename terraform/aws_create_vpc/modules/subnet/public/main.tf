resource "aws_subnet" "main" {
  vpc_id = var.aws_vpc_id
  cidr_block = var.cidr_block_range
  availability_zone = var.availability_zone_value

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_eip" "my_eips" {
  tags = {
    Name = var.my_eip_name
  }
}

resource "aws_nat_gateway" "public_nat" {
  subnet_id = aws_subnet.main.id
  allocation_id = aws_eip.my_eips.id

  tags = {
    Name = var.nat_gw_name
  }
}