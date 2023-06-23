NULL_PROVIDER

This repo contains files for testing the behavior of terraform random provider

SOURCE - Terraform Registry.

DESCRIPTION

Terraform null_provider is a different kind of provider. Unlike standart providers for AWS, Azure and other vendors this one doesn't communicate with any cloud. The null-provider has its own resources and they can be found in terraform registry (null_resources, null_data_source). In the main.tf file is only the configuration for the provider itself. 

REQUIREMENTS:

Terraform installed localy.

VERSIONS: 
provider "registry.terraform.io/hashicorp/null" {
  version     = "3.2.1"
  constraints = "3.2.1"

FILES IN THE REPO

main.tf - this file contains the configuration for the provider.
.terraform.lock.hcl - this file was intentionally commited in this repo in order for the hashes of the provider version to be visibe. 
README - this file describes the components of the demonstration.
.gitignore - this file contains all the types of files witch shouldn't be commited in public repository.

TESTING




<img width="932" alt="Screenshot 2023-06-23 at 14 17 26" src="https://github.com/dbeleva-af/null_provider/assets/105104959/6402963d-2198-4aa9-87f7-6694d886cf50">








terraform init - after using this command the required plugins are installed. 
terraform plan - with this command terraform is making plan before applying the configuration
terraform apply - this command is doing the main action - to deploy the given infrastructure anywere. In this case no infrastructure will be deployed in any cloud, because this provider is more usefull when it is used with some of its resources. An examples can be found in other repos in my profile. 
terraform destroy - the command destroys everything that was deployed by the previous command. This means that the infrastructure will not be available.
