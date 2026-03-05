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
  `created_at` datetime(6) DEFAULT NULL,
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
INSERT INTO `users` VALUES ('2808eff5-57b1-44ef-8b3d-789ddb4a9a38','https://lh3.googleusercontent.com/a/ACg8ocLJ8h8qiCCf57X7Fk_GNRz81MfT_uyZvdNYdD2yOlga-bXUBg=s96-c','2026-03-03 02:33:58.745085','2808eff5-57b1-44ef-8b3d-789ddb4a9a38','2026-03-18','hoangvu121995aaaaa@gmail.com','Nguyễn','MALE','Toàn','$2a$10$Dge05/eipC5MmW7n7HrSPOQd3dLj58Dx9bTdDcisMblyFjrBeefyO','0836249957','GOOGLE','DELETED','2026-03-03 07:38:45.873315','2808eff5-57b1-44ef-8b3d-789ddb4a9a38','toann123','b134942f-6c8e-4e47-8344-fa86cf724cf6'),('68f4d462-5016-4682-910e-5f73f4b65cb7','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-02-28 15:36:21.246971','68f4d462-5016-4682-910e-5f73f4b65cb7',NULL,'admin@gmail.com','admin',NULL,'admin','$2a$10$CYKOusbU9K2ar9PTjqWNS.OwQLeZqeKp5D7RCnOPS7mPI/epNqf9K','0987654321','SERVER','ACTIVE','2026-02-28 15:36:21.246971',NULL,'admin123','fc5b40dc-73dd-4cbc-84c9-94011f31954e'),('7977f0a8-4465-4ff8-9370-87093630ffdb','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-03-03 02:35:59.417635','7977f0a8-4465-4ff8-9370-87093630ffdb','2026-03-23','luckyn135@gmail.com','Nguyễn','MALE','Toàn','$2a$10$p7mikoiO9oB9z81tcJ0Eh.fjwIqXkPYhJaIKxQ8XeJhBLBEBe.chy','0836249957','SERVER','ACTIVE','2026-03-04 02:39:11.536488','7977f0a8-4465-4ff8-9370-87093630ffdb','lucktn123','53a45ada-f19e-4417-b77d-ac4315247d2d');
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

-- Dump completed on 2026-03-05  8:40:43
