variable "Access_key" {
  default = "AWS_ACCESS_KEY_ID"
}

variable "Secret_Key" {
  default = "AWS_SECRET_ACCESS_KEY"
}


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
