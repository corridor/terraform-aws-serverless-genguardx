output "cluster_arn" {
  value = data.aws_ecs_cluster.existing.arn
}

output "service_name" {
  value = aws_ecs_service.this.name
}

output "alb_dns_name" {
  value = aws_lb.this.dns_name
}

output "app_url" {
  value = "https://${var.hostname}"
}

output "jupyter_url" {
  value = "https://${var.hostname}/jupyter"
}

output "efs_file_system_id" {
  value = aws_efs_file_system.this.id
}
