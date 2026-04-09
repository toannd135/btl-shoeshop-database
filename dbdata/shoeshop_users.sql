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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` char(36) NOT NULL,
  `avatar_image` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` enum('FEMALE','MALE','OTHER') DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `provider` enum('GITHUB','GOOGLE','SERVER') DEFAULT NULL,
  `status` enum('ACTIVE','DELETED','EXPIRED','INACTIVE','SUSPENDED') NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` char(36) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0bfeafd3-c755-46f0-9861-24138e536aa7','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-03-31 08:40:48.105671','0bfeafd3-c755-46f0-9861-24138e536aa7','2026-01-07','manager@gmail.com','Manager','OTHER','Manager','$2a$10$4YpA2/Bvo56N0uP/Qx.hrufUtcPb41qo8rwWdCKWbx2DDi60MEihe','0123456789',NULL,'ACTIVE','2026-03-31 08:40:48.105671',NULL,'manager123','d5c03650-79b9-42dc-bc67-f037500ea17a'),('1be12f2e-e563-412d-a351-2423179a51a9','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205482/female_myry0s.png','2026-04-09 15:36:11.485998','1be12f2e-e563-412d-a351-2423179a51a9','2026-04-09','admin@gmail.com','Admin','FEMALE','Admin','$2a$10$2nfbu0P2igPKNKx6JZpsGuBhGu/wcViY9GZ5/BLp5bz24Ni.sP72y','012345622',NULL,'ACTIVE','2026-04-09 15:36:11.485998',NULL,'admin123','edc8821c-1902-4ba8-bb8c-5825b9bc0c1c'),('26472514-5b38-4871-b90f-40c1382a51ac','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-09 14:19:15.785133','26472514-5b38-4871-b90f-40c1382a51ac',NULL,'batu01387@gmail.com','Nguyễn Bá ',NULL,'Tú','$2a$10$8zMtYGSnJmQyP..DoWJZKuBKAGao6S.tiwDKaTYRQJgnGQ3OdbIwa','012345612','SERVER','INACTIVE','2026-04-09 14:19:15.785133',NULL,'batu123','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('76c231cb-5def-47af-97c2-8e7ff15763ce','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205347/male_t5seto.png','2026-04-04 07:37:13.047744','76c231cb-5def-47af-97c2-8e7ff15763ce','2026-04-23','tranvanan@gmail.com','An','MALE','Trần Văn','$2a$10$q/kDEShNftQZ5ZKkoJFHz.jPpB30Pfb.wXrzWCPTRRKkRPL9C4xjq','0123456778',NULL,'ACTIVE','2026-04-04 07:37:13.047744',NULL,'tranvanan123','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('903bb48c-8d51-47e2-883f-c37f4c07964f','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-09 14:47:38.469587','903bb48c-8d51-47e2-883f-c37f4c07964f',NULL,'superadmin@gmail.com','super',NULL,'admin','$2a$10$ccWqv6Y7NVSkOnPrp.ZX/uLmJRqhi0Uk33NGawbaSZeE8iySTmqgO','0987654321','SERVER','ACTIVE','2026-04-09 14:47:38.469587',NULL,'superadmin123','cb9f704a-3094-4338-8677-eac32d5b5e66'),('c1c739be-9908-4882-8ba3-800135ab5109','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-03 17:48:22.952204','c1c739be-9908-4882-8ba3-800135ab5109',NULL,'thanh@gmail.com','Thanh',NULL,'Nguyen Duy','$2a$10$OdbqiFTmSvvm8uTG8rSCfe1cyaoo.p7zcUUscBFsCa98KdIuyDY6G','0333333333','SERVER','ACTIVE','2026-04-03 17:49:03.126597','c1c739be-9908-4882-8ba3-800135ab5109','thanh','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('d8542fd6-9deb-4457-9f49-17468b1fcc61','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-03 15:46:16.630993','d8542fd6-9deb-4457-9f49-17468b1fcc61',NULL,'lamanh123@gmail.com','Lam',NULL,'Anh','$2a$10$XV5jB46fW10HjwCqLWjzge5.11ilJdrTiAFaEqtKCgN5S5MApw48e','0123456798','SERVER','ACTIVE','2026-04-03 15:46:16.630993',NULL,'lamanh','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('e6a8ac5c-501d-4adb-9c21-ee93586fc69d','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-03 09:11:58.528165','e6a8ac5c-501d-4adb-9c21-ee93586fc69d',NULL,'luckyn135@gmail.comk','Nguyễn',NULL,'Toàn','$2a$10$TShWzr1SZeAz.VnvdiEm3eXoRKTHgrqmDNo5W.pygsijaJrjxnsb.','0123454235','SERVER','ACTIVE','2026-04-03 09:11:58.528165',NULL,'toannd123','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-02 15:47:05.549506','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f',NULL,'stung6512@gmail.com','Vu',NULL,'Anh Tuan','$2a$10$y73N0TIj0nK6aepiXK1kMe6KwoxQ5hGJ.M4o6Xu4kW2V7e7wQJCfa','0546487623','SERVER','ACTIVE','2026-04-02 15:47:05.549506',NULL,'B23DCCN921','db6d5eaa-0dca-4272-8574-7a4cc58f86e7');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
