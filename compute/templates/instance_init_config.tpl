#!/bin/bash

if [[ "$HOSTNAME" =~ "server_0" ]]; then
    # shellcheck disable=SC2154
    curl -sfL https://get.k3s.io | K3S_TOKEN=${token} sh -s - server --cluster-init
else
    # shellcheck disable=SC2154
    curl -sfL https://get.k3s.io | K3S_TOKEN=${token} sh -s - server --server https://"${server_0_ip}":6443
fi
