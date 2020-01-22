provider "aws" {
  version = "~> 2.0"
  region  = "us-west-1"

}

resource "aws_s3_bucket" "b" {
  bucket = "terraform_codebuild_bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
