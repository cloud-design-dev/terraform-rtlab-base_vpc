module "vpc" {
  source = "terraform-ibm-modules/vpc/ibm//modules/vpc"

  create_vpc                  = var.create_vpc
  vpc_name                    = "${var.name}-vpc"
  resource_group_id           = var.resource_group_id
  classic_access              = false
  default_address_prefix      = var.default_address_prefix
  default_network_acl_name    = "${var.name}-vpc-default-acl"
  default_security_group_name = "${var.name}-vpc-default-security-group"
  default_routing_table_name  = "${var.name}-vpc-default-routing-table"
  vpc_tags                    = var.tags
  locations                   = var.locations
  subnet_name                 = "${var.name}-vpc-subnet"
  number_of_addresses         = "64"
  create_gateway              = true
  public_gateway_name         = "${var.name}-vpc-pubgw"
  gateway_tags                = var.tags
}