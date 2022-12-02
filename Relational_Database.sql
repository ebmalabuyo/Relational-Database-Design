CREATE DATABASE bus_393_project;
USE bus_393_project;

CREATE TABLE Supplier
(SupplierID INT AUTO_INCREMENT PRIMARY KEY,
SupplierName VARCHAR (60),
Phone VARCHAR(15),
Email VARCHAR(62),
Address VARCHAR(95),
City VARCHAR (35),
State VARCHAR(35),
Country VARCHAR (3),
Zip VARCHAR (10));

CREATE TABLE Customer (
CustomerID INT AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(62),
Address VARCHAR(95),
City VARCHAR(35),
State VARCHAR(35),
Country VARCHAR(3),
Zip VARCHAR(10)
);

CREATE TABLE Employee (
EmpID INT AUTO_INCREMENT PRIMARY KEY, 
FirstName VARCHAR(50),
LastName VARCHAR(50),
DOB DATE,
SupervisorID INT,
FOREIGN KEY (SupervisorID) REFERENCES Employee(EmpID)   
);

CREATE TABLE  Product (
ProductID INT AUTO_INCREMENT PRIMARY KEY,
SupplierID INT,
ProductName VARCHAR(100),
Price FLOAT, 
FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) 
ON DELETE CASCADE
ON UPDATE RESTRICT    
);

CREATE TABLE Purchase
(PurchaseID INT AUTO_INCREMENT PRIMARY KEY,
CustomerID INT, 
EmpID INT,
OrderDate DATE,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
ON DELETE CASCADE
ON UPDATE RESTRICT,
FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
ON DELETE CASCADE
ON UPDATE RESTRICT);

CREATE TABLE PurchaseDetail
(PurchaseDetailID INT AUTO_INCREMENT PRIMARY KEY,
PurchaseID INT,
ProductID INT,
Quantity INT,
FOREIGN KEY (PurchaseID) REFERENCES Purchase(PurchaseID)
ON DELETE CASCADE
ON UPDATE RESTRICT,
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
ON DELETE CASCADE
ON UPDATE RESTRICT
);


# CUSTOMER

