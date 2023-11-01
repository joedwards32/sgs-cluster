# sgs-cluster
Simple Gaming Service Cluster
## Requirements

The following requirements are needed by this module:

- <a name="requirement_aws"></a> [aws](#requirement\_aws) (~> 5.23)

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> [aws](#provider\_aws) (~> 5.23)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_default_route_table.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_route_table) (resource)
- [aws_ecs_cluster.sgs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) (resource)
- [aws_efs_file_system.sgs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) (resource)
- [aws_efs_mount_target.subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) (resource)
- [aws_iam_role.ecs_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) (resource)
- [aws_iam_role_policy_attachment.ecs-task-permissions](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) (resource)
- [aws_internet_gateway.sgs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) (resource)
- [aws_internet_gateway_attachment.sgs_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway_attachment) (resource)
- [aws_security_group.efs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) (resource)
- [aws_security_group.efs_clients](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) (resource)
- [aws_security_group_rule.efs_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) (resource)
- [aws_subnet.sgs_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) (resource)
- [aws_vpc.sgs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: Desired cluster name

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_efs_transition_to_ia"></a> [efs\_transition\_to\_ia](#input\_efs\_transition\_to\_ia)

Description: EFS Transition to Infrequent Access policy

Type: `string`

Default: `"AFTER_14_DAYS"`

## Outputs

The following outputs are exported:

### <a name="output_arn"></a> [arn](#output\_arn)

Description: n/a

### <a name="output_efs_clients_security_group_id"></a> [efs\_clients\_security\_group\_id](#output\_efs\_clients\_security\_group\_id)

Description: n/a

### <a name="output_efs_id"></a> [efs\_id](#output\_efs\_id)

Description: n/a

### <a name="output_execution_role_arn"></a> [execution\_role\_arn](#output\_execution\_role\_arn)

Description: n/a

### <a name="output_id"></a> [id](#output\_id)

Description: n/a

### <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id)

Description: n/a

### <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id)

Description: n/a
