provider "aws" {
    region = "ap-northeast-1"
    shared_credentials_files = ["/home/divya/.aws/credentials"]
    profile = "configs"
  
}


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