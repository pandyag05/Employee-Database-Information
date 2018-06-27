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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 21:43:19
