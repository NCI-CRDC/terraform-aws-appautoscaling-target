variable "app" {
  type        = string
  description = "the name of the application expressed as an acronym"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "the target tier ('dev', 'qa', 'stage', or 'prod'.)"
  sensitive   = false

  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "nonprod"], var.env)
    error_message = "valid values are 'dev', 'qa', 'stage', 'prod', and 'nonprod'"
  }
}

variable "program" {
  type        = string
  description = "the program associated with the application"
  sensitive   = false

  validation {
    condition     = contains(["crdc", "ccdi", "ctos"], var.program)
    error_message = "valid values for program are 'crdc', 'ccdi', and 'ctos'"
  }
}

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
