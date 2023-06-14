//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "location" {
  type    = string
  default = "West US"
}
variable "storage_account_names" {
  description = "List of storage account names to create"
  type = list(string)
}

variable "accounttype" {
  type    = string
  default = "Standard"
}

variable "replicationtype" {
  type    = string
  default = "LRS"
}
