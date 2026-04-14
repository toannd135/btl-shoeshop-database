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
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_payments` (
  `order_payment_id` char(36) NOT NULL,
  `amount` decimal(15,0) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `paid_at` datetime(6) DEFAULT NULL,
  `payment_method` enum('BANK_TRANSFER','COD','MOMO','STRIPE','VNPAY') NOT NULL,
  `payment_status` enum('PAID','REFUNDED','UNPAID') NOT NULL,
  `response_data` text,
  `transaction_id` varchar(255) DEFAULT NULL,
  `vnpay_transaction_ref` varchar(255) DEFAULT NULL,
  `order_id` char(36) NOT NULL,
  PRIMARY KEY (`order_payment_id`),
  UNIQUE KEY `UK5a56exwqep660gk9enqqfqo0g` (`order_id`),
  CONSTRAINT `FK3s9vxneb3dk3plhpv9s213so0` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payments`
--

LOCK TABLES `order_payments` WRITE;
/*!40000 ALTER TABLE `order_payments` DISABLE KEYS */;
INSERT INTO `order_payments` VALUES ('2e7bfb62-581a-4e26-a3bd-47fa87a154b0',3700000,'2026-04-04 05:32:04.553099',NULL,'COD','UNPAID',NULL,NULL,NULL,'8b9eebc9-a1fc-4fde-8f46-97806df7429b'),('399c2183-bf05-49d0-abdc-27b4d59b3c4e',3400000,'2026-04-04 06:29:26.720844',NULL,'COD','UNPAID',NULL,NULL,NULL,'6e0613f5-d9a1-4ef2-baee-fffd40ee3164'),('39d5158f-e109-4cd6-9c27-27474107b4e8',11300000,'2026-04-04 06:24:26.097506',NULL,'COD','UNPAID',NULL,NULL,NULL,'0b3c5661-f198-4c74-8a0c-45a55c24a153'),('41da3c44-51cb-4fcd-9757-6ff0d5c345d1',789000,'2026-04-04 07:49:33.832185',NULL,'COD','UNPAID',NULL,NULL,NULL,'495d9924-89b2-4989-9300-508738638500'),('bf462fcf-6863-4cfe-8cae-89320f2fa556',6700000,'2026-04-04 06:22:22.282872',NULL,'COD','UNPAID',NULL,NULL,NULL,'1f4a1e0f-de85-4a4e-989c-ea34b0658717');
/*!40000 ALTER TABLE `order_payments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:38:04
