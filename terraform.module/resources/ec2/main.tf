resource "aws_instance" "main_aws_instance" {
  ami = var.main_aws_instance_ami
  instance_type = var.main_aws_instance_instance_type
  key_name = var.main_aws_instance_key_name
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  availability_zone = var.main_aws_instance_availability_zone
  subnet_id = var.main_aws_instance_subnet
  root_block_device {
    volume_size = var.main_aws_instance_volume_size
  }
  //count = var.main_aws_instance_count

  tags = {
    Name = var.main_aws_instance_tags 
  }
}

resource "aws_security_group" "main_sg" {
  vpc_id = var.main_sg_vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}