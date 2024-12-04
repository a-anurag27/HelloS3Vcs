terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  tags = merge(var.tags, {
    Name = var.bucket_name
    UpdatedAt = timestamp()
  })
  enable_versioning = var.enable_versioning
  enable_encryption = var.enable_encryption
}