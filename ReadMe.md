### When setting repository secrets you have to skip the outer quote and double quotes!
#### Collect these information about your oracle cloud account and set them as repository secrets with these keys

- TF_VAR_user_ocid="<USER_OICD>"
- TF_VAR_tenancy_ocid="<TENANCY_OICD>"
- TF_VAR_compartment_id="<COMPARTMENT_ID>"
- TF_VAR_region="<REGION_NAME>"
- TF_VAR_fingerprint="<RSA_FINGERPRINT>"
- TF_VAR_private_key="<PRIVATE_KEY>"
- TF_VAR_pg_conn_str="<PG_CONN_STR>"

#### Provide the ssh public key that you would like to be added to the hosts, so you can later on ssh to them using it

- TF_VAR_ssh_authorized_keys='["<SSH_PUBLIC_KEY_1>","<SSH_PUBLIC_KEY_2>"]'
