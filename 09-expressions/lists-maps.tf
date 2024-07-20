locals {
  users_map = { for user_info in var.users : user_info.username => user_info.role }
}

output "users_map" {
  value = local.users_map
}