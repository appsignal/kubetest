# Kubernetes test setup

Barebones Ruby on Kubernetes test setup. Mostly following the
instructions in https://kubernetes-rails.com

Build the image:

```
docker build --build-arg revision=$(git rev-parse HEAD) -t appsignal/kubetest:latest .
```

Then run it and check that it works:

```
docker run -p 4567:4567 appsignal/kubetest:latest
```

If this works you can push the image:

```
docker push appsignal/kubetest:latest
```

And run a cluster, if kubernetes is on on your local docker instance:

```
kubectl apply -f k8s
```

Check that everything is running:

```
kubectl get pods
```

And you can now open the app on http://localhost:4567.

To delete the deployment run:

```
kubectl delete -f k8s
```

To deploy the latest version of the image:

```
kubectl rollout restart deployment.apps/kubetest-deployment
```
