-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: jewellery_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `gold_anklet`
--

DROP TABLE IF EXISTS `gold_anklet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gold_anklet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) DEFAULT NULL,
  `gold_weight` decimal(10,2) DEFAULT NULL,
  `making_percent` decimal(10,2) DEFAULT NULL,
  `waste_percent` decimal(10,2) DEFAULT NULL,
  `tax_percent` decimal(10,2) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gold_anklet`
--

LOCK TABLES `gold_anklet` WRITE;
/*!40000 ALTER TABLE `gold_anklet` DISABLE KEYS */;
INSERT INTO `gold_anklet` VALUES (1,'Design 1',12.50,10.00,5.00,3.00,'/goldanklet/gant1.jpg'),(2,'Design 2',15.20,12.00,6.00,3.00,'/goldanklet/gant2.jpg'),(3,'Design 3',18.00,11.00,5.00,3.00,'/goldanklet/gant3.jpg'),(4,'Design 4',20.75,13.00,6.00,3.00,'/goldanklet/gant4.jpg');
/*!40000 ALTER TABLE `gold_anklet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gold_bangles`
--

DROP TABLE IF EXISTS `gold_bangles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gold_bangles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) NOT NULL,
  `gold_weight` decimal(10,2) NOT NULL,
  `making_percent` decimal(5,2) NOT NULL,
  `waste_percent` decimal(5,2) NOT NULL,
  `tax_percent` decimal(5,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gold_bangles`
--

LOCK TABLES `gold_bangles` WRITE;
/*!40000 ALTER TABLE `gold_bangles` DISABLE KEYS */;
INSERT INTO `gold_bangles` VALUES (1,'Design 1',18.50,12.00,5.00,3.00,'/goldbang/gbang1.jpg'),(2,'Design 2',22.00,13.00,5.50,3.00,'/goldbang/gbang2.jpg'),(3,'Design 3',27.50,14.00,6.00,3.00,'/goldbang/gbang3.jpg'),(4,'Design 4',32.75,15.00,6.50,3.00,'/goldbang/gbang4.jpg');
/*!40000 ALTER TABLE `gold_bangles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gold_earring`
--

DROP TABLE IF EXISTS `gold_earring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gold_earring` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) DEFAULT NULL,
  `gold_weight` decimal(5,2) DEFAULT NULL,
  `making_percent` decimal(5,2) DEFAULT NULL,
  `waste_percent` decimal(5,2) DEFAULT NULL,
  `tax_percent` decimal(5,2) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gold_earring`
--

LOCK TABLES `gold_earring` WRITE;
/*!40000 ALTER TABLE `gold_earring` DISABLE KEYS */;
INSERT INTO `gold_earring` VALUES (1,'Design 1',4.20,12.00,4.00,3.00,'/goldear/gear1.jpg'),(2,'Design 2',5.10,13.00,5.00,3.00,'/goldear/gear2.jpg'),(3,'Design 3',6.30,14.00,5.00,3.00,'/goldear/gear3.jpg'),(4,'Design 4',7.50,15.00,6.00,3.00,'/goldear/gear4.jpg');
/*!40000 ALTER TABLE `gold_earring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gold_ring`
--

DROP TABLE IF EXISTS `gold_ring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gold_ring` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) NOT NULL,
  `gold_weight` decimal(10,2) NOT NULL,
  `making_percent` decimal(5,2) NOT NULL,
  `waste_percent` decimal(5,2) NOT NULL,
  `tax_percent` decimal(5,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gold_ring`
--

LOCK TABLES `gold_ring` WRITE;
/*!40000 ALTER TABLE `gold_ring` DISABLE KEYS */;
INSERT INTO `gold_ring` VALUES (1,'Design 1',3.50,18.00,4.00,3.00,'/goldring/gr1.jpg'),(2,'Design 2',4.25,20.00,4.50,3.00,'/goldring/gr2.jpg'),(3,'Design 3',5.10,22.00,5.00,3.00,'/goldring/gr3.jpg'),(4,'Design 4',6.00,25.00,5.50,3.00,'/goldring/gr4.jpg');
/*!40000 ALTER TABLE `gold_ring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewellery_items`
--

DROP TABLE IF EXISTS `jewellery_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jewellery_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `design_name` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `gold_weight` decimal(10,2) DEFAULT NULL,
  `making_percent` decimal(5,2) DEFAULT NULL,
  `waste_percent` decimal(5,2) DEFAULT NULL,
  `tax_percent` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewellery_items`
--

LOCK TABLES `jewellery_items` WRITE;
/*!40000 ALTER TABLE `jewellery_items` DISABLE KEYS */;
INSERT INTO `jewellery_items` VALUES (1,'gold','Design 1','goldneck/2.jpg',25.50,12.00,5.00,3.00),(2,'gold','Design 2','goldneck/3.jpg',32.00,10.00,4.00,3.00),(3,'gold','Design 3','goldneck/4.jpg',28.75,11.00,5.00,3.00),(4,'gold','Design 4','goldneck/necklace.jpg',35.25,9.00,4.00,3.00);
/*!40000 ALTER TABLE `jewellery_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silver_anklet`
--

DROP TABLE IF EXISTS `silver_anklet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silver_anklet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) NOT NULL,
  `silver_weight` decimal(10,2) NOT NULL,
  `making_percent` decimal(5,2) NOT NULL,
  `waste_percent` decimal(5,2) NOT NULL,
  `tax_percent` decimal(5,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silver_anklet`
--

LOCK TABLES `silver_anklet` WRITE;
/*!40000 ALTER TABLE `silver_anklet` DISABLE KEYS */;
INSERT INTO `silver_anklet` VALUES (1,'Design 1',18.50,10.00,2.00,3.00,'/silverimg/silanklet/sant1.jpg'),(2,'Design 2',21.75,12.00,2.50,3.00,'/silverimg/silanklet/sant2.jpg'),(3,'Design 3',24.30,11.00,2.00,3.00,'/silverimg/silanklet/sant3.jpg'),(4,'Design 4',27.60,13.00,3.00,3.00,'/silverimg/silanklet/sant4.jpg');
/*!40000 ALTER TABLE `silver_anklet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silver_bangle`
--

DROP TABLE IF EXISTS `silver_bangle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silver_bangle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) NOT NULL,
  `silver_weight` decimal(10,2) NOT NULL,
  `making_percent` decimal(10,2) NOT NULL,
  `waste_percent` decimal(10,2) NOT NULL,
  `tax_percent` decimal(10,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silver_bangle`
--

LOCK TABLES `silver_bangle` WRITE;
/*!40000 ALTER TABLE `silver_bangle` DISABLE KEYS */;
INSERT INTO `silver_bangle` VALUES (1,'Design 1',25.50,10.00,5.00,3.00,'/silverimg/silbang/sbang1.jpg'),(2,'Design 2',28.00,10.00,5.00,3.00,'/silverimg/silbang/sbang2.jpg'),(3,'Design 3',31.75,10.00,5.00,3.00,'/silverimg/silbang/sbang3.jpg'),(4,'Design 4',35.20,10.00,5.00,3.00,'/silverimg/silbang/sbang4.jpg');
/*!40000 ALTER TABLE `silver_bangle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silver_earring`
--

DROP TABLE IF EXISTS `silver_earring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silver_earring` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) NOT NULL,
  `silver_weight` decimal(10,2) NOT NULL,
  `making_percent` decimal(10,2) NOT NULL,
  `waste_percent` decimal(10,2) NOT NULL,
  `tax_percent` decimal(10,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silver_earring`
--

LOCK TABLES `silver_earring` WRITE;
/*!40000 ALTER TABLE `silver_earring` DISABLE KEYS */;
INSERT INTO `silver_earring` VALUES (1,'Design 1',6.50,10.00,5.00,3.00,'/silverimg/silear/sear1.jpg'),(2,'Design 2',7.20,10.00,5.00,3.00,'/silverimg/silear/sear2.jpg'),(3,'Design 3',8.10,10.00,5.00,3.00,'/silverimg/silear/sear3.jpg'),(4,'Design 4',9.00,10.00,5.00,3.00,'/silverimg/silear/sear4.jpg');
/*!40000 ALTER TABLE `silver_earring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silver_necklace`
--

DROP TABLE IF EXISTS `silver_necklace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silver_necklace` (
  `design_name` varchar(100) NOT NULL,
  `silver_weight` decimal(10,2) DEFAULT NULL,
  `making_percent` decimal(10,2) DEFAULT NULL,
  `waste_percent` decimal(10,2) DEFAULT NULL,
  `tax_percent` decimal(10,2) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`design_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silver_necklace`
--

LOCK TABLES `silver_necklace` WRITE;
/*!40000 ALTER TABLE `silver_necklace` DISABLE KEYS */;
INSERT INTO `silver_necklace` VALUES ('Design 1',35.50,12.00,3.00,3.00,'/silverimg/silneck/sneck1.jpg'),('Design 2',42.00,14.00,3.00,3.00,'/silverimg/silneck/sneck2.jpg'),('Design 3',38.25,13.00,2.50,3.00,'/silverimg/silneck/sneck3.jpg'),('Design 4',45.75,15.00,3.50,3.00,'/silverimg/silneck/sneck4.jpg');
/*!40000 ALTER TABLE `silver_necklace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silver_ring`
--

DROP TABLE IF EXISTS `silver_ring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silver_ring` (
  `id` int NOT NULL AUTO_INCREMENT,
  `design_name` varchar(100) DEFAULT NULL,
  `silver_weight` decimal(10,2) DEFAULT NULL,
  `making_percent` decimal(10,2) DEFAULT NULL,
  `waste_percent` decimal(10,2) DEFAULT NULL,
  `tax_percent` decimal(10,2) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silver_ring`
--

LOCK TABLES `silver_ring` WRITE;
/*!40000 ALTER TABLE `silver_ring` DISABLE KEYS */;
INSERT INTO `silver_ring` VALUES (1,'Design 1',12.50,10.00,5.00,3.00,'/silverimg/silring/sring1.jpg'),(2,'Design 2',15.00,10.00,5.00,3.00,'/silverimg/silring/sring2.jpg'),(3,'Design 3',18.00,10.00,5.00,3.00,'/silverimg/silring/sring3.jpg'),(4,'Design 4',20.00,10.00,5.00,3.00,'/silverimg/silring/sring4.jpg');
/*!40000 ALTER TABLE `silver_ring` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-03  2:32:23
