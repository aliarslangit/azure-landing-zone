
//------------------------------------General Properties------------------------------------\\
variable "rgname" {
  type    = string
  default = "RG-git"
}
variable "vmname" {
  type    = string
  default = "demo-vm"
}

variable "location" {
  type    = string
  default = "West US"
}
//------------------------------------VM Configurations------------------------------------\\
variable "adminuser" {
  type    = string
  default = "vmuser"
}
variable "adminpassword" {
  type    = string
  default = "P@ssw0rd!234"
}
variable "vmsize" {
  type    = string
  default = "Standard_F2"
}

variable "subnet_id" {
  type = string
  default = "0000000-000000000000-0000000000"

}
//------------------------------------OS Configurations-------------------------------------\\
variable "publisher" {
  type    = string
  default = "Canonical"
}
variable "offer" {
  type    = string
  default = "UbuntuServer"
}
variable "sku" {
  type    = string
  default = "16.04-LTS"
}


//------------------------------------TAGS---------------------------------------------------\\
variable "creationdate" {
  type        = string
  default     = "1/1/1111"
  description = "description"
}

variable "environment" {
  type    = string
  default = "Dev"
}

variable "owner" {
  type = string
  default = "Ali Arslan"
}
