terraform {
  backend "s3" {
    bucket = "tf-state-bensoualihocherif-formation"
    key    = "envs/staging/vpc/terraform.tfstate"
    region = "eu-west-3"
  }
}
