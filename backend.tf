terraform {
  backend "s3" {
    bucket         = "terraform-state"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    endpoint       = "s3.zuptalo.com"
    access_key     = "terraform"
    secret_key     = "terraform"
    skip_requesting_account_id = true
    skip_credentials_validation = false
    skip_get_ec2_platforms = true
    skip_metadata_api_check = true
    skip_region_validation = true
  }
}
