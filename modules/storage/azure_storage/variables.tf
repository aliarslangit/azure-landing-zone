//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "Rg-git"
}

variable "location" {
  type    = string
  default = "West US"
}
variable "storagename" {
  type    = string
  default = "Rg-git"
}

variable "accounttype" {
  type    = string
  default = "Standard"
}

variable "replicationtype" {
  type    = string
  default = "LRS"
}
