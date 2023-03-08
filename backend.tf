terraform {
  backend "s3" {
    bucket                      = "terraform-state"
    key                         = "terraform.tfstate"
    region                      = "eu-stockholm-1"
    endpoint                    = "https://objectstorage.eu-stockholm-1.oraclecloud.com/p/clJVTe-qMGJ9FZk7yecOVrqJVYsx1FBBpgGzYd6iLOrb8iGC734G7ZoCa7CAZ4G5/n/axquvpqvm9ie/b/terraform-state/o/"
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_requesting_account_id  = true

    # Configure pre-authenticated requests
    use_preauthenticated_requests = true

    # Set the pre-authenticated request details
    preauthenticated_request {
      description  = "Terraform State Storage"
      access_type  = "ObjectReadWrite"
      time_expires = "2030-12-31T23:59:00Z"
    }
  }
}
