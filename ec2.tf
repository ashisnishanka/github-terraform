provider "aws" {
  region     = "ap-south-1"
  }
  terraform {
 backend "s3" {
 bucket = "idream-terraform-state"
 key = "terraform.tfstate"
 region = "ap-south-1"
      }
}
  resource "aws_instance" "web" {
  ami           = "ami-039e1f129f345d75f"
  instance_type = t2.micro
  #vpc_security_group_ids = [aws_security_group.myterraformsg1.id]
  count = 3
 }
