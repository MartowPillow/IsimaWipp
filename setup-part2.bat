set KEYCLOAK_URL=%1/auth

set yqcmd="(.spec.template.spec.containers[0].env[]|select(.name == \"KEYCLOAK_URL\").value ) |=\"%KEYCLOAK_URL%\""

yq -M %yqcmd% ./generic-frontend-deployment.yaml > wipp-frontend/templates/deployment.yaml

helm install wipp-frontend ./wipp-frontend