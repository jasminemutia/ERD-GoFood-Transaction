# GoFood Receipt System Database Design and Implementation
This project focuses on creating an efficient and organized database structure for a GoFood receipt system. 
The database stores essential details for order processing, tracking, and customer service, covering entities such as customers, items, stores, drivers, and transactions.

## ERD Design Key Elements
### Primary Entities and Relationships
- Entities: The database comprises 11 tables, each with a unique primary key to ensure record distinction.
- Tables Include:
  - `mscustomer`: Contains customer details (CustomerID, Name, etc.)
  - `msdriver`: Records driver information (DriverID, Name, etc.)
  - `msitem`: Stores item information (ItemID, Name, Price, etc.)
  - `msstore`: Keeps store details (StoreID, Name, Address, etc.)
  - `transactionheader`: Manages order transactions (TransactionID, CustomerID, DriverID, etc.)
  - `transactiondetail`: Tracks items per order (TransactionDetailID, TransactionID, ItemID, Quantity)

### Primary and Foreign Key Constraints
- Primary Keys: Each table has a primary key for data integrity, e.g., CustomerID in mscustomer, DriverID in msdriver.
- Foreign Keys: Relationships are defined using foreign keys, such as linking CustomerID in transactionheader to mscustomer, and ItemID in transactiondetail to msitem.

### Transaction Tables for Order Management
- Order Details:
`transactionheader` holds overall order information, while transactiondetail specifies individual items in each order.
- Attributes:
`transactionheader` includes fields for distance, delivery fee, payment type, etc., important for logistics and billing.

###  Geographical Data Integration
- Tables for Locations:
Location data is organized across `msdistrict`, `msprovince`, `msurbancity`, `mspostalcode`, and `mssubdistrict`.
- Purpose:
These tables facilitate address management for both customers and stores, supporting delivery routing and location-based queries.

### SQL Command Usage
- Joins and Filters:
Using commands like JOIN and WHERE, complex data retrieval is streamlined, such as fetching all orders for a specific customer or obtaining the store details of a particular order.
- Dummy Data:
Populating tables with test data helps verify the accuracy of queries and the overall database setup.

### Implementation on XAMPP
- Local Testing Environment:
Setting up the database on XAMPP allows real-world testing, mimicking a production environment where the ERD supports receipt processing and data analysis.

