terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Project = "ArhitekturaRacunarskihMreza"
    }
  }
}

locals {
  account_id = data.aws_caller_identity.current.account_id
}
