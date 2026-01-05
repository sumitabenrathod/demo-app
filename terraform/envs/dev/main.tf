module "eks" {
  source       = "../../modules/eks"
  cluster_name = "eks-dev"
  env          = "dev"
}
