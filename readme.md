### This repository contains an example how to create a AWS VPC and EC2 instance in it.

### How to install terraform : 

- The information about installing terraform can be found on the HashiCorp website 
[here](https://learn.hashicorp.com/terraform/getting-started/install.html)

#### How to use it :

- In a directory of your choice, clone the github repository :
    ```
    git clone git@github.com:martinhristov90/terraform_vpc.git
    ```

- Substitute the values in `vars.tf` to fit your needs.

- Change into the directory :
    ```
    cd terraform_vpc
    ```
- Run `terraform init` to download the random provider.

- Run `terraform plan` to see what actions are going to be performed Terraform. Output should look like this :
    ```
    --- SNIP ---
    # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.0.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = false
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = true
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Name" = "testing-vpc"
        }
    }
    Plan: 8 to add, 0 to change, 0 to destroy.
    ```

- Run `terraform apply` to create the both resources. 

- In order to destroy the created resources, you can use `terraform destroy`.

#### N.B
- All `.tf` files have explanation of the resources they create within them as comments.