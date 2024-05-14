terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40"
    }
  }

  required_version = ">= 1.2.0"
}

data "aws_caller_identity" "current" {}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Project = "ArhitekturaRacunarskihMreza"
    }
  }
}

locals {
  account_id = data.aws_caller_identity.current.account_id
}
