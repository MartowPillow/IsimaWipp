# IsimaWipp - Setup

> Requires [docker](https://docs.docker.com/get-docker/), [kubectl](https://kubernetes.io/docs/tasks/tools/), [minikube](https://minikube.sigs.k8s.io/docs/start/) and [helm](https://helm.sh/docs/intro/install/).

## Linux

run setup.sh

> Wait until all pods are ready. You can check the status with 'kubectl get pods', or run wait.sh (requires [yq](https://github.com/mikefarah/yq))

firefox $(minikube service wipp-keycloak --url | head -n 1)/auth

> Login with 'admin' 'admin'

> Manually import the wipp-realm

echo $(minikube service wipp-frontend --url | head -n 1)/*

>Add that url in "Clients/wipp-public-client/Valid Redirect URIs" on the keycloak page and save.

firefox $(minikube service wipp-frontend --url | head -n 1)


## Windows

run setup.bat

> Find the keycloak url with 'minikube service wipp-keycloak'

> Store that ul follow by '/auth' in $KEYCLOAK_URL

echo $(get-content generic-frontend-deployment.yaml) | %{$_ -replace "${KEYCLOAK_URL}",$KEYCLOAK_URL} > wipp-frontend/templates/deployment.yaml

helm install wipp-frontend ./wipp-frontend

> Wait until all pods are ready. You can check the status with 'kubectl get pods'

minikube service wipp-keycloak

> Add '/auth/' to the url. Login with 'admin' 'admin'

> Manually import the wipp-realm

minikube service wipp-frontend --url

>Add the first url followed by '/*' in "Clients/wipp-public-client/Valid Redirect URIs" on the keycloak page and save.

minikube service wipp-frontend