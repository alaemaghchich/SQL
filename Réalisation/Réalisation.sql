CREATE DATABASE BlogDB;
USE BlogDB;

CREATE TABLE Utilisateur (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  mot_de_passe VARCHAR(255) NOT NULL
);
INSERT INTO Utilisateur (nom, email, mot_de_passe) VALUES
('Alae', 'alaemaghchich2004@gmail.com', '1234'),
('tarik', 'butarik15@gmail.com', '1234'),
('ouadie', 'ouadieelallali@gmail.com', '1234');

CREATE TABLE Article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(150) NOT NULL,
  contenu TEXT NOT NULL,
  date_pub DATE,
  id_utilisateur INT,
  FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id)
);

INSERT INTO Article (titre, contenu, date_pub) VALUES
('article 1', 'Contenu dyal article 1', '2025-12-23'),
('article 2', 'Contenu dyal article 2', '2025-12-23'),
('article 3', 'Contenu dyal article 3', '2025-12-23');

CREATE TABLE Commentaire (
  id INT AUTO_INCREMENT PRIMARY KEY,
  contenu TEXT NOT NULL,
  auteur VARCHAR(100),
  date_commentaire DATE,
  id_article INT,
  FOREIGN KEY (id_article) REFERENCES Article(id)
);

INSERT INTO Commentaire (contenu, auteur, date_commentaire) VALUES
('Article mli7a', 'alae maghchich', '2025-12-23'),
('xokran 3la larticle wa3ra', 'Tarik bufardi', '2025-12-23'),
('fikraton rai3aton', 'ouadie elaalali', '2025-12-23');

SHOW TABLES;

ALTER TABLE Utilisateur ADD INDEX (email);
ALTER TABLE Utilisateur COMMENT = 'Table des utilisateurs du blog';
