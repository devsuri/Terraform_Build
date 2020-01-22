
provider "aws" {
  version = "~> 2.0"
  region  = "us-west-1"
  #access_key = "${var.AWS_ACCESS_KEY_ID}"
  #secret_key = "${var.AWS_SECRET_ACCESS_KEY}"
}


resource "aws_s3_bucket" "b" {
  bucket = "terraformcodebuildbucketbyterraform"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
