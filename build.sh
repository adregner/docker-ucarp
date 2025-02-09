#!/usr/bin/env bash
docker build -t registry.aregner.net/ucarp:latest .
docker push registry.aregner.net/ucarp:latest
kubectl apply -n kube-system -f ./k8s-manifest.yml
