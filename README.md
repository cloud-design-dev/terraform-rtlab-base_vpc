# terraform-rtlab-base_vpc
Module for base VPC deployments 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | 1.44.0-beta0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ibm"></a> [ibm](#provider\_ibm) | 1.44.0-beta0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [ibm_is_ssh_key.generated_key](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.44.0-beta0/docs/resources/is_ssh_key) | resource |
| [ibm_resource_group.group](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.44.0-beta0/docs/resources/resource_group) | resource |
| [tls_private_key.ssh](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [ibm_is_ssh_key.regional](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.44.0-beta0/docs/data-sources/is_ssh_key) | data source |
| [ibm_is_zones.mzr](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.44.0-beta0/docs/data-sources/is_zones) | data source |
| [ibm_resource_group.group](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.44.0-beta0/docs/data-sources/resource_group) | data source |
| [ibm_resource_instance.cos](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.44.0-beta0/docs/data-sources/resource_instance) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_existing_cos_instance"></a> [existing\_cos\_instance](#input\_existing\_cos\_instance) | The name of an existing Cloud Object Storage instance. If none provided a new one will be created. | `string` | n/a | yes |
| <a name="input_existing_resource_group"></a> [existing\_resource\_group](#input\_existing\_resource\_group) | The name of an existing Resource Group. If none provided a new one will be created. | `string` | n/a | yes |
| <a name="input_existing_ssh_key"></a> [existing\_ssh\_key](#input\_existing\_ssh\_key) | The name of an existing SSH key. If none provided a new one will be created. | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Project prefix for the VPC lab. This will be added to resource names and tags. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where the VPC lab will be deployed. | `string` | `"us-south"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tags for all resources. | `list(string)` | <pre>[<br>  "terraform-module:base_vpc"<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->