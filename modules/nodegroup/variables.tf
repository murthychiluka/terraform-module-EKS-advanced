variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "node_group_name" {
  description = "Node group name"
  type        = string
}

variable "node_role_arn" {
  description = "IAM role ARN for worker nodes"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for node group"
  type        = list(string)
}

variable "instance_types" {
  description = "EC2 instance types"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "capacity_type" {
  description = "ON_DEMAND or SPOT"
  type        = string
  default     = "ON_DEMAND"
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}

variable "desired_size" {
  description = "Desired node count"
  type        = number
}

variable "max_size" {
  description = "Maximum node count"
  type        = number
}

variable "min_size" {
  description = "Minimum node count"
  type        = number
}

variable "cluster_version" {
  description = "Kubernetes version for node group"
  type        = string
}

variable "env" {
  description = "Environment name"
  type        = string
}
