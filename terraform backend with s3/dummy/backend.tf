terraform {
  backend "s3"{
  bucket = "bucket.tf" 
    key = "terraform.tfstate"
    dynamodb_table = "newstate"
    region = "ap-northeast-1"
    shared_credentials_files = ["/home/divya/.aws/credentials"]
    profile = "configs"

  }
}

resource "aws_instance" "ths_instance_tf" {
  ami = "ami-093af02c43a766bf4"
  key_name = "tokyodiv-key"
  instance_type = "t2.micro"
  //security_groups = ["sg-02582bf615cdb71bb"]
  count = 1
  
  
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo echo "hello world this is Batc24" >> /var/www/html/index.html
    EOF
   tags = {
    Name = "my_state"

  } 
    
}
