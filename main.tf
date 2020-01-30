# ------------------------------------------------------------------------------
# S3 bucket for logging CloudFront logs
# ------------------------------------------------------------------------------

resource "aws_s3_bucket" "cloudfront_logs_bucket" {
  provider      = aws.source
  bucket        = var.aws_cf_logs_bucket
  acl           = "private"
  region        = var.aws_source_region
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        #kms_master_key_id = "${aws_kms_key.source.arn}"
        sse_algorithm     = "AES256"
      }
    }
  }
  #tags = merge(map("Name", var.aws_cf_logs_bucket), var.tags)
}
