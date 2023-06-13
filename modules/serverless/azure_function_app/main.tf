resource "azurerm_linux_function_app" "example" {
  name                = var.appname
  resource_group_name = var.rgname
  location            = var.location

  storage_account_name       = var.storageaccountname
  storage_account_access_key = var.storageaccountaccesskey
  service_plan_id            = var.aspid

  site_config {}
}