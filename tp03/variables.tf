variable "environment" {
  type    = string
  default = "dev"
}

variable "project" {
  type    = string
  default = "formation"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  type    = list(string)
  default = ["eu-west-3a", "eu-west-3b"]
}

variable "bastion_allowed_cidr" {
  type    = string
  default = "13.38.88.131/32"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
