variable "max_capacity" {
  type        = number
  description = "max capacity of the scalable target"
  default     = 4
}

variable "min_capacity" {
  type        = number
  description = "minimum capacity of the scalable target"
  default     = 1
}

variable "scalable_dimension" {
  type        = string
  description = "scalable dimension of the scalable target"
  default     = "ecs:service:DesiredCount"
}

variable "service_namespace" {
  type        = string
  description = "aws service namespace of the scalable target"
  default     = "ecs"
}

variable "ecs_cluster_name" {
  type        = string
  description = "name of the ecs cluster that the autoscaling target belongs to"
}

variable "ecs_service_name" {
  type        = string
  description = "name of the ecs service that the autoscaling target belongs to"
}
