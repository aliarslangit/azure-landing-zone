resource "azurerm_service_plan" "asp" {
  name                = var.aspname
  resource_group_name = var.rgname
  location            = var.location
  os_type             = "Linux"
  sku_name            = var.skusize
}