CREATE DATABASE  IF NOT EXISTS `regvedassignment1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `regvedassignment1`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: regvedassignment1
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `empprojecttasks`
--

DROP TABLE IF EXISTS `empprojecttasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empprojecttasks` (
  `Project_ID` int NOT NULL,
  `Empno` int NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date DEFAULT NULL,
  `Task` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Project_ID`,`Empno`,`Start_Date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empprojecttasks`
--

LOCK TABLES `empprojecttasks` WRITE;
/*!40000 ALTER TABLE `empprojecttasks` DISABLE KEYS */;
INSERT INTO `empprojecttasks` VALUES (401,7001,'2011-04-01','2011-04-20','System Analysis','Completed'),(401,7002,'2011-04-21','2011-05-30','System Design','Completed'),(401,7003,'2011-06-01','2011-07-15','Coding','Completed'),(401,7004,'2011-07-18','2011-09-01','Coding','Completed'),(401,7006,'2011-09-03','2011-09-15','Testing','Completed'),(401,7009,'2011-09-18','2011-10-05','Code Change','Completed'),(401,7008,'2011-10-06','2011-10-16','Testing','Completed'),(401,7007,'2011-10-06','2011-10-22','Documentation','Completed'),(401,7011,'2011-10-22','2011-10-31','Sign off','Completed'),(402,7010,'2011-08-01','2011-08-20','System Analysis','Completed'),(402,7002,'2011-08-22','2011-09-30','System Design','Completed'),(402,7004,'2011-10-01',NULL,'Coding','In Progress');
/*!40000 ALTER TABLE `empprojecttasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-14 16:39:26
