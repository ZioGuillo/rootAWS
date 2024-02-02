# AWS Admin User Terraform Module

This Terraform module creates an AWS IAM user with administrative privileges, granting full access to AWS services and resources.

## Prerequisites

- Terraform 0.14 or newer
- AWS account and AWS CLI configured with access credentials

## Usage

**Initialize Terraform:**

```bash
terraform init
```

Create a terraform.tfvars file (optional):
You can specify the values for region and admin_user_name in a terraform.tfvars file or pass them as variables when running Terraform.

Example terraform.tfvars:

```hcl
region = "us-east-1"
admin_user_name = "adminUser"
```

Apply the Terraform configuration:

```bash
terraform apply
```

To specify variables directly on the command line, use the -var option:

```bash
terraform apply -var="region=us-east-1" -var="admin_user_name=adminUser"
```

Access Outputs:
After applying, Terraform will output the ARN and name of the created IAM user.

Files
main.tf: Contains the Terraform configuration to create the IAM user and attach the AdministratorAccess policy.
variables.tf: Defines variables for the AWS region and IAM user name.
outputs.tf: Defines outputs for the IAM user's ARN and name.
README.md: This file, containing usage instructions.