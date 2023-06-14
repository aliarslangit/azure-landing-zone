variable "users" {
  type = list(object({
    username = string
    password = string
    display_name = string
    mail_nickname = string
    user_principal_name = string
  }))
}