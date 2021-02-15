remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "77dafe3e209449568117178dfe8333d8"
    key = "${path_relative_to_include()}/terraform.tfstate"
    dynamodb_table = "77dafe3e209449568117178dfe8333d8"
    region = "us-east-1"
    encrypt = true
    s3_bucket_tags = {
      "platform" = "abp"
      "component" = "vpc-test-v"
      "owner" = "sre-bot"
      "managed_by" = "terraform"
      "github" = "N/A"
    }
    dynamodb_table_tags = {
      "platform" = "abp"
      "component" = "vpc-test-v"
      "owner" = "sre-bot"
      "managed_by" = "terraform"
      "github" = "N/A"
    }
  }
}