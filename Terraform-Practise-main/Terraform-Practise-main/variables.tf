variable "aws_region" {}

variable "project_name" {}

variable "secret_key" {}

variable "accesskey" {}

variable "vpc_cidrs" {}
variable "public_cidrs" {
  type = list(any)
}
variable "accessip" {}


#-------compute variables
variable "key_name" {}
# variable "public_key_path" {}
variable "instance_type" {}
variable "instance_count" {
  default = 1
}

# variable "bucketname" {}
