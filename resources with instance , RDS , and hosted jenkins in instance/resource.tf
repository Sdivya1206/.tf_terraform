/*  resource "aws_instance" "this_aws_instance" {
  ami           = "ami-093af02c43a766bf4"
  instance_type = "t2.small"
  key_name               = "tokyodiv-key"
  vpc_security_group_ids = [aws_security_group.this_sg.id]
  availability_zone      = "ap-northeast-1a"
   root_block_device {
    volume_size = 15
  }
 

  user_data = <<-EOF
            #!/bin/bash
          sudo -i
          sudo apt update
sudo apt install apache2 -y
sudo apt install unzip -y
sudo systemctl start apache2  
sudo wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz
sudo tar -xzvf apache-tomcat-8.5.99.tar.gz
sudo git clone https://github.com/Sdivya1206/webpage.git
sudo mv /home/ubuntu/workspace/freestyle/webpage/student.war /home/ubuntu/workspace/freestyle/apache-tomcat-8.5.99/webapps/
sudo bash /home/ubuntu/workspace/freestyle/apache-tomcat-8.5.99/bin/catalina.sh stop
sudo bash /home/ubuntu/workspace/freestyle/apache-tomcat-8.5.99/bin/catalina.sh start
EOF

  tags = {
    Name = "this_aws_instance_tags" 
  }
}



resource "aws_security_group" "this_sg" {
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


resource "aws_db_instance" "this_aws_db" {
  instance_class = "db.t4g.medium"
  //db_subnet_group_name = "subnet-0c376428f24e53d51"
  vpc_security_group_ids = [aws_security_group.this_sg.id]
  engine                 = "mysql"
  username               = "divya"
  password               = "12345678"
  allocated_storage      = 10
  storage_type           = "gp2"
}

output "aws_public_ip" {
  value = aws_instance.this_aws_instance.public_ip

}
output "aws_instance_id" {

  value = aws_instance.this_aws_instance.id

}

output "aws_instance_state" {

  value = aws_instance.this_aws_instance.instance_state
}


resource "aws_sns_topic" "topic" {
  name = "new_terra_topic"
}

resource "aws_sns_topic_subscription" "via_email" {
  topic_arn = aws_sns_topic.topic.arn
  protocol  = "email"
  endpoint  = "divyaswami0600@gmail.com"
}
*/