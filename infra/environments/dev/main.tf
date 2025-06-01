# module "networking" {
#   source = "../../modules/networking"

#   environment          = terraform.workspace
#   vpc_cidr             = var.vpc_cidr
#   public_subnet_cidrs  = var.public_subnet_cidrs
#   private_subnet_cidrs = var.private_subnet_cidrs
#   availability_zones   = var.availability_zones
# }

# module "eks" {
#   source = "../../modules/eks"

#   environment        = terraform.workspace
#   vpc_id             = module.networking.vpc_id
#   public_subnet_ids  = module.networking.public_subnet_ids
#   private_subnet_ids = module.networking.private_subnet_ids
#   kubernetes_version = var.kubernetes_version
#   instance_types     = var.instance_types
#   desired_size       = var.desired_size
#   min_size           = var.min_size
#   max_size           = var.max_size
#   ecr_repositories   = var.ecr_repositories
# }

# resource "aws_cloudwatch_log_group" "eks_logs" {
#   name = "/aws/eks/${module.eks.cluster_name}/cluster"

#   retention_in_days = 7
#   tags = {
#     Name        = "${terraform.workspace}-eks-logs"
#     Environment = terraform.workspace
#   }

#   lifecycle {
#     # create_before_destroy = true
#     # prevent_destroy       = true
#     ignore_changes = [retention_in_days, tags]
#   }
# }

# resource "kubernetes_namespace" "monitoring" {
#   metadata {
#     name = "monitoring"
#   }
#   depends_on = [module.eks]
# }