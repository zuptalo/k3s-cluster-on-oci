terraform {
  backend "s3" {
    bucket         = "terraform-state"
    key            = "terraform.tfstate"
    region         = "se-stockholm-1"
    endpoint       = "s3.zuptalo.com"
    access_key     = "${var.S3_ACCESS_KEY}"
    secret_key     = "${var.S3_SECRET_KEY}"
  }
}
