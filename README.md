# minikube-node-typescript
Developing Typescript apps on Kubernetes

## Quick Start
Must have `minikube` and `kubectl` available

```sh
git clone git@github.com:mwthink/minikube-node-typescript.git
cd minikube-node-typescript

# From the repo root
minikube start
sh deploy/make-volumes.sh | kubectl apply -f -
kubectl apply -k deploy/kustom
```
