#!/usr/bin/env bash

set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do SOURCE="$(readlink "$SOURCE")"; done
ROOT_DIR="$(cd -P "$(dirname "$SOURCE")/.." && pwd)"

curl -Lo ./kn "https://github.com/knative/client/releases/download/knative-v1.3.1/kn-darwin-arm64"
chmod +x ./kn
sudo mv ./kn /usr/local/bin/kn
sudo chown root: /usr/local/bin/kn
