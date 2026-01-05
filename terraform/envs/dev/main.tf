module "vpc" {
  source          = "../../modules/vpc"
  env             = "dev"
  cidr            = "10.0.0.0/16"
  azs             = ["ap-south-1a", "ap-south-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
}

module "eks" {
  source          = "../../modules/eks"
  env             = "dev"
  cluster_name    = "eks-dev"
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}


module "ecr" {
  source = "../../modules/ecr"
  env    = "dev"
}
