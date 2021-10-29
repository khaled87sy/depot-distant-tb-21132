DROP DATABASE papyrus;

CREATE DATABASE papyrus;

USE papyrus;

CREATE TABLE `fournis` (
  `numfou` int NOT NULL,
  `nomfou` varchar(25) NOT NULL,
  `ruefou` varchar(50) NOT NULL,
  `posfou` char(5) NOT NULL,
  `vilfou` varchar(30) NOT NULL,
  `confou` varchar(15) NOT NULL,
  `satisf` tinyint(4) DEFAULT NULL, 
  CHECK (`satisf` >=0 AND `satisf` <=10),
  PRIMARY KEY (`numfou`)
);

INSERT INTO `fournis` (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES
	(120, 'GROBRIGAN', '20 rue du papier', '92200', 'papercity', 'Georges', 8),
	(540, 'ECLIPSE', '53 rue laisse flotter les rubans', '78250', 'Bugbugville', 'Nestor', 7),
	(8700, 'MEDICIS', '120 rue des plantes', '75014', 'Paris', 'Lison', 0),
	(9120, 'DISCOBOL', '11 rue des sports', '85100', 'La Roche sur Yon', 'Hercule', 8),
	(9150, 'DEPANPAP', '26 avenue des locomotives', '59987', 'Coroncountry', 'Pollux', 5),
	(9180, 'HURRYTAPE', '68 boulevard des octets', '4044', 'Dumpville', 'Track', 0);

CREATE TABLE `produit` (
  `codart` char(4) NOT NULL,
  `libart` varchar(30) NOT NULL,
  `stkale` int(11) NOT NULL,
  `stkphy` int(11) NOT NULL,
  `qteann` int(11) NOT NULL,
  `unimes` char(5) NOT NULL,
  PRIMARY KEY (`codart`)
) ;


INSERT INTO `produit` (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES
	('B001', 'Bande magnétique 1200', 20, 87, 240, 'unite'),
	('B002', 'Bande magnétique 6250', 20, 12, 410, 'unite'),
	('D035', 'CD R slim 80 mm', 40, 42, 150, 'B010'),
	('D050', 'CD R-W 80mm', 50, 4, 0, 'B010'),
	('I100', 'Papier 1 ex continu', 100, 557, 3500, 'B1000'),
	('I105', 'Papier 2 ex continu', 75, 5, 2300, 'B1000'),
	('I108', 'Papier 3 ex continu', 200, 557, 3500, 'B500'),
	('I110', 'Papier 4 ex continu', 10, 12, 63, 'B400'),
	('P220', 'Pré-imprimé commande', 500, 2500, 24500, 'B500'),
	('P230', 'Pré-imprimé facture', 500, 250, 12500, 'B500'),
	('P240', 'Pré-imprimé bulletin paie', 500, 3000, 6250, 'B500'),
	('P250', 'Pré-imprimé bon livraison', 500, 2500, 24500, 'B500'),
	('P270', 'Pré-imprimé bon fabrication', 500, 2500, 24500, 'B500'),
	('R080', 'ruban Epson 850', 10, 2, 120, 'unite'),
	('R132', 'ruban impl 1200 lignes', 25, 200, 182, 'unite');



CREATE TABLE `entcom` (
  `numcom` int(11) NOT NULL AUTO_INCREMENT,
  `obscom` varchar(50) DEFAULT NULL,
  `datcom` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `numfou` int(11) DEFAULT NULL,
  PRIMARY KEY (`numcom`),
  KEY `numfou` (`numfou`),
  CONSTRAINT `entcom_ibfk_1` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`)
);


INSERT INTO `entcom` (`numcom`, `obscom`, `datcom`, `numfou`) VALUES
	(70010, '', '2018-04-23 15:59:51', 120),
	(70011, 'Commande urgente', '2018-04-23 15:59:51', 540),
	(70020, '', '2018-04-23 15:59:51', 9120),
	(70025, 'Commande urgente', '2018-04-23 15:59:51', 9150),
	(70210, 'Commande cadencée', '2018-04-23 15:59:51', 120),
	(70250, 'Commande cadencée', '2018-04-23 15:59:51', 8700),
	(70300, '', '2018-04-23 15:59:51', 9120),
	(70620, '', '2018-04-23 15:59:51', 540),
	(70625, '', '2018-04-23 15:59:51', 120),
	(70629, '', '2018-04-23 15:59:51', 9180);



CREATE TABLE `ligcom` (
  `numcom` int(11) NOT NULL,
  `numlig` tinyint(4) NOT NULL,
  `codart` char(4) NOT NULL,
  `qtecde` int(11) NOT NULL,
  `priuni` decimal(5,0) NOT NULL,
  `qteliv` int(11) DEFAULT NULL,
  `derliv` date NOT NULL,
  PRIMARY KEY (`numcom`,`numlig`),
  KEY `codart` (`codart`),
  CONSTRAINT `ligcom_ibfk_1` FOREIGN KEY (`numcom`) REFERENCES `entcom` (`numcom`),
  CONSTRAINT `ligcom_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`)
);


INSERT INTO `ligcom` (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv`) VALUES
	(70010, 1, 'I100', 3000, 470, 3000, '2007-03-15'),
	(70010, 2, 'I105', 2000, 485, 2000, '2007-07-05'),
	(70010, 3, 'I108', 1000, 680, 1000, '2007-08-20'),
	(70010, 4, 'D035', 200, 40, 250, '2007-02-20'),
	(70010, 5, 'P220', 6000, 3500, 6000, '2007-03-31'),
	(70010, 6, 'P240', 6000, 2000, 2000, '2007-03-31'),
	(70011, 1, 'I105', 1000, 600, 1000, '2007-05-16'),
	(70011, 2, 'P220', 10000, 3500, 10000, '2007-08-31'),
	(70020, 1, 'B001', 200, 140, 0, '2007-12-31'),
	(70020, 2, 'B002', 200, 140, 0, '2007-12-31'),
	(70025, 1, 'I100', 1000, 590, 1000, '2007-05-15'),
	(70025, 2, 'I105', 500, 590, 500, '2007-03-15'),
	(70210, 1, 'I100', 1000, 470, 1000, '2007-07-15'),
	(70250, 1, 'P230', 15000, 4900, 12000, '2007-12-15'),
	(70250, 2, 'P220', 10000, 3350, 10000, '2007-11-10'),
	(70300, 1, 'I100', 50, 790, 50, '2007-10-31'),
	(70620, 1, 'I105', 200, 600, 200, '2007-11-01'),
	(70625, 1, 'I100', 1000, 470, 1000, '2007-10-15'),
	(70625, 2, 'P220', 10000, 3500, 10000, '2007-10-31'),
	(70629, 1, 'B001', 200, 140, 0, '2007-12-31'),
	(70629, 2, 'B002', 200, 140, 0, '2007-12-31');



CREATE TABLE `vente` (
  `codart` char(4) NOT NULL,
  `numfou` int(11) NOT NULL,
  `delliv` smallint(6) NOT NULL,
  `qte1` int(11) NOT NULL,
  `prix1` decimal(5,0) NOT NULL,
  `qte2` int(11) DEFAULT NULL,
  `prix2` decimal(5,0) DEFAULT NULL,
  `qte3` int(11) DEFAULT NULL,
  `prix3` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`codart`,`numfou`),
  KEY `numfou` (`numfou`),
  CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`),
  CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`)
) ;


