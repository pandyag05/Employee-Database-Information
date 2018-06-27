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
-- Table structure for table `client_information`
--

DROP TABLE IF EXISTS `client_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_information` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(80) NOT NULL,
  `client_address` varchar(70) NOT NULL,
  `client_address_2` varchar(45) DEFAULT NULL,
  `client_city` varchar(70) NOT NULL,
  `client_state` varchar(50) NOT NULL,
  `client_zipcode` int(11) NOT NULL,
  `client_issue_name` mediumtext NOT NULL,
  `client_issue_date` date NOT NULL,
  `client_main_phone_number` varchar(45) NOT NULL,
  `project_name` mediumtext,
  `employee_id` int(11) NOT NULL,
  `client_employee_last_name` varchar(70) NOT NULL,
  `client_employee_first_name` varchar(70) NOT NULL,
  ` employee_role` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_information`
--

LOCK TABLES `client_information` WRITE;
/*!40000 ALTER TABLE `client_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bank_information`
--

DROP TABLE IF EXISTS `employee_bank_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_bank_information` (
  `bank_id` int(11) NOT NULL,
  `payroll_number` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_first_name` varchar(70) NOT NULL,
  `employee_last_name` varchar(70) NOT NULL,
  `bank_name` varchar(70) NOT NULL,
  `bank_routing_number` varchar(45) NOT NULL,
  `bank_account_numbeer` varchar(45) NOT NULL,
  `account_type` varchar(45) NOT NULL,
  `total_pay` double NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_bank_information`
--

LOCK TABLES `employee_bank_information` WRITE;
/*!40000 ALTER TABLE `employee_bank_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_bank_information` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `employee_payroll_information`
--

DROP TABLE IF EXISTS `employee_payroll_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_payroll_information` (
  `payroll_id` int(11) NOT NULL,
  `payroll_number` varchar(45) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_last_name` varchar(70) NOT NULL,
  `employee_first_name` varchar(70) NOT NULL,
  `start_dae` date NOT NULL,
  `end_date` date NOT NULL,
  `hours_worked` float NOT NULL,
  `gross_pay` double NOT NULL,
  `fed_tax` double NOT NULL,
  `ssa_tax` double NOT NULL,
  `medicare` double NOT NULL,
  `state_tax` double NOT NULL,
  `medical_insurance` double NOT NULL,
  `dentalvision_insurance` double NOT NULL,
  `401k_roth` double NOT NULL,
  `net_pay` double NOT NULL,
  `bonus_pay` double NOT NULL,
  `vacation_left` float NOT NULL,
  `total_pay` double NOT NULL,
  `is_deposited` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_payroll_information`
--

LOCK TABLES `employee_payroll_information` WRITE;
/*!40000 ALTER TABLE `employee_payroll_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_payroll_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_separation`
--

DROP TABLE IF EXISTS `employee_separation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_separation` (
  `employee_id` int(11) NOT NULL,
  `last_name` varchar(70) NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `last_role` varchar(70) NOT NULL,
  `hire_type` varchar(45) NOT NULL,
  `hire_date` date NOT NULL,
  `separation_date` date NOT NULL,
  `separation_type` varchar(45) NOT NULL,
  `laptop_return` varchar(45) NOT NULL,
  `phone_return` varchar(45) NOT NULL,
  `badge_card_return` varchar(45) NOT NULL,
  `laptop_bag_return` varchar(45) NOT NULL,
  `any_item_return` varchar(70) NOT NULL,
  `return_date` date NOT NULL,
  `last_wage_pay` double NOT NULL,
  `last_paid_date` date NOT NULL,
  `last_deposited_bank_name` varchar(70) NOT NULL,
  `reason_for_leaving` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_separation`
--

LOCK TABLES `employee_separation` WRITE;
/*!40000 ALTER TABLE `employee_separation` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_separation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_information`
--

DROP TABLE IF EXISTS `general_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_information` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(70) NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `home_address_line1` varchar(70) NOT NULL,
  `home_address_line2` varchar(45) DEFAULT NULL,
  `home_state` varchar(50) NOT NULL,
  `home_zipcode` int(11) NOT NULL,
  `employee_role` varchar(70) NOT NULL,
  `business_unitt` varchar(70) NOT NULL,
  `personal_email` varchar(80) NOT NULL,
  `personal_cell_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_information`
--

LOCK TABLES `general_information` WRITE;
/*!40000 ALTER TABLE `general_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_information`
--

DROP TABLE IF EXISTS `project_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_information` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` mediumtext NOT NULL,
  `project_start_date` date NOT NULL,
  `client_name` varchar(80) NOT NULL,
  `client_issue_name` mediumtext NOT NULL,
  `project_spending_hours` int(11) NOT NULL,
  `project_practice_development_hours` int(11) NOT NULL,
  `total_travel_hours` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_last_name` varchar(70) NOT NULL,
  `employee_first_name` varchar(70) NOT NULL,
  `employee_role` varchar(70) DEFAULT NULL,
  `project_submission_date` date NOT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_information`
--

LOCK TABLES `project_information` WRITE;
/*!40000 ALTER TABLE `project_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 21:44:30
