wait=1
echo waiting for pods readyness 
while [[ $wait -gt 0 ]]; do
    wait=$(kubectl get pods -o json | yq '.items[] | select(.status.containerStatuses[0].ready==false)' | wc -l)
    sleep 2
    echo -n .
done

minikube service list