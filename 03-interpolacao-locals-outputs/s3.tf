resource "aws_s3_bucket" "test" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "ips_cfg" {
  bucket = aws_s3_bucket.test.bucket
  key    = "config/${local.ip_filepath}"
  source = "${local.ip_filepath}"
  etag = filemd5("${local.ip_filepath}")
}