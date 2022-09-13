#!/bin/bash

kubectl apply -f namespace.yaml

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/metallb.yaml

kubectl apply -f deploy-lb-q.yaml

