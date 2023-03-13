variable "compartment_id" {
  description = "OCI Compartment ID"
  type        = string
}

variable "fingerprint" {
  description = "The fingerprint of the key to use for signing"
  type        = string
}

variable "private_key" {
  description = "Private key to use for signing"
  type        = string
}

variable "private_key_password" {
  description = "Password for private key to use for signing"
  type        = string
  default = ""
}

variable "region" {
  description = "The region to connect to. Default: eu-frankfurt-1"
  type        = string
  default     = "eu-stockholm-1"
}

variable "tenancy_ocid" {
  description = "The tenancy OCID."
  type        = string
}

variable "user_ocid" {
  description = "The user OCID."
  type        = string
}

variable "ssh_authorized_keys" {
  description = "List of authorized SSH keys"
  type        = list(string)
}

variable "pg_conn_str" {
  description = "The connection string for Postgres backend"
  type        = string
}

locals {
  cidr_blocks            = ["10.0.0.0/24"]
  ssh_managemnet_network = "0.0.0.0/0"
}

variable "S3_ACCESS_KEY" {
  description = "The Acccess Key for S3 Bucket."
  type        = string
}

variable "S3_SECRET_KEY" {
  description = "The Secret Key for S3 Bucket."
  type        = string
}

