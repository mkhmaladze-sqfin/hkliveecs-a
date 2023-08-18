terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 5.0"
    }
  }

  backend "s3" {
    bucket = "sqfinhktestbucket"
    key    = "terraform/production/ap-east-1/ecs/hkliveecs-a/cluster-hkliveecs-a.tfstate"
    region = "ap-east-1"
  }

}






provider "aws" {
  region = local.region
}


locals {
  region = "ap-east-1"
  name   = "hkliveecs-a"
}