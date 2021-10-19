-- 1 - Liste des contacts français :
SELECT CompanyName AS Societé, contactName AS contact, contacttitle AS Fonction, phone AS Téléphone FROM customers 
WHERE country = 'France';

-- 2 - Produits vendus par le fournisseur « Exotic Liquids » :
SELECT ProductName AS Product, UnitPrice AS Prix FROM products
JOIN suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE CompanyName="Exotic Liquids";

-- 3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant :
SELECT suppliers.CompanyName AS 'Fournisseur', COUNT(products.productName) AS 'Nbr produits' FROM products
JOIN suppliers ON suppliers.supplierID = products.supplierID
WHERE suppliers.country = 'France'
GROUP BY suppliers.CompanyName
ORDER BY  Nbrproduits desc;

-- 4 - Liste des clients Français ayant plus de 10 commandes :
SELECT customers.CompanyName AS 'Client', COUNT(Orders.OrderID) AS 'Nbre commandes' FROM orders
JOIN customers ON Orders.customerID = Customers.customerID
WHERE customers.country ='France'
GROUP BY customers.CompanyName
HAVING COUNT(orders.OrderID) > 10;

-- 5 - Liste des clients ayant un chiffre d’affaires > 30.000 :
SELECT customers.CompanyName AS 'Client', sum(UnitPrice*Quantity) AS 'CA', Country AS 'Pays' FROM customers
JOIN orders ON Orders.CustomerID=customers.CustomerID
Join `order details` ON `order details`.OrderID=orders.orderID
GROUP BY customers.CustomerID
HAVING sum(UnitPrice * quantity) > 30000
ORDER BY sum(UnitPrice * quantity) DESC;

-- 6 – Liste des pays dont les clients ont passé commande de produits fournis par « Exotic Liquids » :
SELECT DISTINCT customers.Country AS Pays FROM customers
JOIN orders ON Orders.CustomerID = Customers.CustomerID
JOIN `order details` ON `order details`.orderID = orders.orderID
join products ON products.productID = `order details`.productID
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName = 'Exotic Liquids'
ORDER BY customers.Country;

-- 7 – Montant des ventes de 1997 :
SELECT sum(UnitPrice*Quantity) AS 'Montant Vente 97' FROM `order details`
JOIN orders ON orders.OrderID=`order details`.OrderID
WHERE OrderDate LIKE "1997%";

-- 8 – Montant des ventes de 1997 mois par mois :
SELECT MONTH(OrderDate) AS 'MOIS 97', sum(UnitPrice*Quantity) AS 'Montant Vente ' FROM `order details`
JOIN orders ON orders.OrderID=`order details`.OrderID
WHERE YEAR(orderdate)='1997'
GROUP BY MONTH (orderdate);

-- 9 – Depuis quelle date le client « Du monde entier » n’a plus commandé ?
SELECT MAX(orderdate) AS 'Date de dernier commande' FROM Orders
JOIN customers ON orders.customerID=customers.customerID
WHERE CompanyName="Du monde entier";

-- 10 – Quel est le délai moyen de livraison en jours ?
SELECT ROUND (AVG (DATEDIFF (shippeddate, orderdate))) AS "Delai moyen de livraison" FROM orders;
