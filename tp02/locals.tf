locals {
  # 3. Préfixe combiné
  name_prefix = "${var.project}-${var.environment}"

  # 2. Config par environnement
  env_config = {
    dev = {
      versioning = false
      nat_count  = 1
    }
    staging = {
      versioning = false
      nat_count  = 1
    }
    prod = {
      versioning = true
      nat_count  = 2
    }
  }

  # 4. CIDRs calculés dynamiquement
  public_cidrs  = [for i in range(length(var.azs)) : cidrsubnet(var.vpc_cidr, 8, i + 1)]
  private_cidrs = [for i in range(length(var.azs)) : cidrsubnet(var.vpc_cidr, 8, i + 101)]

  common_tags = {
    Project     = var.project
    Environment = var.environment
    ManagedBy   = "terraform"
    Owner       = "etudiant05"
  }
}
