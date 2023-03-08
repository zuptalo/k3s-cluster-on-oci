terraform {
  backend "s3" {
    bucket   = "terraform-state"
    key      = "terraform.tfstate"
    region   = "eu-stockholm-1"
    endpoint = "https://objectstorage.eu-stockholm-1.oraclecloud.com/p/clJVTe-qMGJ9FZk7yecOVrqJVYsx1FBBpgGzYd6iLOrb8iGC734G7ZoCa7CAZ4G5/n/axquvpqvm9ie/b/terraform-state/o/"
  }
}
