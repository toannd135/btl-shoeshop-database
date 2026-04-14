-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: 13.212.146.205    Database: shoeshop
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation` (
  `conversation_id` char(36) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `last_message` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `admin_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `admin_read` bit(1) NOT NULL,
  PRIMARY KEY (`conversation_id`),
  KEY `FK9j5bmm1vdc7c6re4cylqtwb2v` (`admin_id`),
  KEY `FK2mujf02uwjbhkqqffyyfjj5xy` (`user_id`),
  CONSTRAINT `FK2mujf02uwjbhkqqffyyfjj5xy` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FK9j5bmm1vdc7c6re4cylqtwb2v` FOREIGN KEY (`admin_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
INSERT INTO `conversation` VALUES ('41fbc141-ab75-456a-8f68-711aef7c8409',NULL,'Xem sản phẩm mới','2026-04-14 05:05:33.592978','8d838a9d-dea6-4140-b348-dee5d4a9d160','adf851ed-9f87-4479-8f12-c538208689ca',_binary '\0'),('c9bb6310-b310-4656-a9e7-1e9fc7d808fe',NULL,'hí','2026-04-14 02:31:04.181370','8d838a9d-dea6-4140-b348-dee5d4a9d160','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f',_binary '');
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:37:58
