# Terraform AWS Module Template
A repository template for creating reusable terraform modules to support infrastructure as code capabilities for workloads running on AWS. 

# Overview

# Usage 

<!-- BEGIN_TF_DOCS -->
# Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

# Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

# Modules

No modules.

# Resources

| Name | Type |
|------|------|
| [aws_appautoscaling_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ecs_cluster_name"></a> [ecs\_cluster\_name](#input\_ecs\_cluster\_name) | name of the ecs cluster that the autoscaling target belongs to | `string` | n/a | yes |
| <a name="input_ecs_service_name"></a> [ecs\_service\_name](#input\_ecs\_service\_name) | name of the ecs service that the autoscaling target belongs to | `string` | n/a | yes |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | max capacity of the scalable target | `number` | `4` | no |
| <a name="input_min_capacity"></a> [min\_capacity](#input\_min\_capacity) | minimum capacity of the scalable target | `number` | `1` | no |
| <a name="input_scalable_dimension"></a> [scalable\_dimension](#input\_scalable\_dimension) | scalable dimension of the scalable target | `string` | `"ecs:service:DesiredCount"` | no |
| <a name="input_service_namespace"></a> [service\_namespace](#input\_service\_namespace) | aws service namespace of the scalable target | `string` | `"ecs"` | no |

# Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_resource_id"></a> [resource\_id](#output\_resource\_id) | n/a |
| <a name="output_scalable_dimension"></a> [scalable\_dimension](#output\_scalable\_dimension) | n/a |
| <a name="output_service_namespace"></a> [service\_namespace](#output\_service\_namespace) | n/a |
<!-- END_TF_DOCS -->
