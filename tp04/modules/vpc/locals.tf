locals {
  name_prefix = "${var.project}-${var.environment}"

  public_subnets = {
    "pub-a" = { az = var.availability_zones[0], cidr = cidrsubnet(var.vpc_cidr, 8, 1) }
    "pub-b" = { az = var.availability_zones[1], cidr = cidrsubnet(var.vpc_cidr, 8, 2) }
  }

  private_subnets = {
    "priv-a" = { az = var.availability_zones[0], cidr = cidrsubnet(var.vpc_cidr, 8, 101) }
    "priv-b" = { az = var.availability_zones[1], cidr = cidrsubnet(var.vpc_cidr, 8, 102) }
  }

  common_tags = {
    Project     = var.project
    Environment = var.environment
    ManagedBy   = "terraform"
    Owner       = "etudiant05"
  }
}
