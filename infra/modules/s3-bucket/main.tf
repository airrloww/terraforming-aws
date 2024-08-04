provider "aws" {

  # Make it faster by skipping something
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
}

locals {
  bucket_name = "s3-bucket-${random_pet.this.id}"
}

resource "random_pet" "this" {
  length = 2
}

module "simple_bucket" {
  source = "../../../modules/s3-bucket"

  bucket = "simple-${random_pet.this.id}"

  force_destroy = true
}