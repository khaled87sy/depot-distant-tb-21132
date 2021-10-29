DROP DATABASE IF EXISTS HOTEL; 

CREATE DATABASE HOTEL;  

USE HOTEL;

CREATE TABLE Station
(
    num_station INT NOT NULL AUTO_INCREMENT, 
    nom_station VARCHAR(50),
    PRIMARY KEY (num_station)
);

CREATE TABLE hotel
(
    capacite_hotel INT NOT NULL , 
    categorie_hotel INT NOT NULL,
    nom_hotel VARCHAR(50),
    adresse_hotel VARCHAR (100),
    num_hotel INT NOT NULL,
    num_station INT NOT NULL,   
    FOREIGN KEY (num_station) REFERENCES Station(num_station),
    PRIMARY KEY (num_hotel)
 );

CREATE TABLE Chambre
(
    capacite_chambre INT NOT NULL, 
    degre_confort INT NOT NULL, 
    exposition INT NOT NULL,
    type_chambre VARCHAR(50),
    num_chambre INT NOT NULL,
    num_hotel INT NOT NULL,
    PRIMARY KEY (num_chambre),
	 FOREIGN KEY (num_hotel) REFERENCES hotel (num_hotel)

);

CREATE TABLE Client
(
    adresse_client VARCHAR (100),
    nom_client VARCHAR (50),
    prenom_client VARCHAR (50),
    num_client INT NOT NULL AUTO_INCREMENT,
	 PRIMARY KEY (num_client)   
);

CREATE TABLE reservation
 ( 
    num_chambre INT NOT NULL, 
    num_client  INT NOT NULL, 
    date_debut date,
    date_fin date,
    date_reservation date,
    montant_arrhes INT,
    prix_total INT,
    FOREIGN KEY (num_chambre) REFERENCES Chambre(num_chambre),
    FOREIGN KEY (num_client) REFERENCES Client(num_client)
     
); 