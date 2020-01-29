#!/bin/bash

# HOW TO CALL THE SCRIPT
# ./install_image_from_kubernetes_node.sh a5dd7ba41e2c 0.1.0

kubectl delete deployment florianmarc
kubectl create deployment florianmarc --image=marky7/florianmarc:0.1.0
kubectl expose deployment florianmarc --type=LoadBalancer --port 8000 --target-port 8000
kubectl get pods
