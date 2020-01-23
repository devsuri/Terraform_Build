#variable "Access_key" {
 # default = "AWS_ACCESS_KEY_ID"
#}

#variable "Secret_Key" {
 # default = "AWS_SECRET_ACCESS_KEY"
#}


provider "aws" {
  version = "~> 2.0"
  region  = "us-west-1"
}


resource "aws_s3_bucket" "b" {
  bucket = "terraformcodebuildbucketbyterraform2"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
