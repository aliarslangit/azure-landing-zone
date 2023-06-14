resource "azuread_user" "users" {
  for_each = { for user in var.users : user.user_principal_name => user }

  user_principal_name = each.value.user_principal_name
  display_name = each.value.display_name
  password = each.value.password
  mail_nickname = each.value.mail_nickname
  force_password_change = true

  # Optional fields
  account_enabled = true
  usage_location = "US"
}