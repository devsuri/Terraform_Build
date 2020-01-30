variable "aws_source_region" {
  default = "us-east-1"
}

variable "aws_dest_region" {
  default = "us-west-2"
}


variable "aws_cf_logs_bucket" {
  description = "Cloudfront Logs Bucket"
  default     = {}
}

