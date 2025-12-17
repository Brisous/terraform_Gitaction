terraform {
  backend "s3" {
    bucket         = "terraform-state-brisouss-2025"  
    key            = "project/terraform.tfstate"
    region         = "us-east-1" 
    encrypt        = true
  }
}