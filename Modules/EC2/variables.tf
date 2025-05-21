variable "environment" {
  description = "Environment name (dev/prod)"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for security group"
  type        = string
}

variable "instance_config" {
  description = "Map of EC2 instance configurations"
  type = map(object({
    ami           = string
    instance_type = string
    subnet_id     = string
    tags          = map(string)
  }))
}

variable "security_group_rules" {
  description = "List of ingress rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