INSERT INTO Customer  VALUES
(NULL, 'Sallie', 'Clissett', 'sclissett0@nsw.gov.au', '379 Coleman Alley', 'Los Angeles', 'California', 'US', '90101');
INSERT INTO Customer  VALUES
(NULL, 'Saul', 'Gaffon', 'sgaffon1@hubpages.com', '55266 Ohio Lane', 'Olympia', 'Washington', 'US', '98516');
INSERT INTO Customer  VALUES
(NULL, 'Donnell', 'Conichie', 'dconichie2@qq.com', '08 Briar Crest Circle', 'Corona', 'California', 'US', '92878');
INSERT INTO Customer  VALUES
(NULL, 'Mariann', 'Trebbett', 'mtrebbett3@jalbum.net', '18 Di Loreto Avenue', 'San Jose', 'California', 'US', '95194');
INSERT INTO Customer  VALUES
(NULL, 'Amelie', 'Willoughway', 'awilloughway4@go.com', '6 Badeau Drive', 'Fresno', 'California', 'US', '93715');
INSERT INTO Customer  VALUES
(NULL, 'Suki', 'Hartles', 'shartles5@bloglines.com', '648 Leroy Lane', 'Anaheim', 'California', 'US', '92812');
INSERT INTO Customer  VALUES
(NULL, 'Georgianna', 'Goodie', 'ggoodie6@stumbleupon.com', '14482 Sachtjen Hill', 'Fullerton', 'California', 'US', '92835');
INSERT INTO Customer  VALUES
(NULL, 'Devi', 'Hellsdon', 'dhellsdon7@ucsd.edu', '1 Springview Circle', 'Los Angeles', 'California', 'US', '90050');
INSERT INTO Customer  VALUES
(NULL, 'Francesca', 'Beisley', 'fbeisley8@wikia.com', '3827 Ridgeview Junction', 'Pasadena', 'California', 'US', '91131');
INSERT INTO Customer  VALUES
(NULL, 'Tamara', 'McQuorkell', 'tmcquorkell9@alexa.com', '4296 Warrior Parkway', 'San Diego', 'California', 'US', '92132');
INSERT INTO Customer  VALUES
(NULL, 'Sullivan', 'Leythley', 'sleythleya@washingtonpost.com', '864 Vernon Parkway', 'Fresno', 'California', 'US', '93726');
INSERT INTO Customer  VALUES
(NULL, 'Fredelia', 'Eddoes', 'feddoesb@yale.edu', '86725 Kensington Way', 'Riverside', 'California', 'US', '92513');
INSERT INTO Customer  VALUES
(NULL, 'Foss', 'Cobleigh', 'fcobleighc@uiuc.edu', '67927 Mitchell Circle', 'San Jose', 'California', 'US', '95150');
INSERT INTO Customer  VALUES
(NULL, 'Lauryn', 'Have', 'lhaved@phpbb.com', '695 Elmside Center', 'San Francisco', 'California', 'US', '94132');
INSERT INTO Customer  VALUES
(NULL, 'Renata', 'Ligertwood', 'rligertwoode@google.com.br', '70 Caliangt Junction', 'Sacramento', 'California', 'US', '95865');
INSERT INTO Customer  VALUES
(NULL, 'Bernadina', 'Nutkin', 'bnutkinf@ocn.ne.jp', '7 Crownhardt Hill', 'Tacoma', 'Washington', 'US', '98447');
INSERT INTO Customer  VALUES
(NULL, 'Inez', 'Bussons', 'ibussonsg@google.co.uk', '4491 2nd Parkway', 'Escondido', 'California', 'US', '92030');
INSERT INTO Customer  VALUES
(NULL, 'Kale', 'Scholefield', 'kscholefieldh@parallels.com', '0 Del Mar Center', 'Inglewood', 'California', 'US', '90310');
INSERT INTO Customer  VALUES
(NULL, 'Christie', 'Dreye', 'cdreyei@prnewswire.com', '244 Buell Place', 'Littleton', 'Colorado', 'US', '80161');
INSERT INTO Customer  VALUES
(NULL, 'Araldo', 'Cansdale', 'acansdalej@kickstarter.com', '641 Cherokee Terrace', 'Santa Monica', 'California', 'US', '90405');
INSERT INTO Customer  VALUES
(NULL, 'Wolfie', 'Hanselmann', 'whanselmannk@liveinternet.ru', '4 Grayhawk Drive', 'Portland', 'Oregon', 'US', '97206');
INSERT INTO Customer  VALUES
(NULL, 'Even', 'Sworn', 'eswornl@umn.edu', '704 Golf Course Pass', 'Oakland', 'California', 'US', '94611');
INSERT INTO Customer  VALUES
(NULL, 'Nate', 'Cousens', 'ncousensm@fc2.com', '35 Delaware Terrace', 'Santa Barbara', 'California', 'US', '93106');
INSERT INTO Customer  VALUES
(NULL, 'Flossie', 'Verma', 'fverman@cisco.com', '51 Everett Parkway', 'San Jose', 'California', 'US', '95155');
INSERT INTO Customer  VALUES
(NULL, 'Janet', 'Hyland', 'jhylando@wordpress.com', '69806 Hovde Street', 'Eugene', 'Oregon', 'US', '97405');
INSERT INTO Customer  VALUES
(NULL, 'Lil', 'Coskerry', 'lcoskerryp@drupal.org', '76756 Saint Paul Park', 'Pueblo', 'Colorado', 'US', '81005');
INSERT INTO Customer  VALUES
(NULL, 'Boris', 'Rugg', 'bruggq@angelfire.com', '176 Graceland Parkway', 'Portland', 'Oregon', 'US', '97206');
INSERT INTO Customer  VALUES
(NULL, 'Lind', 'Fearns', 'lfearnsr@si.edu', '9 Mcbride Road', 'Sacramento', 'California', 'US', '94297');
INSERT INTO Customer  VALUES
(NULL, 'Anselma', 'Hambatch', 'ahambatchs@mayoclinic.com', '40843 Pearson Way', 'Orange', 'California', 'US', '92867');
INSERT INTO Customer  VALUES
(NULL, 'Phillipp', 'Filipczynski', 'pfilipczynskit@accuweather.com', '4783 Blackbird Drive', 'Chula Vista', 'California', 'US', '91913');
INSERT INTO Customer  VALUES
(NULL, 'Marcellina', 'McCuis', 'mmccuisu@w3.org', '02 Golden Leaf Plaza', 'Oakland', 'California', 'US', '94622');
INSERT INTO Customer  VALUES
(NULL, 'Valentia', 'Hilling', 'vhillingv@ed.gov', '66305 Welch Park', 'Colorado Springs', 'Colorado', 'US', '80925');
INSERT INTO Customer  VALUES
(NULL, 'Callie', 'Pray', 'cprayw@bbc.co.uk', '32 Blaine Hill', 'Chula Vista', 'California', 'US', '91913');
INSERT INTO Customer  VALUES
(NULL, 'Trenton', 'Vitler', 'tvitlerx@yahoo.com', '583 Southridge Plaza', 'Richmond', 'California', 'US', '94807');
INSERT INTO Customer  VALUES
(NULL, 'Hall', 'Campling', 'hcamplingy@gravatar.com', '1278 Bonner Road', 'Palmdale', 'California', 'US', '93591');
INSERT INTO Customer  VALUES
(NULL, 'Marj', 'Sheekey', 'msheekeyz@creativecommons.org', '9 Butterfield Junction', 'Long Beach', 'California', 'US', '90847');
INSERT INTO Customer  VALUES
(NULL, 'Matilda', 'Aggiss', 'maggiss10@blogger.com', '53409 West Point', 'Tacoma', 'Washington', 'US', '98442');
INSERT INTO Customer  VALUES
(NULL, 'Garrek', 'Rosendale', 'grosendale11@oakley.com', '346 Ryan Plaza', 'Sacramento', 'California', 'US', '94291');
INSERT INTO Customer  VALUES
(NULL, 'Ulric', 'Headland', 'uheadland12@apple.com', '92 Lukken Junction', 'San Francisco', 'California', 'US', '94177');
INSERT INTO Customer  VALUES
(NULL, 'Annie', 'Breed', 'abreed13@slideshare.net', '08373 Porter Road', 'San Diego', 'California', 'US', '92191');


