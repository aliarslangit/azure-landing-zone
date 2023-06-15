resource "azurerm_postgresql_server" "postgresql_server" {
  name                = var.server_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  storage_mb          = var.storage_mb
  ssl_enforcement_enabled          = false
  ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"
  version    = "11"
  
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}
resource "azurerm_postgresql_virtual_network_rule" "vnet_rules" {
  count = length(var.vnet_rules)

  name                = format("%s%s", var.vnet_rule_name_prefix, lookup(var.vnet_rules[count.index], "name", count.index))
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  subnet_id           = var.vnet_rules[count.index]["subnet_id"]
}

output "postgresql_server_fqdn" {
  value = azurerm_postgresql_server.postgresql_server.fqdn
}