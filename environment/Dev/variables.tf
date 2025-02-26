variable "aws_region" {
  description = "AWS region for the environment"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC in dev"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance in dev"
  type        = string
  default     = "ami-00bb6a80f01f03502"   # Replace with a valid AMI in us-east-1
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
