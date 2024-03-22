variable "main_aws_instance_ami" {
  type = string
}

variable "main_aws_instance_instance_type" {
  type = string
}

variable "main_aws_instance_key_name" {
  type = string
}

variable "main_aws_instance_availability_zone" {
  type = string
}

variable "main_aws_instance_subnet" {
  type = string
}

variable "main_aws_instance_volume_size" {
  type = number
}

//variable "main_aws_instance_count" {
  //type = number
//}

variable "main_aws_instance_tags" {
  type = string
}

variable "main_sg_vpc_id" {
  type = string
}