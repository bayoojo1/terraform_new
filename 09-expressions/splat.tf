locals {
  firstnames_from_splat = var.object_list[*].firstname
}

output "firstnames_from_splat" {
  value = local.firstnames_from_splat
}

#Note: You cannot use splat expression for map, it only works for list