# TerraformBasicNetwork

## Infrastructure as Code (IaC) - Basic Network Module

### Overview
This repository provides a reusable Infrastructure as Code (IaC) module designed to simplify the setup of a basic network in cloud environments. By utilizing this module, users can skip repetitive standard steps and quickly deploy a foundational network architecture.

### Components
The module includes the following components:

- **VPC (Virtual Private Cloud)**: A logically isolated section of the cloud where resources can be deployed.
- **Internet Gateway**: Allows communication between instances in the VPC and the internet.
- **NAT Gateway**: Enables instances in private subnets to connect to the internet while preventing inbound traffic from the internet.
- **Public Subnets**: Two public subnets to host resources that need direct access to the internet.
- **Private Subnets**: Two private subnets for hosting resources that do not need direct internet access.
- **Public Route Table**: Manages routing for public subnets.
- **Private Route Table**: Manages routing for private subnets.

### Inputs
The module requires the following input variables:

- `vpc_cidr`: The CIDR block for the VPC.
- `subnet_cidr`: The first two octets of the subnet CIDR (e.g., `10.0.`) to be used for creating subnets.
- `first_availability_zone`: The first availability zone for resource placement.
- `second_availability_zone`: The second availability zone for resource placement.

### Outputs
After deploying the module, the following outputs will be available:

- **vpc_id**: The ID of the created VPC.
- **vpc_cidr**: The CIDR block of the created VPC.
- **igw_id**: The ID of the Internet Gateway associated with the VPC.
- **nat_id**: The ID of the NAT Gateway.
- **public_route_table_id**: The ID of the public route table.
- **private_route_table_id**: The ID of the private route table.
- **public_subnet_1_id**: The ID of the first public subnet.
- **public_subnet_1_cidr**: The CIDR block of the first public subnet.
- **public_subnet_2_id**: The ID of the second public subnet.
- **public_subnet_2_cidr**: The CIDR block of the second public subnet.
- **private_subnet_1_id**: The ID of the first private subnet.
- **private_subnet_1_cidr**: The CIDR block of the first private subnet.
- **private_subnet_2_id**: The ID of the second private subnet.
- **private_subnet_2_cidr**: The CIDR block of the second private subnet.

### Usage
To use this module, include it in your Terraform configuration as follows:

```hcl
module "basic_network" {
  source                  = "github.com/MohamedYehia599/TerraformBasicNetwork?ref=main"
  vpc_cidr                = "10.0.0.0/16"
  subnet_cidr             = "10.0."
  first_availability_zone  = "us-west-2a"
  second_availability_zone = "us-west-2b"
}