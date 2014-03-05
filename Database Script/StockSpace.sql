CREATE DATABASE  IF NOT EXISTS `stockspace` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stockspace`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: stockspace
-- ------------------------------------------------------
-- Server version	5.5.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryid` int(50) NOT NULL AUTO_INCREMENT,
  `catname` varchar(100) NOT NULL,
  `companyid` int(50) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`categoryid`),
  KEY `companyid` (`companyid`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (20,'Phones',1,'0000-00-00 00:00:00'),(25,'Tablets',2,'0000-00-00 00:00:00'),(30,'Accessories ',3,'0000-00-00 00:00:00'),(35,'Phones',4,'0000-00-00 00:00:00'),(40,'Tablets',5,'0000-00-00 00:00:00'),(45,'Accessories',6,'0000-00-00 00:00:00'),(50,'Phones',7,'0000-00-00 00:00:00'),(55,'Tablets',8,'0000-00-00 00:00:00'),(60,'Accessories',9,'0000-00-00 00:00:00'),(65,'Phones',10,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerid` int(50) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Willard Lablanc','1534 Sidco Dr','wlablanc@yahoo.com','780-384-5410','0000-00-00 00:00:00'),(2,'Lauryn Randol','4207 Leon Rd','lauryn@yahoo.com','604-236-4625','0000-00-00 00:00:00'),(3,'Laurena Begin','7564 N Academy Ave','laurena.begin@begin.com','519-790-8660','0000-00-00 00:00:00'),(4,'Elise	Michelle','88 E Saint Elmo Rd','elise@gmail.com','905-652-4509','0000-00-00 00:00:00'),(5,'Corrie	Kardell','75 Westchester Ave','corrie_kardell@aol.com','514-203-7817','0000-00-00 00:00:00'),(6,'Kimberely	Rabuse','89 W 35th St #1','kimberely.rabuse@cox.net','519-912-5533','0000-00-00 00:00:00'),(7,'Tish	Violett','1 Norris Ave #4095','tish.violett@violett.com','450-840-7605','0000-00-00 00:00:00'),(8,'Hollis	Stanfield','5174 Interstate 45 N','hollis.stanfield@aol.com','780-574-5620','0000-00-00 00:00:00'),(9,'Andree	Christmann','765 Rock Island Rd','andree.christmann@cox.net','519-872-6826','0000-00-00 00:00:00'),(10,'Lyla	Fucillo','7979 33  191','lyla_fucillo@cox.net','902-844-1174','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` int(50) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `subcategoryid` int(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `pstatus` varchar(1) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `subcategoryid` (`subcategoryid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5,'Apple iPhone 5S',10,'Phone','Y','0000-00-00 00:00:00'),(10,'Blackberry Z10',12,'Phone','N','0000-00-00 00:00:00'),(15,'Dell Streak Pro D43',14,'Phone','N','0000-00-00 00:00:00'),(20,'Google Nexus 5',16,'Phone','Y','0000-00-00 00:00:00'),(25,'HTC One',18,'Phone','Y','0000-00-00 00:00:00'),(30,'Huawei Ascend Y300',20,'Phone','N','0000-00-00 00:00:00'),(35,'Motorola Moto X',22,'Phone','Y','0000-00-00 00:00:00'),(40,'Nokia Lumia 1020',24,'Phone','N','0000-00-00 00:00:00'),(45,'Samsung Galaxy Note 3',26,'Phone','Y','0000-00-00 00:00:00'),(50,'Sony Xperia',28,'Phone','N','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `subcategoryid` int(50) NOT NULL AUTO_INCREMENT,
  `subcatname` varchar(100) NOT NULL,
  `categoryid` int(50) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`subcategoryid`),
  KEY `categoryid` (`categoryid`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (10,'iPhone',20,'0000-00-00 00:00:00'),(12,'Galaxy S3',25,'0000-00-00 00:00:00'),(14,'Galaxy S4',30,'0000-00-00 00:00:00'),(16,'HTC Desire',35,'0000-00-00 00:00:00'),(18,'Galaxy Note',40,'0000-00-00 00:00:00'),(20,'Galaxy Note 2',45,'0000-00-00 00:00:00'),(22,'Moto X',50,'0000-00-00 00:00:00'),(24,'Nexus 5',55,'0000-00-00 00:00:00'),(26,'Nexus 7',60,'0000-00-00 00:00:00'),(28,'Lumia',65,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairproduct`
--

DROP TABLE IF EXISTS `repairproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairproduct` (
  `repairproductid` int(50) NOT NULL AUTO_INCREMENT,
  `categoryid` int(50) NOT NULL,
  `customerid` int(50) NOT NULL,
  `employeeid` int(50) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`repairproductid`),
  KEY `categoryid` (`categoryid`),
  KEY `customerid` (`customerid`),
  KEY `employeeid` (`employeeid`),
  CONSTRAINT `repairproduct_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`),
  CONSTRAINT `repairproduct_ibfk_2` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  CONSTRAINT `repairproduct_ibfk_3` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairproduct`
--

LOCK TABLES `repairproduct` WRITE;
/*!40000 ALTER TABLE `repairproduct` DISABLE KEYS */;
INSERT INTO `repairproduct` VALUES (140,20,10,1,'Apple iPhone','0000-00-00 00:00:00'),(141,25,9,2,'Samsung Galaxy S2','0000-00-00 00:00:00'),(142,30,8,3,'HTC Desire','0000-00-00 00:00:00'),(143,35,7,4,'Google Nexus 5','0000-00-00 00:00:00'),(144,40,6,5,'Moto X','0000-00-00 00:00:00'),(145,45,5,6,'Huawei Ascend','0000-00-00 00:00:00'),(146,50,4,7,'Samsung Galaxy Note','0000-00-00 00:00:00'),(147,55,3,8,'Nokia Lumia 910','0000-00-00 00:00:00'),(148,60,2,9,'Samsung Galaxy S3','0000-00-00 00:00:00'),(149,65,1,10,'Apple iPad','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `repairproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyid` int(50) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Apple','0000-00-00 00:00:00'),(2,'Samsung','0000-00-00 00:00:00'),(3,'Blackberry','0000-00-00 00:00:00'),(4,'HTC','0000-00-00 00:00:00'),(5,'Google','0000-00-00 00:00:00'),(6,'Nokia','0000-00-00 00:00:00'),(7,'Huawei','0000-00-00 00:00:00'),(8,'Dell','0000-00-00 00:00:00'),(9,'Sony','0000-00-00 00:00:00'),(10,'Motorola','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairr`
--

DROP TABLE IF EXISTS `repairr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairr` (
  `repairid` int(50) NOT NULL AUTO_INCREMENT,
  `repairproductid` int(50) NOT NULL,
  `desription` varchar(100) NOT NULL,
  `rstatus` varchar(1) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`repairid`),
  KEY `repairproductid` (`repairproductid`),
  CONSTRAINT `repairr_ibfk_1` FOREIGN KEY (`repairproductid`) REFERENCES `repairproduct` (`repairproductid`)
) ENGINE=InnoDB AUTO_INCREMENT=1401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairr`
--

LOCK TABLES `repairr` WRITE;
/*!40000 ALTER TABLE `repairr` DISABLE KEYS */;
INSERT INTO `repairr` VALUES (350,140,'Apple iPhone','Y','0000-00-00 00:00:00'),(351,141,'Samsung Galaxy S2','N','0000-00-00 00:00:00'),(352,142,'HTC Desire','Y','0000-00-00 00:00:00'),(353,143,'Google Nexux 5','Y','0000-00-00 00:00:00'),(354,144,'Moto X','N','0000-00-00 00:00:00'),(355,145,'Huawei Ascend','Y','0000-00-00 00:00:00'),(356,146,'Samsung Galaxy Note','N','0000-00-00 00:00:00'),(357,147,'Nokia Lumia 910','Y','0000-00-00 00:00:00'),(358,148,'Samsung Galaxy S3','Y','0000-00-00 00:00:00'),(359,149,'Apple iPad','N','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `repairr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `salesid` int(50) NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `customerid` int(50) NOT NULL,
  `paymentmode` varchar(15) NOT NULL,
  `amount` int(50) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`salesid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,NULL,1,'Debit',50,'0000-00-00 00:00:00'),(2,NULL,5,'Credit',90,'0000-00-00 00:00:00'),(3,NULL,8,'Cash',20,'0000-00-00 00:00:00'),(4,NULL,6,'Debit',45,'0000-00-00 00:00:00'),(5,NULL,3,'Cash',100,'0000-00-00 00:00:00'),(6,NULL,9,'Credit',80,'0000-00-00 00:00:00'),(7,NULL,2,'Debit',45,'0000-00-00 00:00:00'),(8,NULL,5,'Cash',200,'0000-00-00 00:00:00'),(9,NULL,4,'Credit',150,'0000-00-00 00:00:00'),(10,NULL,7,'Debit',1000,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employer` (
  `employerid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `pasword` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gcmMessageID` varchar(100) DEFAULT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`employerid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'owner_01','owner_01','Francoise Rautenstrauch','2335 Canton Hwy #6','francoise.rautenstrauch@rautenstrauch.com','519-569-8399',NULL,'0000-00-00 00:00:00'),(2,'owner_02','owner_02','Kendra Loud','6 Arch St #9757','kloud@gmail.com','506-932-4472',NULL,'0000-00-00 00:00:00'),(3,'owner_03','owner_03','Lourdes Bauswell','9547 Belmont Rd #21','lourdes_bauswell@aol.com','613-903-7043',NULL,'0000-00-00 00:00:00'),(4,'owner_04','owner_04','Hannah Edmison','73 Pittsford Victor Rd','hannah@yahoo.com','604-692-7694',NULL,'0000-00-00 00:00:00'),(5,'owner_05','owner_05','Tom Loeza','447 Commercial St Se','tom.loeza@gmail.com','514-727-4760',NULL,'0000-00-00 00:00:00'),(6,'owner_06','owner_05','Queenie Kramarczyk','47 Garfield Ave','queenie.kramarczyk@kramarczyk.org','306-302-7591',NULL,'0000-00-00 00:00:00'),(7,'owner_07','owner_07','Hui Portaro','3 Mill Rd','hui_portaro@cox.net','506-276-4830',NULL,'0000-00-00 00:00:00'),(8,'owner_08','owner_08','Josefa Opitz','136 W Grand Ave #3','josefa.opitz@opitz.org','519-526-3721',NULL,'0000-00-00 00:00:00'),(9,'owner_09','owner_09','Lea Steinhaus','80 Maplewood Dr #34','lsteinhaus@cox.net','905-651-3298',NULL,'0000-00-00 00:00:00'),(10,'owner_10','owner_10','Paola Vielma','58 Hancock St','paola_vielma@aol.com','905-263-7711',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salestransaction`
--

DROP TABLE IF EXISTS `salestransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salestransaction` (
  `salestransactionid` int(50) NOT NULL AUTO_INCREMENT,
  `productid` int(50) NOT NULL,
  `salesid` int(50) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `desription` varchar(100) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`salestransactionid`),
  KEY `productid` (`productid`),
  KEY `salesid` (`salesid`),
  CONSTRAINT `salestransaction_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `salestransaction_ibfk_2` FOREIGN KEY (`salesid`) REFERENCES `sales` (`salesid`)
) ENGINE=InnoDB AUTO_INCREMENT=2346 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salestransaction`
--

LOCK TABLES `salestransaction` WRITE;
/*!40000 ALTER TABLE `salestransaction` DISABLE KEYS */;
INSERT INTO `salestransaction` VALUES (2300,5,1,'1','Apple iPhone 5S','0000-00-00 00:00:00'),(2305,10,2,'1','BlackBerry Z10','0000-00-00 00:00:00'),(2310,15,3,'3','Dell Streak Pro D43','0000-00-00 00:00:00'),(2315,20,4,'2','Google Nexus 5','0000-00-00 00:00:00'),(2320,25,5,'1','HTC One','0000-00-00 00:00:00'),(2325,30,6,'4','Huawei Ascend Y300','0000-00-00 00:00:00'),(2330,35,7,'2','Motorola Moto X','0000-00-00 00:00:00'),(2335,40,8,'1','Nokia Lumia 1020','0000-00-00 00:00:00'),(2340,45,9,'1','Samsung Galaxy Note 3','0000-00-00 00:00:00'),(2345,50,10,'1','Sony Xperia','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `salestransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairpartsused`
--

DROP TABLE IF EXISTS `repairpartsused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairpartsused` (
  `repairpartsusedid` int(50) NOT NULL AUTO_INCREMENT,
  `repairid` int(50) NOT NULL,
  `productid` int(50) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`repairpartsusedid`),
  KEY `repairid` (`repairid`),
  KEY `productid` (`productid`),
  CONSTRAINT `repairpartsused_ibfk_1` FOREIGN KEY (`repairid`) REFERENCES `repairr` (`repairid`),
  CONSTRAINT `repairpartsused_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairpartsused`
--

LOCK TABLES `repairpartsused` WRITE;
/*!40000 ALTER TABLE `repairpartsused` DISABLE KEYS */;
INSERT INTO `repairpartsused` VALUES (550,350,5,'0000-00-00 00:00:00'),(551,351,10,'0000-00-00 00:00:00'),(552,352,15,'0000-00-00 00:00:00'),(553,353,20,'0000-00-00 00:00:00'),(554,354,25,'0000-00-00 00:00:00'),(555,355,30,'0000-00-00 00:00:00'),(556,356,35,'0000-00-00 00:00:00'),(557,357,40,'0000-00-00 00:00:00'),(558,358,45,'0000-00-00 00:00:00'),(559,359,50,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `repairpartsused` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `pasword` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'employee_01','employee_02','Hortencia Bresser','808 Calle De Industrias','hbresser@aol.com','902-370-8282','0000-00-00 00:00:00'),(2,'employee_02','employee_02','Leanna Tijerina','2859 Dorsett Rd','leanna@cox.net','416-658-1773','0000-00-00 00:00:00'),(3,'employee_03','employee_03','Danilo Pride','6857 Wall St','danilo_pride@hotmail.com','403-212-4945','0000-00-00 00:00:00'),(4,'employee_04','employee_04','Huey	Marcille','169 Journal Sq','huey.marcille@gmail.com','780-639-3619','0000-00-00 00:00:00'),(5,'employee_05','employee_05','Apolonia Warne','3 E 31st St #77','apolonia@gmail.com','506-978-1488','0000-00-00 00:00:00'),(6,'employee_06','employee_06','Chandra Lagos','7 N Dean St','chandra.lagos@lagos.org','416-716-6446','0000-00-00 00:00:00'),(7,'employee_07','employee_07','Crissy Pacholec','85 S State St','crissy@aol.com','705-477-2307','0000-00-00 00:00:00'),(8,'employee_08','employee_08','Gianna Branin','100 Main St','gianna@aol.com','403-337-7162','0000-00-00 00:00:00'),(9,'employee_09','employee_09','Valentin Billa','6185 Bohn St #72','vbilla@yahoo.com','306-291-5073','0000-00-00 00:00:00'),(10,'employee_10','employee_10','Ilona Dudash','2 Sutton Pl S #5727','idudash@dudash.com','819-536-7034','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence` (
  `attendenceid` int(50) NOT NULL AUTO_INCREMENT,
  `employeeid` int(50) NOT NULL,
  `intime` time DEFAULT NULL,
  `outtime` time DEFAULT NULL,
  `paidstatus` varchar(1) DEFAULT NULL,
  `paydate` datetime NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`attendenceid`),
  KEY `employeeid` (`employeeid`),
  CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES (10,1,'08:00:00','12:00:00','Y','2014-02-05 00:00:00','0000-00-00 00:00:00'),(20,2,'08:00:00','12:00:00','Y','2014-02-05 00:00:00','0000-00-00 00:00:00'),(30,3,'12:00:00','04:00:00','Y','2014-02-07 00:00:00','0000-00-00 00:00:00'),(40,4,'12:00:00','04:00:00','Y','2014-02-07 00:00:00','0000-00-00 00:00:00'),(50,5,'04:00:00','08:00:00','Y','2014-02-09 00:00:00','0000-00-00 00:00:00'),(60,6,'04:00:00','08:00:00','Y','2014-02-09 00:00:00','0000-00-00 00:00:00'),(70,7,'08:00:00','12:00:00','Y','2014-02-11 00:00:00','0000-00-00 00:00:00'),(80,8,'08:00:00','12:00:00','Y','2014-02-11 00:00:00','0000-00-00 00:00:00'),(90,9,'08:00:00','05:00:00','Y','2014-02-03 00:00:00','0000-00-00 00:00:00'),(100,10,'08:00:00','05:00:00','Y','2014-02-03 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `stockid` int(50) NOT NULL AUTO_INCREMENT,
  `productid` int(50) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `min stock quantity` int(15) NOT NULL,
  `date created` datetime NOT NULL,
  PRIMARY KEY (`stockid`),
  KEY `productid` (`productid`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (100,5,'50',10,'0000-00-00 00:00:00'),(105,10,'10',2,'0000-00-00 00:00:00'),(110,15,'2',2,'0000-00-00 00:00:00'),(115,20,'10',5,'0000-00-00 00:00:00'),(120,25,'8',4,'0000-00-00 00:00:00'),(125,30,'5',2,'0000-00-00 00:00:00'),(130,35,'4',1,'0000-00-00 00:00:00'),(135,40,'15',5,'0000-00-00 00:00:00'),(140,45,'4',2,'0000-00-00 00:00:00'),(145,50,'8',3,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-04 18:46:05
