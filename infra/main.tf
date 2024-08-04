provider "aws" {
  region = "eu-north-1"
}

# terraform {
#   backend "s3" {
#     bucket                  = "terraforming-aws-state" # create this manually in cloud console
#     key                     = "infra/terraform.tfstate.d" # the state file/dir
#     region = "eu-north-1"
#     encrypt        	   = true
#     dynamodb_table = "terraforming-aws-state" # create this manually in cloud console
#   }
# }

# module "iam-group-with-policies" {
#   source = "./modules/iam-group-with-policies"
# }

# module "iam-user" {
#   source = "./modules/iam-user"
# }

# module "s3-bucket" {
#   source = "./modules/s3-bucket"
# }