terraform {
  backend "s3" {
    bucket         = "my-unique-bucket-2a4334ed"   # Pre-created S3 bucket for state
    key            = "Enterprise/terraform.tfstate"          # Unique path for the dev state file
    region         = var.aws_region                   # Region specified in variables
    dynamodb_table = "terraform-lock-table"           # Pre-created DynamoDB table for state locking
    encrypt        = true
  }
}
