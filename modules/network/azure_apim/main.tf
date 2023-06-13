resource "azurerm_api_management" "main" {
  name                = var.apimname
  location            = var.location
  resource_group_name = var.rgname
  publisher_name      = "main"
  publisher_email     = "company@terraform.io"
  sku_name = var.sku

  timeouts {
    create = "2h"
    update = "2h"
    delete = "2h"
  }
}