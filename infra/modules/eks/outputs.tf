output "cluster_name" {
  value = aws_eks_cluster.cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "cluster_certificate_authority_data" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "node_group_arn" {
  value = aws_eks_node_group.node_group.arn
}

output "ecr_repository_urls" {
  value = { for k, v in aws_ecr_repository.app_repositories : k => v.repository_url }
}