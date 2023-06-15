

variable "users" {
  type = list(object({
    name = string
    role_definition_name = string
    principal_id = string
  }))
}
