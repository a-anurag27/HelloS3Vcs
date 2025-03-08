terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.62.0"
    }
  }
}


provider "tfe" {
  hostname     = var.tfe_hostname
  organization = var.tfe_organization
}

data "tfe_project" "main" {
  name         = var.tfe_project_name
  organization = var.tfe_organization
}

data "tfe_oauth_client" "client" {
  organization     = data.tfe_project.main.organization
  service_provider = var.stacks_vcs_service_provider
}

resource "tfe_stack" "main" {
  name        = var.tfe_stack_name
  description = var.tfe_stack_description
  project_id  = data.tfe_project.main.id

  vcs_repo {
    branch         = var.stacks_vcs_branch_name
    identifier     = var.stacks_vcs_repo_identifier
    oauth_token_id = data.tfe_oauth_client.client.oauth_token_id
  }
}

resource "tfe_variable_set" "stack_config" {
  global = true
  name         = var.stacks_config_varset_name
  description  = "Configuration for stack deployments"
  organization = data.tfe_project.main.organization
}

resource "tfe_variable" "role_arn" {
  key             = "role_arn"
  value           = var.role_arn  
  category        = "terraform"
  sensitive       = true
  variable_set_id = tfe_variable_set.stack_config.id
}
