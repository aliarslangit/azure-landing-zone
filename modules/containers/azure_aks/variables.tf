//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "env" {
  type    = string
  default = "Development"
}

variable "noderg" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "vnetname" {
  type    = string
  default = "RG-git-DEMO-VNET"
}

variable "location" {
  type    = string
  default = "West US"
}

variable "aksname" {
  type    = string
  default = "RG-git-DEMO-AKS"
}

variable "subnet_id" {
  type    = string
  default = ""
}
variable "default_node_pool_name" {
  type    = string
  default = "default"
}

variable "default_node_pool_node_count" {
  type    = number
  default = 1
}

variable "default_node_pool_vm_size" {
  type    = string
  default = "Standard_DS2_v2"
}
variable "default_node_pool_os_disk_size_gb" {
  type    = number
  default = 30
}

variable "additional_node_pools" {
  type    = list(object({
    name                = string
    node_count          = number
    vm_size             = string
    os_disk_size_gb     = number
    vnet_subnet_id      = string
  }))
  default = []
}