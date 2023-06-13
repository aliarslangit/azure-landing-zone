resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aksname
  location            = var.location
  resource_group_name = var.rgname
  dns_prefix          = "myaks"
  kubernetes_version  = "1.24.9"
  node_resource_group = var.noderg
  identity {
    type = "SystemAssigned"
  }
   network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
    network_policy    = "azure"
  }
  
  storage_profile {
    blob_driver_enabled = true
  }

  tags = {
    environment = var.env
  }
  
  default_node_pool {
    name            = var.default_node_pool_name
    node_count      = var.default_node_pool_node_count
    vm_size         = var.default_node_pool_vm_size
    vnet_subnet_id  = var.subnet_id
    os_disk_size_gb = var.default_node_pool_os_disk_size_gb
  }
  
}

# Create additional node pools if specified
resource "azurerm_kubernetes_cluster_node_pool" "additional_node_pools" {
  count = length(var.additional_node_pools)

  name                = var.additional_node_pools[count.index].name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  node_count          = var.additional_node_pools[count.index].node_count
  vm_size             = var.additional_node_pools[count.index].vm_size
  vnet_subnet_id      = var.additional_node_pools[count.index].vnet_subnet_id
  os_disk_size_gb     = var.additional_node_pools[count.index].os_disk_size_gb
}