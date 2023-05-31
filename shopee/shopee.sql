create database shopee;
use shopee;

CREATE TABLE category (
    categoryID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    categoryName VARCHAR(50) NOT NULL
);

CREATE TABLE product (
    productID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(50) NOT NULL,
    price INT,
    categoryID INT,
    FOREIGN KEY (categoryID)
        REFERENCES category (categoryID)
);

CREATE TABLE variant (
    variantID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    variantName VARCHAR(50) NOT NULL,
    price INT,
    productID INT,
    FOREIGN KEY (productID)
        REFERENCES product (productID)
);

CREATE TABLE users (
    userID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(50) NOT NULL
);

CREATE TABLE address (
    addressID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    streetName VARCHAR(50),
    wardName VARCHAR(50),
    districtName VARCHAR(50),
    cityName VARCHAR(50),
    userID INT,
    FOREIGN KEY (userID)
        REFERENCES users (userID)
);

CREATE TABLE cart (
    cartID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userID INT UNIQUE NOT NULL,
    FOREIGN KEY (userID)
        REFERENCES users (userID)
);

CREATE TABLE line (
    lineID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cartID INT,
    productID INT,
    quantity INT,
    FOREIGN KEY (cartID)
        REFERENCES cart (cartID),
    FOREIGN KEY (productID)
        REFERENCES product (productID)
);