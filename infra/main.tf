provider "aws" {
  region = "eu-north-1"
}


module "iam-group-with-policies" {
  source = "./modules/iam-group-with-policies"
}