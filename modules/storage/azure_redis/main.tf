resource "azurerm_redis_cache" "this" {
  for_each = var.redis_cache_instances

  name                = each.value.name
  resource_group_name = each.value.rgname
  location            = each.value.location
  sku_name            = each.value.sku
  capacity            = each.value.capacity
  family              = each.value.family
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
  }
}