INSERT INTO `vente` (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES
	('B001', 8700, 15, 0, 150, 50, 145, 100, 140),
	('B002', 8700, 15, 0, 210, 50, 200, 100, 185),
	('D035', 120, 0, 0, 40, 0, 0, 0, 0),
	('D035', 9120, 5, 0, 40, 100, 30, 0, 0),
	('I100', 120, 90, 0, 700, 50, 600, 120, 500),
	('I100', 540, 70, 0, 710, 60, 630, 100, 600),
	('I100', 9120, 60, 0, 800, 70, 600, 90, 500),
	('I100', 9150, 90, 0, 650, 90, 600, 200, 590),
	('I100', 9180, 30, 0, 720, 50, 670, 100, 490),
	('I105', 120, 90, 10, 705, 50, 630, 120, 500),
	('I105', 540, 70, 0, 810, 60, 645, 100, 600),
	('I105', 8700, 30, 0, 720, 50, 670, 100, 510),
	('I105', 9120, 60, 0, 920, 70, 800, 90, 700),
	('I105', 9150, 90, 0, 685, 90, 600, 200, 590),
	('I108', 120, 90, 5, 795, 30, 720, 100, 680),
	('I108', 9120, 60, 0, 920, 70, 820, 100, 780),
	('I110', 9120, 60, 0, 950, 70, 850, 90, 790),
	('I110', 9180, 90, 0, 900, 70, 870, 90, 835),
	('P220', 120, 15, 0, 3700, 100, 3500, 0, 0),
	('P220', 8700, 20, 50, 3500, 100, 3350, 0, 0),
	('P230', 120, 30, 0, 5200, 100, 5000, 0, 0),
	('P230', 8700, 60, 0, 5000, 50, 4900, 0, 0),
	('P240', 120, 15, 0, 2200, 100, 2000, 0, 0),
	('P250', 120, 30, 0, 1500, 100, 1400, 500, 1200),
	('P250', 9120, 30, 0, 1500, 100, 1400, 500, 1200),
	('R080', 9120, 10, 0, 120, 100, 100, 0, 0),
	('R132', 9120, 5, 0, 275, 0, 0, 0, 0);












-- *******************************************************************************excercices**************************************************************************************
-- *******************************************************************************excercices**************************************************************************************
-- *******************************************************************************excercices**************************************************************************************
--1-- Quelles sont les commandes du fournisseur 09120?
SELECT * FROM entcom
WHERE numfou=9120
ORDER BY numfou DESC

--2-- Afficher le code des fournisseurs pour lesquels des commandes ont été passées.
SELECT ligcom.numcom, fournis.numfou AS "LES fournisseurs avec commandes passées." FROM fournis
JOIN entcom ON fournis.numfou= entcom.numfou
JOIN ligcom ON entcom.numcom=ligcom.numcom

--3-- Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.
SELECT COUNT(ligcom.numcom) AS "Le nombre de commandes fournisseurs passées",
 COUNT(DISTINCT entcom.numfou) AS "Le nombre de fournisseur concernés" FROM entcom
JOIN ligcom ON entcom.numcom=ligcom.numcom

--4-- Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la quantité annuelle est inférieur est inférieure à1000 
-- (informations à fournir : n° produit, libelléproduit, stock, stockactuel d'alerte, quantitéannuelle)
SELECT codart, libart, stkphy, stkale, qteann FROM produit
WHERE stkphy <= stkale AND qteann < 1000

--5-- Quels sont les fournisseurs situés dans les départements 75 78 92 77 ? L’affichage (département, nom fournisseur) sera effectué par département décroissant, 
-- puis par ordre alphabétique
SELECT posfou, nomfou FROM fournis
WHERE SUBSTR(posfou, 1,2)= '75'
OR SUBSTR(posfou, 1,2)= '78'
OR SUBSTR(posfou, 1,2)= '92'
OR SUBSTR(posfou, 1,2)= '78'

--6-- Quelles sont les commandes passées au mois de mars et avril?
SELECT numcom, derliv FROM ligcom
WHERE SUBSTR(derliv, 6,2)= '03'
OR SUBSTR(derliv, 6,2)= '04'

--7-- Quelles sont les commandes du jourqui ont des observations particulières ?(Affichage numéro de commande, date de commande)
SELECT numcom, datcom FROM entcom
WHERE obscom <> '' AND obscom IS NOT NULL
-- ****************OU ON PEUT DIRE AUSSI***********
SELECT numcom, datcom FROM entcom
WHERE LENGTH(obscom) > 0 AND obscom IS NOT NULL

--8-- Listerle total de chaque commande par total décroissant (Affichage numéro de commande et total)
SELECT numcom, (qtecde*priuni) AS 'TOTAL de chaque commande' FROM ligcom
ORDER BY (qtecde*priuni) DESC

--9-- Lister les commandesdont le total est supérieur à 10000€; on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000.
-- (Affichage numéro de commande et total)
SELECT numcom, (qtecde*priuni) AS 'commandes dont le total est supérieur à 10000€ et quintité <1000' FROM ligcom
WHERE (qtecde*priuni)>10000 AND qtecde<1000

--10-- Lister les commandes par nom fournisseur (Afficher le nom du fournisseur, le numéro de commande et la date)
SELECT nomfou, numcom, datcom FROM entcom 
JOIN fournis ON entcom.numfou=fournis.numfou

--11-- Sortir les produits des commandes ayant le mot "urgent' en observation?(Afficher le numéro de commande, le nom du fournisseur, 
-- le libellé du produit et le sous total= quantité commandée * Prix unitaire)
SELECT  entcom.numcom, nomfou, libart, (qtecde*priuni) AS 'SOUS TOTAL' FROM entcom
JOIN fournis ON entcom.numfou=fournis.numfou
JOIN ligcom ON entcom.numcom=ligcom.numcom
JOIN produit ON ligcom.codart=produit.codart
WHERE obscom LIKE '%urgente%'

--12-- Coder de 2manières différentes la requête suivante:Lister lenom desfournisseurs susceptibles de livrer au moins un article
SELECT DISTINCT nomfou FROM fournis
JOIN entcom ON fournis.numfou=entcom.numfou
JOIN ligcom ON entcom.numcom=ligcom.numcom
WHERE qteliv>0
-- **********D'une manière différente********** 
SELECT  DISTINCT nomfou FROM entcom
JOIN fournis ON entcom.numfou=fournis.numfou
JOIN ligcom ON entcom.numcom=ligcom.numcom
WHERE qteliv>0

--13-- Coder de 2 manières différentes la requête suivante Lister les commandes (Numéro et date) dont le fournisseur est celui de la commande 70210
SELECT numcom, datcom FROM entcom
WHERE numfou = 120
 
--14-- Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés sur Prix1) que le moins cher des rubans (article dont le premier caractère commence par R).
--  On affichera le libellé de l’article et prix1
-- Prix 1 du ruban le moins cher
SELECT MIN(prix1) AS "MINI rubans caractère commence par R"  FROM vente
WHERE codart LIKE 'R%';
-- ON A TROUVE le prix moins chere: (120) 
-- alors on peut trouver tous les articles dont le prix (prix1) est inférieur :
SELECT libart, prix1 FROM vente
JOIN produit ON produit.codart=vente.codart
WHERE prix1 < (120)

