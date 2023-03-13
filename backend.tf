terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    endpoint       = "s3.zuptalo.com"
    access_key     = "terraform"
    secret_key     = "terraform"
  }
}
