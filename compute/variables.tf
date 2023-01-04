variable "compartment_id" {
  description = "OCI Compartment ID"
  type        = string
}

variable "tenancy_ocid" {
  description = "The tenancy OCID."
  type        = string
}

variable "cluster_subnet_id" {
  description = "Subnet for the bastion instance"
  type        = string
}

variable "permit_ssh_nsg_id" {
  description = "NSG to permit SSH"
  type        = string
}

variable "ssh_authorized_keys" {
  description = "List of authorized SSH keys"
  type        = list(string)
}


variable "cidr_blocks" {
  description = "CIDRs of the network, use index 0 for everything"
  type        = list(any)
}

locals {
  ampere_instance_config = {
    shape_id = "VM.Standard.A1.Flex"
    ocpus    = 2
    ram      = 12

    // Canonical-Ubuntu-22.04-Minimal-aarch64-2022.11.05-0 eu-stockholm-1
    source_id   = "ocid1.image.oc1.eu-stockholm-1.aaaaaaaasyakvatnvqqpfy6g6s6v2aag6zilk6bj7vu3lskzwh2324t3sdkq"
    source_type = "image"

    metadata = {
      "ssh_authorized_keys" = join("\n", var.ssh_authorized_keys)
    }
  }
  micro_instance_config = {
    shape_id = "VM.Standard.E2.1.Micro"
    ocpus    = 1
    ram      = 1

    // Canonical-Ubuntu-22.04-Minimal-2022.11.05-0 eu-stockholm-1
    source_id   = "ocid1.image.oc1.eu-stockholm-1.aaaaaaaafuftjjpwoaihmkkwbq5rbg4bxuzwnndf574h7zuh2wwx4bn66lgq"
    source_type = "image"

    metadata = {
      "ssh_authorized_keys" = join("\n", var.ssh_authorized_keys)
    }
  }
}
