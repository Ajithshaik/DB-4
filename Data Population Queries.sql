-- Data Population:
Show tables;

-- For Supplier Table:
Select * from Supplier;
LOAD DATA LOCAL INFILE 'D:\\Ajith-Database\\Supplier.csv'
INTO TABLE Supplier
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(SupplierID, MaterialType, Location);
Select * from Supplier;

-- For HabitatPod Table:
LOAD DATA LOCAL INFILE 'D:\\Ajith-Database\\HabitatPod.csv'
INTO TABLE HabitatPod
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PodID, Species, MaterialID);
Select * from HabitatPod;

-- For Customer Table:
LOAD DATA LOCAL INFILE 'D:\\Ajith-Database\\Customer.csv'
INTO TABLE Customer
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(CustomerID, Name, ContactInfo);
Select * from Customer;

-- For Order Table:
LOAD DATA LOCAL INFILE 'D:\\Ajith-Database\\Order.csv'
INTO TABLE `Order`
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(OrderID, CustomerID, OrderDate);
Select * from `Order`;

-- For Inventory Table:
LOAD DATA LOCAL INFILE 'D:\\Ajith-Database\\Inventory.csv'
INTO TABLE Inventory
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(InventoryID, PodID, QuantityAvailable);
Select * from Inventory;



