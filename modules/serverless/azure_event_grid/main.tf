resource "azurerm_eventgrid_topic" "example" {
  name                = var.eventgridname
  location            = var.location
  resource_group_name = var.rgname

}