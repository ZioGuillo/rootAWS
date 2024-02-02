# Root AWS Account

This repository contains code to create an additional IAM user with different roles as the root account. This is done to avoid using the root account as the principal account.

## Code

The code to create the additional IAM user is as follows:

## Root AWS Code

This code is used to create an additional IAM user with different roles as the root to avoid using it as the principal account.

## Usage

To use this code, follow the steps below:

1. Install Terraform on your local machine.
2. Clone this repository.
3. Navigate to the rootAWS directory.
4. Update the variables.tf file with your desired configurations.
5. Run `terraform init` to initialize the Terraform project.
6. Run `terraform plan` to see the execution plan. -var-file="terraform.tfvars"
7. Run `terraform apply` to apply the changes and create the additional IAM user. -var-file="terraform.tfvars"

## Code Explanation

The code in this repository uses Terraform to provision the necessary AWS resources. It creates an IAM user with restricted permissions, ensuring that it is not used as the root account. This helps improve security by reducing the risk of accidental or unauthorized actions.

The main.tf file contains the Terraform configuration code, defining the resources to be created. The variables.tf file contains the input variables that can be customized based on your requirements.

## Contributing

If you would like to contribute to this project, please follow the guidelines below:

1. Fork this repository.
2. Create a new branch for your changes.
3. Make your changes and commit them.
4. Push your changes to your forked repository.
5. Submit a pull request to the main repository.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more information.
