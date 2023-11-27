locals {

  name_of_vpc = "richieterraform"

  public_subnet_values = {
    "public-1a" = { cidr_block_range = "10.0.1.0/24", availability_zone_value = "ap-southeast-1a" },
    "public-1b" = { cidr_block_range = "10.0.2.0/24",  availability_zone_value = "ap-southeast-1b" },
    "public-1c" = { cidr_block_range = "10.0.3.0/24",  availability_zone_value = "ap-southeast-1c" },
  }

  private_subnet_values = {
    "private-1a" = { cidr_block_range = "10.0.4.0/24",  availability_zone_value = "ap-southeast-1a" },
    "private-1b" = { cidr_block_range = "10.0.5.0/24",  availability_zone_value = "ap-southeast-1b" },
    "private-1c" = { cidr_block_range = "10.0.6.0/24",  availability_zone_value = "ap-southeast-1c" },
    "private-db-1a" = { cidr_block_range = "10.0.7.0/24",  availability_zone_value = "ap-southeast-1a" },
    "private-db-1b" = { cidr_block_range = "10.0.8.0/24",  availability_zone_value = "ap-southeast-1b" },
    "private-db-1c" = { cidr_block_range = "10.0.9.0/24",  availability_zone_value = "ap-southeast-1c" },
  }

  route_table_values = {
    "public-rt" = { cidr_block_range = "0.0.0.0/0" },
    "private-rt-1a" = { cidr_block_range = "10.0.0.0/16" },
    "private-rt-1b" = { cidr_block_range = "10.0.0.0/16" },
    "private-rt-1c" = { cidr_block_range = "0.0.0.0/16" },
    "private-rt-db" = { cidr_block_range = "0.0.0.0/16"}
  }

}