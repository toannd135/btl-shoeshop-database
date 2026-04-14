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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` char(36) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `discount_amount` decimal(15,0) DEFAULT NULL,
  `final_price` decimal(15,0) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `province_code` varchar(10) DEFAULT NULL,
  `receiver_name` varchar(100) DEFAULT NULL,
  `receiver_phone` varchar(11) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_fee` decimal(15,0) DEFAULT NULL,
  `status` enum('CANCELLED','CONFIRMED','DELIVERED','PENDING','RETURNED','SHIPPING') NOT NULL,
  `total_price` decimal(15,0) DEFAULT NULL,
  `coupon_id` char(36) DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKn1d1gkxckw648m2n2d5gx0yx5` (`coupon_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKn1d1gkxckw648m2n2d5gx0yx5` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('05a0aa59-f9ab-4fd3-9b0d-0688b00533e3','2026-04-13 17:31:16.287359',0,5900000,NULL,NULL,'Nguyen Van Khoa','012379123','28/42 Thanh Bình\nMỗ Lao, Hà Đông, Xã Hải Sơn, Tỉnh Quảng Ninh',0,'PENDING',5900000,NULL,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('0b3c5661-f198-4c74-8a0c-45a55c24a153','2026-04-04 06:24:24.424699',500000,11300000,NULL,NULL,'Vu Anh Tuan','0342707512','Ninh Binh, Xã Đức Thọ, Tỉnh Hà Tĩnh',0,'DELIVERED',11800000,'f035dd8c-0b69-4a97-bf6c-9beff43aba13','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('0bd0bbb1-3b85-47e0-aea1-6e07d5063213','2026-04-14 02:35:40.216465',0,717500,NULL,NULL,'Nguyễn Duy Thanh','0333444555','Ha Long, Phường Cầu Giấy, Thành phố Hà Nội',30000,'PENDING',687500,NULL,'283f6dbc-2304-4215-996c-5f18eda3892c'),('0c519caf-36f5-467f-8459-d323bcac6ead','2026-04-14 02:52:07.205676',0,2500000,NULL,NULL,'Phạm Hoàng Việt - B23DCCN921','0342707512','Số 7, thôn Yên Mỹ, Phường Hạ Long, Tỉnh Quảng Ninh',0,'PENDING',2500000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('1f4a1e0f-de85-4a4e-989c-ea34b0658717','2026-04-04 06:22:20.745513',500000,6700000,NULL,NULL,'Vu Anh Tuan','0342707512','Ninh Binh, Xã Mường Chanh, Tỉnh Thanh Hóa',0,'DELIVERED',7200000,'f035dd8c-0b69-4a97-bf6c-9beff43aba13','e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('1f895747-d3c2-4e26-ae89-8d5bf5e49d54','2026-04-03 17:51:02.713107',500000,1500000,NULL,NULL,'Nguyễn Duy Thanh','0333444555','Ha Long, Phường Ô Chợ Dừa, Thành phố Hà Nội',0,'SHIPPING',2000000,NULL,'c1c739be-9908-4882-8ba3-800135ab5109'),('41d8dff5-98c9-467d-b587-49ff4e0d480b','2026-04-14 05:11:13.776784',0,4230000,NULL,NULL,'Việt Đỗ Đình','0338733035','ssdsdsds, Phường Đồng Văn, Tỉnh Ninh Bình',30000,'DELIVERED',4200000,NULL,'adf851ed-9f87-4479-8f12-c538208689ca'),('42c40469-2605-4f07-9450-c4871b624b82','2026-04-13 17:32:43.571558',0,1700000,NULL,NULL,'Nguyen Van Khoa','012379123','28/42 Thanh Bình\nMỗ Lao, Hà Đông, Xã Hải Sơn, Tỉnh Quảng Ninh',0,'PENDING',1700000,NULL,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('457668db-72ca-4682-9e2a-2b276c730d2a','2026-04-14 02:53:47.183602',0,2000000,NULL,NULL,'Phạm Hoàng Việt - B23DCCN921','0342707512','Số 7, thôn Yên Mỹ, Phường Hạ Long, Tỉnh Quảng Ninh',0,'PENDING',2000000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('495d9924-89b2-4989-9300-508738638500','2026-04-04 07:49:33.156583',0,789000,NULL,NULL,'Lam Anh','0912481358','Ha Noi, Phường Liêm Tuyền, Tỉnh Ninh Bình',0,'DELIVERED',789000,NULL,'d8542fd6-9deb-4457-9f49-17468b1fcc61'),('4d36b788-5c0e-4abc-8c28-f3f0dccbaced','2026-04-14 02:20:01.430182',0,3240000,NULL,NULL,'Nguyễn Duy Thanh','0333444555','Gieng Day, Phường Hạ Long, Tỉnh Quảng Ninh',40000,'DELIVERED',3200000,NULL,'c1c739be-9908-4882-8ba3-800135ab5109'),('56be5b38-9790-4ca5-a09e-7b7e055687a0','2026-04-04 07:42:47.762723',0,3300000,NULL,NULL,'Lam Anh','0912481358','Ha Noi, Phường Lý Thường Kiệt, Tỉnh Ninh Bình',0,'DELIVERED',3300000,NULL,'d8542fd6-9deb-4457-9f49-17468b1fcc61'),('580cfba6-45b9-49f8-9b85-f709e29035b7','2026-04-04 07:47:48.453258',0,789000,NULL,NULL,'Toàn Nguyễn','0912481358','Ha Noi, Tỉnh Hưng Yên',0,'DELIVERED',789000,NULL,'d8542fd6-9deb-4457-9f49-17468b1fcc61'),('5f621a87-fc0e-4cc7-ba9e-7d267a831dff','2026-04-10 14:02:39.723611',0,17200000,NULL,NULL,'Nguyễn Đức Toàn','0836249957','28/42 Thanh Bình\nMỗ Lao, Hà Đông, Xã Tân Tiến, Tỉnh Lạng Sơn',0,'PENDING',17200000,NULL,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('6cd7ed0b-ca9c-4769-ad17-d61662fedfc5','2026-04-09 08:42:35.319167',0,1578000,NULL,NULL,'Nguyen duc toan','01239873','28/42 Thanh Bình, Thành phố Hà Nội',0,'DELIVERED',1578000,NULL,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('6e0613f5-d9a1-4ef2-baee-fffd40ee3164','2026-04-04 06:29:25.928989',0,3400000,NULL,NULL,'Vu Anh Tuan','0342707512','Ninh Binh, Xã Phú Trạch, Tỉnh Quảng Trị',0,'DELIVERED',3400000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('70405ac7-b43a-4dc2-bd82-fe26603473b4','2026-04-04 05:14:18.305258',500000,4700000,NULL,NULL,'Vu Anh Tuan','0342707512','Ninh Binh, Xã Phú Xuân, Tỉnh Thanh Hóa',0,'PENDING',5200000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('73db7fdc-8249-479f-9522-ee8984ece1bf','2026-04-09 08:41:33.983458',0,7589000,NULL,NULL,'Nguyễn Đức Toàn','0836249957','28/42 Thanh Bình\nMỗ Lao, Hà Đông, Xã Tân Tiến, Tỉnh Lạng Sơn',0,'PENDING',7589000,NULL,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('7543457b-dcfa-44d2-b961-18c2e15e59c2','2026-04-14 02:01:29.075702',0,6240000,NULL,NULL,'Nguyễn Duy Thanh','0333444555','Gieng Day, Phường Hạ Long, Tỉnh Quảng Ninh',40000,'DELIVERED',6200000,NULL,'c1c739be-9908-4882-8ba3-800135ab5109'),('85e4bc2b-94e9-4de4-b374-eff8548bed86','2026-04-14 03:52:21.930356',0,2000000,NULL,NULL,'Nguyễn Bá Tú','091398791','Hà nội, Xã Hợp Tiến, Thành phố Hải Phòng',0,'DELIVERED',2000000,NULL,'26472514-5b38-4871-b90f-40c1382a51ac'),('8b9eebc9-a1fc-4fde-8f46-97806df7429b','2026-04-04 05:32:03.191179',500000,3700000,NULL,NULL,'Vu Anh Tuan','0342707512','Ninh Binh, Xã Trung Sơn, Tỉnh Thanh Hóa',0,'DELIVERED',4200000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('9472804c-2acf-4a10-9ebc-a25906bdf3c0','2026-04-04 05:08:19.917857',0,5100000,NULL,NULL,'Phạm Hoàng Việt - B23DCCN921','0342707512','Ninh Binh, Phường Bãi Cháy, Tỉnh Quảng Ninh',0,'DELIVERED',5100000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('97316827-af98-471f-84fd-adcf376dbbe0','2026-04-14 03:01:45.100113',0,2030000,'[2026-04-14T03:23:47.702002800Z] Admin: Đã giao',NULL,'Phạm Hoàng Việt - B23DCCN921','0342707512','Số 7, thôn Yên Mỹ, Phường Hạ Long, Tỉnh Quảng Ninh',30000,'DELIVERED',2000000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('9b294049-e845-4de3-bddd-9b880a6560a6','2026-04-09 08:46:54.114594',0,4200000,NULL,NULL,'Nguyễn Đức Toàn','009809812','28/42 Thanh Bình, Thành phố Hà Nội',0,'DELIVERED',4200000,NULL,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('a6cb08cc-3295-46b7-b324-18d9d5688828','2026-04-03 17:50:14.293120',500000,3700000,NULL,NULL,'Thanh Nguyen Duy','0333444555','Ha Long, Phường Nghĩa Đô, Thành phố Hà Nội',0,'PENDING',4200000,NULL,'c1c739be-9908-4882-8ba3-800135ab5109'),('b7fa18e7-8772-4a37-84e3-b7b0f1c211f3','2026-04-04 05:19:20.016657',500000,3700000,NULL,NULL,'Vu Anh Tuan','0342707512','Ninh Binh, Xã Keng Đu, Tỉnh Nghệ An',0,'DELIVERED',4200000,NULL,'e9bcb2b6-7ab3-4213-8a06-3f3f2aeb726f'),('c2da8f1c-2d5c-453f-9ef6-a2fee2c13b72','2026-04-04 04:20:47.707787',500000,3700000,NULL,NULL,'Thanh Nguyen Duy','0333444555','Ha Long, Phường Long Biên, Thành phố Hà Nội',0,'SHIPPING',4200000,NULL,'c1c739be-9908-4882-8ba3-800135ab5109'),('cadd3c70-3a69-437f-8916-17408d4628f4','2026-04-04 02:36:47.912591',0,24389000,NULL,NULL,'Nguyễn Đức Toàn','0982824747','28/42 Thanh Bình, Xã Ứng Hòa, Thành phố Hà Nội',0,'PENDING',24389000,NULL,'e6a8ac5c-501d-4adb-9c21-ee93586fc69d'),('fae0472a-7b98-45cd-a7d2-f55994c60b2f','2026-04-04 14:35:27.025181',500000,3700000,NULL,NULL,'Thanh Nguyen Duy','0333444555','Ha Long, Phường Cầu Giấy, Thành phố Hà Nội',0,'PENDING',4200000,'f035dd8c-0b69-4a97-bf6c-9beff43aba13','c1c739be-9908-4882-8ba3-800135ab5109');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 14:38:18
