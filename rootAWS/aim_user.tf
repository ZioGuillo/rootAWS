resource "aws_iam_user" "admin_user" {
  name = var.admin_user_name # Change this to the desired IAM user name
}

resource "aws_iam_access_key" "admin_user_key" {
  user    = aws_iam_user.admin_user.name
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "aws_iam_user_login_profile" "admin_user_login_profile" {
  user                    = aws_iam_user.admin_user.name
  password_length         = 16
  password_reset_required = true
}