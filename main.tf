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
  required_providers {
    oci = {
      source = "registry.terraform.io/hashicorp/oci"
    }
  }
}

provider "oci" {
  private_key_path     = var.private_key
  private_key_password = var.private_key_password
}

module "network" {
  source = "./network"

  compartment_id = var.compartment_id
  tenancy_ocid   = var.tenancy_ocid

  cidr_blocks            = local.cidr_blocks
  ssh_managemnet_network = local.ssh_managemnet_network
}

module "compute" {
  source     = "./compute"
  depends_on = [module.network]

  compartment_id      = var.compartment_id
  tenancy_ocid        = var.tenancy_ocid
  cluster_subnet_id   = module.network.cluster_subnet.id
  permit_ssh_nsg_id   = module.network.permit_ssh.id
  ssh_authorized_keys = var.ssh_authorized_keys

  cidr_blocks = local.cidr_blocks
}
