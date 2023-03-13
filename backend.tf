terraform {
  backend "s3" {
    bucket         = "terraform-state"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    endpoint       = "s3.zuptalo.com"
    access_key     = "r5K7SmnEqra4aOkn"
    secret_key     = "SnBD7AXJZlhF22s8cmDoCYqCS0GHTIeQ"
  }
}
