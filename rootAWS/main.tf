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