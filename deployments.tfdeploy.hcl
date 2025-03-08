identity_token "aws" {
  audience = ["aws.workload.identity"]
}
store "varset" "stack_config" {
  id       = "varset-rW24GZhiDZpfWpBY"
  category = "terraform"
}
deployment "development" {
  inputs = {
    enable_encryption = true
    tags = {
      CanDelete    = "true"
      Organization = "AnuragInit"
      Project      = "HelloS3Vcs"
      ManagedBy    = "Terraform"
    }
    bucket_name       = "stacks-cli-poc-test"
    region            = "ap-south-1"
    enable_versioning = true
    identity_token    = identity_token.aws.jwt
    role_arn          = store.varset.stack_config.role_arn
  }
}
