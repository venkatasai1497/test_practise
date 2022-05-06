provider "aws" {
  region     = var.aws_region
  access_key = var.accesskey
  secret_key = var.secret_key

}
provider "random" {
}

module "storage" {
  source       = "./storage"
  project_name = var.project_name

}

module "Networking" {
  source       = "./Networking"
  vpc_cidrs    = var.vpc_cidrs
  public_cidrs = var.public_cidrs
  accessip     = var.accessip

}


module "compute" {
  source          = "./compute"
  instance_count  = var.instance_count
  instance_type   = var.instance_type
  key_name        = var.key_name
  # public_key_path = var.public_key_path
  subnets         = module.Networking.public_subnets
  security_group  = module.Networking.public_sg
  subnet_ips      = module.Networking.subnet_ips

}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
attribute {
    name = "LockID"
    type = "S"
  }
}