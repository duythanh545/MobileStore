-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: developer_mobilestore
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `defaults` bit(1) NOT NULL,
  `location` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name_receiver` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone_receiver` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FKda8tuywtf0gb6sedwk7la1pgi` (`user_id`),
  CONSTRAINT `FKda8tuywtf0gb6sedwk7la1pgi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'2023-08-03 12:17:29',1,'2023-08-03 12:17:29',_binary '','Le Quang Dinh P14, HCM city','Tien','0582201031','home',1,1),(2,1,'2023-08-03 12:18:23',1,'2023-08-03 12:18:23',_binary '\0','Kha Van Can, Quan 2, TP HCM','R2S','0779132005','home',1,1),(3,1,'2023-08-03 12:19:31',1,'2023-08-03 12:19:31',_binary '\0','Lê Thánh Tôn, Quận 1, HCM','R2S Academy','(028)35102190','Công ty',1,1),(4,3,'2023-08-13 16:14:26',3,'2023-09-15 13:56:29',_binary '\0','65 Lahabana,Thị trấn Xuân Mai ,Huyện Chương Mỹ ,Thành phố Hà Nội','YukataNguyen','0123456789','office',3,1),(5,3,'2023-09-15 09:26:38',3,'2023-09-15 10:45:46',_binary '\0','hah,Phường Hoà Quý ,Huyện Hoàng Sa ,Thành phố Đà Nẵng','hahaha','3297712000','home',3,1),(6,3,'2023-09-15 09:33:45',3,'2023-09-15 13:56:29',_binary '','nope45,Xã Đại Hà ,Huyện Kiến Thuỵ ,Thành phố Hải Phòng','gg','0784546466','home',3,1),(7,7,'2023-09-15 13:15:01',7,'2023-09-15 13:15:01',_binary '','123,Xã Đồng Tháp ,Huyện Đan Phượng ,Thành phố Hà Nội','kl','0366665016','home',7,1),(9,7,'2023-09-15 14:18:45',7,'2023-09-15 14:18:45',_binary '\0','yueya,Thị trấn Tân Túc ,Huyện Bình Chánh ,Thành phố Hồ Chí Minh','yueha','0639428316','home',7,1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,'2023-07-18 10:03:57',NULL,'2023-07-18 10:03:57','Điện thoại',_binary ''),(2,NULL,'2023-07-18 10:04:06',NULL,'2023-07-18 10:04:06','Laptop',_binary ''),(3,NULL,'2023-07-18 10:04:21',NULL,'2023-07-18 10:04:21','Tablet',_binary '');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsgsuxxoc1h5pskbjpch4id2ec` (`product_id`),
  CONSTRAINT `FKsgsuxxoc1h5pskbjpch4id2ec` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (6,NULL,NULL,NULL,'2023-07-19 10:21:28','black',1,_binary ''),(7,NULL,NULL,NULL,'2023-07-19 10:21:28','white',1,_binary ''),(8,NULL,NULL,NULL,NULL,'blue',4,_binary ''),(9,NULL,NULL,NULL,NULL,'red',4,_binary ''),(10,NULL,NULL,NULL,NULL,'green',4,_binary ''),(11,NULL,NULL,NULL,NULL,'red',5,_binary ''),(12,NULL,NULL,NULL,NULL,'green',6,_binary ''),(13,NULL,NULL,NULL,NULL,'black',6,_binary ''),(14,NULL,NULL,NULL,NULL,'blue',6,_binary ''),(15,NULL,NULL,NULL,NULL,'black',2,_binary ''),(16,NULL,NULL,NULL,NULL,'blue',2,_binary ''),(17,NULL,NULL,NULL,NULL,'green',3,_binary ''),(18,NULL,NULL,NULL,NULL,'yellow',3,_binary ''),(19,NULL,NULL,NULL,NULL,'green',2,_binary '');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgpextbyee3uk9u6o2381m7ft1` (`product_id`),
  CONSTRAINT `FKgpextbyee3uk9u6o2381m7ft1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (5,NULL,'2023-07-19 10:15:37',NULL,'2023-07-19 10:15:37','1689736536980_apple-pro-16-m1-pro-2021-10-core-cpu-061222-083938.jpg',4,_binary ''),(6,NULL,'2023-07-19 10:15:37',NULL,'2023-07-19 10:15:37','1689736536981_apple-pro-16-m1-pro-2021-10-core-cpu-061222-083954.jpg',4,_binary ''),(7,NULL,'2023-07-19 10:15:37',NULL,'2023-07-19 10:15:37','1689736536982_macbook-air-m1-2020-silver-01-org.jpg',4,_binary ''),(8,NULL,'2023-07-19 10:16:39',NULL,'2023-07-19 10:16:39','1689736599299_samsung-galaxy-tab-a8-note.jpg',5,_binary ''),(9,NULL,'2023-07-19 10:16:39',NULL,'2023-07-19 10:16:39','1689736599301_samsung-galaxy-tab-a8-170122-114017.jpg',5,_binary ''),(10,NULL,'2023-07-19 10:18:13',NULL,'2023-07-19 10:18:13','1689736693480_ipad-air-5-150322-044250.jpeg',6,_binary ''),(11,NULL,'2023-07-19 10:18:13',NULL,'2023-07-19 10:18:13','1689736693481_ipad-air-5-m1-xam-1.jpg',6,_binary ''),(12,NULL,'2023-07-19 10:21:28',NULL,'2023-07-19 10:21:28','1689736887761_iphone-14-pro-max-note.jpg',1,_binary ''),(13,NULL,'2023-07-19 10:21:28',NULL,'2023-07-19 10:21:28','1689736887762_iphone-14-pro-max-den-thumb-600x600.jpg',1,_binary ''),(14,NULL,'2023-07-19 10:30:30',NULL,'2023-07-19 10:30:30','1689737430300_samsung-galaxy-a14-4g-den-1-1.jpg',2,_binary ''),(15,NULL,'2023-07-19 10:30:30',NULL,'2023-07-19 10:30:30','1689737430301_samsung-galaxy-a14-note.jpg',2,_binary ''),(16,NULL,'2023-07-19 10:32:56',NULL,'2023-07-19 10:32:56','1689737575587_xiaomi-13-pro-hinh-note.jpg',3,_binary ''),(17,NULL,'2023-07-19 10:32:56',NULL,'2023-07-19 10:32:56','1689737575588_xiaomi-13-pro-trang-1.jpg',3,_binary '');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,NULL,'2023-07-18 10:03:44',NULL,'2023-07-18 10:03:44','Apple Company',_binary ''),(2,NULL,'2023-07-18 10:18:51',NULL,'2023-07-18 10:18:51','Xiaomi Company',_binary ''),(3,NULL,'2023-07-18 10:19:04',NULL,'2023-07-18 10:19:04','SamSung Company',_binary '');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory`
--

