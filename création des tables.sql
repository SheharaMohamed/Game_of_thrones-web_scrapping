CREATE DATABASE series;
USE series;


CREATE TABLE Série(
   ID_serie INT PRIMARY KEY,
   Nom_série VARCHAR(50)
);

CREATE TABLE Episode(
   ID_episode VARCHAR(10),
   Numero_episode INT,
   Nom_episode VARCHAR(50),
   Saison VARCHAR(50),
   ID_serie INT,
   Rating FLOAT,
   Lien VARCHAR(100),
   PRIMARY KEY(ID_episode),
   FOREIGN KEY(ID_serie) REFERENCES Série(ID_serie)
);

CREATE TABLE Rôle(
   ID_role INT,
   Nom_role VARCHAR(50),
   PRIMARY KEY(ID_role)
);

CREATE TABLE Acteur(
   ID_acteur INT,
   Nom_acteur VARCHAR(50),
   PRIMARY KEY(ID_acteur)
);

CREATE TABLE Episode_role(
   ID_episode VARCHAR(10),
   ID_role INT,
   PRIMARY KEY(ID_episode, ID_role),
   FOREIGN KEY(ID_episode) REFERENCES Episode(ID_episode),
   FOREIGN KEY(ID_role) REFERENCES Rôle(ID_role)
);

CREATE TABLE Acteur_role(
   ID_role INT,
   ID_acteur INT,
   PRIMARY KEY(ID_role, ID_acteur),
   FOREIGN KEY(ID_role) REFERENCES Rôle(ID_role),
   FOREIGN KEY(ID_acteur) REFERENCES Acteur(ID_acteur)
);
