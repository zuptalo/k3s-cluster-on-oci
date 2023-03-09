terraform {
  backend "s3" {
    bucket                      = "terraform-state"
    key                         = "terraform.tfstate"
    region                      = "eu-stockholm-1"
    endpoint                    = "https://objectstorage.eu-stockholm-1.oraclecloud.com"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    acl                         = "private"
    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
      }
    }
    workspace_key_prefix  = "tfstate"
    pre_authenticated_url = "https://objectstorage.eu-stockholm-1.oraclecloud.com/p/OjhagtZ4ZcbsQZNyxdkJ5erCy90SOO5pVus5OCLKgGQwDIaHsiuQZOeVSl-jn9DG/n/axquvpqvm9ie/b/terraform-state/o/"
  }
}
