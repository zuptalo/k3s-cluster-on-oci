terraform {
  backend "s3" {
    bucket                      = var.bucket_name
    key                         = "terraform.tfstate"
    region                      = var.region
    endpoint                    = var.endpoint
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_requesting_account_id  = true

    # Configure pre-authenticated requests
    use_preauthenticated_requests = true

    # Set the pre-authenticated request details
    preauthenticated_request {
      description  = "Terraform State Storage"
      access_type  = "ObjectReadWrite"
      time_expires = "2030-12-31T00:00:00Z"
    }
  }
}
