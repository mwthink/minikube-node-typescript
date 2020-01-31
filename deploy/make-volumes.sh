#!/bin/sh

PROJECT_ROOT="${PROJECT_ROOT:-"$(pwd)/"}"

cat <<EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: minikube-node-typescript
spec:
  accessModes: ["ReadOnlyMany"]
  capacity:
    storage: 10Gi
  persistentVolumeReclaimPolicy: Retain
  storageClassName: project-root
  hostPath:
    path: ${PROJECT_ROOT}
    type: Directory
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: minikube-node-typescript
spec:
  accessModes: ["ReadOnlyMany"]
  resources:
    requests:
      storage: 10Gi
  storageClassName: project-root
  volumeName: minikube-node-typescript
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: yarn-data
spec:
  accessModes: ["ReadOnlyMany"]
  resources:
    requests:
      storage: 10Gi
EOF
