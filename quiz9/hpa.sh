#!/bin/bash

rm -rf components.yaml 2> /dev/null
git clone https://github.com/beomtaek78/hpa.git
mv hpa/components.yaml .
rm -rf hpa
kubectl apply -f components.yaml

kubectl apply -f deploy-q.yaml

kubectl autoscale deploy autoscaletest --cpu-percent=10 --min=3 --max=10

kubectl get hpa
