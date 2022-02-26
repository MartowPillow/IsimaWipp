$KEYCLOAK_URL=$args[0]/auth

echo $KEYCLOAK_URL

$yqcmd=echo (-join('(.spec.template.spec.containers[0].env[]|select(.name == \"KEYCLOAK_URL\").value ) |=\"', $KEYCLOAK_URL, '\"'))

yq -M $yqcmd .\generic-frontend-deployment.yaml | out-file -encoding UTF8 wipp-frontend/templates/deployment.yaml

helm install wipp-frontend ./wipp-frontend