#!/usr/bin/env bash

set -e

kubectl annotate ns kourier-system knative-serving knative-eventing default linkerd.io/inject=enabled --overwrite

kubectl rollout restart deploy -n default
kubectl rollout restart deploy -n kourier-system
kubectl rollout restart deploy -n knative-serving
kubectl rollout restart deploy -n knative-eventing
