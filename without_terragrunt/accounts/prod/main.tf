provider "aws" {
    region = var.region      
}

module "vpc" {
  source = "cloudposse/vpc/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version = "x.x.x"
  # namespace  = "eg"
  stage      = "prod"
  name       = "app"
  cidr_block = "10.10.0.0/16"
}
