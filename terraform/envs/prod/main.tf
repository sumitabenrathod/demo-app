module "eks" {
  source       = "../../modules/eks"
  cluster_name = "eks-prod"
  env          = "prod"
}