DROP TABLE IF EXISTS `memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbnplij0bw2tp0j3ggrnf6icux` (`product_id`),
  CONSTRAINT `FKbnplij0bw2tp0j3ggrnf6icux` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory`
--

LOCK TABLES `memory` WRITE;
/*!40000 ALTER TABLE `memory` DISABLE KEYS */;
INSERT INTO `memory` VALUES (1,NULL,NULL,NULL,NULL,'64Gb',1,_binary ''),(2,NULL,NULL,NULL,NULL,'128Gb',1,_binary ''),(3,NULL,NULL,NULL,NULL,'1Tb',1,_binary ''),(4,NULL,NULL,NULL,'2023-07-19 10:30:30','256Gb',2,_binary ''),(5,NULL,NULL,NULL,'2023-07-19 10:30:30','512Gb',2,_binary ''),(6,NULL,NULL,NULL,'2023-07-19 10:32:56','1Tb',3,_binary ''),(7,NULL,NULL,NULL,'2023-07-19 10:32:56','512Gb',3,_binary ''),(8,NULL,NULL,NULL,NULL,'1Tb',4,_binary ''),(9,NULL,NULL,NULL,NULL,'512Gb',4,_binary ''),(10,NULL,NULL,NULL,NULL,'128Gb',5,_binary ''),(11,NULL,NULL,NULL,NULL,'256Gb',5,_binary ''),(12,NULL,NULL,NULL,NULL,'256Gb',6,_binary '');
/*!40000 ALTER TABLE `memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `quantity` tinyint NOT NULL,
  `color_id` int NOT NULL,
  `memory_id` int NOT NULL,
  `order_id` bigint NOT NULL,
  `seri_id` bigint NOT NULL,
  `address_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlpk2b92g4nhmkhbyalc040rv8` (`color_id`),
  KEY `FKhfdt8i2nbikgb5p1b1djwvgfo` (`memory_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FKiqmfhnrxa28elv0336o2d9smy` (`seri_id`),
  KEY `FK27vqmwve30hvoewnwtxyjnx4g` (`address_id`),
  CONSTRAINT `FK27vqmwve30hvoewnwtxyjnx4g` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKhfdt8i2nbikgb5p1b1djwvgfo` FOREIGN KEY (`memory_id`) REFERENCES `memory` (`id`),
  CONSTRAINT `FKiqmfhnrxa28elv0336o2d9smy` FOREIGN KEY (`seri_id`) REFERENCES `seri` (`id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKlpk2b92g4nhmkhbyalc040rv8` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,'2023-08-03 13:18:15',1,'2023-08-03 13:18:15',1,7,3,4,1,1),(2,1,'2023-08-03 13:33:37',1,'2023-08-03 13:33:37',1,7,3,5,1,1),(3,1,'2023-08-03 13:33:37',1,'2023-08-03 13:33:37',1,9,9,5,11,1),(4,3,'2023-09-11 17:09:44',3,'2023-09-11 17:09:44',1,14,12,6,16,4),(5,3,'2023-09-11 17:11:45',3,'2023-09-11 17:11:45',1,11,10,7,13,4),(6,3,'2023-09-13 09:58:24',3,'2023-09-13 09:58:24',1,6,1,8,1,4),(7,3,'2023-09-14 15:14:13',3,'2023-09-14 15:14:13',1,7,2,9,1,4),(8,3,'2023-09-15 09:33:59',3,'2023-09-15 09:33:59',1,17,6,10,7,5),(9,3,'2023-09-15 09:33:59',3,'2023-09-15 09:33:59',1,7,1,10,1,5),(10,3,'2023-09-15 09:33:59',3,'2023-09-15 09:33:59',1,7,1,10,1,5),(11,3,'2023-09-15 09:33:59',3,'2023-09-15 09:33:59',1,7,1,10,1,5),(12,3,'2023-09-15 09:33:59',3,'2023-09-15 09:33:59',1,11,11,10,13,5),(13,3,'2023-09-15 09:39:53',3,'2023-09-15 09:39:53',1,8,8,11,10,5),(14,3,'2023-09-15 09:39:53',3,'2023-09-15 09:39:53',1,12,12,11,16,5),(15,3,'2023-09-15 09:39:53',3,'2023-09-15 09:39:53',1,11,10,11,13,5),(16,3,'2023-09-15 09:57:58',3,'2023-09-15 09:57:58',1,12,12,12,16,5),(17,3,'2023-09-15 09:57:58',3,'2023-09-15 09:57:58',1,6,1,12,1,5),(18,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,15,4,13,4,6),(19,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,15,4,13,4,6),(20,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,15,4,13,4,6),(21,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,16,5,13,4,6),(22,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,16,4,13,4,6),(23,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,19,5,13,4,6),(24,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,11,11,13,13,6),(25,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,11,11,13,13,6),(26,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',1,11,11,13,13,6),(27,3,'2023-09-15 11:48:37',3,'2023-09-15 11:48:37',1,7,2,14,1,6),(28,3,'2023-09-15 11:49:11',3,'2023-09-15 11:49:11',1,12,12,15,16,6),(29,7,'2023-09-15 13:54:33',7,'2023-09-15 13:54:33',1,12,12,16,16,7),(30,7,'2023-09-15 13:54:33',7,'2023-09-15 13:54:33',1,12,12,16,16,7),(31,7,'2023-09-15 13:54:33',7,'2023-09-15 13:54:33',1,12,12,16,16,7),(32,7,'2023-09-15 14:10:08',7,'2023-09-15 14:10:08',1,12,12,17,16,7),(33,7,'2023-09-15 14:10:08',7,'2023-09-15 14:10:08',1,12,12,17,16,7),(34,7,'2023-09-15 14:10:08',7,'2023-09-15 14:10:08',1,12,12,17,16,7),(35,3,'2023-09-18 14:47:12',3,'2023-09-18 14:47:12',1,13,12,18,16,6);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `payment_status` bit(1) DEFAULT NULL,
  `receive_date` date DEFAULT NULL,
  `total` decimal(19,2) NOT NULL,
  `payment_method_id` bigint NOT NULL,
  `promotion_id` bigint DEFAULT NULL,
  `status_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgeqwl6x0iadp9e2459uh3o8fv` (`payment_method_id`),
  KEY `FKkl19lst67x545047o4n1d0jpv` (`promotion_id`),
  KEY `FKnoettwqr56yaai4i8nwxg4huo` (`status_id`),
  KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKgeqwl6x0iadp9e2459uh3o8fv` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `FKkl19lst67x545047o4n1d0jpv` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`),
  CONSTRAINT `FKnoettwqr56yaai4i8nwxg4huo` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,1,'2023-08-03 13:18:15',1,'2023-08-03 13:18:15',_binary '','2023-06-12',27440000.00,1,1,1,1),(5,1,'2023-08-03 13:33:37',1,'2023-08-03 13:33:37',_binary '\0',NULL,46430000.00,4,1,1,1),(6,3,'2023-09-11 17:09:44',3,'2023-09-11 17:11:59',_binary '','2023-09-12',14490000.00,3,1,8,3),(7,3,'2023-09-11 17:11:45',3,'2023-09-11 17:11:45',_binary '','2023-09-12',6890000.00,1,1,1,3),(8,3,'2023-09-13 09:58:24',3,'2023-09-13 09:58:37',_binary '','2023-09-14',27440000.00,1,1,8,3),(9,3,'2023-09-14 15:14:13',3,'2023-09-14 15:14:43',_binary '\0','2023-09-15',27440000.00,4,1,8,3),(10,3,'2023-09-15 09:33:59',3,'2023-09-15 09:59:45',_binary '\0','2023-09-16',117050000.00,4,NULL,8,3),(11,3,'2023-09-15 09:39:53',3,'2023-09-15 09:58:20',_binary '','2023-09-16',40570000.00,1,NULL,8,3),(12,3,'2023-09-15 09:57:58',3,'2023-09-15 09:58:12',_binary '','2023-09-16',42130000.00,3,NULL,8,3),(13,3,'2023-09-15 11:37:15',3,'2023-09-15 11:37:15',_binary '\0','2023-09-16',55520000.00,4,NULL,1,3),(14,3,'2023-09-15 11:48:37',3,'2023-09-15 11:48:37',_binary '','2023-09-16',27540000.00,1,NULL,1,3),(15,3,'2023-09-15 11:49:11',3,'2023-09-15 11:49:11',_binary '\0','2023-09-16',14590000.00,4,NULL,1,3),(16,7,'2023-09-15 13:54:33',7,'2023-09-15 13:54:33',_binary '','2023-09-16',43770000.00,1,NULL,1,7),(17,7,'2023-09-15 14:10:08',7,'2023-09-15 14:10:08',_binary '','2023-09-16',43770000.00,1,NULL,1,7),(18,3,'2023-09-18 14:47:12',3,'2023-09-18 14:47:21',_binary '','2023-09-19',14590000.00,1,NULL,8,3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,NULL,'2023-08-03 12:14:21',NULL,'2023-08-03 12:14:21','Momo',_binary ''),(2,NULL,'2023-08-03 12:14:21',NULL,'2023-08-03 12:14:21','VNPay',_binary ''),(3,NULL,'2023-08-03 12:14:21',NULL,'2023-08-03 12:14:21','Banking',_binary ''),(4,NULL,'2023-08-03 12:14:21',NULL,'2023-08-03 12:14:21','Cash',_binary '');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` varchar(700) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `status` tinyint DEFAULT NULL,
  `stocks` tinyint NOT NULL,
  `views` int DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `manufacturer_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKowomku74u72o6h8q0khj7id8q` (`category_id`),
  KEY `FK89igr5j06uw5ps04djxgom0l1` (`manufacturer_id`),
  CONSTRAINT `FK89igr5j06uw5ps04djxgom0l1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`),
  CONSTRAINT `FKowomku74u72o6h8q0khj7id8q` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,NULL,NULL,NULL,'2023-09-15 15:13:22','Ra mắt 2023','Xiaomi 13 Pro 5G',27540000.00,1,3,2611,1,2),(2,NULL,NULL,NULL,'2023-09-15 11:37:16','Ra mắt 2023','Samsung Galaxy A14 4G',5775000.00,1,3,1234,1,3),(3,NULL,NULL,NULL,'2023-09-15 15:17:09','Ra mắt 2023','Xiaomi 13Pro 5G',27540000.00,1,3,325,1,2),(4,NULL,NULL,NULL,'2023-09-15 10:41:12','Version2021','MacBook Air 13',18990000.00,1,3,596,2,1),(5,NULL,NULL,NULL,'2023-09-15 15:17:28','Version 2022','Samsung Galaxy Tab A8',6990000.00,1,3,1481,3,3),(6,NULL,NULL,NULL,'2023-09-18 14:48:40','Ra mắt 2023',' iPad Air 5 M1',14590000.00,1,3,1462,3,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tech`
--

DROP TABLE IF EXISTS `product_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tech` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `info` varchar(1200) NOT NULL,
  `is_primary` tinyint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `technical_id` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKidn8npnt1jmrbrfm2rjauu0ea` (`product_id`),
  KEY `FKnqihv903lnpmg0e8v2dsadbld` (`technical_id`),
  CONSTRAINT `FKidn8npnt1jmrbrfm2rjauu0ea` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKnqihv903lnpmg0e8v2dsadbld` FOREIGN KEY (`technical_id`) REFERENCES `technical` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tech`
--

LOCK TABLES `product_tech` WRITE;
/*!40000 ALTER TABLE `product_tech` DISABLE KEYS */;
INSERT INTO `product_tech` VALUES (1,NULL,NULL,NULL,NULL,'<ul><li>Công nghệ màn hình:OLED</li><li>Độ phân giải:2796 x 1290 Pixels</li><li>Màn hình rộng:6.7\" - Tần số quét 120 Hz</li><li>Độ sáng tối đa:2000 nits</li><li>Mặt kính cảm ứng:Kính cường lực Ceramic Shield</li></ul>',1,1,1,_binary ''),(2,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:Chính 48 MP & Phụ 12 MP, 12 MP</li><li>Quay phim:<ul><li>FullHD 1080p@60fps</li><li>FullHD 1080p@30fps</li><li>4K 2160p@24fps</li><li>4K 2160p@30fps</li><li>4K 2160p@60fps</li><li>HD 720p@30fps</li></ul></li><li>Đèn Flash:Có</li><li>Tính năng:<ul><li>Chế độ hành động (Action Mode)</li><li>Zoom quang học</li><li>Siêu cận (Macro)</li><li>Live Photo</li><li>Bộ lọc màu</li><li>Smart HDR 4</li><li>Dolby Vision HDR</li><li>Zoom quang học</li><li>Siêu cận (Macro)</li><li>Trôi nhanh thời gian (Time Lapse)</li><li>Góc siêu rộng (Ultrawide)</li><li>Deep Fusion</li><li>Cinematic</li><li>Zoom quang học</li><li>Toàn cảnh (Panorama)</li><li>Chống rung quang học (OIS)</li><li>Ban đêm (Night Mode)</li><li>Quay chậm (Slow Motion)</li><li>Xóa phông</li><li>Zoom kỹ thuật số</li></ul></li></ul>',0,1,2,_binary ''),(3,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:12 MP</li><li>Tính năng:<ul><li>Quay video 4K</li><li>Cinematic</li><li>Trôi nhanh thời gian (Time Lapse)</li><li>Tự động lấy nét (AF)</li><li>Xóa phông</li><li>Quay chậm (Slow Motion)</li><li>Live Photo</li><li>Smart HDR 4</li><li>Bộ lọc màu</li><li>Retina Flash</li><li>Chụp đêm</li></ul></li></ul>',0,1,3,_binary ''),(4,NULL,NULL,NULL,NULL,'<ul><li>Hệ điều hành:iOS 16</li><li>Chip xử lý (CPU):Apple A16 Bionic 6 nhân</li><li>Tốc độ CPU:3.46 GHz</li><li>Chip đồ họa (GPU):Apple GPU 5 nhân</li></ul>	',0,1,4,_binary ''),(5,NULL,NULL,NULL,NULL,'<ul><li>RAM:6 GB</li><li>Dung lượng lưu trữ:128 GB</li><li>Dung lượng còn lại (khả dụng) khoảng:113 GB</li><li>Danh bạ:Không giới hạn</li></ul>',0,1,5,_binary ''),(6,NULL,NULL,NULL,NULL,'<ul><li>Mạng di động:Hỗ trợ 5G</li><li>SIM:1 Nano SIM & 1 eSIM</li><li>Wifi:<ul><li>Wi-Fi hotspot</li><li>Wi-Fi 802.11 a/b/g/n/ac/ax</li><li>Wi-Fi MIMO</li></ul></li><li>GPS:<ul><li>GLONASS</li><li>GPS</li><li>GALILEO</li><li>QZSS</li><li>BEIDOU</li></ul></li><li>Bluetooth:v5.3</li><li>Cổng kết nối/sạc:Lightning</li><li>Jack tai nghe:Lightning</li><li>Kết nối khác:NFC</li></ul>',0,1,6,_binary ''),(7,NULL,NULL,NULL,NULL,'<ul><li>Dung lượng pin:4323 mAh</li><li>Loại pin:Li-Ion</li><li>Hỗ trợ sạc tối đa:20 W</li><li>Công nghệ pin:<ul><li>Sạc không dây</li><li>Sạc không dây MagSafe</li><li>Sạc pin nhanh</li><li>Tiết kiệm pin</li></ul></li></ul>',0,1,7,_binary ''),(8,NULL,NULL,NULL,NULL,'<ul><li>Bảo mật nâng cao:Mở khoá khuôn mặt Face ID</li><li>Tính năng đặc biệt:<ul><li>Phát hiện va chạm (Crash Detection)</li><li>Loa kép</li><li>Màn hình luôn hiển thị AOD</li><li>Chạm 2 lần sáng màn hình</li><li>Apple Pay</li></ul></li><li>Kháng nước, bụi:IP68</li><li>Ghi âm:Ghi âm mặc định</li><li>Xem phim:H.264(MPEG4-AVC)</li><li>Nghe nhạc:<ul><li>AAC</li><li>MP3</li><li>ALAC</li></ul></li></ul>',0,1,8,_binary ''),(9,NULL,NULL,NULL,NULL,'<ul><li>Thiết kế:Nguyên khối</li><li>Chất liệu:Khung thép không gỉ & Mặt lưng kính cường lực</li><li>Kích thước, khối lượng:Dài 160.7 mm - Ngang 77.6 mm - Dày 7.85 mm - Nặng 240 g</li><li>Thời điểm ra mắt:09/2022</li></ul>',0,1,9,_binary ''),(10,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Công nghệ màn hình:PLS LCD</li><li>Độ phân giải:Full HD+ (1080 x 2408 Pixels)</li><li>Màn hình rộng:6.6\" - Tần số quét 60 Hz</li><li>Độ sáng tối đa:400 nits</li><li>Mặt kính cảm ứng:Kính thường</li></ul>',1,2,1,_binary ''),(11,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Độ phân giải:Chính 50 MP & Phụ 5 MP, 2 MP</li><li>Quay phim:<ul><li> FullHD 1080p@30fps</li> <li>HD 720p@30fps</li> </ul></li> <li>Đèn Flash:Có</li> <li>Tính năng:<ul> <li>Chuyên nghiệp (Pro)</li> <li>HDR</li> <li>Siêu độ phân giải</li> <li>Nhãn dán (AR Stickers)</li> <li>Làm đẹp</li> <li>Siêu cận (Macro)</li> <li>Bộ lọc màu</li> <li>Toàn cảnh (Panorama)</li> <li>Tự động lấy nét (AF)</li> <li>Xóa phông</li> <li>Zoom kỹ thuật số</li> </ul></li></ul>',0,2,2,_binary ''),(12,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Độ phân giải:13 MP</li> <li>Tính năng:<ul><li>Làm đẹp</li> <li>Quay video Full HD</li> <li>Góc rộng (Wide)</li> <li>Quay video HD</li> <li>Xóa phông</li> <li>Bộ lọc màu</li> <li>Chụp đêm</li></ul></li></ul>',0,2,3,_binary ''),(13,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Hệ điều hành:Android 13</li> <li>Chip xử lý (CPU):Exynos 850 8 nhân</li> <li>Tốc độ CPU:2.0 GHz</li> <li>Chip đồ họa (GPU):Mali-G52</li></ul>',0,2,4,_binary ''),(14,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>RAM:6 GB</li> <li>Dung lượng lưu trữ:128 GB</li> <li>Dung lượng còn lại (khả dụng) khoảng:105 GB</li> <li>Thẻ nhớ:MicroSD, hỗ trợ tối đa 1 TB</li> <li>Danh bạ:Không giới hạn</li></ul>',0,2,5,_binary ''),(15,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Mạng di động:Hỗ trợ 4G</li> <li>2 Nano SIM</li> <li>Wifi:<ul><li>Dual-band (2.4 GHz/5 GHz)</li> <li>Wi-Fi hotspot</li> <li>Wi-Fi Direct</li> <li>Wi-Fi 802.11 a/b/g/n/ac</li></ul></li> <li>GPS:<ul><li>GLONASS</li> <li>GPS</li><li>GALILEO</li><li>QZSS</li><li>BEIDOU</li></ul> </li><li>Bluetooth:v5.1</li> <li>Cổng kết nối/sạc:Type-C</li><li>Jack tai nghe:3.5 mm</li><li>Kết nối khác:NFC</li></ul>',0,2,6,_binary ''),(16,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Dung lượng pin:5000 mAh</li><li>Loại pin:Li-Po</li>',0,2,7,_binary ''),(17,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Bảo mật nâng cao:Mở khoá khuôn mặt, Mở khóa bằng vân tay</li><li>Tính năng đặc biệt: <ul><li>Chạm 2 lần tắt/sáng màn hình</li> <li>Ứng dụng kép (Nhân bản ứng dụng)</li> <li>Thu nhỏ màn hình sử dụng một tay</li> <li>Chạm 2 lần sáng màn hình</li> <li>Chặn cuộc gọi</li></ul></li> <li>Chặn tin nhắn</li> <li>Âm thanh AKG</li> <li>Đa cửa sổ (chia đôi màn hình)</li> <li>Chế độ trẻ em (Samsung Kids)<ul><li>AAC</li> <li>Âm thanh Dolby Atmos</li> </ul></li> <li>Ghi âm:Ghi âm mặc địnhGhi âm cuộc gọi</li> <li>Radio:Có</li> </ul>',0,2,8,_binary ''),(18,NULL,NULL,NULL,'2023-07-19 10:30:30','<ul><li>Thiết kế:Nguyên khối</li><li>Chất liệu:Khung & Mặt lưng nhựa</li><li>Kích thước, khối lượng:Dài 167.7 mm - Ngang 78 mm - Dày 9.1 mm - Nặng 201 g</li><li>Thời điểm ra mắt:03/2023</li></ul>',0,2,9,_binary ''),(19,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Công nghệ màn hình:AMOLED</li> <li>Độ phân giải:2K+ (1440 x 3200 Pixels)</li> <li>Màn hình rộng:6.73\" - Tần số quét 120 Hz</li> <li>Độ sáng tối đa:1900 nits</li> <li>Mặt kính cảm ứng:Kính cường lực Corning Gorilla Glass Victus</li></ul>',1,3,1,_binary ''),(20,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Độ phân giải:Chính 50 MP & Phụ 50 MP, 50 MP</li> <li>Quay phim:<ul> <li>FullHD 1080p@60fps</li> <li>FullHD 1080p@30fps</li> <li>4K 2160p@24fps</li> <li>4K 2160p@30fps</li> <li>4K 2160p@60fps</li> <li>4K HD 720p@30fps</li> <li>8K 4320p@24fps</li> </ul></li> <li>Đèn Flash:Có</li> <li>Tính năng:<ul> <li>AI Camera</li> <li>Chuyên nghiệp (Pro)</li> <li>Phơi sáng</li> <li>Siêu độ phân giải</li> <li>Làm đẹp</li> <li>Siêu cận (Macro)</li> <li>Google Lens</li> <li>Toàn cảnh (Panorama)</li> <li>Trôi nhanh thời gian (Time Lapse)</li> <li>Chống rung quang học (OIS)</li> <li>Ảnh Raw</li> <li>Ban đêm (Night Mode)</li> <li>Quay chậm (Slow Motion)</li> <li>Xóa phông</li> <li>Zoom kỹ thuật số</li> <li>Xiaomi ProFocus</li> </ul></li></ul>',0,3,2,_binary ''),(21,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Độ phân giải:32 MP</li> <li>Tính năng:<ul><li>Trôi nhanh thời gian (Time Lapse)</li> <li>Làm đẹp</li> <li>Quay video Full HD</li> <li>Góc rộng (Wide)</li> <li>Toàn cảnh (Panorama)</li> <li>Quay video Full HD</li> <li>Xóa phông</li> <li>Quay chậm (Slow Motion)</li> <li>Bộ lọc màu</li> <li>Chụp đêm</li></ul></li></ul>',0,3,3,_binary ''),(22,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Hệ điều hành:Android 13</li> <li>Chip xử lý (CPU):Snapdragon 8 Gen 2 8 nhân</li> <li>Tốc độ CPU:1 nhân 3.2 GHz, 4 nhân 2.8 GHz & 3 nhân 2 GHz</li> <li>Chip đồ họa (GPU):Adreno 740</li></ul>',0,3,4,_binary ''),(23,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>RAM:12 GB</li> <li>Dung lượng lưu trữ:256 GB</li> <li>Dung lượng còn lại (khả dụng) khoảng:240 GB</li> <li>Thẻ nhớ:MicroSD, hỗ trợ tối đa 1 TB</li> <li>Danh bạ:Không giới hạn</li></ul>',0,3,5,_binary ''),(24,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Mạng di động:Hỗ trợ 5G</li> <li>2 Nano SIM</li> <li>Wifi:<ul><li>Dual-band (2.4 GHz/5 GHz)</li> <li>Wi-Fi hotspot</li> <li>Wi-Fi Direct</li> <li>GPS:<ul><li>GLONASS</li> <li>GPS</li><li>GALILEO</li><li>QZSS</li><li>BEIDOU</li></ul> </li><li>Bluetooth:v5.3</li> <li>Cổng kết nối/sạc:Type-C</li><li>Jack tai nghe:3.5 mm</li><li>Kết nối khác:Hồng ngoại, NFC</li></ul>',0,3,6,_binary ''),(25,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Dung lượng pin:4820 mAh</li><li>Loại pin:Li-Po</li> <li>Hỗ trợ sạc tối đa:120 W</li> <li>Công nghệ pin:<ul> <li>Sạc không dây</li> <li>Sạc ngược không dây</li> <li>Sạc pin nhanh</li></ul> </li></ul>',0,3,7,_binary ''),(26,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Bảo mật nâng cao:Mở khoá khuôn mặt, Mở khóa bằng vân tay</li><li>Tính năng đặc biệt: <ul><li>Chạm 2 lần tắt/sáng màn hình</li> <li>Ứng dụng kép (Nhân bản ứng dụng)</li> <li>Khoá ứng dụng</li> <li>Loa kép</li> <li>Trợ lý ảo Google Assistant</li> <li>Không gian thứ hai</li> <li>Theo dõi nhịp tim bằng cảm biến vân tay</li> <li>Công nghệ tản nhiệt LiquidCool</li> <li>Màn hình luôn hiển thị AOD</li> <li>Âm thanh Dolby Atmos</li> <li>Tối ưu game (Game Turbo)</li> <li>Mở rộng bộ nhớ RAM</li> </ul></li> <li>Kháng nước, bụi:IP68</li> <li>Ghi âm:Ghi âm mặc địnhGhi âm cuộc gọi</li> <li>Xem phim:AVI,MP4</li> <li>Nghe nhạc:<ul><li>Midi</li> <li>MP3</li><li>FLAC</li><li>OGG</li> </ul></li> </ul>',0,3,8,_binary ''),(27,NULL,NULL,NULL,'2023-07-19 10:32:56','<ul><li>Thiết kế:Nguyên khối</li><li>Chất liệu:Khung kim loại & Mặt lưng gốm</li><li>Kích thước, khối lượng:Dài 162.9 mm - Ngang 74.6 mm - Dày 8.38 mm - Nặng 229 g</li><li>Thời điểm ra mắt:02/2023</li></ul>',0,3,9,_binary ''),(28,NULL,NULL,NULL,NULL,'<ul><li>Công nghệ màn hình:TFT LCD</li> <li>Độ phân giải:1200 x 1920 Pixels</li> <li>Màn hình rộng:10.5\" - Tần số quét Hãng không công bố</li>',1,4,1,_binary ''),(29,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:Chính 50 MP & Phụ 50 MP, 50 MP</li> <li>Quay phim:<ul> <li>FullHD 1080p@60fps</li> <li>FullHD 1080p@30fps</li> <li>4K 2160p@24fps</li> <li>4K 2160p@30fps</li> <li>4K 2160p@60fps</li> <li>4K HD 720p@30fps</li> <li>8K 4320p@24fps</li> </ul></li> <li>Đèn Flash:Có</li> <li>Tính năng:<ul> <li>AI Camera</li> <li>Chuyên nghiệp (Pro)</li> <li>Phơi sáng</li> <li>Siêu độ phân giải</li> <li>Làm đẹp</li> <li>Siêu cận (Macro)</li> <li>Google Lens</li> <li>Toàn cảnh (Panorama)</li> <li>Trôi nhanh thời gian (Time Lapse)</li> <li>Chống rung quang học (OIS)</li> <li>Ảnh Raw</li> <li>Ban đêm (Night Mode)</li> <li>Quay chậm (Slow Motion)</li> <li>Xóa phông</li> <li>Zoom kỹ thuật số</li> <li>Xiaomi ProFocus</li> </ul></li></ul>',0,4,2,_binary ''),(30,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:32 MP</li> <li>Tính năng:<ul><li>Trôi nhanh thời gian (Time Lapse)</li> <li>Làm đẹp</li> <li>Quay video Full HD</li> <li>Góc rộng (Wide)</li> <li>Toàn cảnh (Panorama)</li> <li>Quay video Full HD</li> <li>Xóa phông</li> <li>Quay chậm (Slow Motion)</li> <li>Bộ lọc màu</li> <li>Chụp đêm</li></ul></li></ul>',0,4,3,_binary ''),(31,NULL,NULL,NULL,NULL,'<ul><li>Hệ điều hành:Android 13</li>',0,4,4,_binary ''),(32,NULL,NULL,NULL,NULL,'<ul><li>RAM:12 GB</li> <li>Dung lượng lưu trữ:256 GB</li> <li>Dung lượng còn lại (khả dụng) khoảng:240 GB</li> <li>Thẻ nhớ:MicroSD, hỗ trợ tối đa 1 TB</li> <li>Danh bạ:Không giới hạn</li></ul>',0,4,5,_binary ''),(33,NULL,NULL,NULL,NULL,'<ul><li>Mạng di động:Hỗ trợ 5G</li> <li>2 Nano SIM</li> <li>Wifi:<ul><li>Dual-band (2.4 GHz/5 GHz)</li> <li>Wi-Fi hotspot</li> <li>Wi-Fi Direct</li> <li>GPS:<ul><li>GLONASS</li> <li>GPS</li><li>GALILEO</li><li>QZSS</li><li>BEIDOU</li></ul> </li><li>Bluetooth:v5.3</li> <li>Cổng kết nối/sạc:Type-C</li><li>Jack tai nghe:3.5 mm</li><li>Kết nối khác:Hồng ngoại, NFC</li></ul>',0,4,6,_binary ''),(34,NULL,NULL,NULL,NULL,'<ul><li>Dung lượng pin:4820 mAh</li><li>Loại pin:Li-Po</li> <li>Hỗ trợ sạc tối đa:120 W</li> <li>Công nghệ pin:<ul> <li>Sạc không dây</li> <li>Sạc ngược không dây</li> <li>Sạc pin nhanh</li></ul> </li></ul>',0,4,7,_binary ''),(35,NULL,NULL,NULL,NULL,'<ul><li>Bảo mật nâng cao:Mở khoá khuôn mặt, Mở khóa bằng vân tay</li><li>Tính năng đặc biệt: <ul><li>Chạm 2 lần tắt/sáng màn hình</li> <li>Ứng dụng kép (Nhân bản ứng dụng)</li> <li>Khoá ứng dụng</li> <li>Loa kép</li> <li>Trợ lý ảo Google Assistant</li> <li>Không gian thứ hai</li> <li>Theo dõi nhịp tim bằng cảm biến vân tay</li> <li>Công nghệ tản nhiệt LiquidCool</li> <li>Màn hình luôn hiển thị AOD</li> <li>Âm thanh Dolby Atmos</li> <li>Tối ưu game (Game Turbo)</li> <li>Mở rộng bộ nhớ RAM</li> </ul></li> <li>Kháng nước, bụi:IP68</li> <li>Ghi âm:Ghi âm mặc địnhGhi âm cuộc gọi</li> <li>Xem phim:AVI,MP4</li> <li>Nghe nhạc:<ul><li>Midi</li> <li>MP3</li><li>FLAC</li><li>OGG</li> </ul></li> </ul>',0,4,8,_binary ''),(36,NULL,NULL,NULL,NULL,'<ul><li>Thiết kế:Nguyên khối</li><li>Chất liệu:Khung kim loại & Mặt lưng gốm</li><li>Kích thước, khối lượng:Dài 162.9 mm - Ngang 74.6 mm - Dày 8.38 mm - Nặng 229 g</li><li>Thời điểm ra mắt:02/2023</li></ul>',0,4,9,_binary ''),(37,NULL,NULL,NULL,NULL,'<ul><li>Công nghệ màn hình:OLED</li><li>Độ phân giải:2796 x 1290 Pixels</li><li>Màn hình rộng:6.7\" - Tần số quét 120 Hz</li><li>Độ sáng tối đa:2000 nits</li><li>Mặt kính cảm ứng:Kính cường lực Ceramic Shield</li></ul>',1,5,1,_binary ''),(38,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:Chính 48 MP & Phụ 12 MP, 12 MP</li><li>Quay phim:<ul><li>FullHD 1080p@60fps</li><li>FullHD 1080p@30fps</li><li>4K 2160p@24fps</li><li>4K 2160p@30fps</li><li>4K 2160p@60fps</li><li>HD 720p@30fps</li></ul></li><li>Đèn Flash:Có</li><li>Tính năng:<ul><li>Chế độ hành động (Action Mode)</li><li>Zoom quang học</li><li>Siêu cận (Macro)</li><li>Live Photo</li><li>Bộ lọc màu</li><li>Smart HDR 4</li><li>Dolby Vision HDR</li><li>Zoom quang học</li><li>Siêu cận (Macro)</li><li>Trôi nhanh thời gian (Time Lapse)</li><li>Góc siêu rộng (Ultrawide)</li><li>Deep Fusion</li><li>Cinematic</li><li>Zoom quang học</li><li>Toàn cảnh (Panorama)</li><li>Chống rung quang học (OIS)</li><li>Ban đêm (Night Mode)</li><li>Quay chậm (Slow Motion)</li><li>Xóa phông</li><li>Zoom kỹ thuật số</li></ul></li></ul>',0,5,2,_binary ''),(39,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:13 MP</li> <li>Tính năng:<ul><li>Làm đẹp</li> <li>Quay video Full HD</li> <li>Góc rộng (Wide)</li> <li>Quay video HD</li> <li>Xóa phông</li> <li>Bộ lọc màu</li> <li>Chụp đêm</li></ul></li></ul>',0,5,3,_binary ''),(40,NULL,NULL,NULL,NULL,'<ul><li>Hệ điều hành:iOS 16</li><li>Chip xử lý (CPU):Apple A16 Bionic 6 nhân</li><li>Tốc độ CPU:3.46 GHz</li><li>Chip đồ họa (GPU):Apple GPU 5 nhân</li></ul>	',0,5,4,_binary ''),(41,NULL,NULL,NULL,NULL,'<ul><li>RAM:6 GB</li><li>Dung lượng lưu trữ:128 GB</li><li>Dung lượng còn lại (khả dụng) khoảng:113 GB</li><li>Danh bạ:Không giới hạn</li></ul>',0,5,5,_binary ''),(42,NULL,NULL,NULL,NULL,'<ul><li>Mạng di động:Hỗ trợ 5G</li> <li>2 Nano SIM</li> <li>Wifi:<ul><li>Dual-band (2.4 GHz/5 GHz)</li> <li>Wi-Fi hotspot</li> <li>Wi-Fi Direct</li> <li>GPS:<ul><li>GLONASS</li> <li>GPS</li><li>GALILEO</li><li>QZSS</li><li>BEIDOU</li></ul> </li><li>Bluetooth:v5.3</li> <li>Cổng kết nối/sạc:Type-C</li><li>Jack tai nghe:3.5 mm</li><li>Kết nối khác:Hồng ngoại, NFC</li></ul>',0,5,6,_binary ''),(43,NULL,NULL,NULL,NULL,'<ul><li>Dung lượng pin:5000 mAh</li><li>Loại pin:Li-Po</li>',0,5,7,_binary ''),(44,NULL,NULL,NULL,NULL,'<ul><li>Bảo mật nâng cao:Mở khoá khuôn mặt Face ID</li><li>Tính năng đặc biệt:<ul><li>Phát hiện va chạm (Crash Detection)</li><li>Loa kép</li><li>Màn hình luôn hiển thị AOD</li><li>Chạm 2 lần sáng màn hình</li><li>Apple Pay</li></ul></li><li>Kháng nước, bụi:IP68</li><li>Ghi âm:Ghi âm mặc định</li><li>Xem phim:H.264(MPEG4-AVC)</li><li>Nghe nhạc:<ul><li>AAC</li><li>MP3</li><li>ALAC</li></ul></li></ul>',0,5,8,_binary ''),(45,NULL,NULL,NULL,NULL,'<ul><li>Thiết kế:Nguyên khối</li><li>Chất liệu:Khung thép không gỉ & Mặt lưng kính cường lực</li><li>Kích thước, khối lượng:Dài 160.7 mm - Ngang 77.6 mm - Dày 7.85 mm - Nặng 240 g</li><li>Thời điểm ra mắt:09/2022</li></ul>',0,5,9,_binary ''),(46,NULL,NULL,NULL,NULL,'<ul><li>Công nghệ màn hình:PLS LCD</li><li>Độ phân giải:Full HD+ (1080 x 2408 Pixels)</li><li>Màn hình rộng:6.6\" - Tần số quét 60 Hz</li><li>Độ sáng tối đa:400 nits</li><li>Mặt kính cảm ứng:Kính thường</li></ul>',1,6,1,_binary ''),(47,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:Chính 50 MP & Phụ 5 MP, 2 MP</li><li>Quay phim:<ul><li> FullHD 1080p@30fps</li> <li>HD 720p@30fps</li> </ul></li> <li>Đèn Flash:Có</li> <li>Tính năng:<ul> <li>Chuyên nghiệp (Pro)</li> <li>HDR</li> <li>Siêu độ phân giải</li> <li>Nhãn dán (AR Stickers)</li> <li>Làm đẹp</li> <li>Siêu cận (Macro)</li> <li>Bộ lọc màu</li> <li>Toàn cảnh (Panorama)</li> <li>Tự động lấy nét (AF)</li> <li>Xóa phông</li> <li>Zoom kỹ thuật số</li> </ul></li></ul>',0,6,2,_binary ''),(48,NULL,NULL,NULL,NULL,'<ul><li>Độ phân giải:12 MP</li><li>Tính năng:<ul><li>Quay video 4K</li><li>Cinematic</li><li>Trôi nhanh thời gian (Time Lapse)</li><li>Tự động lấy nét (AF)</li><li>Xóa phông</li><li>Quay chậm (Slow Motion)</li><li>Live Photo</li><li>Smart HDR 4</li><li>Bộ lọc màu</li><li>Retina Flash</li><li>Chụp đêm</li></ul></li></ul>',0,6,3,_binary ''),(49,NULL,NULL,NULL,NULL,'<ul><li>Hệ điều hành:Android 13</li> <li>Chip xử lý (CPU):Snapdragon 8 Gen 2 8 nhân</li> <li>Tốc độ CPU:1 nhân 3.2 GHz, 4 nhân 2.8 GHz & 3 nhân 2 GHz</li> <li>Chip đồ họa (GPU):Adreno 740</li></ul>',0,6,4,_binary ''),(50,NULL,NULL,NULL,NULL,'<ul><li>RAM:6 GB</li><li>Dung lượng lưu trữ:128 GB</li><li>Dung lượng còn lại (khả dụng) khoảng:113 GB</li><li>Danh bạ:Không giới hạn</li></ul>',0,6,5,_binary ''),(51,NULL,NULL,NULL,NULL,'<ul><li>Mạng di động:Hỗ trợ 4G</li> <li>2 Nano SIM</li> <li>Wifi:<ul><li>Dual-band (2.4 GHz/5 GHz)</li> <li>Wi-Fi hotspot</li> <li>Wi-Fi Direct</li> <li>Wi-Fi 802.11 a/b/g/n/ac</li></ul></li> <li>GPS:<ul><li>GLONASS</li> <li>GPS</li><li>GALILEO</li><li>QZSS</li><li>BEIDOU</li></ul> </li><li>Bluetooth:v5.1</li> <li>Cổng kết nối/sạc:Type-C</li><li>Jack tai nghe:3.5 mm</li><li>Kết nối khác:NFC</li></ul>',0,6,6,_binary ''),(52,NULL,NULL,NULL,NULL,'<ul><li>Dung lượng pin:5000 mAh</li><li>Loại pin:Li-Po</li>',0,6,7,_binary ''),(53,NULL,NULL,NULL,NULL,'<ul><li>Bảo mật nâng cao:Mở khoá khuôn mặt, Mở khóa bằng vân tay</li><li>Tính năng đặc biệt: <ul><li>Chạm 2 lần tắt/sáng màn hình</li> <li>Ứng dụng kép (Nhân bản ứng dụng)</li> <li>Khoá ứng dụng</li> <li>Loa kép</li> <li>Trợ lý ảo Google Assistant</li> <li>Không gian thứ hai</li> <li>Theo dõi nhịp tim bằng cảm biến vân tay</li> <li>Công nghệ tản nhiệt LiquidCool</li> <li>Màn hình luôn hiển thị AOD</li> <li>Âm thanh Dolby Atmos</li> <li>Tối ưu game (Game Turbo)</li> <li>Mở rộng bộ nhớ RAM</li> </ul></li> <li>Kháng nước, bụi:IP68</li> <li>Ghi âm:Ghi âm mặc địnhGhi âm cuộc gọi</li> <li>Xem phim:AVI,MP4</li> <li>Nghe nhạc:<ul><li>Midi</li> <li>MP3</li><li>FLAC</li><li>OGG</li> </ul></li> </ul>',0,6,8,_binary ''),(54,NULL,NULL,NULL,NULL,'<ul><li>Thiết kế:Nguyên khối</li><li>Chất liệu:Khung thép không gỉ & Mặt lưng kính cường lực</li><li>Kích thước, khối lượng:Dài 160.7 mm - Ngang 77.6 mm - Dày 7.85 mm - Nặng 240 g</li><li>Thời điểm ra mắt:09/2023</li></ul>',0,6,9,_binary '');
/*!40000 ALTER TABLE `product_tech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `campagn` bit(1) NOT NULL,
  `discount` tinyint DEFAULT NULL,
  `discount_code` varchar(7) NOT NULL,
  `expire_date` date DEFAULT NULL,
  `max_get` decimal(19,2) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `total_purchase` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,2,'2023-08-03 12:23:21',2,'2023-08-03 12:23:21',_binary '\0',40,'55IJ5OL','2023-11-11',100000.00,_binary '',700000.00),(2,2,'2023-08-03 13:44:06',2,'2023-08-03 13:44:06',_binary '\0',50,'CMT8145','2023-11-11',100000.00,_binary '',100000.00);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `rating` tinyint NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiyof1sindb9qiqr9o8npj8klt` (`product_id`),
  KEY `FKiyf57dy48lyiftdrf7y87rnxi` (`user_id`),
  CONSTRAINT `FKiyf57dy48lyiftdrf7y87rnxi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKiyof1sindb9qiqr9o8npj8klt` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,'2023-08-03 13:40:11',1,'2023-08-03 13:40:11','quá xinh đẹp, thật tuyệt vời',1,1,1,_binary ''),(2,1,'2023-08-03 13:40:53',1,'2023-08-03 13:40:53','11 điểm',5,1,1,_binary '\0'),(3,3,'2023-08-07 09:29:23',3,'2023-08-07 09:29:23','Thật là yomost',3,6,3,_binary ''),(4,3,'2023-08-07 09:29:47',3,'2023-08-07 09:29:47','Thật là yomost',3,6,3,_binary ''),(5,3,'2023-08-07 09:30:08',3,'2023-09-14 15:41:12','456',3,5,3,_binary ''),(6,3,'2023-08-07 09:30:38',3,'2023-08-10 15:08:16','Haha',4,5,3,_binary ''),(7,3,'2023-08-07 09:32:00',3,'2023-08-07 09:32:00','Haha',5,4,3,_binary ''),(8,3,'2023-08-07 15:12:04',3,'2023-08-07 15:12:04','Haha',5,4,3,_binary '\0'),(9,3,'2023-08-07 15:43:02',3,'2023-08-07 15:43:02','Haha',5,4,3,_binary ''),(10,3,'2023-08-07 22:24:11',3,'2023-08-07 22:24:11','Haha',5,2,3,_binary ''),(11,3,'2023-08-07 22:28:35',3,'2023-08-07 22:28:35','FFFFF',5,2,3,_binary ''),(12,3,'2023-08-07 22:53:00',3,'2023-08-07 22:53:00','jjjjjjjjjjjjj',2,2,3,_binary ''),(13,3,'2023-08-07 22:56:19',3,'2023-09-15 11:01:43','nt',5,2,3,_binary ''),(14,3,'2023-08-07 22:56:54',3,'2023-08-14 20:26:47','a di da phat',5,2,3,_binary ''),(15,3,'2023-08-09 09:49:18',3,'2023-08-10 15:33:12','Haha',5,6,3,_binary ''),(16,3,'2023-08-09 14:32:57',3,'2023-08-09 14:32:57','haha',5,2,3,_binary ''),(17,3,'2023-08-09 14:33:11',3,'2023-08-09 14:33:11','css',5,2,3,_binary ''),(18,3,'2023-08-09 14:41:35',3,'2023-08-09 14:41:35','tttyyyy',5,1,3,_binary ''),(19,3,'2023-08-09 14:53:46',3,'2023-08-10 15:36:46','tr',5,1,3,_binary ''),(20,3,'2023-08-09 14:55:03',3,'2023-08-09 14:55:03','45',0,3,3,_binary ''),(21,3,'2023-08-09 15:09:17',3,'2023-08-09 15:09:17','dsdsdsds',5,2,3,_binary ''),(22,3,'2023-08-09 15:57:38',3,'2023-08-09 15:57:38','',0,3,3,_binary ''),(23,3,'2023-08-09 15:57:50',3,'2023-08-09 15:57:50','cscdcds',5,3,3,_binary ''),(24,3,'2023-08-09 15:59:06',3,'2023-08-09 15:59:06','fsdfsdfsd',5,3,3,_binary ''),(25,3,'2023-08-09 15:59:47',3,'2023-08-09 15:59:47','qwert',5,3,3,_binary ''),(26,3,'2023-08-09 16:00:50',3,'2023-08-09 16:00:50','Haha',5,2,3,_binary ''),(27,3,'2023-08-09 16:01:47',3,'2023-08-09 16:01:47','Haha',5,3,3,_binary ''),(28,3,'2023-08-09 16:01:55',3,'2023-08-09 16:01:55','Haha',5,3,3,_binary ''),(29,3,'2023-08-09 16:03:10',3,'2023-08-09 16:03:10','meme',5,3,3,_binary ''),(30,3,'2023-08-09 16:03:45',3,'2023-08-09 16:03:45','1111111111',5,3,3,_binary ''),(31,3,'2023-08-09 16:04:17',3,'2023-08-14 16:15:54','Amendaphat',5,3,3,_binary ''),(32,3,'2023-08-09 16:19:18',3,'2023-09-15 15:00:56','meoz meoz',5,6,3,_binary ''),(33,3,'2023-08-09 16:34:56',3,'2023-08-09 22:33:50','meo meo',5,1,3,_binary '\0'),(34,3,'2023-08-09 16:35:04',3,'2023-08-10 15:36:03','lala',5,1,3,_binary ''),(35,3,'2023-08-09 16:35:14',3,'2023-08-10 15:36:29','lala',5,1,3,_binary ''),(36,3,'2023-08-09 16:36:06',3,'2023-08-09 16:36:06','sdsd',3,1,3,_binary ''),(37,3,'2023-08-09 16:44:41',3,'2023-08-09 16:44:41','meo meo',1,4,3,_binary ''),(38,3,'2023-08-09 16:48:03',3,'2023-08-09 22:34:14','com meo',5,1,3,_binary '\0'),(39,3,'2023-08-10 10:16:26',3,'2023-08-10 10:16:26','456',3,1,3,_binary ''),(40,3,'2023-08-10 10:16:57',3,'2023-08-10 10:16:57','456',3,2,3,_binary ''),(41,3,'2023-08-10 10:48:32',3,'2023-08-10 10:48:32','456789',5,1,3,_binary ''),(42,3,'2023-08-10 11:31:06',3,'2023-08-10 11:31:06','qwerty',5,1,3,_binary ''),(43,3,'2023-08-10 11:32:37',3,'2023-08-10 11:32:37','con cho',5,1,3,_binary ''),(44,3,'2023-08-10 11:40:22',3,'2023-08-10 11:40:22','con gian',5,1,3,_binary ''),(45,3,'2023-08-10 11:41:37',3,'2023-08-10 15:38:56','con chuot cong',3,1,3,_binary ''),(46,3,'2023-09-11 17:08:58',3,'2023-09-11 17:08:58','454dsa64sd',5,6,3,_binary ''),(47,3,'2023-09-15 10:40:21',3,'2023-09-15 10:40:21','nn',5,2,3,_binary ''),(48,3,'2023-09-15 11:01:19',3,'2023-09-15 11:01:19','cl',5,2,3,_binary ''),(49,3,'2023-09-15 11:01:30',3,'2023-09-15 11:01:30','f',3,2,3,_binary ''),(50,7,'2023-09-15 14:42:30',7,'2023-09-15 15:02:07','hahaha',4,6,7,_binary ''),(51,7,'2023-09-15 15:02:32',7,'2023-09-15 15:03:20','ok gud ',4,6,7,_binary ''),(52,7,'2023-09-15 15:13:21',7,'2023-09-15 15:13:21','abc',4,1,7,_binary ''),(53,7,'2023-09-15 15:15:40',7,'2023-09-15 15:15:40','abc',5,5,7,_binary ''),(54,7,'2023-09-15 15:16:13',7,'2023-09-15 15:16:13','okb',2,5,7,_binary ''),(55,7,'2023-09-15 15:16:25',7,'2023-09-15 15:16:25','te',1,5,7,_binary ''),(56,7,'2023-09-15 15:17:27',7,'2023-09-15 15:17:27','khoaiii',1,5,7,_binary '');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8sewwnpamngi6b1dwaa88askk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,'2023-07-18 10:01:00',NULL,'2023-07-18 10:01:00','Role_Admin'),(2,NULL,'2023-07-18 10:01:00',NULL,'2023-07-18 10:01:00','Role_Customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seri`
--

DROP TABLE IF EXISTS `seri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seri` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaruxjrce1q3ho63parpxhdt3k` (`product_id`),
  CONSTRAINT `FKaruxjrce1q3ho63parpxhdt3k` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seri`
--

LOCK TABLES `seri` WRITE;
/*!40000 ALTER TABLE `seri` DISABLE KEYS */;
INSERT INTO `seri` VALUES (1,NULL,NULL,NULL,NULL,'1638240156',1,_binary ''),(2,NULL,NULL,NULL,NULL,'1429680560',1,_binary ''),(3,NULL,NULL,NULL,NULL,'305393212',1,_binary ''),(4,NULL,NULL,NULL,'2023-07-19 10:30:30','1444837018',2,_binary ''),(5,NULL,NULL,NULL,'2023-07-19 10:30:30','1183129432',2,_binary ''),(6,NULL,NULL,NULL,'2023-07-19 10:30:30','5458949915',2,_binary ''),(7,NULL,NULL,NULL,'2023-07-19 10:32:56','8611659116',3,_binary ''),(8,NULL,NULL,NULL,'2023-07-19 10:32:56','5166305110',3,_binary ''),(9,NULL,NULL,NULL,'2023-07-19 10:32:56','1254674753',3,_binary ''),(10,NULL,NULL,NULL,NULL,'4519727999',4,_binary ''),(11,NULL,NULL,NULL,NULL,'4810647972',4,_binary ''),(12,NULL,NULL,NULL,NULL,'6028679433',4,_binary ''),(13,NULL,NULL,NULL,NULL,'8671245246',5,_binary ''),(14,NULL,NULL,NULL,NULL,'2377108318',5,_binary ''),(15,NULL,NULL,NULL,NULL,'7402581801',5,_binary ''),(16,NULL,NULL,NULL,NULL,'8651460534',6,_binary ''),(17,NULL,NULL,NULL,NULL,'7373666768',6,_binary ''),(18,NULL,NULL,NULL,NULL,'2062838550',6,_binary '');
/*!40000 ALTER TABLE `seri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_reccgx9nr0a8dwv201t44l6pd` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,NULL,'2023-07-18 10:01:00',NULL,'2023-07-18 10:01:00','Active'),(2,NULL,'2023-07-18 10:01:00',NULL,'2023-07-18 10:01:00','Not Active'),(3,NULL,'2023-07-18 10:01:00',NULL,'2023-07-18 10:01:00','Lock'),(4,NULL,'2023-07-18 10:01:00',NULL,'2023-07-18 10:01:00','Disable'),(5,NULL,'2023-07-18 10:01:00',NULL,'2023-07-18 10:01:00','Delete'),(6,NULL,'2023-08-03 12:14:20',NULL,'2023-08-03 12:14:20','Default'),(7,NULL,'2023-08-03 12:14:20',NULL,'2023-08-03 12:14:20','Transport'),(8,NULL,'2023-08-03 12:14:20',NULL,'2023-08-03 12:14:20','Cancel');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technical`
--

DROP TABLE IF EXISTS `technical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technical` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technical`
--

LOCK TABLES `technical` WRITE;
/*!40000 ALTER TABLE `technical` DISABLE KEYS */;
INSERT INTO `technical` VALUES (1,NULL,NULL,NULL,NULL,'Màn hình'),(2,NULL,NULL,NULL,NULL,'Camera sau'),(3,NULL,NULL,NULL,NULL,'Camera trước'),(4,NULL,NULL,NULL,NULL,'Hệ điều hành & CPU'),(5,NULL,NULL,NULL,NULL,'Bộ nhớ & Lưu trữ'),(6,NULL,NULL,NULL,NULL,'Kết nối'),(7,NULL,NULL,NULL,NULL,'Pin & Sạc'),(8,NULL,NULL,NULL,NULL,'Tiện ích'),(9,NULL,NULL,NULL,NULL,'Thông tin chung');
/*!40000 ALTER TABLE `technical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by_user_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_user_id` bigint DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `auth_provider` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `full_name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `gender` tinyint DEFAULT NULL,
  `otp` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `role_id` int NOT NULL,
  `lock_status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'2023-08-03 12:15:23',NULL,'2023-08-03 12:15:23','null','2002-10-31','votien12345@gmail.com','Nguyen Vo Tien',1,NULL,'$2a$10$r4yB/HJrblrZThtW/DHVfu3vWAQlrK12Mf0MIM7aPnSbqr6J42Eua',_binary '\0',2,_binary '\0'),(2,NULL,'2023-08-03 12:15:36',NULL,'2023-08-03 12:15:36','null','2002-10-31','admin@gmail.com','Nguyen Vo Tien',1,NULL,'$2a$10$mN/wsaC/6a85mSgxKEsuW.AwltT7W7gMqenNVQDzyGCstbptGWHnC',_binary '\0',1,_binary '\0'),(3,NULL,'2023-08-04 09:16:08',3,'2023-09-15 10:45:14',NULL,'2001-09-18','yukatanguyen545@gmail.com','yukata',2,'','$2a$10$vJ5zotPLWDW2sTqwMaEoxOHR4oYxRROcHYSm2tlnOlxZj27Nho.SK',_binary '',2,_binary '\0'),(4,NULL,'2023-08-16 16:53:33',NULL,'2023-08-16 17:03:43',NULL,NULL,'duythanh545@gmail.com','Yukata',0,'','$2a$10$z6tbtePzZzWSX5dP7MljgeleiMDerEUadtipg/KM7f5qfukhAZMx.',_binary '',2,_binary '\0'),(5,NULL,'2023-08-16 17:04:26',NULL,'2023-08-16 17:04:26',NULL,NULL,'duythanh@gmail.com','Yukata',0,NULL,'$2a$10$t2wNJoORbUIHLmkefx4SyO2kjwSPuaqDGAwyFJoKsWZEbfufoFUiO',_binary '\0',2,_binary '\0'),(6,NULL,'2023-09-14 10:53:53',NULL,'2023-09-15 09:41:16','string','0029-02-12','duyyen@gmail.com','string',0,'7926','$2a$10$qU1zAi83v6YsBvlwqEYYlOcu0Tj1XOKy0VzbVWkUp1sUhQ1bqLJCy',_binary '\0',2,_binary '\0'),(7,NULL,'2023-09-15 09:29:42',NULL,'2023-09-15 13:13:29',NULL,NULL,'lanhuynh.31191024709@st.ueh.edu.vn','Lan Huynh',0,'','$2a$10$ERWpm39Gs7hf7NvTEYZ8LOEmkybmgc7AhnYZd2pYecczAk2cBftYm',_binary '',2,_binary '\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 21:43:18
