variable "bucket_prefix" {
  description = "Prefixe applique au nom du bucket S3"
  type        = string
  default     = "formation-tp01"
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

variable "owner" {
  description = "Email de l owner du bucket"
  type        = string
}
