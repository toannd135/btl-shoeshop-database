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
INSERT INTO `users` VALUES ('0bfeafd3-c755-46f0-9861-24138e536aa7','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-03-31 08:40:48.105671','0bfeafd3-c755-46f0-9861-24138e536aa7','2026-01-07','manager@gmail.com','Manager','OTHER','Manager','$2a$10$4YpA2/Bvo56N0uP/Qx.hrufUtcPb41qo8rwWdCKWbx2DDi60MEihe','0123456789',NULL,'ACTIVE','2026-03-31 08:40:48.105671',NULL,'manager123','d5c03650-79b9-42dc-bc67-f037500ea17a'),('1112ef2e-6c75-42e1-9586-a41212ec89b3','https://lh3.googleusercontent.com/a/ACg8ocLY651dfMGBUzrRN3O6bz5uhVpq7CP-Dx2yYLAqc7M6Ep46jg=s96-c','2026-04-13 17:02:28.011644','1112ef2e-6c75-42e1-9586-a41212ec89b3',NULL,'thanhnd.b23cn761@gmail.com','Thanh',NULL,'Nguyễn Duy',NULL,NULL,'GOOGLE','ACTIVE','2026-04-13 17:02:28.011644',NULL,'thanhnd.b23cn761','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('151cbbd3-2a88-453c-b177-b5ee96886ace','https://lh3.googleusercontent.com/a/ACg8ocLJ8h8qiCCf57X7Fk_GNRz81MfT_uyZvdNYdD2yOlga-bXUBg=s96-c','2026-04-13 16:43:48.536821','151cbbd3-2a88-453c-b177-b5ee96886ace',NULL,'hoangvu121995aaaaa@gmail.com','vũ',NULL,'hoàng',NULL,NULL,'GOOGLE','ACTIVE','2026-04-13 16:43:48.536821',NULL,'hoangvu121995aaaaa','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('1be12f2e-e563-412d-a351-2423179a51a9','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205482/female_myry0s.png','2026-04-09 15:36:11.485998','1be12f2e-e563-412d-a351-2423179a51a9','2026-04-09','admin@gmail.com','Max','OTHER','Admin Pro','$2a$10$2nfbu0P2igPKNKx6JZpsGuBhGu/wcViY9GZ5/BLp5bz24Ni.sP72y','0123456222',NULL,'ACTIVE','2026-04-14 02:43:44.401608','1be12f2e-e563-412d-a351-2423179a51a9','admin123','edc8821c-1902-4ba8-bb8c-5825b9bc0c1c'),('26472514-5b38-4871-b90f-40c1382a51ac','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-09 14:19:15.785133','26472514-5b38-4871-b90f-40c1382a51ac',NULL,'batu01387@gmail.com','Nguyễn Bá','FEMALE','Tú','$2a$10$8zMtYGSnJmQyP..DoWJZKuBKAGao6S.tiwDKaTYRQJgnGQ3OdbIwa','012345612','SERVER','ACTIVE','2026-04-13 09:36:18.571016','26472514-5b38-4871-b90f-40c1382a51ac','batu123','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('283f6dbc-2304-4215-996c-5f18eda3892c','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-14 02:32:11.568303','283f6dbc-2304-4215-996c-5f18eda3892c',NULL,'duc@gmail.com','Duc',NULL,'Do','$2a$10$yl0CsLXnXhk4mNyhJNbVBOtCghdynAVKYK/7JEKdI.WKefh0zKUWe','0987654321','SERVER','ACTIVE','2026-04-14 02:32:35.218049','283f6dbc-2304-4215-996c-5f18eda3892c','duc','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('71b53759-c64c-42b3-828d-eb162b3de881','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-13 17:32:50.879996','71b53759-c64c-42b3-828d-eb162b3de881',NULL,'nguyenvinhtrung0509@gmail.com','Nguyễn',NULL,'Trung','$2a$10$TWJN3zC.wYDU/G5knvBUse/CjP/rvertIUaIqX7RBrlpXqTyo3mUa','0976793963','SERVER','ACTIVE','2026-04-13 17:33:45.293661','71b53759-c64c-42b3-828d-eb162b3de881','trungtrung','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('76c231cb-5def-47af-97c2-8e7ff15763ce','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205347/male_t5seto.png','2026-04-04 07:37:13.047744','76c231cb-5def-47af-97c2-8e7ff15763ce','2026-04-23','tranvanan@gmail.com','An','MALE','Trần Văn','$2a$2a$10$y73N0TIj0nK6aepiXK1kMe6KwoxQ5hGJ.M4o6Xu4kW2V7e7wQJCfa','0123456778',NULL,'ACTIVE','2026-04-04 07:37:13.047744',NULL,'tranvanan123','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('7e433ba4-88d7-45f6-9622-9df324b56f8c','https://lh3.googleusercontent.com/a/ACg8ocKctqSm-n0H988BaXf5ocSoOOYX-2qbMLyvpZsBtFMoreULSgs=s96-c','2026-04-13 15:04:43.557832','7e433ba4-88d7-45f6-9622-9df324b56f8c',NULL,'luckyn135@gmail.com','Nguyễn',NULL,'Toàn','$2a$10$heZj31jRe6w4A1GxkakfJuVmCX6BssynhsXPQ5LmNUuCw39qG.FX.','0989823434','SERVER','ACTIVE','2026-04-14 01:52:26.359993','7e433ba4-88d7-45f6-9622-9df324b56f8c','luckyn123','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('8d838a9d-dea6-4140-b348-dee5d4a9d160','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205482/female_myry0s.png','2026-04-09 16:08:36.897310','8d838a9d-dea6-4140-b348-dee5d4a9d160','2026-04-21','seller@gmail.com','Seller','FEMALE','Seller','$2a$10$L7VkV1ZFj49iZqZ3Tb88qeARyZuv8R.CbX2fPSNvhNhBbrc44a8Oi','01293801',NULL,'ACTIVE','2026-04-09 16:08:36.897310',NULL,'seller123','24b0b2ea-b566-4089-8c31-5affdfa311c0'),('903bb48c-8d51-47e2-883f-c37f4c07964f','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-09 14:47:38.469587','903bb48c-8d51-47e2-883f-c37f4c07964f',NULL,'superadmin@gmail.com','super',NULL,'admin','$2a$10$ccWqv6Y7NVSkOnPrp.ZX/uLmJRqhi0Uk33NGawbaSZeE8iySTmqgO','0987654321','SERVER','ACTIVE','2026-04-09 14:47:38.469587',NULL,'superadmin123','cb9f704a-3094-4338-8677-eac32d5b5e66'),('adf851ed-9f87-4479-8f12-c538208689ca','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-14 05:03:04.912276','adf851ed-9f87-4479-8f12-c538208689ca',NULL,'dodinhviet10a1@gmail.com','Việt',NULL,'Đình','$2a$10$QKUW0d.KbdVTH6kwXmJ.ru2F1RNEv1SEOYmWydGFOCljqlRla4i2G','0338733032','SERVER','ACTIVE','2026-04-14 05:03:47.472360','adf851ed-9f87-4479-8f12-c538208689ca','vietdeptrai','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('c1c739be-9908-4882-8ba3-800135ab5109','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-03 17:48:22.952204','c1c739be-9908-4882-8ba3-800135ab5109',NULL,'thanh@gmail.com','Thanh',NULL,'Nguyen Duy','$2a$10$OdbqiFTmSvvm8uTG8rSCfe1cyaoo.p7zcUUscBFsCa98KdIuyDY6G','0333333333','SERVER','ACTIVE','2026-04-03 17:49:03.126597','c1c739be-9908-4882-8ba3-800135ab5109','thanh','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('ccbd79a9-fcd7-4a78-a658-65d4ed77b6ae','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-13 08:22:10.251343','ccbd79a9-fcd7-4a78-a658-65d4ed77b6ae',NULL,'vuanhtuan112ll@gmail.com','Vu',NULL,'Anh Tuan','$2a$10$vHjfp07jkNZzpj1BUm0l/./hSuD1FSqGWdIs9YkVqD3D83dvAyecu','0546487623','SERVER','ACTIVE','2026-04-13 08:22:10.251343',NULL,'vietxinh','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('d8542fd6-9deb-4457-9f49-17468b1fcc61','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-03 15:46:16.630993','d8542fd6-9deb-4457-9f49-17468b1fcc61',NULL,'lamanh123@gmail.com','Lam',NULL,'Anh','$2a$10$XV5jB46fW10HjwCqLWjzge5.11ilJdrTiAFaEqtKCgN5S5MApw48e','0123456798','SERVER','ACTIVE','2026-04-03 15:46:16.630993',NULL,'lamanh','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('e6a8ac5c-501d-4adb-9c21-ee93586fc69d','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-03 09:11:58.528165','e6a8ac5c-501d-4adb-9c21-ee93586fc69d','2005-06-18','luckyn135@gmail.comk','Toàn','MALE','Nguyễn Đức','$2a$10$OjYkmCgH4rp4yzya11juJeYRF14y2KMhuT/5oBE8lWTuaMzLfU9JW','0123454238','SERVER','ACTIVE','2026-04-14 02:41:13.644275','e6a8ac5c-501d-4adb-9c21-ee93586fc69d','toannd123','db6d5eaa-0dca-4272-8574-7a4cc58f86e7'),('e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f','https://res.cloudinary.com/dunqy8ngo/image/upload/v1771205534/other_vv6od4.png','2026-04-02 15:47:05.549506','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f',NULL,'stung6512@gmail.com','Vu',NULL,'Anh Tuan','$2a$10$y73N0TIj0nK6aepiXK1kMe6KwoxQ5hGJ.M4o6Xu4kW2V7e7wQJCfa','0546487623','SERVER','ACTIVE','2026-04-02 15:47:05.549506',NULL,'B23DCCN921','db6d5eaa-0dca-4272-8574-7a4cc58f86e7');
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

-- Dump completed on 2026-04-14 14:37:52