--15-- Editer la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte. 
-- La liste est triée par produit puis fournisseur
SELECT codart, fournis.numfou, nomfou FROM fournis
JOIN vente ON fournis.numfou = vente.numfou
WHERE vente.codart IN (SELECT codart FROM produit
WHERE stkphy<=(stkale*150/100))
ORDER BY codart, numfou

--16-- Éditer la liste des fournisseurs susceptibles de livrer les produit dont le stock est inférieur ou égal à 150 % du stock d'alerte et un délai de livraison d'au plus 30 jours.
--  La liste est triée par fournisseur puis produit
SELECT codart, fournis.numfou, nomfou FROM fournis
JOIN vente ON fournis.numfou = vente.numfou
WHERE vente.codart IN (SELECT codart FROM produit
WHERE stkphy<=(stkale*150/100))
AND delliv <= 30
ORDER BY numfou, codart

--17-- Avec le même type de sélection que ci-dessus, sortir un total des stocks par fournisseur trié par total décroissant
SELECT vente.codart, fournis.numfou, nomfou, sum(stkphy) AS "total des stocks" FROM fournis
JOIN vente ON fournis.numfou = vente.numfou
JOIN produit ON vente.codart = produit.codart
WHERE vente.codart IN (SELECT codart FROM produit
WHERE stkphy<=(stkale*150/100))
AND delliv <= 30
GROUP BY fournis.numfou, vente.codart, nomfou
ORDER BY sum(stkphy) desc

