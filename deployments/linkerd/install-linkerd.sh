#!/usr/bin/env bash

set -e

linkerd check --pre
linkerd install | kubectl apply -f - --wait
linkerd viz install | kubectl apply -f - --wait
