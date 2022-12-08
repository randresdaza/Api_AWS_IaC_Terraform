terraform {
  required_version = "1.3.4"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
  access_key = var.access_key
  secret_key = var.secret_key

  default_tags {
    tags = {
      Project   = "Serverless REST API Tutorial"
      CreatedAt = "2022-12-08"
      ManagedBy = "Terraform"
      Owner     = "Rafael Daza"
      Env       = var.env
    }
  }
}

