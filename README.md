# IsimaWipp
helm repo add bitnami https://charts.bitnami.com/bitnami


helm install newmongo -f ./mongodb.yaml bitnami/mongodb

helm install newbackend .\testbackend\

helm install newfrontend .\testfrontend\

helm install wipp-keycloak bitnami/keycloak --version 1.0.1