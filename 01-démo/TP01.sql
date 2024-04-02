CREATE DATABASE IF NOT EXISTS invitation CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE invitation;

CREATE TABLE inv_personne (
  prenom VARCHAR(255) NOT NULL,
  nom VARCHAR(255) NOT NULL,
  age int(3) NOT NULL,
  date_inscription DATE NOT NULL,
  status_valide BOOLEAN NOT NULL,
  type_membre ENUM("Valide","NON Valide") NOT NULL,
  description_ text(65535) NOT NULL,
  salaire int(9) NOT NULL,
) ENGINE=InnoDB;