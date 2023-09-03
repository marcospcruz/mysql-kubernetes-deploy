#!/bin/bash
kind delete cluster --name ishop4u
kind create cluster --name ishop4u
kubectl create namespace ishop4u
kubectl apply -f system-constraints.yml --namespace=ishop4u
kubectl apply -f secret.yml --namespace=ishop4u
kubectl apply -f persistentVolumeClaim.yml --namespace=ishop4u
kubectl apply -f deployment.yml --namespace=ishop4u
kubectl apply -f service.yml --namespace=ishop4u