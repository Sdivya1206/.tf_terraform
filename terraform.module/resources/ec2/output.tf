output "public_ip" {
  value = aws_instance.main_aws_instance.public_ip
}

output "pub_inst_arn" {
  value = aws_instance.main_aws_public_instance.arn
}

output "pub_inst_instance_id" {
  value = aws_instance.main_aws_public_instance.id
}

output "pub_inst_private_dns" {
  value = aws_instance.main_aws_public_instance.private_dns
}

output "pub_inst_public_dns" {
  value = aws_instance.main_aws_public_instance.public_dns
}
