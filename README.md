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

terraform init - after using this command the required plugins are installed. 
terraform plan - 
terraform apply
terraform destroy - the command destroys everything that was deployed by the previous command. This means that the infrastructure will not be available.
