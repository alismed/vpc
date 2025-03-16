project_name  = "ABC Project"
vpc_cidr      = "10.0.0.0/22"
region        = "us-east-1"
profile       = "github-actions" # 'github-actions' is the github actions profile. for local development, make adjustments as needed
destroy_infra = true
vpc_tags = {
  Project_name = "ABC Project"
  Environment  = "Development"
}
