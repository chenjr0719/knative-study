#!/usr/bin/env bash

set -e

curl -Lo ./kn-quickstart "https://github.com/knative-sandbox/kn-plugin-quickstart/releases/download/knative-v1.3.2/kn-quickstart-darwin-arm64"
chmod +x ./kn-quickstart
sudo mv ./kn-quickstart /usr/local/bin/kn-quickstart
sudo chown root: /usr/local/bin/kn-quickstart
