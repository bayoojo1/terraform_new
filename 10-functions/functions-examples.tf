locals {
  name = "mr Bean"
  age  = 32
  my_object = {
    key1 = 10
    key2 = "my_value"
  }
}

output "example1" {
  value = startswith(lower(local.name), "mr")
}

output "example2" {
  value = pow(local.age, 2)
}

output "example3" {
  value = yamldecode(file("${path.module}/users.yaml")).users[*].name
  //value = file("${path.module}/users.yaml")
}

output "example4" {
  value = yamlencode(local.my_object)
}