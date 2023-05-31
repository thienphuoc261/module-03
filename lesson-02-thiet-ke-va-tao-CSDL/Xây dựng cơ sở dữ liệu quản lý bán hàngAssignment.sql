create database quanlybanhang;

CREATE TABLE Customer (
    customerID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(30) NOT NULL,
    customerAge INT
);

CREATE TABLE Product (
    productID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(50) NOT NULL,
    productPrice INT
);

CREATE TABLE `order` (
    orderID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customerID INT NOT NULL,
    orderDate DATETIME,
    orderTotalPrice INT
);

alter table `order` add constraint customerID foreign key (customerID) references Customer(customerID);

CREATE TABLE orderDetail (
    orderID INT NOT NULL,
    productid INT NOT NULL,
    orderQuantity INT NOT NULL,
    FOREIGN KEY (orderID) REFERENCES `order` (orderID),
    FOREIGN KEY (productID) REFERENCES Product (productID)
);