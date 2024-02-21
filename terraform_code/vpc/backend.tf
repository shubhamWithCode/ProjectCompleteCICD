terraform {
  backend "s3" {
    bucket = "our-terraform-tfstate-file-bucket-shubham"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}