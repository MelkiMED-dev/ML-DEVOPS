# Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Copier les dépendances d'abord (cache-friendly)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code source
COPY src/ src/
COPY tests/ tests/

# ✅ Garantir que models/ existe DANS LE CONTENEUR
# Même s'il est vide localement, on le crée explicitement
RUN mkdir -p models

# Optionnel : copier un modèle pré-entraîné (si présent)
COPY models/ models/

# CMD neutre → image prête pour build/test
CMD ["echo", "✅ Docker image built successfully!"]