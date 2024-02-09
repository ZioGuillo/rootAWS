
# Root AWS Account

This repository contains code to create an additional IAM user with different roles as the root account. This is done to avoid using the root account as the principal account.

## Implementation of Remote State into S3 Bucket

This project is configured to use an S3 bucket for storing Terraform state files remotely to enhance state management practices. It utilizes an S3 bucket along with a DynamoDB table for state locking to prevent concurrent state modifications.

### Configuration

To configure the remote state, a backend configuration is used in the `backend.tf` file, specifying the S3 bucket and DynamoDB table details. Ensure you have created the S3 bucket and DynamoDB table as described in the backend configuration.

### Using `.tfvars` for Variables

Variables for the Terraform configuration can be defined in a `terraform.tfvars` file or passed via command-line arguments. This allows for easy management of environment-specific configurations without altering the main Terraform files.

## Code

The code to create the additional IAM user is as follows:

## Root AWS Code

This code is used to create an additional IAM user with different roles as the root to avoid using it as the principal account.

## Usage

To use this code, follow the steps below:

1. Install Terraform on your local machine.
2. Clone this repository.
3. Navigate to the rootAWS directory.
4. Update the `variables.tf` file with your desired configurations.
5. Run `terraform init` to initialize the Terraform project.
6. Run `terraform plan` to see the execution plan, using `-var-file="terraform.tfvars"` to include your variable definitions.
7. Run `terraform apply` to apply the changes and create the additional IAM user, using `-var-file="terraform.tfvars"`.

## Code Explanation

The code in this repository uses Terraform to provision the necessary AWS resources. It creates an IAM user with restricted permissions, ensuring that it is not used as the root account. This helps improve security by reducing the risk of accidental or unauthorized actions.

The `main.tf` file contains the Terraform configuration code, defining the resources to be created. The `variables.tf` file contains the input variables that can be customized based on your requirements.

## Contributing

If you would like to contribute to this project, please follow the guidelines below:

1. Fork this repository.
2. Create a new branch for your changes.
3. Make your changes and commit them.
4. Push your changes to your forked repository.
5. Submit a pull request to the main repository.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more information.

# backend.tfvars

region = "your-region"
admin_user_name = "demo-admin-user"
password = "YourSecurePasswordHere!"
bucket         = "tf_state_storage-bucket"
key            = "root/terraform.tfstate"
dynamodb_table = "tf_state-state-lock"
