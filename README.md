# istio

#Deploy App
#kubectl label namespace <namespace> istio-injection=enabled
#kubectl create -n <namespace> -f <your-app-spec>.yaml
#istioctl kube-inject -f <your-app-spec>.yaml | kubectl apply -f -

#Uninstall
#kubectl delete -f install/kubernetes/istio-demo.yaml
#kubectl delete -f install/kubernetes/istio-demo-auth.yaml
#kubectl delete -f install/kubernetes/helm/istio/templates/crds.yaml -n istio-system


while true; do
  curl -s https://2886795290-80-ollie02.environments.katacoda.com/productpage > /dev/null
  echo -n .;
  sleep 0.2
done