# SUPPLIER
INSERT INTO Supplier VALUES (NULL, 'Jacobson Inc.', '415-923-3211', 'djordeson0@sitemeter.com', '675 Garrison Way', 'San Francisco', 'California', 'US', '94137');
INSERT INTO Supplier VALUES (NULL, 'Steel Wheel', '805-747-4444', 'rfarguhar1@pen.io', '7 Bluestem Park', 'San Luis Obispo', 'California', 'US', '93407');
INSERT INTO Supplier VALUES (NULL, 'Barrows and Sons', '720-557-2114', 'nhaps2@sciencedirect.com', '1932 Jay Circle', 'Littleton', 'Colorado', 'US', '80127');
INSERT INTO Supplier VALUES (NULL, 'Bailey LLC', '541-934-8783', 'marnoldi3@marketwatch.com', '80076 Eagan Road', 'Eugene', 'Oregon', 'US', '97405');
INSERT INTO Supplier VALUES (NULL, 'Summer Barrel', '916-998-9328', 'afurnival4@oracle.com', '3112 Jana Hill', 'Sacramento', 'California', 'US', '94297');
INSERT INTO Supplier VALUES (NULL, 'Spring Deligh', '858-911-8146', 'mnisot5@oracle.com', '720 South Alley', 'San Diego', 'California', 'US', '92145');
INSERT INTO Supplier VALUES (NULL, 'World Apothecary', '719-332-2115', 'nibell6@msn.com', '69 Thackeray Point', 'Colorado Springs', 'Colorado', 'US', '80945');
INSERT INTO Supplier VALUES (NULL, 'Shining Lion', '719-211-6717', 'asamuel7@usatoday.com', '69 Hanson Point', 'Colorado Springs', 'Colorado', 'US', '80910');
INSERT INTO Supplier VALUES (NULL, 'Honey and Spice', '916-767-8003', 'ffawke8@ask.com', '3 Dennis Trail', 'Sacramento', 'California', 'US', '94257');
INSERT INTO Supplier VALUES (NULL, 'Wandering Owl LLC', '719-708-2694', 'clehr9@aol.com', '2784 Kedzie Hill', 'Pueblo', 'Colorado', 'US', '81010');


