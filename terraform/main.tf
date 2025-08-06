module "s3_dummy" {
  source      = "./modules/s3"
  bucket_name = "silver-guide-test"
  environment = var.environment
  tags = {
    Project = "SilverGuide"
    Owner   = "AAJaisiv"
    Env     = var.environment
  }
}