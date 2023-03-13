terraform {
  backend "s3" {
    endpoint       = "s3.zuptalo.com"
    bucket         = "terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "eu-north-1"
    access_key     = "terraform"
    secret_key     = "terraform"
    skip_metadata_api_check = true
    skip_credentials_validation = true
  }
}
