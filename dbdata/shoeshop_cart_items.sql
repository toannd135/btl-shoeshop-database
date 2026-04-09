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
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `cart_item_id` varchar(36) NOT NULL,
  `quantity` int NOT NULL,
  `cart_id` varchar(36) NOT NULL,
  `variant_id` char(36) NOT NULL,
  PRIMARY KEY (`cart_item_id`),
  KEY `FKpcttvuq4mxppo8sxggjtn5i2c` (`cart_id`),
  KEY `FK5yyw1o0dor9gmxfra1dqvn4qa` (`variant_id`),
  CONSTRAINT `FK5yyw1o0dor9gmxfra1dqvn4qa` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`product_variant_id`),
  CONSTRAINT `FKpcttvuq4mxppo8sxggjtn5i2c` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES ('0b1312dc-b9ab-4e55-8ae2-4ffd93c10354',3,'e8598e7f-cd61-4806-8e5e-4fac5dac2ecb','278d1f5d-1e33-461c-b495-94db95ca2c28'),('497d9d14-6f95-4aa1-8fb0-bfbd39bc9198',1,'1f5d053e-4f31-4200-9271-d74db6588600','278d1f5d-1e33-461c-b495-94db95ca2c28'),('4c5fce21-912b-4346-9450-e1cf2a906354',2,'e8598e7f-cd61-4806-8e5e-4fac5dac2ecb','7921ef2c-2c83-4359-aedc-9af93a2b358e'),('90d74ab3-c626-46f0-b62b-bd7001a80f3f',1,'e8598e7f-cd61-4806-8e5e-4fac5dac2ecb','e0f312cb-c8b5-4a35-847b-cee8efba94f6'),('b7becd84-6139-4843-9ad5-30dc0cec67c5',1,'1f5d053e-4f31-4200-9271-d74db6588600','e6a461e8-0d7d-48fb-857d-c0d18edc3e14'),('c0fc51d3-4a24-4ca2-9d50-3875f7cba691',1,'e8598e7f-cd61-4806-8e5e-4fac5dac2ecb','589b99b8-5bcd-43dd-a149-9f89ce08c5f4');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-09 22:41:49