--18-- En fin d'année, sortir la liste des produits dontla quantité réellement commandée dépasse 90% de la quantité annuelleprévue.
SELECT ligcom.codart, qtecde, qteann FROM ligcom
JOIN produit ON ligcom.codart=produit.codart
WHERE qtecde> (qteann*90/100)

--19-- Calculer le chiffre d'affaire par fournisseur pour l'année 93 sachant que les prix indiqués sont hors taxes et que le taux de TVA est 20%.
SELECT fournis.numfou, nomfou, sum(qtecde * priuni * 1.20) AS " le chiffre d'affaire" FROM fournis, entcom, ligcom
WHERE entcom.numcom = ligcom.numcom 
AND fournis.numfou = entcom.numfou
GROUP BY fournis.numfou, nomfou


-- **************************************************************LES BESOINS DE MISE A JOUR************************************************************
--1-- Application d'une augmentation de tarif de 4% pour le prix 1, 2% pour le prix2 pour le fournisseur 9180
UPDATE vente
SET prix1=prix1*1.04, prix2=prix2*1.02
WHERE numfou=9180

--2-- Dans la table vente, mettre à jour le prix2 des articles dont le prix2 est null, en affectant a valeur de prix.
UPDATE vente
SET prix2=500
WHERE prix2=NULL

--3-- Mettre à jour le champ obscom en positionnant '*****' pour toutes les commandes dont le fournisseur a un indice de satisfaction <5
UPDATE entcom
JOIN fournis ON fournis.numfou=entcom.numfou
SET obscom="*****"
WHERE satisf<5

--4-- Suppression du produit I110
DELETE FROM ligcom
WHERE codart='I110';


-- *********PUIS**********
DELETE FROM vente
WHERE codart='I110';

-- *********PUIS**********


DELETE FROM produit
WHERE codart='I110';











