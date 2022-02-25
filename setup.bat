helm repo add bitnami https://charts.bitnami.com/bitnami

helm install wipp-mongo -f ./wipp-mongo.yaml bitnami/mongodb

helm install wipp-backend ./wipp-backend

kubectl create configmap wipp-map --from-file=./wipp-realm.json

helm install wipp-keycloak -f ./wipp-keycloak.yaml bitnami/keycloak --version 1.0.1