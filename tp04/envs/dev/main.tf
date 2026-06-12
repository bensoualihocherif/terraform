module "vpc" {
  source = "../../modules/vpc"

  project            = "formation"
  environment        = "dev"
  vpc_cidr           = "10.10.0.0/16"
  availability_zones = ["eu-west-3a", "eu-west-3b"]
}
