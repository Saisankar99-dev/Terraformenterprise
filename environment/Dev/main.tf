provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "../../Modules/vpc"
  cidr_block = var.vpc_cidr
  vpc_name   = "dev-vpc"
}


output "vpc_id" {
  description = "VPC ID in the dev environment"
  value       = module.vpc.vpc_id
}



