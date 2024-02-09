variable "region" {
  description = "The AWS region to deploy resources into"
  type        = string
}
variable "admin_user_name" {
  description = "The name of the AWS IAM user with administrative privileges"
  type        = string
}
variable "password" {
  description = "The password for the AWS IAM user with administrative privileges"
  type        = string
}

variable "bucket" {
  description = "The name of the S3 bucket for storing Terraform state."
  type        = string
}

variable "key" {
  description = "The name of the Terraform state file."
  type        = string
}
variable "dynamodb_table" {
  description = "The name of the DynamoDB table for state locking."
  type        = string
}
