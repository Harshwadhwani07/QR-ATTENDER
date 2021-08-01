-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: qr_attendar
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbms_attendance`
--

DROP TABLE IF EXISTS `dbms_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbms_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`roll_no`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbms_attendance`
--

LOCK TABLES `dbms_attendance` WRITE;
/*!40000 ALTER TABLE `dbms_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbms_attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsh`@`localhost`*/ /*!50003 TRIGGER `deldbms_trigger` BEFORE DELETE ON `dbms_attendance` FOR EACH ROW insert into deldbms set dtime=now(),name=old.student_name */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dccn_attendance`
--

DROP TABLE IF EXISTS `dccn_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dccn_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`roll_no`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dccn_attendance`
--

LOCK TABLES `dccn_attendance` WRITE;
/*!40000 ALTER TABLE `dccn_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `dccn_attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsh`@`localhost`*/ /*!50003 TRIGGER `deldccn_trigger` BEFORE DELETE ON `dccn_attendance` FOR EACH ROW insert into deldccn set dtime =now(),name=old.student_name */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `deldbms`
--

DROP TABLE IF EXISTS `deldbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deldbms` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deldbms`
--

LOCK TABLES `deldbms` WRITE;
/*!40000 ALTER TABLE `deldbms` DISABLE KEYS */;
/*!40000 ALTER TABLE `deldbms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deldccn`
--

DROP TABLE IF EXISTS `deldccn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deldccn` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deldccn`
--

LOCK TABLES `deldccn` WRITE;
/*!40000 ALTER TABLE `deldccn` DISABLE KEYS */;
/*!40000 ALTER TABLE `deldccn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deldms`
--

DROP TABLE IF EXISTS `deldms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deldms` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deldms`
--

LOCK TABLES `deldms` WRITE;
/*!40000 ALTER TABLE `deldms` DISABLE KEYS */;
/*!40000 ALTER TABLE `deldms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delmp`
--

DROP TABLE IF EXISTS `delmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delmp` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delmp`
--

LOCK TABLES `delmp` WRITE;
/*!40000 ALTER TABLE `delmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `delmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deltc`
--

DROP TABLE IF EXISTS `deltc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deltc` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deltc`
--

LOCK TABLES `deltc` WRITE;
/*!40000 ALTER TABLE `deltc` DISABLE KEYS */;
/*!40000 ALTER TABLE `deltc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delteacher`
--

DROP TABLE IF EXISTS `delteacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delteacher` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delteacher`
--

LOCK TABLES `delteacher` WRITE;
/*!40000 ALTER TABLE `delteacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `delteacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deltoc`
--

DROP TABLE IF EXISTS `deltoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deltoc` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deltoc`
--

LOCK TABLES `deltoc` WRITE;
/*!40000 ALTER TABLE `deltoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `deltoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms_attendance`
--

DROP TABLE IF EXISTS `dms_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dms_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`roll_no`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms_attendance`
--

LOCK TABLES `dms_attendance` WRITE;
/*!40000 ALTER TABLE `dms_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `dms_attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsh`@`localhost`*/ /*!50003 TRIGGER `deldms_trigger` BEFORE DELETE ON `dms_attendance` FOR EACH ROW insert into deldms set dtime =now(),name=old.student_name */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mp_attendance`
--

DROP TABLE IF EXISTS `mp_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`roll_no`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_attendance`
--

LOCK TABLES `mp_attendance` WRITE;
/*!40000 ALTER TABLE `mp_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsh`@`localhost`*/ /*!50003 TRIGGER `delmp_trigger` BEFORE DELETE ON `mp_attendance` FOR EACH ROW insert into delmp set dtime =now(),name=old.student_name */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tc_attendance`
--

DROP TABLE IF EXISTS `tc_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`roll_no`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_attendance`
--

LOCK TABLES `tc_attendance` WRITE;
/*!40000 ALTER TABLE `tc_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsh`@`localhost`*/ /*!50003 TRIGGER `deltc_trigger` BEFORE DELETE ON `tc_attendance` FOR EACH ROW insert into deltc set dtime =now(),name=old.student_name */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teach_id` int NOT NULL AUTO_INCREMENT,
  `teach_name` varchar(40) DEFAULT NULL,
  `sub_name` varchar(40) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `qrgen_time` datetime DEFAULT NULL,
  PRIMARY KEY (`teach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (101,'jyoti','dbms','01-03-2021','2021-07-16 09:57:34'),(102,'vinesh kumar','toc','01-04-2021','2021-07-16 09:58:09');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsh`@`localhost`*/ /*!50003 TRIGGER `delteach_trigger` BEFORE DELETE ON `teacher` FOR EACH ROW insert into delteacher set dtime =now(),name=old.teach_name */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `toc_attendance`
--

DROP TABLE IF EXISTS `toc_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toc_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`roll_no`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toc_attendance`
--

LOCK TABLES `toc_attendance` WRITE;
/*!40000 ALTER TABLE `toc_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `toc_attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsh`@`localhost`*/ /*!50003 TRIGGER `deltoc_trigger` BEFORE DELETE ON `toc_attendance` FOR EACH ROW insert into deltoc set dtime =now(),name=old.student_name */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-29 22:54:57
