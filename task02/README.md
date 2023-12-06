Prometheus and Grafana will be deployed in EKS cluster 


This repository shows how to use Helm with Terraform using the official [Helm provider](https://registry.terraform.io/providers/hashicorp/helm/2.4.1). 

This deploys a monitoring infrastructure with [Grafana](https://grafana.com/) & [Prometheus](https://prometheus.io/) 
as a concrete example.


## Access Prometheus UI

Create the port-forward session to the Prometheus server:
```bash
$ kubectl port-forward --namespace monitoring svc/prometheus-server 8080:80
```

Go to [http://localhost:8080](http://localhost:8080) to access the Prometheus UI:



## Access Grafana UI

Create the port-forward session to Grafana:

```bash
kubectl port-forward --namespace monitoring svc/grafana 3000:80
```

Get the Grafana admin username:

```bash
$ kubectl get secret --namespace monitoring grafana -o jsonpath="{.data.admin-user}" | base64 --decode 
```

Get the Grafana admin password:

```bash
kubectl get secret --namespace monitoring grafana -o jsonpath="{.data.admin-password}" | base64 --decode
```

Go to [http://localhost:3000](http://localhost:3000) to access the Grafana UI. Reuse the previous credentials to log in:
