locals {
  backend_config = read_terragrunt_config("environments/${get_env("TG_ENVIRONMENT")}/backend-config.hcl")
  inputs = read_terragrunt_config("environments/${get_env("TG_ENVIRONMENT")}/inputs.hcl")
}

remote_state {
  backend = local.backend_config.remote_state.backend
  generate = local.backend_config.remote_state.generate
  config = local.backend_config.remote_state.config
}

terraform {
  source = "git@github.com:vytautaskubilius/terraform-test.git?ref=v0.1.3"
}

inputs = local.inputs.inputs