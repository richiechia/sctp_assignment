# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "richieterraform-vpc"
  }
}

# Create internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "richieterraform-igw"
  }
}

# Create Public subnet
module "public_subnet" {
  source = "./modules/subnet"

  aws_vpc_id = aws_vpc.my_vpc.id
  for_each = local.public_subnet_values

  cidr_block_range = each.value.cidr_block_range
  availability_zone_value = each.value.availability_zone_value
  subnet_name = "richieterraform-${each.key}"
}

# Create Private subnet
module "private_subnet" {
  source = "./modules/subnet"

  aws_vpc_id = aws_vpc.my_vpc.id
  for_each = local.private_subnet_values

  cidr_block_range = each.value.cidr_block_range
  availability_zone_value = each.value.availability_zone_value
  subnet_name = "richieterraform-${each.key}"
}