# Employee (w/ date values)
INSERT INTO Employee VALUES (NULL, 'Alfie', 'Pellissier', "1958-07-13", NULL);
INSERT INTO Employee VALUES (NULL, 'Elwin', 'Sheerman', "1976-06-23", 1);
INSERT INTO Employee VALUES (NULL, 'Gretel', 'Malarkey', "1987-09-10", 1);
INSERT INTO Employee VALUES (NULL, 'Alain', 'Fishbourn', "2000-02-01", 1);
INSERT INTO Employee VALUES (NULL, 'Ignazio', 'Jackson', "2005-11-07", 1);
INSERT INTO Employee VALUES (NULL, 'Tudor', 'Boother', "2001-04-19", 4);
INSERT INTO Employee VALUES (NULL, 'Abigale', 'Mallabone', "1998-12-10", 2);
INSERT INTO Employee VALUES (NULL, 'Omero', 'Robinson', "1983-11-14", 4);
INSERT INTO Employee VALUES (NULL, 'Miguelita', 'Ordish', "1994-01-14", 2);
INSERT INTO Employee VALUES (NULL, 'Krissie', 'Oake', "1975-10-06", 3);
INSERT INTO Employee VALUES (NULL, 'Sax', 'Newell', "2002-02-15", 5);
INSERT INTO Employee VALUES (NULL, 'Manny', 'Falkus', "1972-04-06", 5);
INSERT INTO Employee VALUES (NULL, 'Minne', 'Ivanovic', "1976-06-09", 4);
INSERT INTO Employee VALUES (NULL, 'Clifford', 'Tingley', "1993-12-18", 4);
INSERT INTO Employee VALUES (NULL, 'Peggi', 'Alberts', "2001-06-06", 4);
INSERT INTO Employee VALUES (NULL, 'Pier', 'Claibourn', "1994-08-08", 2);
INSERT INTO Employee VALUES (NULL, 'Wyatt', 'Pointing', "1968-12-13", 3);
INSERT INTO Employee VALUES (NULL, 'Marabel', 'Callander', "1987-07-21", 4);
INSERT INTO Employee VALUES (NULL, 'Cullie', 'Greason', "1985-12-03", 3);
INSERT INTO Employee VALUES (NULL, 'Cecile', 'Plowright', "2003-03-02", 3);
INSERT INTO Employee VALUES (NULL, 'Maurits', 'Solman', "1993-01-15", 4);





