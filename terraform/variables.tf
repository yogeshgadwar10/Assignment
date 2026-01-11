variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "eks_project" {
  description = "Project name for EKS resources"
  type        = string
}

variable "eks_desired_nodes" {
  description = "Desired number of EKS nodes"
  type        = number
}

variable "eks_max_nodes" {
  description = "Maximum number of EKS nodes"
  type        = number
}

variable "eks_min_nodes" {
  description = "Minimum number of EKS nodes"
  type        = number
}

variable "eks_node_instance_type" {
  description = "EKS node instance type"
  type        = string
}

# S3 Variables
variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "ginger-frontend-bug-v2"
}

variable "s3_environment" {
  description = "Environment tag for S3 bucket"
  type        = string
} 