## Providers AWS
provider "aws" {
  assume_role {
    role_arn = var.switch_role_arn
  }

  region = var.region
}

## SNS
resource "aws_sns_topic" "config" {
  count = var.create_config == true && var.create_sns_to_config == true ? 1 : 0

  name         = var.sns_name
  display_name = var.cliente
}

resource "aws_sns_topic_subscription" "config" {
  count = var.create_config == true && var.create_sns_to_config == true ? 1 : 0

  topic_arn = aws_sns_topic.config.0.arn
  protocol  = "email"
  endpoint  = var.sns_email
}

## Module AWS Config
module "aws_config" {
  source = "trussworks/config/aws"

  config_name                               = var.config_name
  config_max_execution_frequency            = var.config_max_execution_frequency
  enable_config_recorder                    = var.enable_config_recorder
  config_sns_topic_arn                      = aws_sns_topic.config.0.arn

  acm_days_to_expiration                    = var.acm_days_to_expiration
  check_acm_certificate_expiration_check    = var.check_acm_certificate_expiration_check
  check_cloudtrail_enabled                  = var.check_cloudtrail_enabled
  check_ec2_volume_inuse_check              = var.check_ec2_volume_inuse_check
  check_eip_attached                        = var.check_eip_attached
  check_iam_root_access_key                 = var.check_iam_root_access_key
  check_rds_public_access                   = var.check_rds_public_access
  check_root_account_mfa_enabled            = var.check_root_account_mfa_enabled
  check_s3_bucket_public_write_prohibited   = var.check_s3_bucket_public_write_prohibited
  

}
