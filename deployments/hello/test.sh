#!/usr/bin/env bash

set -e

echo "Accessing URL $(kn -n default service describe hello -o url)"
curl "$(kn -n default service describe hello -o url)"
