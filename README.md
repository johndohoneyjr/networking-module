# AWS Terraform Module

This is part of a Multi-Cloud demo, that demonstrates 
1. Terraform Modules
2. Remote State (and how teams can be partitioned with TFE Workspaces)

This HA configuration should not be used in a production environment, it is for demonstration purposes only.

# Before you start

  - This demo assumes your AWS credentials are in the default location Terraform can find.  As an example, on OS-X they are found at ~/.aws/credentials

### Demo

One of the collaboration features of TFE, is the ability to partition aspects of your product.  In this case, we are going to partition the network infrastructure from the rest of the product.  In order to do this, any consumer of this module will need to add 

terraform {
  backend "atlas" {
    name    = "johndohoneyjr/networking-partition"
    address = "https://app.terraform.io"
  }
}


Then to use the state in another workspace, you will create a data resource in Terraform as follows:

data "terraform_remote_state" "networking" {
  backend = "atlas"
  config {
    name = "johndohoneyjr/networking-partition"
  }
}

