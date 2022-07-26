data "ibm_resource_group" "group" {
  count = var.existing_resource_group != "" ? 1 : 0
  name  = var.existing_resource_group
}

data "ibm_is_ssh_key" "regional" {
  count = var.existing_ssh_key != "" ? 1 : 0
  name  = var.existing_ssh_key
}

data "ibm_resource_instance" "cos" {
  count             = var.existing_cos_instance != "" ? 1 : 0
  name              = var.existing_cos_instance
  location          = "global"
  service           = "cloud-object-storage"
  resource_group_id = data.ibm_resource_group.group.0.id
}

data "ibm_is_zones" "mzr" {
  region = var.region
}