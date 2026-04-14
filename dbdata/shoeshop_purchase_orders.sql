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
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_orders` (
  `po_id` char(36) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `expected_delivery_date` datetime(6) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` enum('CANCELLED','CONFIRMED','DELIVERED','PENDING','RETURNED','SHIPPING') NOT NULL,
  `supplier_id` char(36) NOT NULL,
  PRIMARY KEY (`po_id`),
  KEY `FKrpdasmb8y8xs5tiy4369xpinq` (`supplier_id`),
  CONSTRAINT `FKrpdasmb8y8xs5tiy4369xpinq` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
INSERT INTO `purchase_orders` VALUES ('89cfb27e-f827-4f5f-b795-02b5b50a12d6','2026-04-14 01:15:35.005795','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-14 01:15:35.005795','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-15 00:00:00.000000','Không có gì','PENDING','9bf8a3c7-b566-4874-9903-03f8ba18d871'),('d3b41f99-8c52-4ccf-ad67-a2233d05baad','2026-04-13 17:09:29.449522','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-13 17:09:29.449522','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-16 05:05:00.000000',NULL,'PENDING','035c0a3c-a964-4e4a-a5fd-76d2feb5010b'),('e0d3a384-e625-4cb9-99b5-815673fd1ec0','2026-04-14 01:31:27.203209','903bb48c-8d51-47e2-883f-c37f4c07964f','2026-04-14 05:15:09.669880','0bfeafd3-c755-46f0-9861-24138e536aa7','2026-04-16 00:04:00.000000','Không có gì đâu','CONFIRMED','5d46873d-2c1c-4e68-911c-27c3b0b4e054');
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:38:06
