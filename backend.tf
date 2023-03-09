terraform {
  backend "s3" {
    bucket                      = "terraform-state"
    key                         = "terraform.tfstate"
    region                      = "eu-stockholm-1"
    endpoint                    = "https://objectstorage.eu-stockholm-1.oraclecloud.com/p/OjhagtZ4ZcbsQZNyxdkJ5erCy90SOO5pVus5OCLKgGQwDIaHsiuQZOeVSl-jn9DG/n/axquvpqvm9ie/b/terraform-state/o/"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    acl                         = "private"
    workspace_key_prefix        = "tfstate"
  }
}
