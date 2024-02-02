provider "aws" {
  region = var.region # Adjust the region according to your requirements
}

resource "aws_iam_user" "admin_user" {
  name = var.admin_user_name # Change this to the desired IAM user name
}

resource "aws_iam_user_policy_attachment" "admin_policy_attachment" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_access_key" "admin_user_key" {
  user    = aws_iam_user.admin_user.name
}

resource "aws_iam_user_login_profile" "admin_user_login_profile" {
  user    = aws_iam_user.admin_user.name
  # The password can be set directly or, preferably, generated. 
  # IMPORTANT: Storing plain-text passwords in your Terraform files is not recommended for security reasons.
  # Consider using a dynamic password generator and secure storage for the password.
  password              = var.password # Change this to a secure password or a generated one
  password_reset_required = true # Forces the user to change the password upon first login
}