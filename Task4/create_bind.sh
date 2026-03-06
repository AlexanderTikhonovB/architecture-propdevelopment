kubectl create clusterrolebindings add_support --clusterrole=support --user=support
kubectl get rolebindings,clusterrolebindings -A -o wide | grep "support"

kubectl create rolebinding add_develop --clusterrole=develop --user=dev
kubectl get rolebindings,clusterrolebindings -A -o wide | grep "develop" 

kubectl create clusterrolebindings add_security --clusterrole=security --user=security
kubectl get rolebindings,clusterrolebindings -A -o wide | grep "security"