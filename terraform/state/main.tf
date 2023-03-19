provider "aws" {
  region = "us-west-2"
}

locals {
  owner = "joseph"
  env =  "dev"
  sys = "taste-of-iac"
}

terraform {
  backend "local" {
    path = "statetf"
  }
  required_providers {
    aws = {
      version = "~>4.5.0"
    }
  }
}

