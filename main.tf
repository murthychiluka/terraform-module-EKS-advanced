provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_name            = var.vpc_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
  env                 = var.env
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids      = module.vpc.public_subnet_ids
  env             = var.env
}

module "nodegroup" {
  source            = "./modules/nodegroup"
  cluster_name      = module.eks.cluster_name
  node_group_name   = var.node_group_name
  node_role_arn     = module.eks.worker_role_arn
  subnet_ids        = module.vpc.public_subnet_ids
  instance_types    = var.instance_types
  capacity_type     = var.capacity_type
  disk_size         = var.disk_size
  desired_size      = var.desired_size
  max_size          = var.max_size
  min_size          = var.min_size
  cluster_version   = var.cluster_version
  env               = var.env
}

module "irsa" {
  source            = "./modules/irsa"
  cluster_name      = module.eks.cluster_name
  oidc_provider_arn = module.eks.oidc_provider_arn
  oidc_provider_url = module.eks.oidc_provider_url
  env               = var.env
}
