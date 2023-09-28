# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "ecommerce-web01-tf-state"
    key            = "asfreeze-app/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-state-lock"
  }
}