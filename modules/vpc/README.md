<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-ibm-modules/vpc/ibm//modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | List of Prefixes for the vpc | <pre>list(object({<br>    name     = string<br>    location = string<br>    ip_range = string<br>  }))</pre> | `[]` | no |
| <a name="input_classic_access"></a> [classic\_access](#input\_classic\_access) | Classic Access to the VPC | `bool` | `false` | no |
| <a name="input_create_gateway"></a> [create\_gateway](#input\_create\_gateway) | True to create new Gateway | `bool` | `false` | no |
| <a name="input_create_vpc"></a> [create\_vpc](#input\_create\_vpc) | True to create new VPC. False if VPC is already existing and subnets or address prefixies are to be added | `bool` | `true` | no |
| <a name="input_default_address_prefix"></a> [default\_address\_prefix](#input\_default\_address\_prefix) | Default address prefix creation method | `string` | `"auto"` | no |
| <a name="input_default_network_acl_name"></a> [default\_network\_acl\_name](#input\_default\_network\_acl\_name) | Name of the Default ACL | `string` | `null` | no |
| <a name="input_default_routing_table_name"></a> [default\_routing\_table\_name](#input\_default\_routing\_table\_name) | Name of the Default Routing Table | `string` | `null` | no |
| <a name="input_default_security_group_name"></a> [default\_security\_group\_name](#input\_default\_security\_group\_name) | Name of the Default Security Group | `string` | `null` | no |
| <a name="input_floating_ip"></a> [floating\_ip](#input\_floating\_ip) | Floating IP `id`'s or `address`'es that you want to assign to the public gateway | `map` | `{}` | no |
| <a name="input_locations"></a> [locations](#input\_locations) | zones per region | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the vpc | `string` | `null` | no |
| <a name="input_number_of_addresses"></a> [number\_of\_addresses](#input\_number\_of\_addresses) | Number of IPV4 Addresses | `number` | `null` | no |
| <a name="input_public_gateway_name"></a> [public\_gateway\_name](#input\_public\_gateway\_name) | Name of the Public Gateway | `string` | `null` | no |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | ID of resource group. | `string` | `null` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the subnet | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tags for deployed resources | `list(string)` | `[]` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | ID of the Existing VPC to which subnets, gateways are to be attached | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->