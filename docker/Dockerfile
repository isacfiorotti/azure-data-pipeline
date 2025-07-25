# docker/Dockerfile
FROM python:3.12-slim

# Set working directory in container
WORKDIR /app

# Install build tools + Poetry
RUN apt-get update && apt-get install -y curl build-essential \
 && curl -sSL https://install.python-poetry.org | python3 - \
 && rm -rf /var/lib/apt/lists/*

# Add Poetry to PATH
ENV PATH="/root/.local/bin:$PATH"

# Copy Poetry files and install dependencies
COPY pyproject.toml poetry.lock ./
RUN poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi --no-root

# Copy source code and config
COPY src/ ./src/
COPY config/ ./config/
COPY data/ ./data/

# Run the main pipeline script
CMD ["python", "src/main.py"]
