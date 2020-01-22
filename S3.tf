
provider "aws" {
  version = "~> 2.0"
  region  = "us-west-1"
  access_key = "${var.Access_key}"
  secret_key = "${var.Secret_Key}"
}


resource "aws_s3_bucket" "b" {
  bucket = "terraformcodebuildbucketbyterraform"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
