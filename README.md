# IsimaWipp

## Setup

helm repo add bitnami https://charts.bitnami.com/bitnami

<br/>

helm install newmongo -f ./mongodb.yaml bitnami/mongodb

<br/>

helm install newbackend ./testbackend

minikube service wipp-backend

>add '/api' to url

>Should get a working api

<br/>

kubectl create configmap testmap --from-file=./wipp-realm.json

helm install wipp-keycloak -f ./keycloak.yaml bitnami/keycloak --version 1.0.1

minikube service wipp-keycloak

>add '/auth/' to url

>Should get a working keycloak page

>The automatic wipp-realm import does not work yet. But you can add it manually from there

echo $(minikube service wipp-keycloak --url | head -n 1)/auth/

>Change the KEYCLOAK_URL in testfrontend/templates/deployment.yaml to that one

helm install newfrontend ./testfrontend

minikube service wipp-frontend

echo $(minikube service wipp-frontend --url | head -n 1)/*

>Add that url in "Clients/wipp-public-client/Valid Redirect URIs" on the keycloak page

>Should get a working wipp page
