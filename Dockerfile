# Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Copier les dépendances d'abord (cache-friendly)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code source
COPY src/ src/
COPY tests/ tests/

# Pas de CMD nécessaire pour le build — on veut juste que l’image se construise
CMD ["echo", "✅ Docker image built successfully!"]