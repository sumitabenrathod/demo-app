module "eks" {
  source       = "../../modules/eks"
  cluster_name = "eks-prod"
  env          = "prod"
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets  
}
