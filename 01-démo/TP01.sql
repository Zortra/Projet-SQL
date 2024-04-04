CREATE DATABASE IF NOT EXISTS invitation CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE invitation;

CREATE TABLE inv_personne (
  prenom VARCHAR(55) NOT NULL,
  nom VARCHAR(255) NOT NULL,
  age int(3) NOT NULL,
  date_inscription DATE NOT NULL,
  statut BOOLEAN NOT NULL,
  type_membre ENUM("Valide","NON Valide") NOT NULL,
  description_ text(65535) NOT NULL,
  salaire int(9) NOT NULL,
) ENGINE=InnoDB;


INSERT INTO "personne" (
  "prenom","nom","age","date_inscription","description_","salaire")
  VALUES ("Brad","PITT",60,"1970-01-01","lorem ipsum",2000000),
  ("Georges","CLOONEY",62,"1999-01-01","juste beau",4000000),
  ("Jean","DUJARDIN",51,"1994-01-01","Brice de Nice",1000000);


--Ressortir le salire max
SELECT MAX(salaire) FROM personne ;
--Ressortir le salaire min
SELECT MIN(salaire) FROM personne ;

--Afficher nom petit salaire
SELECT nom 
FROM personne 
WHERE salaire = (SELECT MIN(salaire) FROM personne) 
GROUP BY nom; 

--Afficher nom gros salaire
SELECT nom 
FROM personne 
WHERE salaire = (SELECT MAX(salaire) FROM personne) 
GROUP BY nom; 

--Afficher salaire moyen
SELECT AVG(salaire) FROM personne ;

--Afficher nb personne
SELECT COUNT(prenom) FROM personne;

--Trier les personnes par age
SELECT * FROM personne ORDER BY age;
