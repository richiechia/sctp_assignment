# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${local.name_of_vpc}-vpc"
  }
}

# Create internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "${local.name_of_vpc}-igw"
  }
}

# Create Public subnet and nat gateway
module "public_subnet" {
  source = "./modules/subnet/public"

  aws_vpc_id = aws_vpc.my_vpc.id
  for_each = local.public_subnet_values

  cidr_block_range = each.value.cidr_block_range
  availability_zone_value = each.value.availability_zone_value

  subnet_name = "${local.name_of_vpc}-${each.key}"
  nat_gw_name = "${local.name_of_vpc}-nat-gw-${each.key}"
  my_eip_name = "${local.name_of_vpc}-eip-${each.key}"
}

# Create Private subnet
module "private_subnet" {
  source = "./modules/subnet/private"

  aws_vpc_id = aws_vpc.my_vpc.id
  for_each = local.private_subnet_values

  cidr_block_range = each.value.cidr_block_range
  availability_zone_value = each.value.availability_zone_value
  subnet_name = "${local.name_of_vpc}-${each.key}"
}

resource "aws_route_table" "main" {
  vpc_id = aws_vpc.my_vpc.id

  for_each = local.route_table_values
  

  tags = {
    Name = "${local.name_of_vpc}-${each.key}"
  }
}


# resource "aws_nat_gateway" "public_nat" {
#   allocation_id = aws_nat_gateway.public_nat.id
#   subnet_id = module.public_subnet["public-1a"].id
# }