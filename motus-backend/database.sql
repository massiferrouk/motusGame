CREATE DATABASE motus;
USE motus;

CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pseudo VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  numero_secu VARCHAR(13) NOT NULL
);

CREATE TABLE Mots (
  id INT AUTO_INCREMENT PRIMARY KEY,
  word VARCHAR(255) NOT NULL,
  longueur INT NOT NULL,
  difficulté VARCHAR(50) NOT NULL
);

CREATE TABLE WallOfFame (
  id INT AUTO_INCREMENT PRIMARY KEY,
  scores INT NOT NULL,
  login VARCHAR(255),
  FOREIGN KEY (login) REFERENCES Users(pseudo)
);
