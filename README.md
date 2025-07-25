# core-data-pipeline

A modular, production-grade data pipeline built with Python, Docker, dbt, and Terraform — designed for scalable ingestion, transformation, and orchestration in financial services and risk analytics environments.

---

## 🚀 Features

- Containerized pipeline with Docker and Colima  
- Modular code structure (ETL, transformations, utilities)  
- Config-driven with YAML  
- dbt for SQL-based transformations  
- Terraform for provisioning data infrastructure  
- Supports local and cloud execution  

---

## 🧰 Stack

- **Python 3.12**  
- **Poetry** for dependency management  
- **Docker + Colima** for local containerization  
- **dbt** for data modeling  
- **Terraform** for infrastructure-as-code  

---

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
