-- Database Create:
Create database Eco_Domes;
Use Eco_Domes;
Show tables;

-- Tables Create:
-- Habitat Pod Table:
CREATE TABLE HabitatPod (
    PodID INT AUTO_INCREMENT PRIMARY KEY,
    Species VARCHAR(100) NOT NULL,
    MaterialID INT NOT NULL
);
Describe HabitatPod;

-- Supplier Table:
CREATE TABLE Supplier (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    MaterialType VARCHAR(100) NOT NULL,
    Location VARCHAR(255) NOT NULL
);
Describe Supplier;

-- Customer Table:
CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ContactInfo VARCHAR(255)
);
Describe Customer;

-- Order Table:
CREATE TABLE `Order` (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
Describe Order;

-- Inventory Table:
CREATE TABLE Inventory (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    PodID INT NOT NULL,
    QuantityAvailable INT NOT NULL,
    FOREIGN KEY (PodID) REFERENCES HabitatPod(PodID)
);
Describe Inventory;