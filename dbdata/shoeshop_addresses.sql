-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: shoeshop
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `address_id` char(36) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `is_default` bit(1) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `status` enum('ACTIVE','DELETED','EXPIRED','INACTIVE','SUSPENDED') DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FK1fa36y2oqhao3wgg2rw1pi459` (`user_id`),
  CONSTRAINT `FK1fa36y2oqhao3wgg2rw1pi459` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES ('2935c527-035f-4e7b-9002-26d5492b05f9','Tỉnh Quảng Ninh','2026-04-04 14:47:35.592429','c1c739be-9908-4882-8ba3-800135ab5109',NULL,_binary '','Nguyễn Duy Thanh','0333444555','ACTIVE','Gieng Day','2026-04-04 14:47:35.592429',NULL,'Phường Hạ Long','c1c739be-9908-4882-8ba3-800135ab5109'),('88ba8389-8cc7-4816-8fe6-54b45c3dcf19','Thành phố Hà Nội','2026-04-04 14:47:54.490354','c1c739be-9908-4882-8ba3-800135ab5109',NULL,_binary '\0','Nguyễn Duy Thanh','0333444555','ACTIVE','87 Yen Xa','2026-04-04 14:47:54.490354',NULL,'Phường Ba Đình','c1c739be-9908-4882-8ba3-800135ab5109'),('b41f3825-1eba-48c2-b444-3d380748e0dd','Tỉnh Lạng Sơn','2026-04-06 15:07:41.046990','e6a8ac5c-501d-4adb-9c21-ee93586fc69d',NULL,_binary '','Nguyễn Đức Toàn','0836249957','ACTIVE','28/42 Thanh Bình\nMỗ Lao, Hà Đông','2026-04-06 15:07:41.046990',NULL,'Xã Tân Tiến','e6a8ac5c-501d-4adb-9c21-ee93586fc69d');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-09 22:41:47
