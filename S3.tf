
provider "aws" {
  version = "~> 2.0"
  region  = "us-west-1"
  access_key = "AWS_ACCESS_KEY_ID"
  secret_key = "AWS_SECRET_ACCESS_KEY"
  },

  assume_role {
    role_arn     = "arn:aws:iam::361061974256:role/service-role/codebuild-CodePipeline_Chitransh-service-role"
}


resource "aws_s3_bucket" "b" {
  bucket = "terraformcodebuildbucketbyterraform"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
