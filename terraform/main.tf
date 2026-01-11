
# provider "aws" {
#   region = "ap-south-1"
# }

# module "eks" {
#   source          = "terraform-aws-modules/eks/aws"
#   cluster_name    = "aws_eks_cluster.cbz_cluster.name"
#   cluster_version = "1.29"
#   subnet_ids      = data.aws_subnets.default.ids
#   vpc_id          = "vpc-xxxx"

#   eks_managed_node_groups = {
#     default = {
#       desired_size = 2
#       instance_types = ["t3.medium"]
#     }
#   }
# }
terraform {
    backend "s3" {
        bucket = "Hello-World-infra" 
        region = "us-east-1"
        key = "terraform.tfstate"
    }
}

provider "aws" {
    region = var.aws_region
}


module "eks" {
    source = "./modules/eks"
    
    project            = var.eks_project
    desired_nodes      = var.eks_desired_nodes
    max_nodes          = var.eks_max_nodes
    min_nodes          = var.eks_min_nodes
    node_instance_type = var.eks_node_instance_type
    environment        = var.environment
    depends_on =    [module.rds]
}

module "s3" {
    source = "./modules/s3"
    
    bucket_name  = var.s3_bucket_name
    environment  = var.s3_environment
}