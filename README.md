# Kubernetes Learning Boilerplate

This folder contains a minimal Kubernetes manifest set for learning and testing.

## Files

- `deployment.yaml` - runs a small NGINX deployment with 2 replicas
- `service.yaml` - exposes the deployment inside the cluster

## Apply

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

## Check

```bash
kubectl get deployments
kubectl get pods
kubectl get svc
```
