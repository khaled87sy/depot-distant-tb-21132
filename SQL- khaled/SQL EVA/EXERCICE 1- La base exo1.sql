DROP DATABASE IF EXISTS exo1;

CREATE DATABASE exo1;

USE exo1;


CREATE TABLE client (
  cli_num int,
  cli_nom varchar(50),
  cli_adresse varchar(50),
  cli_tel varchar(30),
  PRIMARY KEY (cli_num)
);


CREATE TABLE commande (
  com_num int,
  cli_num int,
  com_date datetime,
  com_obs varchar(50),
  PRIMARY KEY (com_num),
  FOREIGN KEY (cli_num) REFERENCES client(cli_num)
);

CREATE TABLE produit (
  pro_num int,
  pro_libelle varchar(50),
  pro_description varchar(50),
  PRIMARY KEY (pro_num)
);

CREATE TABLE est_compose (
  com_num int,
  pro_num int,
  est_qte int,
  PRIMARY KEY (com_num, pro_num),
  FOREIGN KEY (pro_num) REFERENCES produit(pro_num),
  FOREIGN KEY (com_num) REFERENCES commande(com_num)
);


-- Créez un index sur le champ cli_nom de la table client.
CREATE INDEX 'clientnom' ON client(cli_nom);









