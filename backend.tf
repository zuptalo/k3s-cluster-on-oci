terraform {
  backend "s3" {
    bucket                      = ${{ secrets.TF_VAR_BUCKET_NAME }}
    key                         = "terraform.tfstate"
    region                      = ${{ secrets.TF_VAR_REGION }}
    endpoint                    = ${{ secrets.TF_VAR_ENDPOINT }}
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
