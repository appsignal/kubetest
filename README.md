# Kubernetes test setup

Barebones Ruby on Kubernetes test setup. Build the image:

```
docker build -t appsignal/kubetest:latest .
```

Then run it and check that it works:

```
docker run -p 4567:4567 appsignal/kubetest:latest
```
