output "bucket_name" {
  value = aws_s3_bucket.test.bucket
  
}

output "bucket_arn" {
  value = aws_s3_bucket.test.arn
  description = "value of the bucket ARN"
}

output "bucket_domain_name" {
  value = aws_s3_bucket.test.bucket_domain_name
  
}

output "ips_filepath" {
  value = "${aws_s3_bucket.test.bucket}/${aws_s3_object.ips_cfg.key}"
  
}