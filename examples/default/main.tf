locals {
  resource_group_name = "ostfresourcegrouptest"
}

resource "azurerm_resource_group" "group" {
  name     = local.resource_group_name
  location = "North Europe"
}

module "eh_namespace" {
  source = "../../"

  name                = "ostfnamespacetest"
  resource_group_name = local.resource_group_name

  depends_on = [azurerm_resource_group.group]
}
