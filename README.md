# Industrialisation d'un Modèle Machine Learning

Ce projet vise à industrialiser un modèle de Machine Learning pour prédire les frais d'hospitalisation des patients en fonction de plusieurs paramètres démographiques et de santé.

## 📌 Objectif
Construire une application web où les utilisateurs peuvent fournir des informations sur un patient via un formulaire, et obtenir une estimation des frais d'hospitalisation grâce à un modèle de régression.

## 🛠️ Technologies Utilisées
- **Python** 🐍
- **PyCaret** pour l'entraînement et le déploiement du modèle
- **Flask** pour créer l'application Web
- **Docker** pour conteneuriser l'application
- **Azure** pour le déploiement du service Web
- **GitHub** pour la gestion du code source

## 📂 Structure du Projet
```
📁 indus_projet_machine_learning
│── 📁 static
│── 📁 templates
│── 📁 venv
│── app.py  # Code principal de l'application Flask
│── Dockerfile  # Fichier pour créer l'image Docker
│── my_best_model.pkl  # Modèle sauvegardé
│── requirements.txt  # Liste des dépendances
│── README.md  # Documentation du projet
```

## 🚀 Installation & Exécution Locale
1. **Cloner le dépôt**
   ```bash
   git clone https://github.com/ton-utilisateur/ton-repo.git
   cd ton-repo
   ```

2. **Créer un environnement virtuel et installer les dépendances**
   ```bash
   python -m venv venv
   source venv/bin/activate  # Sur Linux/macOS
   venv\Scripts\activate  # Sur Windows
   pip install -r requirements.txt
   ```

3. **Exécuter l'application localement**
   ```bash
   python app.py
   ```
   L'application sera accessible sur `http://127.0.0.1:5000`

## 🐳 Déploiement avec Docker
1. **Construire l'image Docker**
   ```bash
   docker build -t ton-utilisateur/ton-image:latest .
   ```
2. **Exécuter le conteneur**
   ```bash
   docker run -dit -p 5000:5000 ton-utilisateur/ton-image
   ```

## ☁️ Déploiement sur Azure
1. **Créer un registre de conteneurs sur Azure**
2. **Se connecter à Azure Container Registry (ACR)**
   ```bash
   docker login ton-registre.azurecr.io
   ```
3. **Pousser l'image sur Azure**
   ```bash
   docker tag ton-utilisateur/ton-image ton-registre.azurecr.io/ton-image
   docker push ton-registre.azurecr.io/ton-image
   ```
4. **Créer une Web App sur Azure et la lier au conteneur**

## 📌 Liens Utiles
- PyCaret: [Documentation](https://pycaret.readthedocs.io)
- Flask: [Documentation](https://flask.palletsprojects.com/)
- Docker: [Documentation](https://docs.docker.com/)
- Azure: [Portail](https://portal.azure.com)

---
🔹 _Auteur: Lamyaa Errechaki_
