variable "aws_region" {
  description = "AWS region for the environment"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC in devs"
  type        = string
  default     = "10.0.0.0/16"
}

