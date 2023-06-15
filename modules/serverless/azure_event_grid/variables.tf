//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "location" {
  type    = string
  default = "West US"
}
variable "eventgridname" {
  type    = string
  default = "dev-eventgrid"
}

