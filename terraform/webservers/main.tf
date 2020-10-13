variable "region" {}
variable "aws_iam_policy_document_assume_ecs_role" {}
variable "aws_iam_policy_access_dynamodb" {}
variable "aws_iam_policy_write_to_cloudwatch" {}
variable "aws_iam_role_ecs_task_execution" {}

variable "aws_vpc_main" {}
variable "aws_subnet_publics" {}

variable "http_port" {}
variable "websockets_port" {}

variable "container_cpu" {}
variable "container_memory" {}
variable "container_count" {}

provider "aws" {
  region  = var.region
  version = "~> 2.64"
}

# Fetch AZs in the current region
data "aws_availability_zones" "available" {}
data "aws_caller_identity" "current" {}

locals {
  anycable_redis_url = "redis://${aws_elasticache_cluster.anycable.cache_nodes.0.address}:6379/1"
  aws_account_id     = data.aws_caller_identity.current.account_id
}
