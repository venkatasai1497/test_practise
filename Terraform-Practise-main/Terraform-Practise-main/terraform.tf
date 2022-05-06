terraform {
  backend "s3" {
    bucket = "bucket323213"
    key = "terraform-aws/terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform-lock"
    # dynamodb_table = "lock"
  }
}