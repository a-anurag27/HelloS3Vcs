# commented by tf-stack cli tool while generating stacks equivalent to the modules
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }

#     random = {
#       source  = "hashicorp/random"
#       version = "~> 3.1"
#     }
#   }

#   backend remote {
#     organization = "AnuragInit"
#     workspaces {
#       name = "workspace01"
#     }
#   }
# }


# provider "aws" {
#   region = var.region
# }

# module "s3_bucket" {
#   source            = "./modules/s3"
#   bucket_name       = var.bucket_name
#   tags              = var.tags
#   enable_versioning = var.enable_versioning
#   enable_encryption = var.enable_encryption
#   region            = var.region
# }
