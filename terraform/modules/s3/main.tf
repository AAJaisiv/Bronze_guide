resource "aws_s3_bucket" "dummy_test" {
  bucket = "${var.bucket_name}-${var.environment}-dummy-test"
  tags = var.tags
}