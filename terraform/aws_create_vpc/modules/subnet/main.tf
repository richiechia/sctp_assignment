resource "aws_subnet" "main" {
  vpc_id = var.aws_vpc_id
  cidr_block = var.cidr_block_range
  availability_zone = var.availability_zone_value

  tags = {
    Name = var.subnet_name
  }
}