data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_eventhub_namespace" "eh_namespace" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.rg.location
  sku                 = var.sku
  capacity            = var.capacity

  tags = var.tags
}

resource "azurerm_eventhub_namespace_authorization_rule" "read_only" {
  name                = "${var.name}-read-only"
  namespace_name      = azurerm_eventhub_namespace.eh_namespace.name
  resource_group_name = data.azurerm_resource_group.rg.name
  listen              = true
  send                = false
  manage              = false
}

resource "azurerm_eventhub_namespace_authorization_rule" "read_write" {
  name                = "${var.name}-read-write"
  namespace_name      = azurerm_eventhub_namespace.eh_namespace.name
  resource_group_name = data.azurerm_resource_group.rg.name
  listen              = true
  send                = true
  manage              = false
}
