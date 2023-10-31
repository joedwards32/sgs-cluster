output "arn" {
  value = aws_ecs_cluster.sgs.arn
}

output "id" {
  value = aws_ecs_cluster.sgs.id
}

output "vpc_id" {
  value = aws_vpc.sgs.id
}

output "subnet_id" {
  value = aws_subnet.sgs_public.id
}

output "efs_id" {
  value = aws_efs_file_system.sgs.id
}

output "efs_clients_security_group_id" {
  value = aws_security_group.efs_clients.id
}

output "execution_role_arn" {
  value = aws_iam_role.ecs_role.arn
}
