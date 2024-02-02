output "admin_user_arn" {
  description = "The ARN of the created IAM user with administrative privileges"
  value       = aws_iam_user.admin_user.arn
}

output "admin_user_name" {
  description = "The name of the created IAM user with administrative privileges"
  value       = aws_iam_user.admin_user.name
}
