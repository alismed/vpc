## AWS VPC using Terraform and GitHub Actions
This project demonstrates how to create a VPC and Subnets using Terraform for infrastructure provisioning and GitHub Actions.

## Requirements

### Local Development
- AWS CLI
- Terraform CLI

### AWS Resources
- AWS Account with appropriate permissions
- S3 Bucket for Terraform state (can be created via terraform)

### AWS Configuration
1. Configure AWS CLI credentials `aws configure`
2. For testing add profiles in:
   - `.aws/credentials`
   - `.aws/config`

## Infrastructure Management
```shell
# Initialize Terraform
terraform -chdir=infra init

# Format Terraform files
terraform -chdir=infra fmt

terraform -chdir=infra validate

# Plan changes
terraform -chdir=infra plan

# Apply changes
terraform -chdir=infra apply -auto-approve

# Destroy infrastructure
terraform -chdir=infra destroy -auto-approve
```