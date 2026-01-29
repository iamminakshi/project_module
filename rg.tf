resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-${var.environment}-${var.location}"
  location = var.location

  tags = var.tags
}
