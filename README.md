# DevOps TP – Report (Tasks 1 & 2)

## Task 1: Préparation du projet ML
- ✅ Forké le dépôt source vers mon compte GitHub.
- ✅ Cloné localement et vérifié la présence de :
  - `requirements.txt`
  - `src/train.py`
- ✅ Structure conforme aux attentes : projet ML minimal, pas d’API web.

## Task 2: Exécution locale
- ✅ Créé un environnement virtuel avec `python -m venv .venv`
- ✅ Installé les dépendances via `pip install -r requirements.txt`
- ✅ Entraînement réussi avec `python src/train.py` :
  - Modèle sauvegardé (`model.pkl`)
  - Accuracy affichée (~0.94–0.98 selon le dataset)
- ✅ Test effectué (directement dans `train.py`) :
  - Chargement du modèle
  - Évaluation sur données de test → métriques affichées

➡️ Captures d’écran disponibles dans `screenshots/`.

## 🔹 Task 3 : Tests unitaires avec pytest

### Étapes réalisées :
- ✅ Utilisé le fichier existant `tests/test_model.py`
- ✅ Corrigé l’erreur `ModuleNotFoundError: No module named 'src'` en ajoutant `src/__init__.py` et en lançant `python -m pytest tests/ -v`
- ✅ Validé **6 tests unitaires significatifs** (initialisation, entraînement, prédiction, évaluation, sauvegarde, chargement, chargement des données)
- ✅ Tous les tests passent localement → **6/6 réussis**

📸 **Preuve visuelle** :  
![task3_pytest_fixed.png](screenshots/task3_pytest_fixed.png)