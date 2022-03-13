# IsimaWipp - Setup

> Requires [docker](https://docs.docker.com/get-docker/), [kubectl](https://kubernetes.io/docs/tasks/tools/), [minikube](https://minikube.sigs.k8s.io/docs/start/), [helm](https://helm.sh/docs/intro/install/) and [yq](https://github.com/mikefarah/yq)

Must have docker running and minikube started.

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

> Wait until all pods are ready. You can check the status with `kubectl get pods`

run `minikube service wipp-keycloak` and use the url of the first opened window for the following command

run `setup-part2.bat *keycloak_url*` (for cmd)<br>
or  `setup-part2.ps1 *keycloak_url*` (for powershell)

> That window should have changed into a WilfFly page. Add '/auth' to the url. Login with 'admin' 'admin'

> Manually import the wipp-realm

`minikube service wipp-frontend`

>Add the first tunnel url followed by '/*' in "Clients/wipp-public-client/Valid Redirect URIs" on the keycloak page and save.
