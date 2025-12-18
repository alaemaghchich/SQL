# Chapitre 2 – Élaborer un MCD / MLD

## 🎯 Objectif pédagogique

Être capable de construire un **Modèle Conceptuel de Données (MCD)** et de le traduire en **Modèle Logique de Données (MLD)** prêt à être implémenté en SQL.

---

## 📚 Concepts abordés

* Définition du MCD et du MLD
* Notion d’entité, d’attribut et d’association
* Cardinalités (0, 1, N)
* Contraintes d’intégrité
* Passage du MCD au MLD
* Notation Merise

---

## 🧠 Explication théorique

### Modèle Conceptuel de Données (MCD)

Le **MCD** représente :

* les entités du système,
* leurs attributs,
* les relations entre elles,
  sans se soucier de l’implémentation technique (SQL, types, etc.).

### Modèle Logique de Données (MLD)

Le **MLD** est une transformation du MCD en :

* tables relationnelles,
* clés primaires (PK),
* clés étrangères (FK),
  prêtes à être implémentées dans une base de données relationnelle.

---

## 📝 Exemple : Blog

### 📌 MCD

**Entités :**

* Utilisateur
* Article
* Commentaire

**Relations :**

* Utilisateur — rédige — Article (1,N)
* Article — reçoit — Commentaire (1,N)

---

### 📌 MLD (tables conceptuelles)

#### UTILISATEUR

* id_user (PK)
* nom
* email
* mot_de_passe

#### ARTICLE

* id_article (PK)
* titre
* contenu
* date_pub
* id_user (FK)

#### COMMENTAIRE

* id_commentaire (PK)
* contenu
* auteur
* date
* id_article (FK)

---

## 🛠 Tutoriel pratique

### Étape 1 : Identifier les entités

* Utilisateur
* Article
* Commentaire

### Étape 2 : Dessiner le MCD

* Chaque entité dans un rectangle
* Relations avec cardinalités (1,N)

**Outils recommandés :**

* Draw.io
* Looping

### Étape 3 : Transformer en MLD

* Chaque entité devient une table
* Pour chaque relation 1-N, ajouter une clé étrangère dans la table du côté N

### Étape 4 : Vérifier la cohérence

* Chaque table possède une clé primaire
* Les clés étrangères correspondent aux relations du MCD

---

## 🧾 Résumé

* Le **MCD** permet de comprendre et structurer les données
* Le **MLD** prépare l’implémentation SQL
* Les clés primaires et étrangères assurent la cohérence relationnelle

---

## 📂 Utilisation dans GitHub

Ce fichier peut être utilisé comme :

* `README.md` pour expliquer le projet
* Documentation pédagogique pour l’apprentissage des bases de données
