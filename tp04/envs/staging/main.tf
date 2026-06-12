module "vpc" {
  source = "../../modules/vpc"

  project            = "formation"
  environment        = "staging"
  vpc_cidr           = "10.20.0.0/16"
  availability_zones = ["eu-west-3a", "eu-west-3b"]
}
