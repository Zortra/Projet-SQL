--commentaires
#commentaires
--norme d'écriture
--nom base
--nom des tables
--nom des champs

--Snake case :
--ma_super_base_de_donnees

--Camel case :
--maSuperBaseDeDonnees

--Pascal case : pour le nom des classes
--MaSuperClass

--Kebeb case :
--ma-super-page.html

--CREATE DATABASE ma_base;

CREATE DATABASE videotheque CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

--DROP DATABASE videotheque;
--Attention, ça supprime tout !!

--Insertion des données :

INSERT INTO film (titre,sortie) VALUES
('STAR WARS','1977/05/25'),
('THE MATRIX','1999/06/23'),
('PULP FICTION','1994/10/26');


