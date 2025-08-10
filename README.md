# azure-data-platform
Template for modern azure data platform. Supports local dev and cloud deployment. 

This project uses Docker for spinning up local PostgresDB, Airflow for orchestration. Python for ETL development, dbt for Data Modelling and Terraform for Cloud provisioning.

## Index

1. [Get-started](#get-started)
2. [Tools](#tools)

## Get started

### Cloud Deployment
To use cloud deployments it is necessary that you have an Azure subscription!

### Local Deployment

This project uses Docker and Kind for local development and testing.

---

#### Prerequisites

- **Docker Engine** installed and running
- **kind** (Kubernetes IN Docker) installed
- `kubectl` CLI installed (for interacting with Kubernetes clusters)

---

##### Installing Docker Engine

###### Linux

Follow the official guide:  
[https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)

Make sure the Docker daemon is running.

###### macOS

- Install Docker Engine via [Docker Desktop for Mac](https://docs.docker.com/desktop/mac/install/)  
- Alternatively, install Docker Engine natively or use Docker Desktop

---

###### Installing kind (Kubernetes IN Docker)

`kind` lets you run Kubernetes clusters locally using Docker containers.

###### macOS

Using Homebrew:

```bash
brew install kind
```

###### Linux

Using curl:

```bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```

## Tools
### Airflow
### dbt
### PostgresSQL



## Extending

This data platform template was made to be easily extendable. 

Some basic services include 

TIP: Tools like Kompose allow for 