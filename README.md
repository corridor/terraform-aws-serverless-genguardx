# terraform-aws-serverless-genguardx

Terraform for running GenGuardX on AWS with ECS Fargate.

- one ECS service on an existing cluster
- a single Fargate task definition with:
  - `corridor-migration`
  - `redis`
  - `corridor-app`
  - `corridor-worker`
  - `corridor-jupyter`
- public ALB routing `/` to the app container on port `5002`
- ALB path routing `/jupyter` to the Jupyter container on port `5003`
- shared persistent storage via EFS access points

## What It Provisions

- ECS task definition and service on an existing ECS cluster
- Application Load Balancer, listeners, and target groups
- EFS file system, mount targets, and access points
- IAM task execution and task roles
- CloudWatch log group
- security groups for ALB, ECS tasks, and EFS

## Configure

Update `terraform.tfvars` from `terraform.tfvars.example`:

- `image`
- `hostname`
- `certificate_arn`
- `database_url`
- `license_key`

## Deploy

```bash
terraform init
terraform plan
terraform apply
```
