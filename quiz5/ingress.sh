#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml

kubectl delete validatingwebhookconfiguration ingress-nginx-admission
kubectl apply -f ingress-q.yaml
