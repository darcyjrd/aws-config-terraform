variable "switch_role_arn" {
  type        = string
  description = "Costumer Switch Role ARN."
}

variable "region" {
  type        = string
  description = "Região da AWS"
}

variable "sns_name" {
  type        = string
  default     = "select-sns"
  description = "The name for the SNS topic."
}

variable "sns_email" {
  type        = string
  default     = "cloud.aws@selectsolucoes.com"
  description = "The email address for this SNS topic."
}

variable "cliente" {
  type        = string
  description = "For naming resources."
}

variable "create_config" {
  type        = bool
  default     = true
  description = "Create AWS Config."
}

variable "create_sns_to_config" {
  type        = bool
  default     = false
  description = "Create SNS Topic to AWS Config."
}

variable "config_name" {
  type        = string
  description = "The name of the AWS Config instance"
}

variable "config_max_execution_frequency" {
  type        = string
  default     = "TwentyFour_Hours"  
  description = "The maximum frequency with which AWS Config runs evaluations for a rule."
}

variable "enable_config_recorder" {
  type        = bool
  default     = false  
  description = "Enables configuring the AWS Config recorder resources in this module."
}

variable "config_sns_topic_arn" {
  type        = string
  default     = ""  
  description = "An SNS topic to stream configuration changes and notifications to."
}

variable "acm_days_to_expiration" {
  type        = number
  default     = 15  
  description = "Specify the number of days before the rule flags the ACM Certificate as noncompliant."
}

variable "check_acm_certificate_expiration_check" {
  type        = bool
  default     = true  
  description = "Enable acm-certificate-expiration-check rule."
}

variable "check_cloudtrail_enabled" {
  type        = bool
  default     = true  
  description = "Enable cloudtrail-enabled rule."
}

variable "check_ec2_volume_inuse_check" {
  type        = bool
  default     = true  
  description = "Enable ec2-volume-inuse-check rule."
}

variable "check_eip_attached" {
  type        = bool
  default     = true  
  description = "Enable eip-attached rule."
}

variable "check_iam_root_access_key" {
  type        = bool
  default     = true  
  description = "Enable iam-root-access-key rule."
}

variable "check_rds_public_access" {
  type        = bool
  default     = true  
  description = "Enable rds-instance-public-access-check rule."
}

variable "check_root_account_mfa_enabled" {
  type        = bool
  default     = true  
  description = "Enable root-account-mfa-enabled rule."
}

variable "check_s3_bucket_public_write_prohibited" {
  type        = bool
  default     = true  
  description = "Enable s3-bucket-public-write-prohibited rule."
}


