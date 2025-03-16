variable "region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "The AWS profile to use"
  type        = string
  default     = "default"
}

variable "availabilityZones" {
  description = "The AWS availability zones to deploy in"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = ""
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in VPC"
  type        = bool
  default     = true
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}

variable "map_public_ip" {
  description = "Enable auto-assign public IP on subnet"
  type        = bool
  default     = false
}

variable "vpc_tags" {
  description = "Tags for the VPC"
  type        = map(string)
  default     = {
    Project_name = ""
    Environment  = ""
  }
}