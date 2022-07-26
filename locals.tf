locals {
  resource_group_id = var.existing_resource_group != "" ? data.ibm_resource_group.group.0.id : ibm_resource_group.group.0.id
  ssh_key_ids       = var.existing_ssh_key != "" ? [data.ibm_is_ssh_key.regional.0.id, ibm_is_ssh_key.generated_key.id] : [ibm_is_ssh_key.generated_key.id]
  project_tags      = concat(var.tags, ["region:${var.region}", "project:${var.prefix}"])
}