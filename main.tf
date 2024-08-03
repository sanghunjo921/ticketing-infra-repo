module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-05fd2e30d91313e35"

  private_subnets = ["subnet-00c20b1e1dc5e708b", "subnet-0e4209fcc68e77665"]
  public_subnets  = ["subnet-023541cff0e4cc86d", "subnet-06a38309a68b071f9"]
}