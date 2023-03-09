terraform {
  backend "s3" {
    bucket                      = "terraform-state"
    region                      = "eu-stockholm-1"
    endpoint                    = "https://objectstorage.eu-stockholm-1.oraclecloud.com/p/Bu_KtpHn9YqAX39N7ef7cgtc3aC75VJPPYa5i0RULXJQjThLTOljo0VxrBCeH3aH/n/axquvpqvm9ie/b/terraform-state/o/"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    acl                         = "private"
    workspace_key_prefix        = "terraform-state"
  }
}
