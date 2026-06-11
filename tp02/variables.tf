variable "aws_region" {
  description = "Région AWS"
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Nom du projet"
  type        = string
  default     = "formation"
}

variable "vpc_cidr" {
  description = "CIDR du VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Liste des AZ"
  type        = list(string)
  default     = ["eu-west-3a", "eu-west-3b"]
}

variable "bastion_ssh_cidr" {
  description = "IP autorisée SSH bastion"
  type        = string
  default     = "0.0.0.0/0"
}

variable "environment" {
  description = "Environnement de déploiement"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "La valeur doit être dev, staging ou prod."
  }
}

variable "project" {
  description = "Nom du projet"
  type        = string
  default     = "formation"
}

variable "azs" {
  description = "Liste des AZ"
  type        = list(string)
  default     = ["eu-west-3a", "eu-west-3b"]
}
