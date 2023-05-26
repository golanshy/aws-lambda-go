terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
    archive = {
      source = "hashicorp/archive"
    }
    null = {
      source = "hashicorp/null"
    }
  }

  required_version = ">= 1.3.7"
}

provider "aws" {
  region  = "eu-west-2"
  profile = "tutorial-terraform-profile"

  default_tags {
    tags = {
      app = "tutorial-terraform"
    }
  }
}