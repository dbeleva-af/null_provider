 # Terraform configuration for demonstrating behavior of terraform null_provider.

 ## SOURCE - Terraform Registry.
 
 ## Prerequisites

- git
- terraform (>=1.5)
- Terraform installed localy

 ## Version of the provider
 - null (=3.2.1) 


 ## DESCRIPTION

 Terraform null_provider is a different kind of provider. Unlike standart providers for AWS, Azure and other vendors this one doesn't communicate with any cloud. The null-provider 
 has its own resources and they can be found in terraform registry (null_resources, null_data_source). In the main.tf file is only the configuration for the provider itself. 

 # FILES IN THE REPO

  - Create `main.tf` file

    provider "null" {}
    resource "null_resource" "example" {}
    

 ## TESTING

   ### Commands for testing the configuration

     $ terraform init 
     $ terraform plan
     $ terraform apply

     - `Terraform init` will:
        - Install the required plugins

     - `Terraform apply` will:
        - Create null_resource with id in the state file, but will not deploy any resources 

    #### Outputs
    
   | Name  |	Description 
   | id | The ID of the null_resource

   