# Product
INSERT INTO Product VALUES (NULL, '6', 'Helium Rain Jacket', 74.99);
INSERT INTO Product VALUES (NULL, '1', 'Venture Short', 49.99);
INSERT INTO Product VALUES (NULL, '8', 'Short-Sleeve Sun Shirt', 30.99);
INSERT INTO Product VALUES (NULL, '10', 'Zip-Off Pant', 77.99);
INSERT INTO Product VALUES (NULL, '2', 'Midweight Crewneck Sweatshirt', 11.99);
INSERT INTO Product VALUES (NULL, '10', 'Leconte Fleece Jacket', 72.99);
INSERT INTO Product VALUES (NULL, '10', 'Pocket T-Shirt', 65.99);
INSERT INTO Product VALUES (NULL, '1', 'Guide Pant', 67.99);
INSERT INTO Product VALUES (NULL, '10', 'Solarflex Hooded Print Shirt', 26.99);
INSERT INTO Product VALUES (NULL, '10', 'High Rock Pant', 50.99);
INSERT INTO Product VALUES (NULL, '3', 'Venture Crew', 34.99);
INSERT INTO Product VALUES (NULL, '8', 'Eldridge Shirt', 57.99);
INSERT INTO Product VALUES (NULL, '9', 'Gramicci Pant', 29.99);
INSERT INTO Product VALUES (NULL, '4', 'Trail Sender Short', 83.99);
INSERT INTO Product VALUES (NULL, '9', 'Shell Packable Short', 73.99);
INSERT INTO Product VALUES (NULL, '8', 'Fleece Light Grid Hooded Jacket', 81.99);
INSERT INTO Product VALUES (NULL, '6', 'Denim Jacket', 54.99);
INSERT INTO Product VALUES (NULL, '4', 'Chore Coat', 65.99);
INSERT INTO Product VALUES (NULL, '6', 'Cropped Rib Tank', 22.99);
INSERT INTO Product VALUES (NULL, '3', 'Frolic Paper Bag Short', 42.99);
INSERT INTO Product VALUES (NULL, '1', 'Beyonder Jean Jacket', 31.99);
INSERT INTO Product VALUES (NULL, '10', 'Mesh Back Bra Top', 55.99);
INSERT INTO Product VALUES (NULL, '5', 'Textured Sweater Short', 21.99);
INSERT INTO Product VALUES (NULL, '7', 'Venture High Rise Pant', 82.99);
INSERT INTO Product VALUES (NULL, '5', 'Sleeveless Denim Jumpsuit', 46.99);
INSERT INTO Product VALUES (NULL, '9', 'Knit Jersey One-Piece', 54.99);
INSERT INTO Product VALUES (NULL, '9', 'Bike Short One-Piece', 29.99);
INSERT INTO Product VALUES (NULL, '6', 'Pop Over Hoodie', 11.99);
INSERT INTO Product VALUES (NULL, '7', 'Half-Zip Jacket', 73.99);
INSERT INTO Product VALUES (NULL, '1', 'Sombra Sun Hoodie', 82.99);

# Purchase

INSERT INTO Purchase VALUES (NULL, '1', '2', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '2', '2', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '3', '19', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '4', '2', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '5', '2', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '6', '21', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '7', '6', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '8', '10', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '9', '9', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '10', '13', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '11', '8', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '12', '16', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '13', '19', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '14', '11', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '15', '20', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '16', '18', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '17', '7', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '18', '4', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '19', '13', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '20', '20', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '21', '9', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '22', '6', "2022-05-20");
INSERT INTO Purchase VALUES (NULL, '23', '6', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '24', '13', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '25', '11', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '26', '16', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '27', '9', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '28', '13', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '29', '17', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '30', '4', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '31', '7', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '32', '14', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '33', '12', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '34', '11', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '35', '9', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '36', '11', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '37', '4', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '38', '15', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '39', '12', "2022-05-21");
INSERT INTO Purchase VALUES (NULL, '40', '3', "2022-05-21");





#PurchaseDetail

