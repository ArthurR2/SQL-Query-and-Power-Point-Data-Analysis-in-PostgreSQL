﻿CREATE TABLE Orders (
    OrderID int   NOT NULL,
    CustomerID int   NOT NULL,
    EmployeeID int   NOT NULL,
    OrderDate date   NOT NULL,
	Price numeric(10,2) NOT NULL,
    CONSTRAINT pk_Orders PRIMARY KEY (
        OrderID
     )
);

CREATE TABLE Customer (
    ID int   NOT NULL,
    CustomerName varchar(50)   NOT NULL,
    Address varchar(100)   NOT NULL,
    City varchar(50)   NOT NULL,
    PostalCode int   NOT NULL,
    Country varchar(30)   NOT NULL,
    CONSTRAINT pk_Customer PRIMARY KEY (
        ID
     )
);

ALTER TABLE Orders ADD CONSTRAINT fk_Orders_CustomerID FOREIGN KEY(CustomerID)
REFERENCES Customer (ID);


--inter into Customer table
INSERT INTO Customer VALUES (1, 'Mario', 'Flager ave. 107', 'Doral', 33176, 'United States');
INSERT INTO Customer VALUES (2, 'Luis', 'Calle 8 Str. 8', 'Miami', 33172, 'United States');
INSERT INTO Customer VALUES (3, 'John', 'Coral Gables Str. 8', 'Miami', 33174, 'United States');


--inter into Orders table
INSERT INTO Orders VALUES (10408, 2, 7, '2022-10-19',164.78);
INSERT INTO Orders VALUES (10409, 2, 5, '2022-10-20', 200.78);
INSERT INTO Orders VALUES (1010, 1, 6, '2020-10-21', 300.78);



SELECT OrderID, CustomerName, Price 
FROM Orders
INNER JOIN Customer
ON Orders.CustomerID = Customer.ID;