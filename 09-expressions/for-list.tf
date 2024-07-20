locals {
  double_numbers = [for num in var.numbers_list : num * 2]
  even_numbers   = [for num in var.numbers_list : num if num % 2 == 0]
  firstname      = [for person in var.object_list : person.firstname]
  fullname       = [for person in var.object_list : "${person.firstname} ${person.lastname}"]
}

output "double_numbers" {
  value = local.double_numbers
}

output "even_numbers" {
  value = local.even_numbers
}

output "firstname" {
  value = local.firstname
}
output "fullname" {
  value = local.fullname
}