INSERT INTO PurchaseDetail VALUES (NULL, 1, 15, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 1, 7, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 2, 21, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 2, 8, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 3, 6, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 3, 16, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 3, 4, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 4, 9, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 4, 29, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 5, 3, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 5, 29, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 6, 14, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 6, 27, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 6, 14, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 7, 25, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 7, 5, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 8, 7, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 8, 16, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 9, 20, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 9, 17, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 10, 17, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 10, 18, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 11, 9, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 11, 18, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 12, 27, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 12, 23, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 12, 1, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 13, 22, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 13, 10, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 14, 24, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 14, 6, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 15, 30, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 15, 19, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 16, 2, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 16, 12, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 17, 28, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 17, 27, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 18, 28, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 18, 18, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 18, 15, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 19, 1, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 19, 11, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 20, 5, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 20, 4, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 21, 12, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 21, 6, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 22, 24, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 22, 11, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 23, 29, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 23, 2, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 24, 23, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 24, 14, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 25, 8, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 25, 26, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 25, 10, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 26, 1, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 26, 21, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 27, 8, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 27, 25, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 28, 10, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 28, 2, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 28, 16, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 29, 21, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 29, 9, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 30, 4, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 30, 15, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 31, 19, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 31, 30, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 31, 7, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 32, 13, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 32, 3, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 32, 20, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 33, 23, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 33, 17, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 33, 22, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 34, 22, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 34, 30, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 35, 19, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 35, 20, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 36, 26, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 36, 26, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 36, 12, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 37, 24, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 37, 3, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 38, 5, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 38, 25, 2);
INSERT INTO PurchaseDetail VALUES (NULL, 39, 11, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 39, 13, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 40, 28, 1);
INSERT INTO PurchaseDetail VALUES (NULL, 40, 13, 1);

SELECT * FROM Customer;
SELECT * FROM Supplier;
SELECT * FROM Employee;
SELECT * FROM Product;
SELECT * FROM Purchase;
SELECT * FROM PurchaseDetail;


SELECT p.ProductID, p2.ProductName, SUM(p.quantity) AS Order_Occurrence
FROM purchasedetail p
JOIN product p2
ON p.ProductID = p2.ProductID
GROUP BY ProductID
ORDER BY Order_Occurrence desc;

SELECT p.productID, p2.ProductName, sum(p.quantity) as Quantity_Sold
FROM purchasedetail p 
JOIN product p2
on p.productID = p2.productID
GROUP BY productID;

SELECT p.EmpID, e.FirstName, e.lastName, count(p.EmpID) as Customers_Helped
FROM purchase p 
JOIN employee e
on p.EmpID = e.EmpID 
GROUP BY p.EmpID, e.FirstName, e.lastName
ORDER BY Customers_Helped DESC;

SELECT p.EmpID, e.FirstName, e.lastName, count(p.EmpID) as Customers_Helped
FROM purchase p 
JOIN employee e
on p.EmpID = e.EmpID 
GROUP BY p.EmpID, e.FirstName, e.lastName
ORDER BY Customers_Helped ASC;

Select t.ProductID, t.ProductName, round(t.Quantity_Sold * p.Price, 2) as Product_Profit
From (
SELECT p.productID, p2.ProductName, sum(p.quantity) as Quantity_Sold
FROM purchasedetail p 
JOIN product p2
on p.productID = p2.productID
GROUP BY productID
ORDER BY Quantity_Sold DESC) t
JOIN product p 
ON p.productID = t.productID
GROUP BY t.ProductID, t.ProductName
ORDER BY Product_Profit DESC;


SELECT t.ProductID, t.ProductName, p.Price AS Price_per_Product, round(t.Quantity_Sold * p.Price, 2) AS Product_Revenue
FROM (
SELECT p.productID, p2.ProductName, sum(p.quantity) as Quantity_Sold
FROM purchasedetail p 
JOIN product p2
on p.productID = p2.productID
GROUP BY productID
ORDER BY Quantity_Sold DESC) t
JOIN product p 
ON p.productID = t.productID
GROUP BY t.ProductID, t.ProductName
ORDER BY Product_Revenue ASC
LIMIT 1;

SELECT t.SupplierName, COUNT(t.SupplierName) as Number_of_Products_Supplied
FROM
(SELECT p.*, s.supplierName FROM product p
JOIN supplier s ON s.supplierID = p.supplierID
order by supplierID desc) t
GROUP BY SupplierName
ORDER BY Number_of_Products_Supplied DESC;
