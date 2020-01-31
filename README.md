# minikube-node-typescript
Developing Typescript apps on Kubernetes.

## Overview
This repo is setup to demo running a Typescript development environment
in [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).

Each pod will mount the repo root as _read-only_ and have it's own instance
of _node\_modules_. The pod has an initContainer which will run `yarn install`,
using a shared-volume as a cache.

In short:
- No pod can modify your source directory
- Each pod has it's own copy of _node\_modules_
- Dependencies only download from the Internet when they change
- Updates require a new pod, not a new image

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
