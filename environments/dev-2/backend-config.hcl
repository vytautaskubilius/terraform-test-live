remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "c2f7962916ad41cdb5576548b3ee5204"
    key = "${path_relative_to_include()}/terraform.tfstate"
    dynamodb_table = "c2f7962916ad41cdb5576548b3ee5204"
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