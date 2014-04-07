CREATE DATABASE  IF NOT EXISTS `stockspace` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stockspace`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.2    Database: stockspace
-- ------------------------------------------------------
-- Server version	5.6.16-log

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
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence` (
  `attendenceId` int(50) NOT NULL AUTO_INCREMENT,
  `employeeId` int(50) NOT NULL,
  `inTime` time DEFAULT NULL,
  `outTime` time DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`attendenceId`),
  KEY `attendence_ibfk_1` (`employeeId`),
  CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES (201,1,'09:00:00','05:00:00','2014-02-15 06:00:00','2014-02-01 00:00:00'),(202,2,'07:00:00','03:00:00','2014-02-15 06:00:00','2014-02-02 00:00:00'),(203,3,'11:00:00','07:00:00','2014-02-15 06:00:00','2014-02-03 00:00:00'),(204,4,'09:00:00','05:00:00','2014-02-15 06:00:00','2014-02-04 00:00:00'),(205,5,'07:00:00','03:00:00','2014-02-15 06:00:00','2014-02-05 00:00:00'),(206,6,'10:00:00','06:00:00','2014-02-15 06:00:00','2014-02-06 00:00:00'),(207,7,'05:00:00','01:00:00','2014-02-15 06:00:00','2014-02-07 00:00:00');
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryId` int(50) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(100) NOT NULL,
  `companyId` int(50) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`categoryId`),
  KEY `category_ibfk_1` (`companyId`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (11,'Phone',100,'2014-01-01 00:00:00'),(12,'Phone Repair',100,'2014-01-01 00:00:00'),(13,'Tablet',100,'2014-01-01 00:00:00'),(14,'Tablet Repair',100,'2014-01-01 00:00:00'),(15,'Computer',100,'2014-01-01 00:00:00'),(16,'Computer Repair',100,'2014-01-01 00:00:00'),(17,'Phone',110,'2014-01-01 00:00:00'),(18,'Phone Repair',110,'2014-01-01 00:00:00'),(19,'Tablet',110,'2014-01-01 00:00:00'),(20,'Tablet Repair',110,'2014-01-01 00:00:00'),(21,'Computer',110,'2014-01-01 00:00:00'),(22,'Computer Repair',110,'2014-01-01 00:00:00'),(23,'Phone',101,'2014-01-01 00:00:00'),(24,'Phone Repair',101,'2014-01-01 00:00:00'),(25,'Tablet',101,'2014-01-01 00:00:00'),(26,'Tablet Repair',101,'2014-01-01 00:00:00'),(27,'Phone',102,'2014-01-01 00:00:00'),(28,'Phone Repair',102,'2014-01-01 00:00:00'),(29,'Phone',103,'2014-01-01 00:00:00'),(30,'Phone Repair',103,'2014-01-01 00:00:00'),(31,'Tablet',103,'2014-01-01 00:00:00'),(32,'Tablet Repair',103,'2014-01-01 00:00:00'),(33,'Computer',103,'2014-01-01 00:00:00'),(34,'Computer Repair',103,'2014-01-01 00:00:00'),(35,'Phone',104,'2014-01-01 00:00:00'),(36,'Phone Repair',104,'2014-01-01 00:00:00'),(37,'Tablet',104,'2014-01-01 00:00:00'),(38,'Computer',104,'2014-01-01 00:00:00'),(39,'Phone',105,'2014-01-01 00:00:00'),(40,'Phone Repair',105,'2014-01-01 00:00:00'),(41,'Tablet',105,'2014-01-01 00:00:00'),(42,'Tablet Repair',105,'2014-01-01 00:00:00'),(43,'Computer',105,'2014-01-01 00:00:00'),(44,'Computer Repair',105,'2014-01-01 00:00:00');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyId` int(50) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (100,'Apple','2013-06-05 00:00:00'),(101,'HTC','2014-02-25 00:00:00'),(102,'Carbon','2014-03-01 00:00:00'),(103,'Sony','2013-08-05 00:00:00'),(104,'Asus','2013-05-12 00:00:00'),(105,'Google','2013-01-25 00:00:00'),(110,'Samsung','2014-01-21 00:00:00');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerId` int(50) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (501,'Amithabh Bachchan','New Delhi','Amitabh@hotmail.com','111-222-3333','2014-01-05 00:00:00'),(502,'Abhishek Patel','Michigan','Abhi@hotmail.com','123-456-7890','2013-01-05 00:00:00'),(503,'Sumit Arora','Scarborough','paji@gmail.com','416-755-8501','2013-12-25 00:00:00'),(504,'Jigna Thakur','DownTown','jigna@hotmail.com','746-555-5555','2014-01-05 00:00:00'),(505,'Meet Panchal','British Columbia','meet@ymail.com','444-123-8888','2014-03-12 00:00:00'),(506,'Suketu Shah','Empringham Drive','suketu@hotmail.com','222-333-7777','2012-01-22 00:00:00'),(507,'Suhab Khan','Ellesemere Road','mrkhan@hotmail.com','125-785-3694','2013-05-31 00:00:00');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeId` int(50) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'bunty','bunty','Bunty Patel','Rosebank Drive','bunty@gmail.com','416-722-5801','2014-02-05 00:00:00'),(2,'toral','didi','Toral Patel','Brimorto Drive','toral@gmail.com','416-722-4444','2014-03-05 00:00:00'),(3,'gabhru','gabbar','Gabbar Singh','Centennial College','gabbar@gmail.com','416-777-5801','2014-01-05 00:00:00'),(4,'salman','sallu','Salman Khan ','Rosebank Drive','sallu@gmail.com','476-722-2231','2014-02-01 00:00:00'),(5,'amir','color','Amir Khan ','Gurunanak Drive','amir@gmail.com','476-123-4756','2014-02-02 00:00:00'),(6,'hritik','smart','Hritik Roshan ','Toronto','hritik@gmail.com','123-456-7893','2013-08-10 00:00:00'),(7,'mahadev','shaktiman','Bholenath ','Danforth Road','bhol@gmail.com','111-222-3333','2014-02-05 00:00:00');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employer` (
  `employerId` int(50) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gcmMessageId` varchar(250) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`employerId`),
  UNIQUE KEY `gcmMessageId` (`gcmMessageId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'Dipen2512','abcd','Dipen Patel','Rosebank Drive','Dipen2512@gmail.com','416-722-5801','APA91bHIdKL_Pf0MLJYMBCDGwSHLAT2PcMO65g9kqMB5ux5YGJtA70PfNQS056ENyC17oxWSsWBaqQ2rSEN38bWmUHWJkzYrdHLKq3COnu8h-pz19Qweu2eW435s4gPJ7NjeBWEYb5rNKvMjxMHg0abuNepTYH8V8CyOr5wpAHJu81IJGnSEPNY','2014-02-05 00:00:00'),(2,'Sanket','xyz','Sanket Patel','Brimorto Drive','Sanket@gmail.com','416-722-4444',' 1','2014-03-05 00:00:00'),(3,'Ankush','Paaji','Ankush Arora','Centennial College','Ankush@gmail.com','416-777-5801','2','2014-01-05 00:00:00'),(4,'Shalin','baba','Shalin Banjara','Rosebank Drive','Shalin@gmail.com','476-722-2231','3','2014-02-01 00:00:00'),(5,'Jasmin','color','Jassi Zaria','Gurunanak Drive','Jassi@gmail.com','476-123-4756','4','2014-02-02 00:00:00'),(6,'Tapia','smart','Arben Tapia','Toronto','Tapia@gmail.com','123-456-7893','5','2013-08-10 00:00:00'),(7,'Sam','crazy','Sam EFR','Danforth Road','Sam@gmail.com','111-222-3333','6','2014-02-05 00:00:00');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productId` int(50) NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) NOT NULL,
  `subCategoryId` int(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `product_ibfk_1` (`subCategoryId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subCategoryId`) REFERENCES `subcategory` (`subcategoryId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (44,'Iphone5',1001,'Used Phone','2014-01-01 00:00:00'),(45,'Mini Tablet',1003,'New tablet','2014-01-01 00:00:00'),(46,'Ipad',1004,'Used Tablet','2014-01-01 00:00:00'),(47,'IMAC',1005,'New PC','2014-01-01 00:00:00'),(48,'Mac Book Pro',1005,'New PC','2014-01-01 00:00:00'),(49,'Mac Book',1006,'Used Pc','2014-01-01 00:00:00'),(50,'S3',1007,'New Phone','2014-01-01 00:00:00'),(51,'S4',1007,'New Phone','2014-01-01 00:00:00'),(58,'HTC OneS',1013,'New Phone','2014-01-01 00:00:00'),(59,'HTC OneX',1033,'New Phone','2014-01-01 00:00:00'),(60,'HTC OneX',1014,'Used Phone','2014-01-01 00:00:00'),(61,'HTC Flyer',1015,'New Tablet','2014-01-01 00:00:00'),(62,'HTC Flyer',1016,'Used Tablet','2014-01-01 00:00:00'),(63,'Titanium',1017,'New Phone','2014-01-01 00:00:00'),(64,'Titanium',1018,'Used Phone','2014-01-01 00:00:00'),(65,'ExperiaZ',1019,'New Phone','2014-01-01 00:00:00'),(66,'Experia Mini',1019,'New Phone','2014-01-01 00:00:00'),(67,'ExperiaZ',1020,'Used Phone','2014-01-01 00:00:00'),(68,'TabletS',1021,'New Tablet','2014-01-01 00:00:00'),(69,'TabletS',1022,'Used tablet','2014-01-01 00:00:00'),(70,'Sony Viao',1023,'New Laptop','2014-01-01 00:00:00'),(71,'Sony Viao',1024,'Used Laptop','2014-01-01 00:00:00'),(72,'ZenPhone',1025,'New Phone','2014-01-01 00:00:00'),(73,'ZenPhone3',1025,'New Phone','2014-01-01 00:00:00'),(74,'ZenPhone4',1026,'Used Phone','2014-01-01 00:00:00'),(75,'Asus EEPad',1027,'New Tablet','2014-01-01 00:00:00'),(76,'Asus VivoBook',1028,'New Laptop','2014-01-01 00:00:00'),(77,'Nexus5',1029,'New Phone','2014-01-01 00:00:00'),(78,'Nexus4',1029,'New Phone','2014-01-01 00:00:00'),(79,'Nexus5',1030,'Used Phone','2014-01-01 00:00:00'),(80,'Nexux10',1031,'New Tablet','2014-01-01 00:00:00'),(81,'Nexus7',1032,'Used Tablet','2014-01-01 00:00:00'),(82,'ChromeBook',1033,'New Laptop','2014-01-01 00:00:00'),(83,'ChromeBook',1034,'Used Laptop','2014-01-01 00:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairpartsused`
--

DROP TABLE IF EXISTS `repairpartsused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairpartsused` (
  `repairPartsUsedId` int(50) NOT NULL AUTO_INCREMENT,
  `repairId` int(50) NOT NULL,
  `productId` int(50) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`repairPartsUsedId`),
  KEY `repairpartsused_ibfk_1` (`repairId`),
  KEY `repairpartsused_ibfk_2` (`productId`),
  CONSTRAINT `repairpartsused_ibfk_1` FOREIGN KEY (`repairId`) REFERENCES `repairs` (`repairId`) ON DELETE CASCADE,
  CONSTRAINT `repairpartsused_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairpartsused`
--

LOCK TABLES `repairpartsused` WRITE;
/*!40000 ALTER TABLE `repairpartsused` DISABLE KEYS */;
INSERT INTO `repairpartsused` VALUES (3,3,44,'2014-01-01 00:00:00'),(7,7,48,'2014-01-01 00:00:00'),(8,8,49,'2014-01-01 00:00:00'),(9,9,50,'2014-01-01 00:00:00'),(10,10,51,'2014-01-01 00:00:00'),(17,1,58,'2014-01-01 00:00:00'),(18,2,59,'2014-01-01 00:00:00'),(19,3,60,'2014-01-01 00:00:00'),(23,7,64,'2014-01-01 00:00:00'),(24,8,65,'2014-01-01 00:00:00'),(25,9,66,'2014-01-01 00:00:00'),(26,10,67,'2014-01-01 00:00:00'),(27,11,68,'2014-01-01 00:00:00'),(28,12,69,'2014-01-01 00:00:00'),(29,13,70,'2014-01-01 00:00:00'),(30,14,71,'2014-01-01 00:00:00'),(31,15,72,'2014-01-01 00:00:00'),(32,16,73,'2014-01-01 00:00:00'),(33,1,74,'2014-01-01 00:00:00'),(34,2,75,'2014-01-01 00:00:00'),(35,3,76,'2014-01-01 00:00:00'),(39,7,80,'2014-01-01 00:00:00'),(40,8,81,'2014-01-01 00:00:00'),(41,9,82,'2014-01-01 00:00:00'),(42,10,83,'2014-01-01 00:00:00');
/*!40000 ALTER TABLE `repairpartsused` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairproduct`
--

DROP TABLE IF EXISTS `repairproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairproduct` (
  `repairproductId` int(50) NOT NULL AUTO_INCREMENT,
  `customerId` int(50) NOT NULL,
  `employeeId` int(50) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`repairproductId`),
  KEY `repairproduct_ibfk_1` (`customerId`),
  KEY `repairproduct_ibfk_2` (`employeeId`),
  CONSTRAINT `repairproduct_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`) ON DELETE CASCADE,
  CONSTRAINT `repairproduct_ibfk_2` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairproduct`
--

LOCK TABLES `repairproduct` WRITE;
/*!40000 ALTER TABLE `repairproduct` DISABLE KEYS */;
INSERT INTO `repairproduct` VALUES (1,501,1,'2014-01-02 00:00:00'),(2,502,2,'2014-01-02 00:00:00'),(3,503,3,'2014-01-02 00:00:00'),(4,504,4,'2014-01-02 00:00:00'),(5,505,5,'2014-01-02 00:00:00'),(6,506,6,'2014-01-02 00:00:00'),(7,507,7,'2014-01-02 00:00:00');
/*!40000 ALTER TABLE `repairproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairs`
--

DROP TABLE IF EXISTS `repairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairs` (
  `repairId` int(50) NOT NULL AUTO_INCREMENT,
  `repairproductId` int(50) NOT NULL,
  `subCategoryId` int(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `repairSatus` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`repairId`),
  KEY `repairs_ibfk_1` (`repairproductId`),
  KEY `repairs_ibfk_2` (`subCategoryId`),
  CONSTRAINT `repairs_ibfk_1` FOREIGN KEY (`repairproductId`) REFERENCES `repairproduct` (`repairproductId`) ON DELETE CASCADE,
  CONSTRAINT `repairs_ibfk_2` FOREIGN KEY (`subCategoryId`) REFERENCES `subcategory` (`subcategoryId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairs`
--

LOCK TABLES `repairs` WRITE;
/*!40000 ALTER TABLE `repairs` DISABLE KEYS */;
INSERT INTO `repairs` VALUES (1,1,1001,'I5 In Repair','Repaired','2014-02-02 00:00:00'),(2,1,1004,'Apple Ipad In Repair','Repaired','2014-02-02 00:00:00'),(3,2,1006,'MacBook In Repair','NotRepaired','2014-02-02 00:00:00'),(7,3,1014,'HTC OneX In Repair','NotRepaired','2014-02-02 00:00:00'),(8,4,1016,'HTC Flyer In Repair','NotRepaired','2014-02-02 00:00:00'),(9,4,1018,'Carbon7 In Repair','Repaired','2014-02-02 00:00:00'),(10,6,1020,'ExpeiaZ In Repair','NotRepaired','2014-02-02 00:00:00'),(11,6,1022,'TabletS In Repair','Repaired','2014-02-02 00:00:00'),(12,7,1024,'SonyViao In Repair','Repaired','2014-02-02 00:00:00'),(13,7,1026,'Asus7 In Repair','Repaired','2014-02-02 00:00:00'),(14,5,1030,'Nexus5 In Repair','Repaired','2014-02-02 00:00:00'),(15,5,1032,'Nexus7 In Repair','NotRepaired','2014-02-02 00:00:00'),(16,5,1034,'ChromeBook In Repair','Repaired','2014-02-02 00:00:00');
/*!40000 ALTER TABLE `repairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `salesId` int(50) NOT NULL AUTO_INCREMENT,
  `salesDate` datetime DEFAULT NULL,
  `customerId` int(50) NOT NULL,
  `paymentMode` varchar(15) NOT NULL,
  `totalAmount` int(50) NOT NULL,
  `creditAmount` int(50) NOT NULL,
  `debitAmount` int(50) NOT NULL,
  `cashAmount` int(50) NOT NULL,
  `pendingAmount` int(15) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`salesId`),
  KEY `sales_ibfk_1` (`customerId`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2014-01-01 00:00:00',501,'cash',50,0,0,50,0,'2013-12-31 00:00:00'),(2,'2014-01-01 00:00:00',502,'debit',25,0,25,0,0,'2013-12-31 00:00:00'),(3,'2014-01-01 00:00:00',503,'credit',30,30,0,0,0,'2013-12-31 00:00:00'),(4,'2014-01-01 00:00:00',504,'Partial',50,20,30,0,0,'2013-12-31 00:00:00'),(5,'2014-01-01 00:00:00',505,'Partial',50,0,20,30,0,'2013-12-31 00:00:00'),(6,'2014-01-01 00:00:00',506,'Partial',50,30,0,20,0,'2013-12-31 00:00:00'),(7,'2014-01-01 00:00:00',507,'Partial',50,10,20,0,20,'2013-12-31 00:00:00');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salestransaction`
--

DROP TABLE IF EXISTS `salestransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salestransaction` (
  `salestransactionId` int(50) NOT NULL AUTO_INCREMENT,
  `productId` int(50) DEFAULT NULL,
  `salesId` int(50) NOT NULL,
  `quantity` int(15) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `salesType` varchar(1) NOT NULL,
  `saleTransactionAmount` int(15) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`salestransactionId`),
  KEY `salestransaction_ibfk_1` (`productId`),
  KEY `salestransaction_ibfk_2` (`salesId`),
  CONSTRAINT `salestransaction_ibfk_2` FOREIGN KEY (`salesId`) REFERENCES `sales` (`salesId`) ON DELETE CASCADE,
  CONSTRAINT `salestransaction_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salestransaction`
--

LOCK TABLES `salestransaction` WRITE;
/*!40000 ALTER TABLE `salestransaction` DISABLE KEYS */;
INSERT INTO `salestransaction` VALUES (3,44,1,1,'IPhone5 Repaired','R',150,'2014-02-02 00:00:00'),(4,45,2,3,'Mini Tablet Sold','P',1650,'2014-02-02 00:00:00'),(5,46,2,1,'Ipad Repaired','R',100,'2014-02-02 00:00:00'),(6,47,3,1,'IMAC Purchased','P',999,'2014-02-02 00:00:00'),(7,48,3,1,'Mac Book Pro Purchased','P',1100,'2014-02-02 00:00:00'),(8,49,3,2,'Mac Book Pro Repaired','R',350,'2014-02-02 00:00:00'),(9,50,4,2,'S3 Purchased','P',800,'2014-02-02 00:00:00'),(10,51,1,2,'S4 Purchased','P',1000,'2014-02-02 00:00:00'),(17,58,2,10,'HTC OneS Purchased','P',5000,'2014-02-02 00:00:00'),(18,59,1,2,'HTC OneX Purchased','P',1000,'2014-02-02 00:00:00'),(19,60,1,2,'HTC OneX Repaired','R',75,'2014-02-02 00:00:00'),(20,61,5,4,'HTC Flyer Purchased','P',2600,'2014-02-02 00:00:00'),(21,62,5,3,'HTC Flyer Repaired','R',450,'2014-02-02 00:00:00'),(22,63,5,1,'Titanium Purchased','P',1000,'2014-02-02 00:00:00'),(23,64,5,1,'Titanium Repaired','R',1000,'2014-02-02 00:00:00'),(24,65,6,10,'ExperiaZ Purchased','P',4500,'2014-02-02 00:00:00'),(25,66,6,1,'Experia Mini Purchased','P',300,'2014-02-02 00:00:00'),(26,67,6,2,'ExperiaZ Repaired','R',50,'2014-02-02 00:00:00'),(27,68,6,2,'TabletS Purchased','P',1000,'2014-02-02 00:00:00'),(28,69,6,2,'TabletS Repaired','R',200,'2014-02-02 00:00:00'),(29,70,1,1,'Sony Viao Purchased','P',625,'2014-02-02 00:00:00'),(30,71,1,1,'Sony Viao Repaired','R',175,'2014-02-02 00:00:00'),(31,72,2,1,'ZenPhone Purchased','P',200,'2014-02-02 00:00:00'),(32,73,1,1,'ZenPhone3 Purchased','P',225,'2014-02-02 00:00:00'),(33,74,1,1,'ZenPhone4 Repaired','R',25,'2014-02-02 00:00:00'),(34,75,1,2,'Asus EEPad Purchased','P',1300,'2014-02-02 00:00:00'),(35,76,7,1,'Asus VivoBook Purchased','P',2200,'2014-02-02 00:00:00'),(36,77,1,3,'Nexus5 Purchased','P',1575,'2014-02-02 00:00:00'),(37,78,1,2,'Nexus4 Purchased','P',950,'2014-02-02 00:00:00'),(38,79,7,2,'Nexus5 Repaired','R',400,'2014-02-02 00:00:00'),(40,80,1,1,'Nexus10 Purchased','P',700,'2014-02-02 00:00:00'),(41,81,1,1,'Nexus7 Repaired','R',250,'2014-02-02 00:00:00'),(42,82,7,1,'ChromeBook Purchased','P',1000,'2014-02-02 00:00:00'),(43,83,1,2,'ChromeBook Repaired','R',500,'2014-02-02 00:00:00');
/*!40000 ALTER TABLE `salestransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `stockId` int(50) NOT NULL AUTO_INCREMENT,
  `productId` int(50) NOT NULL,
  `quantity` int(15) NOT NULL,
  `minmumStockQuantity` int(15) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`stockId`),
  KEY `stock_ibfk_1` (`productId`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (3,44,10,5,'2014-01-01 00:00:00'),(4,45,10,5,'2014-01-01 00:00:00'),(6,46,5,2,'2014-01-01 00:00:00'),(7,47,10,5,'2014-01-01 00:00:00'),(8,48,10,5,'2014-01-01 00:00:00'),(9,49,10,5,'2014-01-01 00:00:00'),(10,50,10,5,'2014-01-01 00:00:00'),(11,51,25,10,'2014-01-01 00:00:00'),(17,58,8,3,'2014-01-01 00:00:00'),(18,59,8,3,'2014-01-01 00:00:00'),(19,60,8,3,'2014-01-01 00:00:00'),(20,61,8,3,'2014-01-01 00:00:00'),(21,62,10,5,'2014-01-01 00:00:00'),(22,63,10,5,'2014-01-01 00:00:00'),(23,64,10,5,'2014-01-01 00:00:00'),(24,65,10,5,'2014-01-01 00:00:00'),(25,66,10,5,'2014-01-01 00:00:00'),(26,67,10,5,'2014-01-01 00:00:00'),(27,68,10,5,'2014-01-01 00:00:00'),(28,69,10,5,'2014-01-01 00:00:00'),(29,70,10,5,'2014-01-01 00:00:00'),(30,71,10,5,'2014-01-01 00:00:00'),(31,72,5,1,'2014-01-01 00:00:00'),(32,73,5,1,'2014-01-01 00:00:00'),(33,74,5,1,'2014-01-01 00:00:00'),(34,75,5,1,'2014-01-01 00:00:00'),(35,76,5,1,'2014-01-01 00:00:00'),(36,77,5,1,'2014-01-01 00:00:00'),(37,78,5,1,'2014-01-01 00:00:00'),(38,79,5,1,'2014-01-01 00:00:00'),(39,80,5,1,'2014-01-01 00:00:00'),(40,81,20,10,'2014-01-01 00:00:00'),(41,82,20,10,'2014-01-01 00:00:00'),(42,83,20,5,'2014-01-01 00:00:00');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `subcategoryId` int(50) NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(100) NOT NULL,
  `categoryId` int(50) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`subcategoryId`),
  KEY `subcategory_ibfk_1` (`categoryId`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1001,'Teatske',12,'2013-12-25 00:00:00'),(1003,'New',13,'2014-01-01 00:00:00'),(1004,'Apple Ipad',14,'2014-01-01 00:00:00'),(1005,'New',15,'2014-01-01 00:00:00'),(1006,'Mac Book',16,'2014-01-01 00:00:00'),(1007,'New',17,'2014-01-01 00:00:00'),(1013,'new',23,'2014-01-01 00:00:00'),(1014,'HTC OneX',24,'2014-01-01 00:00:00'),(1015,'New',25,'2014-01-01 00:00:00'),(1016,'HTC Flyer',26,'2014-01-01 00:00:00'),(1017,'New',27,'2014-01-01 00:00:00'),(1018,'Carbon7',28,'2014-01-01 00:00:00'),(1019,'New',29,'2014-01-01 00:00:00'),(1020,'ExperiaZ',30,'2014-01-01 00:00:00'),(1021,'New',31,'2014-01-01 00:00:00'),(1022,'TabletS',32,'2014-01-01 00:00:00'),(1023,'New',33,'2014-01-01 00:00:00'),(1024,'Sony Viao',34,'2014-01-01 00:00:00'),(1025,'New',35,'2014-01-01 00:00:00'),(1026,'Asus7',36,'2014-01-01 00:00:00'),(1027,'New',37,'2014-01-01 00:00:00'),(1028,'New',38,'2014-01-01 00:00:00'),(1029,'New',39,'2014-01-01 00:00:00'),(1030,'Nexus5',40,'2014-01-01 00:00:00'),(1031,'New',41,'2014-01-01 00:00:00'),(1032,'Nexux7',42,'2014-01-01 00:00:00'),(1033,'New',43,'2014-01-01 00:00:00'),(1034,'ChromeBook',44,'2014-01-01 00:00:00');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-19 16:45:15
