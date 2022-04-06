#!/usr/bin/env bash

set -e

curl --proto '=https' --tlsv1.2 -sSfL https://run.linkerd.io/install | sh
