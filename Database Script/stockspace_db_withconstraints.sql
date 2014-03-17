drop DATABASE  IF EXISTS stockspace;
CREATE DATABASE  IF NOT EXISTS stockspace;
use stockspace;

DROP TABLE IF EXISTS employer;
create table employer(
employerId int(50) NOT NULL AUTO_INCREMENT,
userName varchar(100) NOT NULL,
password varchar(100) NOT NULL,
fullName varchar(100) NOT NULL,
address varchar(100) NOT NULL,
email varchar(100) NOT NULL,
phone varchar(15) NOT NULL,
gcmMessageId varchar(250) DEFAULT NULL,
dateCreated datetime not null,
PRIMARY KEY(employerId),
UNIQUE KEY (gcmMessageId));

DROP TABLE IF EXISTS employee;
create table employee(
employeeId int(50) NOT NULL AUTO_INCREMENT,
userName varchar(100) NOT NULL,
password varchar(100) NOT NULL,
fullName varchar(100) NOT NULL,
address varchar(100) NOT NULL,
email varchar(100) NOT NULL,
phone varchar(15) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(employeeId));

DROP TABLE IF EXISTS company;
create table company(
companyId int(50) NOT NULL AUTO_INCREMENT,
companyName varchar(100) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(companyId));

DROP TABLE IF exists attendence;
create table attendence(
attendenceId int(50) NOT NULL AUTO_INCREMENT,
employeeId int(50) NOT NULL,
inTime time DEFAULT NULL,
outTime time DEFAULT NULL,
payDate datetime NULL,
dateCreated datetime not null,
PRIMARY KEY(attendenceId),
FOREIGN KEY(employeeId) references employee(employeeId));

DROP TABLE IF EXISTS customer;
create table customer(
customerId int(50) NOT NULL AUTO_INCREMENT,
fullName varchar(100) NOT NULL,
address varchar(100) NOT NULL,
email varchar(100) NOT NULL,
phone varchar(15) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(customerId));

DROP TABLE IF EXISTS category;
create table category(
categoryId int(50) NOT NULL AUTO_INCREMENT,
categoryName varchar(100) NOT NULL,
companyId int(50) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(categoryId),
FOREIGN KEY(companyId) references company(companyId));

DROP TABLE IF EXISTS subcategory;
create table subcategory(
subCategoryId int(50) NOT NULL AUTO_INCREMENT,
subCategoryName varchar(100) NOT NULL,
categoryId int(50) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(subcategoryId),
FOREIGN KEY(categoryId) references category(categoryId));

DROP TABLE IF EXISTS product;
create table product(
productId int(50) NOT NULL AUTO_INCREMENT,
productName varchar(100) NOT NULL,
subCategoryId int(50) NOT NULL,
description varchar(100) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(productId),
FOREIGN KEY(subcategoryId) references subcategory(subcategoryId));


DROP TABLE IF EXISTS stock;
create table stock(
stockId int(50) NOT NULL AUTO_INCREMENT,
productId int(50) NOT NULL,
quantity INT(15) NOT NULL,
minmumStockQuantity int(15) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(stockId),
FOREIGN KEY(productId) references product(productId));

DROP TABLE IF EXISTS sales;
create table sales(
salesId int(50) NOT NULL AUTO_INCREMENT,
salesDate DATETIME DEFAULT NULL,
customerId int(50) NOT NULL,
paymentMode varchar(15) NOT NULL,
totalAmount int(50) NOT NULL,
creditAmount int(50) NOT NULL,
debitAmount int(50) NOT NULL,
cashAmount int(50) NOT NULL,
pendingAmount int(15) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(salesId),
FOREIGN KEY(customerId) references customer(customerId));

DROP TABLE IF EXISTS salestransaction;
create table salestransaction(
salestransactionId int(50) NOT NULL AUTO_INCREMENT,
productId int(50) NULL,
salesId int(50) NOT NULL,
quantity INT(15) NULL,
description varchar(100) NULL,
salesType varchar(1) NOT NULL,
saleTransactionAmount int(15) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(salestransactionId),
FOREIGN KEY(productId) references product(productId),
FOREIGN KEY(salesId) references sales(salesId));

DROP TABLE IF EXISTS repairproduct;
create table repairproduct(
repairproductId int(50) NOT NULL AUTO_INCREMENT,
customerId int(50) NOT NULL,
employeeId int(50) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(repairproductId),
FOREIGN KEY(customerId) references customer(customerId),
FOREIGN KEY(employeeId) references employee(employeeId));

DROP TABLE IF EXISTS repairs;
create table repairs(
repairId int(50) NOT NULL AUTO_INCREMENT,
repairproductId int(50) NOT NULL,
subCategoryId int(50) NOT NULL,
description varchar(100) NOT NULL,
repairSatus varchar(50) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(repairId),
FOREIGN KEY(repairproductId) references repairproduct(repairproductId),
FOREIGN KEY(subcategoryId) references subcategory(subcategoryId));

DROP TABLE IF EXISTS repairpartsused;
create table repairpartsused(
repairPartsUsedId int(50) NOT NULL AUTO_INCREMENT,
repairId int(50) NOT NULL,
productId int(50) NOT NULL,
dateCreated datetime not null,
PRIMARY KEY(repairpartsusedId),
FOREIGN KEY(repairId) references repairs(repairId),
FOREIGN KEY(productId) references product(productId));

