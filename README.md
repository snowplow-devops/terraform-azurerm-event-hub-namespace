[![Release][release-image]][release] [![CI][ci-image]][ci] [![License][license-image]][license] [![Registry][registry-image]][registry] 

# terraform-azurerm-event-hub-namespace

A Terraform module for a simple Event Hub Namespace to house one or more Event Hub.

This module expects that the name of an existing resource group is provided.

## Usage

```hcl
module "eh_namespace" {
  source  "snowplow-devops/event-hub-namespace/azurerm"

  name                = var.name
  resource_group_name = var.resource_group_name
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_eventhub_namespace.eh_namespace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_namespace) | resource |
| [azurerm_eventhub_namespace_authorization_rule.read_only](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_namespace_authorization_rule) | resource |
| [azurerm_eventhub_namespace_authorization_rule.read_write](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_namespace_authorization_rule) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the event hub namespace | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of resource group to deploy the namespace into | `string` | n/a | yes |
| <a name="input_capacity"></a> [capacity](#input\_capacity) | Capacity of the namespace | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to append to this resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_broker"></a> [broker](#output\_broker) | Kafka broker connection for this namespace |
| <a name="output_id"></a> [id](#output\_id) | Namespace ID |
| <a name="output_name"></a> [name](#output\_name) | Namespace name |
| <a name="output_read_only_primary_connection_string"></a> [read\_only\_primary\_connection\_string](#output\_read\_only\_primary\_connection\_string) | Primary connection string for read only authentication |
| <a name="output_read_only_primary_key"></a> [read\_only\_primary\_key](#output\_read\_only\_primary\_key) | Primary key for read only authentication |
| <a name="output_read_only_secondary_connection_string"></a> [read\_only\_secondary\_connection\_string](#output\_read\_only\_secondary\_connection\_string) | Secondary connection string for read only authentication |
| <a name="output_read_only_secondary_key"></a> [read\_only\_secondary\_key](#output\_read\_only\_secondary\_key) | Secondary key for read only authentication |
| <a name="output_read_write_primary_connection_string"></a> [read\_write\_primary\_connection\_string](#output\_read\_write\_primary\_connection\_string) | Primary connection string for read write authentication |
| <a name="output_read_write_primary_key"></a> [read\_write\_primary\_key](#output\_read\_write\_primary\_key) | Primary key for read write authentication |
| <a name="output_read_write_secondary_connection_string"></a> [read\_write\_secondary\_connection\_string](#output\_read\_write\_secondary\_connection\_string) | Secondary connection string for read write authentication |
| <a name="output_read_write_secondary_key"></a> [read\_write\_secondary\_key](#output\_read\_write\_secondary\_key) | Secondary key for read write authentication |

# Copyright and license

The Terraform Azurerm Event Hub Namespace project is Copyright 2023-present Snowplow Analytics Ltd.

Licensed under the [Snowplow Community License Agreement, Version 1.0][license] (the "License");
you may not use this software except in compliance with the License.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[release]: https://github.com/snowplow-devops/terraform-azurerm-event-hub-namespace/releases/latest
[release-image]: https://img.shields.io/github/v/release/snowplow-devops/terraform-azurerm-event-hub-namespace

[ci]: https://github.com/snowplow-devops/terraform-azurerm-event-hub-namespace/actions?query=workflow%3Aci
[ci-image]: https://github.com/snowplow-devops/terraform-azurerm-event-hub-namespace/workflows/ci/badge.svg

[license]: https://www.apache.org/licenses/LICENSE-2.0
[license-image]: https://img.shields.io/badge/license-Apache--2-blue.svg?style=flat

[registry]: https://registry.terraform.io/modules/snowplow-devops/event-hub-namespace/azurerm/latest
[registry-image]: https://img.shields.io/static/v1?label=Terraform&message=Registry&color=7B42BC&logo=terraform
