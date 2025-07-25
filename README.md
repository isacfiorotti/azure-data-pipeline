# azure-data-pipeline

A modular, production-grade azure data pipeline template built with Azure AKS, Docker, and Terraform — designed for scalable ingestion, transformation, and orchestration in azure environments.

## 🛠️ Getting Started

```bash
# Clone and navigate
git clone https://github.com/yourname/core-data-pipeline.git
cd core-data-pipeline

# Start environment
colima start
docker build -f docker/Dockerfile -t core-data-pipeline:latest .
docker run --rm core-data-pipeline:latest
```
