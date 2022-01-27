# IsimaWipp

## Setup

helm repo add bitnami https://charts.bitnami.com/bitnami

helm install newmongo -f ./mongodb.yaml bitnami/mongodb

helm install newbackend .\testbackend\

helm install wipp-keycloak bitnami/keycloak --version 1.0.1

helm install newfrontend .\testfrontend\

## Verification:

minikube service wipp-backend

add '/api' to url

Should get a working api

<br/>

minikube service wipp-keycloak

add '/auth/' to url

Should get a working keycloak page

<br/>

minikube service wipp-frontend

does not work yet
