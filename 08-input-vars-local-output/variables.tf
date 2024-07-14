variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of the managed EC2 instances"

  validation {
    //condition = var.ec2_instance_type == "t2.micro" || var.ec2_instance_type == "t3.micro"
    condition     = contains(["t2.micro", "t3.micro"], var.ec2_instance_type)
    error_message = "Only supports t2.micro and t3.micro"
  }
}

variable "ec2_volume_config" {
  type = object({
    size = number
    type = string
  })
  description = "The size and type of the root block volume of the EC2 instance"

  default = {
    size = 10
    type = "gp3"
  }
}