#!/usr/bin/env bash

set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do SOURCE="$(readlink "$SOURCE")"; done
ROOT_DIR="$(cd -P "$(dirname "$SOURCE")/.." && pwd)"

curl -Lo ./kn-quickstart "https://github.com/knative-sandbox/kn-plugin-quickstart/releases/download/knative-v1.3.2/kn-quickstart-darwin-arm64"
chmod +x ./kn-quickstart
sudo mv ./kn-quickstart /usr/local/bin/kn-quickstart
sudo chown root: /usr/local/bin/kn-quickstart
