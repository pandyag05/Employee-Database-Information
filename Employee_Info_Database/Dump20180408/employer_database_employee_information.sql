-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: employer_database
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `employee_information`
--

DROP TABLE IF EXISTS `employee_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_information` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(70) NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `business_unit` varchar(70) NOT NULL,
  `department` varchar(70) NOT NULL,
  `department_number` int(11) NOT NULL,
  `location` varchar(70) NOT NULL,
  `role` varchar(70) NOT NULL,
  `hire_type` varchar(45) NOT NULL,
  `hire_date` date NOT NULL,
  `years_of_experience` double NOT NULL,
  `email_id` varchar(80) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `business_cell_number` varchar(45) NOT NULL,
  `supervisor` varchar(70) DEFAULT NULL,
  `manager` varchar(70) DEFAULT NULL,
  `vice_president` varchar(70) DEFAULT NULL,
  `director` varchar(70) DEFAULT NULL,
  `managing_director` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3849 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_information`
--

LOCK TABLES `employee_information` WRITE;
/*!40000 ALTER TABLE `employee_information` DISABLE KEYS */;
INSERT INTO `employee_information` VALUES (3291,'Segalini','Louis','AlixPartners Employee','Technology, Media & Telecomunications',6001,'New York','Technology Associate','Full Time','2013-08-15',4.2,'lsegalini@alixpartners.com','(248) 358-4420','(248) 631-6682','Gaurav Chhabra','Joe Myers',NULL,NULL,NULL),(3848,'Webb','Andrew','AlixPartners Employee','Retail',6002,'Chicago','Retail Associate','Full Time','2014-07-14',5.2,'awebb@alixpartners.com','248-213-2205','248-852-1228','Darin Facer','Bill Ebanks',NULL,NULL,NULL);
/*!40000 ALTER TABLE `employee_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 21:43:19
