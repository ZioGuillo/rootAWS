output "admin_user_arn" {
  description = "The ARN of the created IAM user with administrative privileges"
  value       = aws_iam_user.admin_user.arn
}

output "admin_user_name" {
  description = "The name of the created IAM user with administrative privileges"
  value       = aws_iam_user.admin_user.name
}

output "admin_user_access_key_id" {
  value = aws_iam_access_key.admin_user_key.id
  sensitive = true
}

output "admin_user_secret_access_key" {
  value     = aws_iam_access_key.admin_user_key.secret
  sensitive = true # Mark this output as sensitive to prevent it from being displayed in logs
}

output "admin_user_login_profile_password" {
  description = "The initial password for the IAM user. Must be changed upon first login."
  value       = aws_iam_user_login_profile.admin_user_login_profile.password
  sensitive   = true
}