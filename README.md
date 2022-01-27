# IsimaWipp

## Setup

helm repo add bitnami https://charts.bitnami.com/bitnami

helm install newmongo -f ./mongodb.yaml bitnami/mongodb

helm install newbackend .\testbackend\

helm install newfrontend .\testfrontend\

helm install wipp-keycloak bitnami/keycloak --version 1.0.1

-------

## Verification:

kubectl get pods

kubectl port-forward wipp-backend_fullpodname 1001:8080

-->127.0.0.1:1001/api
(should see a json api)

<br/>

kubectl port-forward wipp-frontend_fullpodname 1002:80

-->127.0.0.1:1002
(should redirect to keycloak)

<br/>

kubectl port-forward wipp-keycloak_fullpodname 1003:8080

-->127.0.0.1:1003/auth/
(should get a working keycloak page)
