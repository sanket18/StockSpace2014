drop DATABASE  IF EXISTS stockspace;
CREATE DATABASE  IF NOT EXISTS stockspace;
use stockspace;

DROP TABLE IF EXISTS employer;
create table employer(
employerid int(50) NOT NULL AUTO_INCREMENT,
username varchar(100) NOT NULL,
pasword varchar(100) NOT NULL,
fullname varchar(100) NOT NULL,
address varchar(100) NOT NULL,
email varchar(100) NOT NULL,
phone varchar(15) NOT NULL,
gcmMessageId varchar(100) DEFAULT NULL,
datecreated datetime not null,
PRIMARY KEY(employerid),
UNIQUE KEY (gcmMessageId));

DROP TABLE IF EXISTS employee;
create table employee(
employeeid int(50) NOT NULL AUTO_INCREMENT,
username varchar(100) NOT NULL,
pasword varchar(100) NOT NULL,
fullname varchar(100) NOT NULL,
address varchar(100) NOT NULL,
email varchar(100) NOT NULL,
phone varchar(15) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(employeeid));

DROP TABLE IF EXISTS company;
create table company(
companyid int(50) NOT NULL AUTO_INCREMENT,
companyname varchar(100) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(companyid));

DROP TABLE IF exists attendence;
create table attendence(
attendenceid int(50) NOT NULL AUTO_INCREMENT,
employeeid int(50) NOT NULL,
intime time DEFAULT NULL,
outtime time DEFAULT NULL,
paidstatus varchar(1) DEFAULT NULL,
paydate datetime NOT NULL,
datecreated datetime not null,
PRIMARY KEY(attendenceid),
FOREIGN KEY(employeeid) references employee(employeeid));

DROP TABLE IF EXISTS customer;
create table customer(
customerid int(50) NOT NULL AUTO_INCREMENT,
fullname varchar(100) NOT NULL,
address varchar(100) NOT NULL,
email varchar(100) NOT NULL,
phone varchar(15) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(customerid));

DROP TABLE IF EXISTS category;
create table category(
categoryid int(50) NOT NULL AUTO_INCREMENT,
catname varchar(100) NOT NULL,
companyid int(50) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(categoryid),
FOREIGN KEY(companyid) references company(companyid));

DROP TABLE IF EXISTS subcategory;
create table subcategory(
subcategoryid int(50) NOT NULL AUTO_INCREMENT,
subcatname varchar(100) NOT NULL,
categoryid int(50) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(subcategoryid),
FOREIGN KEY(categoryid) references category(categoryid));

DROP TABLE IF EXISTS product;
create table product(
productid int(50) NOT NULL AUTO_INCREMENT,
pname varchar(100) NOT NULL,
subcategoryid int(50) NOT NULL,
desription varchar(100) NOT NULL,
pstatus varchar(1) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(productid),
FOREIGN KEY(subcategoryid) references subcategory(subcategoryid));


DROP TABLE IF EXISTS stock;
create table stock(
stockid int(50) NOT NULL AUTO_INCREMENT,
productid int(50) NOT NULL,
quantity varchar(100) NOT NULL,
minstockqty int(15) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(stockid),
FOREIGN KEY(productid) references product(productid));

DROP TABLE IF EXISTS sales;
create table sales(
salesid int(50) NOT NULL AUTO_INCREMENT,
dtime DATETIME DEFAULT NULL,
customerid int(50) NOT NULL,
paymentmode varchar(15) NOT NULL,
amount int(50) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(salesid),
FOREIGN KEY(customerid) references customer(customerid));

DROP TABLE IF EXISTS salestransaction;
create table salestransaction(
salestransactionid int(50) NOT NULL AUTO_INCREMENT,
productid int(50) NOT NULL,
salesid int(50) NOT NULL,
quantity varchar(100) NOT NULL,
desription varchar(100) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(salestransactionid),
FOREIGN KEY(productid) references product(productid),
FOREIGN KEY(salesid) references sales(salesid));

DROP TABLE IF EXISTS repairproduct;
create table repairproduct(
repairproductid int(50) NOT NULL AUTO_INCREMENT,
categoryid int(50) NOT NULL,
customerid int(50) NOT NULL,
employeeid int(50) NOT NULL,
rname varchar(100) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(repairproductid),
FOREIGN KEY(categoryid) references category(categoryid),
FOREIGN KEY(customerid) references customer(customerid),
FOREIGN KEY(employeeid) references employee(employeeid));

DROP TABLE IF EXISTS repairr;
create table repairr(
repairid int(50) NOT NULL AUTO_INCREMENT,
repairproductid int(50) NOT NULL,
desription varchar(100) NOT NULL,
rstatus varchar(1) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(repairid),
FOREIGN KEY(repairproductid) references repairproduct(repairproductid));

DROP TABLE IF EXISTS repairpartsused;
create table repairpartsused(
repairpartsusedid int(50) NOT NULL AUTO_INCREMENT,
repairid int(50) NOT NULL,
productid int(50) NOT NULL,
datecreated datetime not null,
PRIMARY KEY(repairpartsusedid),
FOREIGN KEY(repairid) references repairr(repairid),
FOREIGN KEY(productid) references product(productid));

