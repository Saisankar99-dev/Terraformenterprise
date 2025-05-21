output "instance_ids" {
  description = "EC2 instance IDs"
  value       = values(aws_instance.ec2)[*].id
}

output "security_group_id" {
  description = "EC2 security group ID"
  value       = aws_security_group.ec2_sg.id
}
