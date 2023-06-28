terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "null" {}

resource "null_resource" "example" {
    triggers = {
      id = uuid()
    }

    provisioner "local-exec" {
      command = "echo This resource is created"
    }
}
