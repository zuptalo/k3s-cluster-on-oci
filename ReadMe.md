#### Collect these information about your oracle cloud account and set them as repository secrets with these keys

- TF_VAR_user_ocid
- TF_VAR_tenancy_ocid
- TF_VAR_compartment_id
- TF_VAR_region
- TF_VAR_fingerprint
- TF_VAR_private_key
- TF_VAR_bucket_name
- TF_VAR_endpoint

#### Provide the ssh public key that you would like to be added to the hosts, so you can later on ssh to them using it
- TF_VAR_ssh_authorized_keys
  - It's value should be set as a comma separated string like this: "ssh-rsa ssh-private-key-1 Macbook,ssh-rsa ssk-private-key-2 Windows,ssh-rsa ssk-private-key-2 user@domain.xxx"
