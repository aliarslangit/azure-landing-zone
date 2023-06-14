output "storage_account_ids" {
  value = azurerm_storage_account.example[*].id
}