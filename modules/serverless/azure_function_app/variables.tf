//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "location" {
  type    = string
  default = "West US"
}
variable "appname" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "aspid" {
  type = string
  default = ""
}

variable "storageaccountname" {
  type = string
  default = ""
}

variable "storageaccountaccesskey" {
  type = string
  default = ""
}