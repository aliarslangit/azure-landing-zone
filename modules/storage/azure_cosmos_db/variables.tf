//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "RG-git-DEMO-LINUXVM"
}

variable "location" {
  type    = string
  default = "West US"
}
variable "cosmosdb_name" {
  type    = string
  default = "dev-cosmos"
}
variable "offer_type" {
  type    = string
  default = "Standard"
}

variable "kind" {
  type    = string
  default = "SQLDB"
}
