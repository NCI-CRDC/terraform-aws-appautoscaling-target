output "id" {
  value = aws_appautoscaling_target.this.id
}

output "resource_id" {
  value = aws_appautoscaling_target.this.resource_id
}

output "scalable_dimension" {
  value = aws_appautoscaling_target.this.scalable_dimension
}

output "service_namespace" {
  value = aws_appautoscaling_target.this.service_namespace
}
