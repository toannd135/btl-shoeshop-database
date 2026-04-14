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
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` char(36) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` enum('DISABLED','ENABLED') NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('035c0a3c-a964-4e4a-a5fd-76d2feb5010b','2026-04-13 17:09:06.566428','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-13 17:09:06.566428','903bb48c-8d51-47e2-883f-c37f4c07964f','412 Nguyễn Thị Minh Khai, Quận 3, TP.HCM','customercare@vascara.com','1900 6909','ENABLED','Vascara'),('5d46873d-2c1c-4e68-911c-27c3b0b4e054','2026-04-13 17:07:02.184380','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-13 17:07:02.184380','903bb48c-8d51-47e2-883f-c37f4c07964f','19A Cộng Hòa, Tân Bình, TP.HCM','contact@adidas.vn','028 3848 2222','ENABLED','Adidas'),('9bf8a3c7-b566-4874-9903-03f8ba18d871','2026-04-13 17:07:29.191103','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-13 17:07:29.191103','903bb48c-8d51-47e2-883f-c37f4c07964f','27 Nguyễn Trãi, Quận 1, TP.HCM','support@nike.com','028 3821 4567','ENABLED','Nike'),('b059f7c9-bfd9-43ce-b120-e103ff352283','2026-04-13 17:08:23.886670','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-13 17:08:23.886670','903bb48c-8d51-47e2-883f-c37f4c07964f','22 Lý Chiêu Hoàng, Quận 6, TP.HCM','contact@bitis.com.vn','028 3875 4433','ENABLED','Biti’s'),('b72939f6-2418-47e5-a167-dd1b15b0c6bb','2026-04-13 17:07:53.831808','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-13 17:07:53.831808','903bb48c-8d51-47e2-883f-c37f4c07964f','63 Lý Tự Trọng, Quận 1, TP.HCM','service@puma.com','028 3910 1234','ENABLED','Puma');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:38:15
