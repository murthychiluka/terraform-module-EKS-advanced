region              = "us-east-1"
env                 = "prod"
vpc_name            = "prod-vpc"
vpc_cidr            = "10.2.0.0/16"
public_subnet_cidrs = ["10.2.1.0/24", "10.2.2.0/24"]
azs                 = ["us-east-1a", "us-east-1b"]

cluster_name    = "prod-eks"
cluster_version = "1.31"
node_group_name = "prod-node-group"
instance_types  = ["t3.xlarge"]
capacity_type   = "ON_DEMAND"
disk_size       = 50
desired_size    = 4
max_size        = 10
min_size        = 3
