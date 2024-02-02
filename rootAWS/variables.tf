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
