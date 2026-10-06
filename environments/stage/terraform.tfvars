region              = "us-east-1"
env                 = "stage"
vpc_name            = "stage-vpc"
vpc_cidr            = "10.1.0.0/16"
public_subnet_cidrs = ["10.1.1.0/24", "10.1.2.0/24"]
azs                 = ["us-east-1a", "us-east-1b"]

cluster_name    = "stage-eks"
cluster_version = "1.31"
node_group_name = "stage-node-group"
instance_types  = ["t3.large"]
capacity_type   = "ON_DEMAND"
disk_size       = 30
desired_size    = 3
max_size        = 6
min_size        = 2
