  terraform {
 backend "s3" {
 bucket = "idream-terraform-state"
 key = "terraform.tfstate"
 region = "ap-south-1"
      }
}