#!/usr/bin/env bash

set -e

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-darwin-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
sudo chown root: /usr/local/bin/kind
