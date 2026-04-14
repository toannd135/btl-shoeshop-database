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
-- Table structure for table `supplier_variants`
--

DROP TABLE IF EXISTS `supplier_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_variants` (
  `sup_var_id` char(36) NOT NULL,
  `cost` decimal(38,2) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `supplier_id` char(36) NOT NULL,
  `variant_id` char(36) NOT NULL,
  PRIMARY KEY (`sup_var_id`),
  UNIQUE KEY `UK4nsw2rlt7t81fc2ydgrgcbmmy` (`supplier_id`,`variant_id`),
  KEY `FK68j1r9u7v9maj3euvmfnm9j5f` (`variant_id`),
  CONSTRAINT `FK68j1r9u7v9maj3euvmfnm9j5f` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`product_variant_id`),
  CONSTRAINT `FKoi1pld1ejoy27l8ltu8tya2et` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_variants`
--

LOCK TABLES `supplier_variants` WRITE;
/*!40000 ALTER TABLE `supplier_variants` DISABLE KEYS */;
INSERT INTO `supplier_variants` VALUES ('06461dd6-f448-4d96-93b5-8dcbee832746',1050000.00,'','9bf8a3c7-b566-4874-9903-03f8ba18d871','278d1f5d-1e33-461c-b495-94db95ca2c28'),('2891b3a7-f64f-408f-a253-1d313ba3f646',2000000.00,NULL,'9bf8a3c7-b566-4874-9903-03f8ba18d871','d6eb8f24-d77e-4ba1-8c3a-e0e4b5b4b942');
/*!40000 ALTER TABLE `supplier_variants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:38:02
