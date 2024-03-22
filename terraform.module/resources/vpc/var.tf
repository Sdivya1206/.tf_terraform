variable "main_vpc_cidr_block" {
  type = string
}

variable "main_vpc_tags" {
  type = string
}

variable "main_subnet_pub_cidr_block" {
  type = string
}

variable "main_subnet_pub_map_ip" {
  type = bool
}

variable "main_subnet_pub_tags" {
  type = string
}

variable "main_subnet_private1_cidr_block" {
  type = string
}

variable "main_subnet_private_map_ip" {
  type = bool
}

variable "main_subnet_private1_tags" {
  type = string
}

variable "main_subnet_private2_cidr_block" {
  type = string
}

variable "main_subnet_private2_tags" {
  type = string
}

variable "main_igw_tags" {
  type = string
}

variable "main_def_Route_example_cidr_block" {
  type = string
}

variable "main_def_Route_example_tag" {
  type = string 
}