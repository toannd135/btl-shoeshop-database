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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `message_id` char(36) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `conversation_id` char(36) NOT NULL,
  `sender_id` char(36) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `FK6yskk3hxw5sklwgi25y6d5u1l` (`conversation_id`),
  KEY `FKbi5avhe69aol2mb1lnm6r4o2p` (`sender_id`),
  CONSTRAINT `FK6yskk3hxw5sklwgi25y6d5u1l` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`conversation_id`),
  CONSTRAINT `FKbi5avhe69aol2mb1lnm6r4o2p` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('0208bff2-1deb-4b2f-a6af-e188ea0896c1','15','2026-04-14 01:36:11.266656','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('31416d38-f073-4f7b-a796-fa26de0d9fc1','12','2026-04-14 01:36:02.262815','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('390dee8d-663d-41a7-9ced-5c596d3b2cf9','9','2026-04-14 01:35:53.995857','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('3e181ee1-d801-4e12-a66e-ace6f848a351','18','2026-04-14 01:36:21.212892','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('46e97b45-9204-4b78-a39a-6a477c4b662f','hí','2026-04-14 02:34:17.185285','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('567ebb6c-f8b2-490a-b41d-b3d668d34683','8','2026-04-14 01:35:52.176774','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('69489c1f-1a0c-49dd-ba18-4e6ec5da9c43','16','2026-04-14 01:36:14.557509','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('6b8a256e-82d4-4ec1-9425-61eaebe9afd8','Xem sản phẩm mới','2026-04-14 01:35:05.552661','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('6e77c686-5128-45fe-8384-1d543c57086f','14','2026-04-14 01:36:07.708542','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('6ee628f5-4c0e-448e-8e68-020d4cd816fc','Xin chào! Mình là trợ lý của SHOESHOP ?\nMình có thể giúp gì cho bạn?','2026-04-14 05:05:18.340386','41fbc141-ab75-456a-8f68-711aef7c8409','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('7f8d6b69-0fe2-4e89-946c-e92711ee58df','13','2026-04-14 01:36:04.489816','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('880d9cd3-859d-4021-a8f4-d5007e4fca5b','hello ad ạ','2026-04-14 01:34:33.869515','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('88a76ee2-62d6-4875-a157-3e3ac26ee756','oki em','2026-04-14 01:35:10.613268','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('897172e2-aaed-404c-a19c-0b821244c628','10','2026-04-14 01:35:56.189284','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('9a9eded7-fc0d-4341-81c3-39c05c89ae79','6','2026-04-14 01:35:44.568832','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('a4555728-9108-4f45-9435-059188daa61d','3','2026-04-14 01:35:38.066022','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('a6b4bd1c-328f-4f36-8311-9874c50e59a4','hi','2026-04-14 02:23:17.419741','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('a8e1cdc4-066d-4222-95f6-5a3082b033f9','5','2026-04-14 01:35:42.055624','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('b435e006-4493-4dd6-a0b0-211bed0a5521','Xin chào! Mình là trợ lý của SHOESHOP ?\nMình có thể giúp gì cho bạn?','2026-04-14 01:34:19.433029','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('cf4831b7-63de-4ec8-9ad1-d9df6ac0d22f','alo','2026-04-14 02:34:02.451890','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('d5244f1a-3a4c-4ecd-8d0b-3427d018eddd','11','2026-04-14 01:35:59.154972','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('de925ad8-8009-4d58-ae68-164c39c6df3e','Xem sản phẩm mới','2026-04-14 05:05:35.329491','41fbc141-ab75-456a-8f68-711aef7c8409','adf851ed-9f87-4479-8f12-c538208689ca'),('ece52ecc-0264-4481-9f11-ea57531dade1','1','2026-04-14 01:35:30.954246','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('ed7f1551-3a90-4072-a53a-c781a720a0f1','17','2026-04-14 01:36:18.257262','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('ee3aff3f-093b-4e36-bfad-414b7eb44680','7','2026-04-14 01:35:50.199819','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('f2d978b7-d11a-49c4-952e-dfafb4e2b3a8','2','2026-04-14 01:35:34.501168','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('fa9db86f-43cb-4585-af1a-154ecdf80cb1','hello em nhé','2026-04-14 01:35:01.437285','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','8d838a9d-dea6-4140-b348-dee5d4a9d160'),('ff66beef-e7fc-4bbf-893e-6c52f2038346','hế lô','2026-04-14 05:05:28.649161','41fbc141-ab75-456a-8f68-711aef7c8409','adf851ed-9f87-4479-8f12-c538208689ca'),('ffa90170-7914-4ae7-9ea8-ddc3e755f98d','4','2026-04-14 01:35:40.046413','c9bb6310-b310-4656-a9e7-1e9fc7d808fe','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:38:07
