module "eks" {
  source       = "../../modules/eks"
  cluster_name = "eks-dev"
  env          = "dev"
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}
