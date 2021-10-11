DROP DATABASE IF EXISTS hotel; 

CREATE DATABASE hotel;  

USE hotel;

CREATE TABLE Station
(
    num_station INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nom_station VARCHAR(50) NOT NULL
);

CREATE TABLE hotel
(
    capacite_hotel INT NOT NULL, 
    categorie_hotel INT NOT NULL,
    nom_hotel VARCHAR(50),
    adresse_hotel VARCHAR (100),
    num_hotel INT NOT NULL PRIMARY key,
    num_station INT NOT NULL foregn KEY REFERENCES Station(num_station)
 );

CREATE TABLE Chambre
(
    capacite_chambre INT NOT NULL, 
    degre_confort INT NOT NULL, 
    exposition INT NOT NULL
    type_chambre VARCHAR(50),
    num_chambre INT NOT NULL PRIMARY key,
    num_hotel INT NOT NULL foregn KEY REFERENCES hotel(num_hotel)

);

CREATE TABLE Client
(
    adresse_client VARCHAR (100),
    nom_client VARCHAR (50)
    prenom_client VARCHAR (50)
    num_client INT NOT NULL AUTO_INCREMENT PRIMARY KEY 
);

CREATE TABLE reservation
 ( 
    num_chambre INT NOT NULL foregn KEY REFERENCES Chambre(num_chambre), 
    num_client  INT NOT NULL foregn KEY REFERENCES Client(num_client),
    date__debut date ,
    date_fin date,
    date_reservation date,
    montant_arrhes INT,
    prix_total INT,
     
); 
