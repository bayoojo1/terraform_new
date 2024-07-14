ec2_instance_type = "t2.micro"

ec2_volume_config = {
  size = 20
  type = "gp2"
}

additional_tags = {
  "ValuesFrom" = "terraform.tfvars"
}

#You can not use any other name aside terraform.tfavs, else there would be an error while applying the config
#You will get an error if you use the command like below:
# $terraform plan dev.terraform.tfvars

#To avoid error, you can use a command like so - 
# $terraform plan -var--file=dev.terraform.tfvars
#OR
# $terraform plan -var--file=prod.terraform.tfvars

#This is useful when you want to create a .tfvars files for each part of your code.