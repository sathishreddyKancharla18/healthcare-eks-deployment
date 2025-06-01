output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster.arn
}

output "eks_node_role_arn" {
  value = aws_iam_role.eks_nodes.arn
}

output "eks_autoscaling_policy_arn" {
  value = aws_iam_policy.eks_autoscaling.arn
}