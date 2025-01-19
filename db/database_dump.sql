-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: purulia_tourism
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `ayodhya_hills_nearby`
--

DROP TABLE IF EXISTS `ayodhya_hills_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayodhya_hills_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayodhya_hills_nearby`
--

LOCK TABLES `ayodhya_hills_nearby` WRITE;
/*!40000 ALTER TABLE `ayodhya_hills_nearby` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayodhya_hills_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bamni_falls_nearby`
--

DROP TABLE IF EXISTS `bamni_falls_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bamni_falls_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bamni_falls_nearby`
--

LOCK TABLES `bamni_falls_nearby` WRITE;
/*!40000 ALTER TABLE `bamni_falls_nearby` DISABLE KEYS */;
INSERT INTO `bamni_falls_nearby` VALUES (1,'Turga Falls','A falls with exciting view',23.20105449,86.07650336),(2,'Thurga Dam','A dam with exciting view',23.19774206,86.06408536);
/*!40000 ALTER TABLE `bamni_falls_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biharinath_hill_nearby`
--

DROP TABLE IF EXISTS `biharinath_hill_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biharinath_hill_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biharinath_hill_nearby`
--

LOCK TABLES `biharinath_hill_nearby` WRITE;
/*!40000 ALTER TABLE `biharinath_hill_nearby` DISABLE KEYS */;
/*!40000 ALTER TABLE `biharinath_hill_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deul_park_nearby`
--

DROP TABLE IF EXISTS `deul_park_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deul_park_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deul_park_nearby`
--

LOCK TABLES `deul_park_nearby` WRITE;
/*!40000 ALTER TABLE `deul_park_nearby` DISABLE KEYS */;
/*!40000 ALTER TABLE `deul_park_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jubilee_park_nearby`
--

DROP TABLE IF EXISTS `jubilee_park_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jubilee_park_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jubilee_park_nearby`
--

LOCK TABLES `jubilee_park_nearby` WRITE;
/*!40000 ALTER TABLE `jubilee_park_nearby` DISABLE KEYS */;
/*!40000 ALTER TABLE `jubilee_park_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kangsabati_dam_nearby`
--

DROP TABLE IF EXISTS `kangsabati_dam_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kangsabati_dam_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kangsabati_dam_nearby`
--

LOCK TABLES `kangsabati_dam_nearby` WRITE;
/*!40000 ALTER TABLE `kangsabati_dam_nearby` DISABLE KEYS */;
/*!40000 ALTER TABLE `kangsabati_dam_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nearby_spots`
--

DROP TABLE IF EXISTS `nearby_spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nearby_spots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spot_id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spot_id` (`spot_id`),
  CONSTRAINT `nearby_spots_ibfk_1` FOREIGN KEY (`spot_id`) REFERENCES `tourist_spots` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nearby_spots`
--

LOCK TABLES `nearby_spots` WRITE;
/*!40000 ALTER TABLE `nearby_spots` DISABLE KEYS */;
INSERT INTO `nearby_spots` VALUES (1,1,'A beautiful spot for viewing sunsets.','Sunset Point',23.3581,86.3608),(2,2,'Popular trekking path near Biharinath Hill.','Biharinath Trek',23.5523,86.4843),(3,3,'Scenic spot near Bamni Falls.','Waterfall View',23.2002,86.0856),(4,4,'Serene viewpoint in Ayodhya Hills.','Ayodhya Hills Viewpoint',23.5424,86.2153),(5,5,'Shore area near Kangsabati Dam.','Kangsabati Dam Shore',23.4703,86.358),(6,6,'Historical park near Raghunathganj.','Raghunathganj Park',23.6358,86.963),(7,7,'Tranquil pavilion in Deul Park.','Deul Park Pavilion',23.6087,86.5485),(8,8,'Trail leading to Joranda Falls.','Joranda Falls Trail',23.5796,86.9785);
/*!40000 ALTER TABLE `nearby_spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raghunathganj_nearby`
--

DROP TABLE IF EXISTS `raghunathganj_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raghunathganj_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raghunathganj_nearby`
--

LOCK TABLES `raghunathganj_nearby` WRITE;
/*!40000 ALTER TABLE `raghunathganj_nearby` DISABLE KEYS */;
/*!40000 ALTER TABLE `raghunathganj_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `location` point DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
INSERT INTO `spots` VALUES (1,'Spot 1','A nice spot',_binary '\0\0\0\0\0\0\0·b\Ù=UU@\Ð\ÕV\ì/[7@','2025-01-14 16:56:40'),(2,'Spot 2','Another nice spot',_binary '\0\0\0\0\0\0\0o\ð…\ÉTUU@z\Ç):’[7@','2025-01-14 16:56:40');
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourist_spots`
--

DROP TABLE IF EXISTS `tourist_spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourist_spots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourist_spots`
--

LOCK TABLES `tourist_spots` WRITE;
/*!40000 ALTER TABLE `tourist_spots` DISABLE KEYS */;
INSERT INTO `tourist_spots` VALUES (1,'Bandra Hill','A scenic hill offering panoramic views.',23.35810000,86.36080000),(2,'Biharinath Hill','A popular hill station with trekking paths.',23.55230000,86.48430000),(3,'Bamni Falls','Beautiful waterfalls surrounded by lush greenery.',23.20015899,86.08558858),(4,'Ayodhya Hills','A serene hill station with breathtaking views and a peaceful atmosphere.',23.54240000,86.21530000),(5,'Kangsabati Dam','A large dam surrounded by hills, offering beautiful views and outdoor activities.',23.47030000,86.35800000),(6,'Raghunathganj','A place known for its historical importance and natural beauty.',23.63580000,86.96300000),(7,'Deul Park','A recreational park with lush greenery and a tranquil environment.',23.60870000,86.54850000),(8,'Jubilee Park','A well-maintained park offering relaxation, with scenic views and walking paths.',23.35470000,86.96330000),(9,'Joranda Falls','A stunning waterfall located amidst dense forests, perfect for nature lovers.',23.57960000,86.97850000);
/*!40000 ALTER TABLE `tourist_spots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-20  4:21:37
