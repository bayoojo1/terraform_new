//ec2_instance_type = "t3.large"

additional_tags = {
  "ValuesFrom" = "prod.auto.tfvars"
}

# Note: .auto.tfvars file take precedence over terraform.tfvars files. 
# This means that terraform will implement the contents of .auto.tfvars before 
# terraform.tfvars