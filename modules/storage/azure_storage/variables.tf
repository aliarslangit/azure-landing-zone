//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "location" {
  type    = string
  default = "West US"
}
variable "storagename" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "accounttype" {
  type    = string
  default = "Standard"
}

variable "replicationtype" {
  type    = string
  default = "LRS"
}