## Example SQL Structure and Queries
### Table Creation and Relationships
``` sql
-- Customer Table
CREATE TABLE mscustomer (
    CustomerID CHAR(12) NOT NULL PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    CustomerAddress VARCHAR(255) NOT NULL,
    CustomerUrbanVillageID CHAR(5) NOT NULL,
    CustomerSubDistrictID CHAR(5) NOT NULL,
    CustomerDistrictID CHAR(5) NOT NULL,
    CustomerProvinceID CHAR(5) NOT NULL,
    CustomerPostalCodeID CHAR(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO mscustomer (CustomerID, CustomerName, CustomerAddress, CustomerUrbanVillageID, CustomerSubDistrictID, CustomerDistrictID, CustomerProvinceID, CustomerPostalCodeID) VALUES
('CU6182349271', 'Fepri Putra', 'Jl Mawar 3 Blok C3 No. 1', 'KL002', 'KC001', 'KK001', 'PV001', 'PC002');
```
``` sql
-- Driver Table
CREATE TABLE msdriver (
    DriverID CHAR(12) NOT NULL PRIMARY KEY,
    DriverName VARCHAR(255) NOT NULL,
    DriverLicensePlate VARCHAR(10) NOT NULL,
    DriverVehicleType VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO msdriver (DriverID, DriverName, DriverLicensePlate, DriverVehicleType) VALUES
('DR1234854718', 'Agam Maulana', 'B6394WUF', 'Honda Beat');
```
```sql
-- Store Table
CREATE TABLE msstore (
    StoreID CHAR(5) NOT NULL PRIMARY KEY,
    StoreName VARCHAR(255) NOT NULL,
    StoreAddress VARCHAR(255) NOT NULL,
    StoreDistrictID CHAR(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO msstore (StoreID, StoreName, StoreAddress, StoreDistrictID) VALUES
('ST001', 'Chatime x Cupbop, LP', 'Pamulang Permal 1, Pamulang', 'KK001');
```
```sql
-- Item Table
CREATE TABLE msitem (
    ItemID CHAR(5) NOT NULL PRIMARY KEY,
    ItemName VARCHAR(255) NOT NULL,
    ItemPrice DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO msitem (ItemID, ItemName, ItemPrice) VALUES
('IT001', 'Tho Hotteok Mozarella', 67000.00),
('IT002', 'Pure Cocoa', 26000.00);
```
```sql
-- Transaction Header Table
CREATE TABLE transactionheader (
    TransactionID CHAR(12) NOT NULL PRIMARY KEY,
    CustomerID CHAR(12) NOT NULL,
    DriverID CHAR(12) NOT NULL,
    StoreID CHAR(5) NOT NULL,
    Distance DECIMAL(5,2) NOT NULL,
    DeliveryTime TIME NOT NULL,
    DeliveryFee DECIMAL(10,2) NOT NULL,
    PaymentType VARCHAR(50) NOT NULL,
    TransactionDate DATETIME NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES mscustomer(CustomerID),
    FOREIGN KEY (DriverID) REFERENCES msdriver(DriverID),
    FOREIGN KEY (StoreID) REFERENCES msstore(StoreID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO transactionheader (TransactionID, CustomerID, DriverID, StoreID, Distance, DeliveryTime, DeliveryFee, PaymentType, TransactionDate, TotalAmount) VALUES
('TR0000000001', 'CU6182349271', 'DR1234854718', 'ST001', 3.4, '00:23:00', 13000.00, 'GoPay', '2023-11-10 17:43:00', 115000.00);
```
```sql
-- Transaction Detail Table
CREATE TABLE transactiondetail (
    TransactionDetailID CHAR(12) NOT NULL PRIMARY KEY,
    TransactionID CHAR(12) NOT NULL,
    ItemID CHAR(5) NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (TransactionID) REFERENCES transactionheader(TransactionID),
    FOREIGN KEY (ItemID) REFERENCES msitem(ItemID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO transactiondetail (TransactionDetailID, TransactionID, ItemID, Quantity) VALUES
('TD0000000001', 'TR0000000001', 'IT001', 1),
('TD0000000002', 'TR0000000001', 'IT002', 1);
```
```sql
-- Location Tables
CREATE TABLE msdistrict (
    DistrictID CHAR(5) NOT NULL PRIMARY KEY,
    DistrictName VARCHAR(100) NOT NULL
);

INSERT INTO msdistrict (DistrictID, DistrictName) VALUES
('KK001', 'Tangerang Selatan');

CREATE TABLE msprovince (
    ProvinceID CHAR(5) NOT NULL PRIMARY KEY,
    ProvinceName VARCHAR(100) NOT NULL
);

INSERT INTO msprovince (ProvinceID, ProvinceName) VALUES
('PV001', 'Banten');

CREATE TABLE msurbancity (
    UrbanCityID CHAR(5) NOT NULL PRIMARY KEY,
    UrbanCityName VARCHAR(100) NOT NULL
);

INSERT INTO msurbancity (UrbanCityID, UrbanCityName) VALUES
('KL002', 'Pamulang');

CREATE TABLE mspostalcode (
    PostalCodeID CHAR(5) NOT NULL PRIMARY KEY,
    PostalCode VARCHAR(10) NOT NULL
);

INSERT INTO mspostalcode (PostalCodeID, PostalCode) VALUES
('PC002', '15416');
```

### Sample Query: Retrieve Order Details with Customer and Driver Information
``` sql 
SELECT 
    t.TransactionID,
    c.CustomerName,
    c.CustomerAddress,
    d.DriverName,
    d.DriverLicensePlate,
    d.DriverVehicleType,
    s.StoreName,
    s.StoreAddress,
    i.ItemName,
    td.Quantity,
    i.ItemPrice,
    (td.Quantity * i.ItemPrice) AS TotalItemPrice,
    t.Distance,
    t.DeliveryFee,
    t.TotalAmount,
    t.PaymentType
FROM transactionheader t
JOIN mscustomer c ON t.CustomerID = c.CustomerID
JOIN msdriver d ON t.DriverID = d.DriverID
JOIN msstore s ON t.StoreID = s.StoreID
JOIN transactiondetail td ON t.TransactionID = td.TransactionID
JOIN msitem i ON td.ItemID = i.ItemID
WHERE t.TransactionID = 'TR0000000001';
```

## ERD Diagram
An ERD diagram visually represents the relationships between the tables:
- Entities: mscustomer, msdriver, msitem, msstore, transactionheader, transactiondetail, msdistrict, mspostalcode, msprovince, msurbancity, and mssubdistrict.
- Relationships: Many-to-one (e.g., many items per transaction) and one-to-many (e.g., a store with multiple items).
