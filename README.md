# IsimaWipp - Setup

> Requires [docker](https://docs.docker.com/get-docker/), [kubectl](https://kubernetes.io/docs/tasks/tools/), [minikube](https://minikube.sigs.k8s.io/docs/start/), [helm](https://helm.sh/docs/intro/install/) and [yq](https://github.com/mikefarah/yq)

## Linux

run `setup.sh`

> Wait until all pods are ready. You can check the status with `kubectl get pods`, or run `wait.sh` 

`firefox $(minikube service wipp-keycloak --url | head -n 1)/auth`

> Login with 'admin' 'admin'

> Manually import the wipp-realm

`echo $(minikube service wipp-frontend --url | head -n 1)/*`

>Add that url in "Clients/wipp-public-client/Valid Redirect URIs" on the keycloak page and save.

`firefox $(minikube service wipp-frontend --url | head -n 1)`


## Windows

run `setup.bat`

> Find the keycloak url with `minikube service wipp-keycloak` and use it for the following command

run `setup-part2.bat *keycloak_url*` (for cmd)<br>
or  `setup-part2.ps1 *keycloak_url*` (for powershell)

> Wait until all pods are ready. You can check the status with `kubectl get pods`

`minikube service wipp-keycloak`

> Add '/auth/' to the url. Login with 'admin' 'admin'

> Manually import the wipp-realm

`minikube service wipp-frontend`

>Add the first tunnel url followed by '/*' in "Clients/wipp-public-client/Valid Redirect URIs" on the keycloak page and save.