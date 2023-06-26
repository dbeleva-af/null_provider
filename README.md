 # Terraform configuration using terraform NULL_PROVIDER for demonstration behavior of terraform null_provider.

 ## SOURCE - Terraform Registry.
 
 ## Prerequisites

- git
- terraform (>=1.5)
- AWS account
- AWS credentials configured to work with terraform tool
- Terraform installed localy

 ## Version of the provider
 - null (=3.2.1) 


 ## DESCRIPTION

 Terraform null_provider is a different kind of provider. Unlike standart providers for AWS, Azure and other vendors this one doesn't communicate with any cloud. The null-provider 
 has its own resources and they can be found in terraform registry (null_resources, null_data_source). In the main.tf file is only the configuration for the provider itself. 

 # FILES IN THE REPO

  - Create `main.tf` file

    ```
    provider "null" {}

    ```
    

 ## TESTING

   ### Commands for testing the configuration

     ```
     $ terraform init 
     $ terraform plan
     $ terraform apply

     - `Terraform init` will:
        - Initalize the required plugins

     - `Terraform apply` will:
        - Apply the configuration

    #### Outputs
      - No outputs to show 
