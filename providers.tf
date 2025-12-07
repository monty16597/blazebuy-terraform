terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "opsfabric-terraform-states"
    key          = "blazebuy/terraform.tfstate"
    region       = "ca-central-1"
    use_lockfile = true
    profile      = "vaishal"
  }
}

provider "aws" {
  region  = var.region
  profile = "vaishal"
}
