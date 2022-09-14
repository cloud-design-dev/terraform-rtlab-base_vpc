resource "ibm_resource_group" "group" {
  count = var.existing_resource_group != "" ? 0 : 1
  name  = "${var.prefix}-group"
  tags  = local.project_tags
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "ibm_is_ssh_key" "generated_key" {
  name           = "${var.prefix}-${var.region}-key"
  public_key     = tls_private_key.ssh.public_key_openssh
  resource_group = local.resource_group_id
  tags           = local.project_tags
}

module "vpc" {
  source            = "./modules/vpc"
  name              = var.prefix
  resource_group_id = local.resource_group_id
  locations         = [data.ibm_is_zones.mzr.zones[0], data.ibm_is_zones.mzr.zones[1]]
  tags              = local.project_tags
}
