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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` char(36) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `note` text,
  `rating` int DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `variant_id` char(36) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `FKcgy7qjc1r99dp117y9en6lxye` (`user_id`),
  KEY `FK8ea8k584vudwba1yxm64f3hp0` (`variant_id`),
  CONSTRAINT `FK8ea8k584vudwba1yxm64f3hp0` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`product_variant_id`),
  CONSTRAINT `FKcgy7qjc1r99dp117y9en6lxye` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('4828c90a-2624-4211-89c5-662d52d0aa0e','2026-04-09 15:54:22.791853','Sản phẩm tuyệt vời',5,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d','278d1f5d-1e33-461c-b495-94db95ca2c28'),('931e1194-ab53-4e21-b8a9-439c37cf52a4','2026-04-14 10:53:32.031814','Sản phẩm bình thường',2,'26472514-5b38-4871-b90f-40c1382a51ac','e6a461e8-0d7d-48fb-857d-c0d18edc3e14'),('952c24ce-35f5-44cd-b077-23065c263801','2026-04-14 12:13:45.969193','quá ok sẽ ủng hộ shop tiếp',4,'adf851ed-9f87-4479-8f12-c538208689ca','278d1f5d-1e33-461c-b495-94db95ca2c28');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:38:12
