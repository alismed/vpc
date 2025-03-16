## AWS VPC using Terraform and GitHub Actions


### Infrastructure Management
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