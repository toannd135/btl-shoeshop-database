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
INSERT INTO `addresses` VALUES ('1abe5dde-dcf5-4062-97b9-13b078c5cdc5','Thành phố Hải Phòng','2026-04-14 03:52:11.149749','26472514-5b38-4871-b90f-40c1382a51ac',NULL,_binary '','Nguyễn Bá Tú','091398791','ACTIVE','Hà nội','2026-04-14 03:52:11.149749',NULL,'Xã Hợp Tiến','26472514-5b38-4871-b90f-40c1382a51ac'),('2935c527-035f-4e7b-9002-26d5492b05f9','Tỉnh Quảng Ninh','2026-04-04 14:47:35.592429','c1c739be-9908-4882-8ba3-800135ab5109',NULL,_binary '','Nguyễn Duy Thanh','0333444555','ACTIVE','Gieng Day','2026-04-04 14:47:35.592429',NULL,'Phường Hạ Long','c1c739be-9908-4882-8ba3-800135ab5109'),('3f72f447-d9bd-464f-9b2b-5299443d126e','Tỉnh Tuyên Quang','2026-04-13 15:10:51.037775','7e433ba4-88d7-45f6-9622-9df324b56f8c',NULL,_binary '','Nguyen Ba Tu','01239873923','ACTIVE','thanh niên\nHoa binh','2026-04-13 15:10:51.037775',NULL,'Xã Phú Linh','7e433ba4-88d7-45f6-9622-9df324b56f8c'),('88ba8389-8cc7-4816-8fe6-54b45c3dcf19','Thành phố Hà Nội','2026-04-04 14:47:54.490354','c1c739be-9908-4882-8ba3-800135ab5109',NULL,_binary '\0','Nguyễn Duy Thanh','0333444555','ACTIVE','87 Yen Xa','2026-04-04 14:47:54.490354',NULL,'Phường Ba Đình','c1c739be-9908-4882-8ba3-800135ab5109'),('b41f3825-1eba-48c2-b444-3d380748e0dd','Tỉnh Phú Thọ','2026-04-06 15:07:41.046990','e6a8ac5c-501d-4adb-9c21-ee93586fc69d',NULL,_binary '','Nguyễn Đức Toàn','0836249957','ACTIVE','28/42 Thanh Bình\nMỗ Lao, Hà Đông','2026-04-14 04:02:01.019454','e6a8ac5c-501d-4adb-9c21-ee93586fc69d','Phường Hòa Bình','e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('bcef06bd-0b47-4f4f-b676-0bf28ec0deff','Tỉnh Quảng Ninh','2026-04-13 14:39:21.419982','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f',NULL,_binary '','Phạm Hoàng Việt - B23DCCN921','0342707512','ACTIVE','Số 7, thôn Yên Mỹ','2026-04-13 14:39:21.419982',NULL,'Phường Hạ Long','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('c3d117b8-a3ca-456d-bb85-57f15fda7597','Tỉnh Quảng Ninh','2026-04-13 16:12:23.044035','e6a8ac5c-501d-4adb-9c21-ee93586fc69d',NULL,_binary '\0','Nguyen Van Khoa','012379123','ACTIVE','28/42 Thanh Bình\nMỗ Lao, Hà Đông','2026-04-13 16:12:23.044035',NULL,'Xã Hải Sơn','e6a8ac5c-501d-4adb-9c21-ee93586fc69d');
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

-- Dump completed on 2026-04-14 14:37:51
