#!/usr/bin/env bash

set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do SOURCE="$(readlink "$SOURCE")"; done
ROOT_DIR="$(cd -P "$(dirname "$SOURCE")/../.." && pwd)"

kubectl -n default apply -f $ROOT_DIR/deployments/cloudevents-player/cloudevents-player.yaml

# http://cloudevents-player.default.127.0.0.1.sslip.io/
