resource "azurerm_storage_account" "example" {
  count = length(var.storage_account_names)
  name                      = var.storage_account_names[count.index]
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = var.accounttype
  account_replication_type = var.replicationtype
}