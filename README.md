# 8936873_terraform_project

# Final Project: AWS Infrastructure with Terraform

## Overview
This project deploys:
- An S3 bucket with versioning (for tfstate)
- A DynamoDB table (for state locking)
- A custom VPC with public subnet
- An EC2 instance with SSH and web access

## Setup Instructions
1. Clone repo and cd into folder
2. Run `terraform init`
3. Run `terraform apply`

## Files
- `main.tf`: S3 + DynamoDB setup
- `vpc.tf`: VPC, subnet, IGW, routing
- `ec2.tf`: EC2 instance
- `variables.tf`: Variables definition
- `terraform.tfvars`: Variable values
- `outputs.tf`: EC2 public IP

## Screenshots
(Add Terraform apply output, AWS console views)
