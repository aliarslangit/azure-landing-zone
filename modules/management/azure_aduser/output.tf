output "user_ids" {
  value = {for user in azuread_user.users : user.display_name => user.object_id}
}