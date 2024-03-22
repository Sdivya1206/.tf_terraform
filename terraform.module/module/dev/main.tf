module "vpc" {
  source = "/mnt/c/Users/vaibs/OneDrive/Desktop/terraform.module/resources/vpc"
  main_vpc_cidr_block = "10.0.0.0/16"
  main_vpc_tags = "main_vpc"
  main_subnet_pub_cidr_block = "10.0.0.0/17"
  main_subnet_private1_cidr_block = "10.0.128.0/19"
  main_subnet_pub_map_ip = true
  main_subnet_private_map_ip = false
  main_subnet_pub_tags = "public_subnet"
  main_subnet_private1_tags = "private_subnet1"
  main_subnet_private2_cidr_block = "10.0.192.0/20"
  main_subnet_private2_tags = "pri_subnet2"
  main_igw_tags = "my-igw"
  main_def_Route_example_cidr_block = "0.0.0.0/0"
  main_def_Route_example_tag = "default"
}

module "ec2" {
  source = "/mnt/c/Users/vaibs/OneDrive/Desktop/terraform.module/resources/ec2"
  main_aws_instance_ami = "ami-093af02c43a766bf4"
  main_aws_instance_instance_type = "t2.micro"
  main_aws_instance_key_name = "tokyodiv-key"
  main_aws_instance_availability_zone = "ap-northeast-1c"
  main_aws_instance_volume_size = 15
  main_aws_instance_tags = "Main_instance"
  main_aws_instance_subnet = module.vpc.subnet_id
  main_sg_vpc_id = module.vpc.vpc_id
}