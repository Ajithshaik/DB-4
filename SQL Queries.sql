-- Insert Statements
-- Insert into Supplier Table:
INSERT INTO Supplier (MaterialType, Location) VALUES ('Bamboo', 'Shanghai, China');
 
-- Insert into Customer Table:
INSERT INTO Customer (Name, ContactInfo) VALUES ('Green Earth Initiative', 'contact@greenearth.org');
 
-- Update Statements
-- Update a Record in the HabitatPod Table:
UPDATE HabitatPod SET Species = 'Owl' WHERE PodID = 1; 
 
-- Update a Record in the Inventory Table:
UPDATE Inventory SET QuantityAvailable = 30 WHERE InventoryID = 2;
 
-- Delete Statement
-- Delete a Record from the Order Table:
DELETE FROM `Order` WHERE OrderID = 3;
 
-- Simple Select Statement
-- Select a Subset of Rows and Columns from Supplier Table:
SELECT SupplierID, MaterialType FROM Supplier WHERE Location = 'Shanghai, China';
 
-- Select Statements with Joins
-- Select Statement Joining Order and Customer Tables:
SELECT `Order`.OrderID, Customer.Name, `Order`.OrderDate FROM `Order` JOIN Customer ON `Order`.CustomerID = Customer.CustomerID;
 
-- Select Statement Joining HabitatPod and Inventory Tables:
SELECT HabitatPod.Species, Inventory.QuantityAvailable FROM HabitatPod JOIN Inventory ON HabitatPod.PodID = Inventory.PodID;
 
-- Queries with Summary Functions
-- Total Number of Habitat Pods in Inventory:
SELECT SUM(QuantityAvailable) AS TotalPods FROM Inventory;
 
-- Average Quantity of Pods in Inventory:
SELECT AVG(QuantityAvailable) AS AverageQuantity FROM Inventory;
 
-- Count of Suppliers for Each Material Type:
SELECT MaterialType, COUNT(SupplierID) AS NumberOfSuppliers FROM Supplier GROUP BY MaterialType;
 
-- Multi-table Query
-- Multi-table Query Joining Order and Customer Tables:
SELECT `Order`.OrderID, `Order`.OrderDate, Customer.Name FROM `Order` JOIN Customer ON `Order`.CustomerID = Customer.CustomerID;
