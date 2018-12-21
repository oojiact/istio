curl -L https://git.io/getLatestIstio | sh -
cd istio-1.0.5
export PATH=$PWD/bin:$PATH
kubectl apply -f install/kubernetes/helm/istio/templates/crds.yaml
kubectl apply -f install/kubernetes/istio-demo.yaml
kubectl apply -f install/kubernetes/istio-demo-auth.yaml
kubectl get pods -n istio-system
kubectl create -f 'https://cloud.weave.works/launch/k8s/weavescope.yaml'
pod=$(kubectl get pod -n weave --selector=name=weave-scope-app -o jsonpath={.items..metadata.name})
kubectl expose pod $pod -n weave --external-ip="172.17.0.35" --port=4040 --target-port=4040




