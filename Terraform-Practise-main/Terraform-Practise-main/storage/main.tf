provider "aws" {
    region = "us-east-1"
      }
provider random {
}
resource "random_id" "bucket_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "bucketname" {
  bucket = "${var.project_name}-${random_id.bucket_id.dec}"
#   acl = "private"
  force_destroy = true

  tags = {
     name = "tf_bucket"
  }
 }


