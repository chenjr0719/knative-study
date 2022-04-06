#!/usr/bin/env bash

set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do SOURCE="$(readlink "$SOURCE")"; done
ROOT_DIR="$(cd -P "$(dirname "$SOURCE")/../.." && pwd)"

kind create cluster --config $ROOT_DIR/deployments/kind/kind.yaml --wait 2m
