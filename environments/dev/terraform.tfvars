region              = "us-east-1"
env                 = "dev"
vpc_name            = "dev-vpc"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
azs                 = ["us-east-1a", "us-east-1b"]

cluster_name    = "dev-eks"
cluster_version = "1.31"
node_group_name = "dev-node-group"
instance_types  = ["t3.medium"]
capacity_type   = "ON_DEMAND"
disk_size       = 20
desired_size    = 2
max_size        = 4
min_size        = 1
