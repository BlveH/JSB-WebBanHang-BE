-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: jsb
-- ------------------------------------------------------
-- Server version	8.0.37

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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `province_id` bigint DEFAULT NULL,
  `district_id` bigint DEFAULT NULL,
  `ward_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ADDRESS_ON_DISTRICT` (`district_id`),
  KEY `FK_ADDRESS_ON_PROVINCE` (`province_id`),
  KEY `FK_ADDRESS_ON_WARD` (`ward_id`),
  CONSTRAINT `FK_ADDRESS_ON_DISTRICT` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  CONSTRAINT `FK_ADDRESS_ON_PROVINCE` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`),
  CONSTRAINT `FK_ADDRESS_ON_WARD` FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-07-29 21:58:33','2024-07-30 14:27:56',NULL,NULL,'140 Commercial Way',7,28,1),(2,'2024-07-22 21:08:28','2024-07-31 07:42:14',NULL,NULL,'9121 Calypso Street',7,26,2),(3,'2024-07-15 21:35:21','2024-07-08 22:22:57',NULL,NULL,'59 Del Sol Road',10,2,3),(4,'2024-07-20 14:32:29','2024-07-27 23:10:58',NULL,NULL,'3918 Bashford Junction',29,1,8937),(5,'2024-07-01 05:12:07','2024-07-21 06:36:16',NULL,NULL,'18726 Delaware Parkway',1,26,4),(6,'2024-07-26 06:31:10','2024-07-01 07:54:22',NULL,NULL,'83027 Ludington Center',6,25,NULL),(7,'2024-07-13 06:41:51','2024-07-19 08:19:18',NULL,NULL,'85044 Troy Place',2,28,NULL),(8,'2024-07-28 17:20:12','2024-07-22 14:17:25',NULL,NULL,'72 Thackeray Plaza',4,23,NULL),(9,'2024-07-23 15:51:19','2024-07-15 17:31:00',NULL,NULL,'92473 Russell Drive',4,17,NULL),(10,'2024-07-03 09:46:55','2024-07-25 00:13:34',NULL,NULL,'0 Coleman Park',9,6,NULL),(11,'2024-07-09 20:34:48','2024-07-13 17:34:12',NULL,NULL,'7 Mosinee Street',4,22,NULL),(12,'2024-07-19 07:16:28','2024-07-04 11:25:57',NULL,NULL,'8 Farragut Drive',3,26,NULL),(13,'2024-07-27 12:22:55','2024-07-08 09:57:39',NULL,NULL,'07 Miller Place',3,9,NULL),(14,'2024-07-30 04:00:41','2024-07-04 14:46:37',NULL,NULL,'5 Loeprich Crossing',3,6,NULL),(15,'2024-07-07 03:47:45','2024-07-19 06:49:55',NULL,NULL,'65 Londonderry Pass',5,21,NULL),(16,'2024-07-17 22:12:31','2024-07-06 03:02:27',NULL,NULL,'04629 New Castle Avenue',9,8,NULL),(17,'2024-07-12 09:34:29','2024-07-06 17:04:51',NULL,NULL,'6765 Mallard Lane',8,2,NULL),(18,'2024-07-06 22:09:52','2024-07-01 20:25:02',NULL,NULL,'5 South Way',4,1,NULL),(19,'2024-07-21 00:55:56','2024-07-27 21:36:55',NULL,NULL,'04290 Donald Way',4,28,NULL),(20,'2024-07-20 13:38:31','2024-07-13 18:17:15',NULL,NULL,'4 Kings Drive',8,28,NULL),(21,'2024-07-14 03:01:01','2024-07-06 18:06:42',NULL,NULL,'3851 Kinsman Trail',4,18,NULL),(22,'2024-07-23 11:49:42','2024-07-10 03:18:32',NULL,NULL,'551 Ridge Oak Crossing',8,5,NULL),(23,'2024-07-21 14:13:51','2024-07-09 09:31:20',NULL,NULL,'6 Harper Plaza',5,20,NULL),(24,'2024-07-03 09:02:06','2024-07-15 09:32:12',NULL,NULL,'27 7th Alley',10,28,NULL),(25,'2024-07-11 12:01:03','2024-07-12 08:01:05',NULL,NULL,'76 Clarendon Court',10,10,NULL),(26,'2024-07-20 04:35:08','2024-07-22 13:41:17',NULL,NULL,'135 Memorial Junction',10,21,NULL),(27,'2024-07-28 21:00:34','2024-07-17 08:15:04',NULL,NULL,'0763 Elmside Crossing',10,13,NULL),(28,'2024-07-26 21:20:15','2024-07-23 07:47:24',NULL,NULL,'77847 Hanson Hill',5,15,NULL),(29,'2024-07-28 17:13:08','2024-07-28 19:16:21',NULL,NULL,'1706 Carberry Lane',2,10,NULL),(30,'2024-07-06 19:21:11','2024-07-03 08:50:28',NULL,NULL,'02 Moland Court',9,10,NULL),(31,'2024-12-11 01:28:50','2024-12-11 01:28:50',NULL,NULL,'sqwewqe',63,691,10469),(32,'2024-12-11 01:32:24','2024-12-11 01:32:24',NULL,NULL,'sqwewqe',63,691,10469);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_brand_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'2024-07-05 12:40:37','2024-07-04 01:57:04',NULL,NULL,'Cruickshank-VonRueden','5025','Lap abltn liver les/tiss',3),(2,'2024-07-18 10:09:09','2024-07-30 13:45:08',NULL,NULL,'Schowalter, Hartmann and Kihn','4994','Reduction anal prolapse',3),(3,'2024-07-06 05:08:25','2024-07-22 11:02:07',NULL,NULL,'Lehner-O\'Hara','8884','Muscle thermography',1),(4,'2024-07-09 20:12:46','2024-07-21 12:10:28',NULL,NULL,'Kohler-Ratke','3941','Postop vasc op hem contr',3),(5,'2024-07-26 14:16:19','2024-07-13 04:01:51',NULL,NULL,'Ullrich and Sons','5186','Endosc inser nasobil tub',3),(6,'2024-07-17 19:52:18','2024-07-13 11:02:33',NULL,NULL,'Spinka-Kulas','4059','Rad node dissection NEC',1),(7,'2024-07-23 02:03:55','2024-07-01 08:09:25',NULL,NULL,'Johnson LLC','8625','Dermabrasion',3),(8,'2024-07-18 09:21:11','2024-07-11 18:26:51',NULL,NULL,'Durgan LLC','1269','Scler fistulizing op NEC',1),(9,'2024-07-18 18:12:14','2024-07-30 01:28:04',NULL,NULL,'Ward-Kuhlman','9616','Other vaginal dilation',1),(10,'2024-07-11 23:51:12','2024-07-07 08:38:12',NULL,NULL,'Schoen-Schumm','1032','Destruct conjunc les NEC',1),(11,'2024-07-26 09:18:08','2024-07-04 18:03:43',NULL,NULL,'Lesch, Murazik and Schowalter','4299','Esophageal operation NEC',2),(12,'2024-07-26 04:40:11','2024-07-15 04:36:57',NULL,NULL,'Koelpin and Sons','8794','Contrast vasogram',2),(13,'2024-07-21 19:09:18','2024-07-23 00:18:02',NULL,NULL,'Windler, Hoppe and Kuvalis','3259','Other pneumonectomy NOS',2),(14,'2024-07-11 19:08:07','2024-07-23 16:58:52',NULL,NULL,'Herman-Leuschke','244','Exc of dental les of jaw',3),(15,'2024-07-19 02:03:41','2024-07-29 04:48:25',NULL,NULL,'Schinner LLC','623','Unilateral orchiectomy',1),(16,'2024-07-14 19:51:17','2024-07-11 18:26:45',NULL,NULL,'Dickens LLC','7934','Open red-int fix finger',2),(17,'2024-07-25 17:51:44','2024-07-19 04:08:32',NULL,NULL,'Hagenes LLC','9119','Micro exam-periton NEC',1),(18,'2024-07-12 11:11:39','2024-07-18 20:15:08',NULL,NULL,'Maggio Inc','1291','Therapeut evac ant chamb',3),(19,'2024-07-29 09:31:32','2024-07-01 21:10:22',NULL,NULL,'Gibson-Sipes','0759','Pineal operation NEC',2),(20,'2024-07-05 21:03:20','2024-07-29 10:33:57',NULL,NULL,'Senger LLC','0781','Oth part excision thymus',1),(21,'2024-07-17 17:09:24','2024-07-02 18:58:32',NULL,NULL,'Schoen-Sipes','4411','Transabdomin gastroscopy',2),(22,'2024-07-19 17:32:11','2024-07-25 23:15:49',NULL,NULL,'Ryan, Reichel and Rath','0702','Bilat adrenal explorat',3),(23,'2024-07-20 17:24:59','2024-07-06 06:02:49',NULL,NULL,'Will Inc','9001','Bact smear-nervous syst',2),(24,'2024-07-11 05:47:44','2024-07-27 14:37:54',NULL,NULL,'Effertz LLC','7032','Excis cul-de-sac lesion',3),(25,'2024-07-07 18:03:33','2024-07-21 09:40:42',NULL,NULL,'Borer-White','2342','Fixed bridge insertion',3),(26,'2024-07-15 07:29:32','2024-07-25 12:59:58',NULL,NULL,'Rogahn and Sons','6261','Suture testicular lacer',3),(27,'2024-07-10 23:55:24','2024-07-12 01:16:59',NULL,NULL,'Reichel, Roob and Kiehn','9086','Cell blk/pap-upper GI',1),(28,'2024-07-29 03:08:12','2024-07-29 20:45:55',NULL,NULL,'Klocko LLC','3506','Trnsapcl rep aortc valve',2),(29,'2024-07-30 01:46:00','2024-07-28 03:01:12',NULL,NULL,'Walker and Sons','0602','Reopen thyroid field wnd',3),(30,'2024-07-11 11:50:55','2024-07-23 18:10:17',NULL,NULL,'Emard-Cummings','8628','Nonexcis debridement wnd',3),(31,'2024-07-15 07:24:03','2024-07-13 09:18:49',NULL,NULL,'Wilderman Inc','4266','Stern esophagocolos NEC',1),(32,'2024-07-25 14:32:07','2024-07-26 18:46:02',NULL,NULL,'Torp and Sons','2723','Lip biopsy',2),(33,'2024-07-15 02:19:23','2024-07-24 09:34:28',NULL,NULL,'Walker-Ortiz','2773','Repair of uvula',1),(34,'2024-07-20 02:56:22','2024-07-27 13:13:24',NULL,NULL,'Buckridge Group','5691','Ureteral meatus dilation',2),(35,'2024-07-06 07:17:40','2024-07-10 03:22:36',NULL,NULL,'Schneider-Toy','1652','Orbit exent w bone remov',1),(36,'2024-07-07 07:52:54','2024-07-19 23:05:17',NULL,NULL,'Friesen Inc','3452','Thoracoscopc decort lung',3),(37,'2024-07-16 16:11:32','2024-07-07 17:31:08',NULL,NULL,'O\'Connell-Koepp','138','Implanted lens removal',3),(38,'2024-07-05 16:06:36','2024-07-10 10:36:31',NULL,NULL,'Beer Group','0650','Substern thyroidect NOS',2),(39,'2024-07-22 18:12:03','2024-07-22 03:19:40',NULL,NULL,'Fay-Halvorson','9704','Replace large bowel tube',1),(40,'2024-07-20 03:09:59','2024-07-08 21:29:30',NULL,NULL,'Paucek-Cummings','7715','Other femoral incision',2),(41,'2024-07-07 05:21:46','2024-07-02 10:17:25',NULL,NULL,'Wunsch Inc','2171','Clos reduction nasal fx',2),(42,'2024-07-12 07:58:11','2024-07-23 13:12:55',NULL,NULL,'Goldner-Gorczany','2349','Dental restoration NEC',3),(43,'2024-07-03 12:42:34','2024-07-18 19:44:10',NULL,NULL,'Bosco LLC','5892','Periurethral excision',3),(44,'2024-07-12 15:41:20','2024-07-07 11:51:15',NULL,NULL,'Wuckert-Trantow','0754','Total pinealectomy',2),(45,'2024-07-24 13:54:52','2024-07-31 11:41:32',NULL,NULL,'Keeling-Shields','3451','Decortication of lung',2),(46,'2024-07-24 20:30:01','2024-07-05 12:53:44',NULL,NULL,'Hessel Group','5912','Lap lys perivesureth adh',1),(47,'2024-07-28 00:40:07','2024-07-16 01:03:49',NULL,NULL,'Ruecker and Sons','9423','Neuroleptic therapy',1),(48,'2024-07-30 11:06:23','2024-07-15 16:32:00',NULL,NULL,'Hilll-Bode','9389','Rehabilitation NEC',2),(49,'2024-07-17 07:17:30','2024-07-06 18:33:59',NULL,NULL,'Kautzer, Marvin and Hoppe','3982','Imp/rep crtd sinus lead',2),(50,'2024-07-22 03:16:00','2024-07-06 22:32:43',NULL,NULL,'Cronin, Schmitt and Conroy','9738','Remove head/neck sutures',3);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CART_ON_USER` (`user_id`),
  CONSTRAINT `FK_CART_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,4,1),(2,'2024-12-11 01:29:52','2024-12-11 01:29:52',NULL,NULL,6,2),(3,'2024-12-11 01:37:56','2024-12-11 01:37:56',NULL,NULL,6,2),(4,'2024-12-11 01:40:56','2024-12-11 01:40:56',NULL,NULL,6,2),(5,'2024-12-12 01:51:26','2024-12-12 01:51:26',NULL,NULL,6,2),(6,'2024-12-12 04:12:03','2024-12-12 04:12:03',NULL,NULL,6,2),(7,'2024-12-12 04:21:17','2024-12-12 04:21:17',NULL,NULL,6,2),(8,'2024-12-12 16:18:34','2024-12-12 16:18:34',NULL,NULL,6,2),(9,'2024-12-16 21:27:20','2024-12-16 21:27:20',NULL,NULL,6,2),(10,'2024-12-16 21:33:36','2024-12-16 21:33:36',NULL,NULL,6,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_variant`
--

DROP TABLE IF EXISTS `cart_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_variant` (
  `cart_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cart_id`,`variant_id`),
  KEY `FK_CART_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_CART_VARIANT_ON_CART` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK_CART_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_variant`
--

LOCK TABLES `cart_variant` WRITE;
/*!40000 ALTER TABLE `cart_variant` DISABLE KEYS */;
INSERT INTO `cart_variant` VALUES (1,1,'2024-07-03 21:16:01',2),(1,2,'2024-07-03 21:16:01',1),(2,1,'2024-12-11 01:29:52',1),(3,4,'2024-12-11 01:37:56',1),(4,13,'2024-12-11 01:40:56',1),(5,4,'2024-12-12 01:51:26',1),(6,4,'2024-12-12 04:12:03',1),(7,4,'2024-12-12 04:21:17',1),(8,14,'2024-12-12 16:18:34',1),(9,7,'2024-12-16 21:27:20',1),(10,5,'2024-12-16 21:33:36',1);
/*!40000 ALTER TABLE `cart_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_category_slug` (`slug`),
  KEY `FK_CATEGORY_ON_CATEGORY` (`category_id`),
  CONSTRAINT `FK_CATEGORY_ON_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Laptop','laptop','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Loa','loa','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1),(3,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Bàn phím','ban-phim','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1),(4,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Máy chơi game','may-choi-game','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1),(5,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Chuột','chuot','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1),(6,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'CPU','cpu','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1),(7,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'PC','pc','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1),(8,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Balo','balo','Lorem ipsum dolor sit amet, consectetur adipiscing elit',NULL,NULL,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `warehouse_id` bigint NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_count_code` (`code`),
  KEY `FK_COUNT_ON_WAREHOUSE` (`warehouse_id`),
  CONSTRAINT `FK_COUNT_ON_WAREHOUSE` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count`
--

LOCK TABLES `count` WRITE;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
INSERT INTO `count` VALUES (1,'2024-07-11 02:17:56','2024-07-10 08:38:27',NULL,NULL,'58118-026',1,'Shikoku Christian College',3),(2,'2024-07-27 04:07:17','2024-07-06 09:44:39',NULL,NULL,'58517-440',1,NULL,3),(3,'2024-07-23 11:30:25','2024-07-11 09:56:07',NULL,NULL,'66097-003',2,NULL,2),(4,'2024-07-04 13:07:06','2024-07-11 11:42:22',NULL,NULL,'53808-067',2,'Universidade Federal Fluminense',3),(5,'2024-07-10 22:24:16','2024-07-04 03:33:40',NULL,NULL,'51668-402',3,'Universidad Tecnológica del Peru',1);
/*!40000 ALTER TABLE `count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count_variant`
--

DROP TABLE IF EXISTS `count_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count_variant` (
  `count_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `inventory` int NOT NULL,
  `actual_inventory` int NOT NULL,
  PRIMARY KEY (`count_id`,`variant_id`),
  KEY `FK_COUNT_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_COUNT_VARIANT_ON_COUNT` FOREIGN KEY (`count_id`) REFERENCES `count` (`id`),
  CONSTRAINT `FK_COUNT_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count_variant`
--

LOCK TABLES `count_variant` WRITE;
/*!40000 ALTER TABLE `count_variant` DISABLE KEYS */;
INSERT INTO `count_variant` VALUES (1,1,80,80),(1,2,70,75),(1,3,30,25);
/*!40000 ALTER TABLE `count_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `customer_group_id` bigint NOT NULL,
  `customer_status_id` bigint NOT NULL,
  `customer_resource_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_user` (`user_id`),
  KEY `FK_CUSTOMER_ON_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `FK_CUSTOMER_ON_CUSTOMER_RESOURCE` (`customer_resource_id`),
  KEY `FK_CUSTOMER_ON_CUSTOMER_STATUS` (`customer_status_id`),
  CONSTRAINT `FK_CUSTOMER_ON_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`id`),
  CONSTRAINT `FK_CUSTOMER_ON_CUSTOMER_RESOURCE` FOREIGN KEY (`customer_resource_id`) REFERENCES `customer_resource` (`id`),
  CONSTRAINT `FK_CUSTOMER_ON_CUSTOMER_STATUS` FOREIGN KEY (`customer_status_id`) REFERENCES `customer_status` (`id`),
  CONSTRAINT `FK_CUSTOMER_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,4,4,3,5),(2,'2024-07-22 12:52:55','2024-07-05 09:30:21',NULL,NULL,5,2,2,4);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_group_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (1,'2024-07-23 14:14:28','2024-07-24 07:08:47',NULL,NULL,'52270-001','Facebook','Other and unspecified malignant neoplasms of lymphoid and histiocytic tissue, lymph nodes of multiple sites','Blue',2),(2,'2024-07-29 19:59:34','2024-07-26 07:05:04',NULL,NULL,'0904-6089','Google','Amphetamine and other psychostimulant dependence, unspecified','Pink',3),(3,'2024-07-20 11:21:17','2024-07-05 17:55:09',NULL,NULL,'65162-539','Instagram','Salmonella osteomyelitis','Red',1),(4,'2024-07-20 17:12:24','2024-07-28 19:00:00',NULL,NULL,'63304-551','Potential','Unspecified disorder of carbohydrate transport and metabolism','Orange',2),(5,'2024-07-29 00:20:18','2024-07-10 20:31:28',NULL,NULL,'76436-202','VIP','Common ventricle','Green',3);
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_resource`
--

DROP TABLE IF EXISTS `customer_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_resource_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_resource`
--

LOCK TABLES `customer_resource` WRITE;
/*!40000 ALTER TABLE `customer_resource` DISABLE KEYS */;
INSERT INTO `customer_resource` VALUES (1,'2024-07-26 01:48:14','2024-07-19 04:58:04',NULL,NULL,'53499-5971','Facebook','Congenital mitral insufficiency','Blue',1),(2,'2024-07-11 08:53:09','2024-07-16 19:00:07',NULL,NULL,'76358-195','Google','Blisters, epidermal loss [second degree] of hand, unspecified site','Violet',3),(3,'2024-07-24 06:46:43','2024-07-21 19:59:04',NULL,NULL,'64616-082','Instagram','Sedative, hypnotic or anxiolytic dependence, continuous','Crimson',2),(4,'2024-07-19 16:57:29','2024-07-28 11:50:59',NULL,NULL,'11559-724','Normal','Unspecified failure in dosage','Green',1),(5,'2024-07-13 10:28:33','2024-07-11 03:36:22',NULL,NULL,'13537-455','AVD','Other testicular hypofunction','Orange',1);
/*!40000 ALTER TABLE `customer_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_status`
--

DROP TABLE IF EXISTS `customer_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_status_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_status`
--

LOCK TABLES `customer_status` WRITE;
/*!40000 ALTER TABLE `customer_status` DISABLE KEYS */;
INSERT INTO `customer_status` VALUES (1,'2024-07-06 12:54:55','2024-07-01 01:22:53',NULL,NULL,'55045-3602','Active','Miliary tuberculosis, unspecified, unspecified','Pink',3),(2,'2024-07-04 19:46:58','2024-07-06 21:22:50',NULL,NULL,'60429-239','Disable','Screening for malignant neoplasms of skin','Aquamarine',1),(3,'2024-07-27 06:15:17','2024-07-29 17:49:37',NULL,NULL,'49281-395','None','Other lymphedema','Maroon',2);
/*!40000 ALTER TABLE `customer_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'2024-07-02 00:50:54','2024-07-28 15:01:05',NULL,NULL,'Legal',1),(2,'2024-07-21 23:55:27','2024-07-06 07:26:20',NULL,NULL,'Training',2),(3,'2024-07-02 02:55:33','2024-07-28 21:13:39',NULL,NULL,'Human Resources',3),(4,'2024-07-07 23:28:26','2024-07-20 15:29:28',NULL,NULL,'Support',3),(5,'2024-07-21 01:50:28','2024-07-01 01:58:22',NULL,NULL,'Human Resources',2);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destination` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `contact_fullname` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `address_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_destination_address` (`address_id`),
  CONSTRAINT `FK_DESTINATION_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
INSERT INTO `destination` VALUES (1,'2024-07-18 02:13:21','2024-07-15 02:02:33',NULL,NULL,'Mike Smith','jdaulby0@chron.com','03123131231',21,1),(2,'2024-07-10 10:26:25','2024-07-25 01:59:50',NULL,NULL,'Johny Down','saleksandrov1@twitpic.com','03123131231',22,2),(3,'2024-07-19 18:02:53','2024-07-25 21:47:06',NULL,NULL,'Vin Diesel','gnegus2@nationalgeographic.com','03123131231',23,2),(4,'2024-07-30 15:41:07','2024-07-03 07:49:17',NULL,NULL,'Dan Wellington','gmanders3@bandcamp.com','03123131231',24,1);
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  `province_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DISTRICT_ON_PROVINCE` (`province_id`),
  CONSTRAINT `FK_DISTRICT_ON_PROVINCE` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 1','760',29),(2,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 12','761',29),(3,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 3','770',29),(4,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 10','771',29),(5,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 11','772',29),(6,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 4','773',29),(7,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 5','774',29),(8,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 6','775',29),(9,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 8','776',29),(10,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 7','778',29),(11,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thuận An','725',27),(12,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ba Đình','001',1),(13,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hoàn Kiếm','002',1),(14,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Tây Hồ','003',1),(15,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Long Biên','004',1),(16,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Cầu Giấy','005',1),(17,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Đống Đa','006',1),(18,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hai Bà Trưng','007',1),(19,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hoàng Mai','008',1),(20,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Thanh Xuân','009',1),(21,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sóc Sơn','016',1),(22,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Anh','017',1),(23,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Lâm','018',1),(24,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Nam Từ Liêm','019',1),(25,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Trì','020',1),(26,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bắc Từ Liêm','021',1),(27,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mê Linh','250',1),(28,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hà Đông','268',1),(29,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Sơn Tây','269',1),(30,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Vì','271',1),(31,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phúc Thọ','272',1),(32,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đan Phượng','273',1),(33,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoài Đức','274',1),(34,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quốc Oai','275',1),(35,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch Thất','276',1),(36,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chương Mỹ','277',1),(37,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Oai','278',1),(38,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thường Tín','279',1),(39,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Xuyên','280',1),(40,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ứng Hòa','281',1),(41,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Đức','282',1),(42,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hà Giang','024',10),(43,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Văn','026',10),(44,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mèo Vạc','027',10),(45,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Minh','028',10),(46,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quản Bạ','029',10),(47,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vị Xuyên','030',10),(48,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Mê','031',10),(49,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoàng Su Phì','032',10),(50,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xín Mần','033',10),(51,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Quang','034',10),(52,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quang Bình','035',10),(53,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cao Bằng','040',11),(54,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Lâm','042',11),(55,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Lạc','043',11),(56,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hà Quảng','045',11),(57,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trùng Khánh','047',11),(58,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hạ Lang','048',11),(59,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Hòa','049',11),(60,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoà An','051',11),(61,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nguyên Bình','052',11),(62,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch An','053',11),(63,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bắc Kạn','058',12),(64,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Pác Nặm','060',12),(65,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Bể','061',12),(66,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngân Sơn','062',12),(67,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bạch Thông','063',12),(68,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Đồn','064',12),(69,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Mới','065',12),(70,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Na Rì','066',12),(71,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tuyên Quang','070',13),(72,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lâm Bình','071',13),(73,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Na Hang','072',13),(74,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chiêm Hóa','073',13),(75,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Yên','074',13),(76,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Sơn','075',13),(77,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Dương','076',13),(78,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Lào Cai','080',19),(79,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bát Xát','082',19),(80,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Khương','083',19),(81,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Si Ma Cai','084',19),(82,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Hà','085',19),(83,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Thắng','086',19),(84,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Yên','087',19),(85,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Sa Pa','088',19),(86,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Bàn','089',19),(87,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Điện Biên Phủ','094',20),(88,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Mường Lay','095',20),(89,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Nhé','096',20),(90,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Chà','097',20),(91,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tủa Chùa','098',20),(92,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuần Giáo','099',20),(93,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Điện Biên','100',20),(94,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Điện Biên Đông','101',20),(95,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Ảng','102',20),(96,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nậm Pồ','103',20),(97,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Lai Châu','105',21),(98,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Đường','106',21),(99,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Tè','107',21),(100,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sìn Hồ','108',21),(101,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phong Thổ','109',21),(102,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Than Uyên','110',21),(103,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Uyên','111',21),(104,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nậm Nhùn','112',21),(105,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sơn La','116',22),(106,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳnh Nhai','118',22),(107,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Châu','119',22),(108,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường La','120',22),(109,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Yên','121',22),(110,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Yên','122',22),(111,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mộc Châu','123',22),(112,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Châu','124',22),(113,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mai Sơn','125',22),(114,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sông Mã','126',22),(115,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sốp Cộp','127',22),(116,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vân Hồ','128',22),(117,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Yên Bái','132',23),(118,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Nghĩa Lộ','133',23),(119,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lục Yên','135',23),(120,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Yên','136',23),(121,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mù Căng Chải','137',23),(122,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trấn Yên','138',23),(123,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trạm Tấu','139',23),(124,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Chấn','140',23),(125,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Bình','141',23),(126,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hòa Bình','148',24),(127,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đà Bắc','150',24),(128,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lương Sơn','152',24),(129,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Bôi','153',24),(130,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cao Phong','154',24),(131,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Lạc','155',24),(132,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mai Châu','156',24),(133,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạc Sơn','157',24),(134,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Thủy','158',24),(135,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạc Thủy','159',24),(136,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thái Nguyên','164',14),(137,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sông Công','165',14),(138,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Định Hóa','167',14),(139,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Lương','168',14),(140,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Hỷ','169',14),(141,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Võ Nhai','170',14),(142,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đại Từ','171',14),(143,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phổ Yên','172',14),(144,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Bình','173',14),(145,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Lạng Sơn','178',15),(146,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tràng Định','180',15),(147,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Gia','181',15),(148,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Lãng','182',15),(149,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cao Lộc','183',15),(150,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Quan','184',15),(151,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Sơn','185',15),(152,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hữu Lũng','186',15),(153,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chi Lăng','187',15),(154,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lộc Bình','188',15),(155,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đình Lập','189',15),(156,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hạ Long','193',16),(157,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Móng Cái','194',16),(158,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cẩm Phả','195',16),(159,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Uông Bí','196',16),(160,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Liêu','198',16),(161,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Yên','199',16),(162,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đầm Hà','200',16),(163,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hải Hà','201',16),(164,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Chẽ','202',16),(165,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vân Đồn','203',16),(166,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Đông Triều','205',16),(167,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Quảng Yên','206',16),(168,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cô Tô','207',16),(169,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bắc Giang','213',17),(170,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Thế','215',17),(171,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Yên','216',17),(172,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạng Giang','217',17),(173,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lục Nam','218',17),(174,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lục Ngạn','219',17),(175,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Động','220',17),(176,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Dũng','221',17),(177,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Việt Yên','222',17),(178,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hiệp Hòa','223',17),(179,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Việt Trì','227',18),(180,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Phú Thọ','228',18),(181,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đoan Hùng','230',18),(182,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hạ Hoà','231',18),(183,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Ba','232',18),(184,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Ninh','233',18),(185,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Lập','234',18),(186,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Khê','235',18),(187,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Nông','236',18),(188,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lâm Thao','237',18),(189,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Sơn','238',18),(190,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Thuỷ','239',18),(191,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Sơn','240',18),(192,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vĩnh Yên','243',2),(193,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phúc Yên','244',2),(194,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lập Thạch','246',2),(195,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Dương','247',2),(196,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Đảo','248',2),(197,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Xuyên','249',2),(198,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Lạc','251',2),(199,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Tường','252',2),(200,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sông Lô','253',2),(201,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bắc Ninh','256',3),(202,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Phong','258',3),(203,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quế Võ','259',3),(204,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Du','260',3),(205,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Từ Sơn','261',3),(206,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Thành','262',3),(207,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Bình','263',3),(208,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lương Tài','264',3),(209,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hải Dương','288',4),(210,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Chí Linh','290',4),(211,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Sách','291',4),(212,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Kinh Môn','292',4),(213,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Thành','293',4),(214,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Hà','294',4),(215,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Giàng','295',4),(216,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Giang','296',4),(217,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Lộc','297',4),(218,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tứ Kỳ','298',4),(219,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Giang','299',4),(220,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Miện','300',4),(221,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hồng Bàng','303',5),(222,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ngô Quyền','304',5),(223,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Lê Chân','305',5),(224,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hải An','306',5),(225,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Kiến An','307',5),(226,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Đồ Sơn','308',5),(227,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Dương Kinh','309',5),(228,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuỷ Nguyên','311',5),(229,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Dương','312',5),(230,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Lão','313',5),(231,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiến Thuỵ','314',5),(232,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Lãng','315',5),(233,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Dầu','710',26),(234,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Bảo','316',5),(235,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cát Hải','317',5),(236,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bạch Long Vĩ','318',5),(237,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hưng Yên','323',6),(238,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Lâm','325',6),(239,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Giang','326',6),(240,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Mỹ','327',6),(241,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Mỹ Hào','328',6),(242,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ân Thi','329',6),(243,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Khoái Châu','330',6),(244,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Động','331',6),(245,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Lữ','332',6),(246,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Cừ','333',6),(247,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thái Bình','336',7),(248,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳnh Phụ','338',7),(249,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hưng Hà','339',7),(250,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Hưng','340',7),(251,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thái Thụy','341',7),(252,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiền Hải','342',7),(253,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiến Xương','343',7),(254,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vũ Thư','344',7),(255,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phủ Lý','347',8),(256,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Duy Tiên','349',8),(257,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Bảng','350',8),(258,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Liêm','351',8),(259,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Lục','352',8),(260,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lý Nhân','353',8),(261,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Nam Định','356',31),(262,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Lộc','358',31),(263,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vụ Bản','359',31),(264,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ý Yên','360',31),(265,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghĩa Hưng','361',31),(266,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Trực','362',31),(267,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trực Ninh','363',31),(268,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xuân Trường','364',31),(269,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giao Thủy','365',31),(270,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hải Hậu','366',31),(271,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Ninh Bình','369',32),(272,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tam Điệp','370',32),(273,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nho Quan','372',32),(274,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Viễn','373',32),(275,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoa Lư','374',32),(276,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Khánh','375',32),(277,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Sơn','376',32),(278,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Mô','377',32),(279,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thanh Hóa','380',33),(280,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bỉm Sơn','381',33),(281,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sầm Sơn','382',33),(282,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Lát','384',33),(283,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quan Hóa','385',33),(284,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bá Thước','386',33),(285,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quan Sơn','387',33),(286,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lang Chánh','388',33),(287,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngọc Lặc','389',33),(288,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Thủy','390',33),(289,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch Thành','391',33),(290,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hà Trung','392',33),(291,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Lộc','393',33),(292,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Định','394',33),(293,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thọ Xuân','395',33),(294,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thường Xuân','396',33),(295,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Triệu Sơn','397',33),(296,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thiệu Hóa','398',33),(297,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoằng Hóa','399',33),(298,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hậu Lộc','400',33),(299,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nga Sơn','401',33),(300,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Như Xuân','402',33),(301,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Như Thanh','403',33),(302,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nông Cống','404',33),(303,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Sơn','405',33),(304,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Xương','406',33),(305,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Nghi Sơn','407',33),(306,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vinh','412',34),(307,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Cửa Lò','413',34),(308,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Thái Hoà','414',34),(309,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quế Phong','415',34),(310,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳ Châu','416',34),(311,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kỳ Sơn','417',34),(312,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tương Dương','418',34),(313,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghĩa Đàn','419',34),(314,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳ Hợp','420',34),(315,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳnh Lưu','421',34),(316,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Con Cuông','422',34),(317,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Kỳ','423',34),(318,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Anh Sơn','424',34),(319,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Diễn Châu','425',34),(320,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Thành','426',34),(321,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đô Lương','427',34),(322,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Chương','428',34),(323,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghi Lộc','429',34),(324,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Đàn','430',34),(325,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hưng Nguyên','431',34),(326,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hoàng Mai','432',34),(327,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hà Tĩnh','436',35),(328,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hồng Lĩnh','437',35),(329,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hương Sơn','439',35),(330,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Thọ','440',35),(331,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vũ Quang','441',35),(332,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghi Xuân','442',35),(333,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Can Lộc','443',35),(334,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hương Khê','444',35),(335,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch Hà','445',35),(336,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Xuyên','446',35),(337,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kỳ Anh','447',35),(338,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lộc Hà','448',35),(339,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Kỳ Anh','449',35),(340,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đồng Hới','450',36),(341,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Minh Hóa','452',36),(342,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuyên Hóa','453',36),(343,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Trạch','454',36),(344,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bố Trạch','455',36),(345,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Ninh','456',36),(346,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lệ Thủy','457',36),(347,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ba Đồn','458',36),(348,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đông Hà','461',37),(349,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Quảng Trị','462',37),(350,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Linh','464',37),(351,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hướng Hóa','465',37),(352,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gio Linh','466',37),(353,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đa Krông','467',37),(354,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cam Lộ','468',37),(355,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Triệu Phong','469',37),(356,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hải Lăng','470',37),(357,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cồn Cỏ','471',37),(358,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Huế','474',38),(359,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phong Điền','476',38),(360,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Điền','477',38),(361,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Vang','478',38),(362,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hương Thủy','479',38),(363,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hương Trà','480',38),(364,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện A Lưới','481',38),(365,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Lộc','482',38),(366,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Đông','483',38),(367,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Liên Chiểu','490',39),(368,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Thanh Khê','491',39),(369,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hải Châu','492',39),(370,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Sơn Trà','493',39),(371,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ngũ Hành Sơn','494',39),(372,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Cẩm Lệ','495',39),(373,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hòa Vang','497',39),(374,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoàng Sa','498',39),(375,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tam Kỳ','502',40),(376,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hội An','503',40),(377,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tây Giang','504',40),(378,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Giang','505',40),(379,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đại Lộc','506',40),(380,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Điện Bàn','507',40),(381,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Duy Xuyên','508',40),(382,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quế Sơn','509',40),(383,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Giang','510',40),(384,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phước Sơn','511',40),(385,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hiệp Đức','512',40),(386,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thăng Bình','513',40),(387,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Phước','514',40),(388,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Trà My','515',40),(389,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Trà My','516',40),(390,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Núi Thành','517',40),(391,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Ninh','518',40),(392,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nông Sơn','519',40),(393,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Quảng Ngãi','522',41),(394,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Sơn','524',41),(395,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trà Bồng','525',41),(396,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Tịnh','527',41),(397,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tư Nghĩa','528',41),(398,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Hà','529',41),(399,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Tây','530',41),(400,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Minh Long','531',41),(401,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghĩa Hành','532',41),(402,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mộ Đức','533',41),(403,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Đức Phổ','534',41),(404,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Tơ','535',41),(405,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lý Sơn','536',41),(406,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Quy Nhơn','540',42),(407,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Lão','542',42),(408,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hoài Nhơn','543',42),(409,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoài Ân','544',42),(410,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Mỹ','545',42),(411,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Thạnh','546',42),(412,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tây Sơn','547',42),(413,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Cát','548',42),(414,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã An Nhơn','549',42),(415,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy Phước','550',42),(416,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vân Canh','551',42),(417,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tuy Hoà','555',43),(418,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Sông Cầu','557',43),(419,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Xuân','558',43),(420,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy An','559',43),(421,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Hòa','560',43),(422,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sông Hinh','561',43),(423,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tây Hoà','562',43),(424,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Hoà','563',43),(425,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Đông Hòa','564',43),(426,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Nha Trang','568',44),(427,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cam Ranh','569',44),(428,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cam Lâm','570',44),(429,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vạn Ninh','571',44),(430,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ninh Hòa','572',44),(431,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Khánh Vĩnh','573',44),(432,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Diên Khánh','574',44),(433,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Khánh Sơn','575',44),(434,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trường Sa','576',44),(435,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phan Rang-Tháp Chàm','582',45),(436,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bác Ái','584',45),(437,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Sơn','585',45),(438,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Hải','586',45),(439,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Phước','587',45),(440,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Bắc','588',45),(441,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Nam','589',45),(442,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phan Thiết','593',46),(443,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã La Gi','594',46),(444,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy Phong','595',46),(445,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Bình','596',46),(446,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Thuận Bắc','597',46),(447,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Thuận Nam','598',46),(448,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tánh Linh','599',46),(449,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Linh','600',46),(450,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Tân','601',46),(451,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Quí','602',46),(452,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Kon Tum','608',47),(453,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Glei','610',47),(454,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngọc Hồi','611',47),(455,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Tô','612',47),(456,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kon Plông','613',47),(457,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kon Rẫy','614',47),(458,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Hà','615',47),(459,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sa Thầy','616',47),(460,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tu Mơ Rông','617',47),(461,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ia H\' Drai','618',47),(462,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Pleiku','622',48),(463,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã An Khê','623',48),(464,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ayun Pa','624',48),(465,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện KBang','625',48),(466,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đăk Đoa','626',48),(467,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Păh','627',48),(468,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ia Grai','628',48),(469,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mang Yang','629',48),(470,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kông Chro','630',48),(471,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Cơ','631',48),(472,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Prông','632',48),(473,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Sê','633',48),(474,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đăk Pơ','634',48),(475,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ia Pa','635',48),(476,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Pa','637',48),(477,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Thiện','638',48),(478,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Pưh','639',48),(479,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Buôn Ma Thuột','643',49),(480,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Buôn Hồ','644',49),(481,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ea H\'leo','645',49),(482,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ea Súp','646',49),(483,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Buôn Đôn','647',49),(484,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cư M\'gar','648',49),(485,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Búk','649',49),(486,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Năng','650',49),(487,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ea Kar','651',49),(488,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện M\'Đrắk','652',49),(489,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Bông','653',49),(490,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Pắc','654',49),(491,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông A Na','655',49),(492,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lắk','656',49),(493,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cư Kuin','657',49),(494,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Gia Nghĩa','660',50),(495,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đăk Glong','661',50),(496,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cư Jút','662',50),(497,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Mil','663',50),(498,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Nô','664',50),(499,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Song','665',50),(500,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk R\'Lấp','666',50),(501,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy Đức','667',50),(502,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đà Lạt','672',51),(503,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bảo Lộc','673',51),(504,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đam Rông','674',51),(505,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạc Dương','675',51),(506,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lâm Hà','676',51),(507,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đơn Dương','677',51),(508,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Trọng','678',51),(509,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Di Linh','679',51),(510,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Lâm','680',51),(511,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đạ Huoai','681',51),(512,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đạ Tẻh','682',51),(513,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cát Tiên','683',51),(514,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Phước Long','688',25),(515,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đồng Xoài','689',25),(516,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bình Long','690',25),(517,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bù Gia Mập','691',25),(518,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lộc Ninh','692',25),(519,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bù Đốp','693',25),(520,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hớn Quản','694',25),(521,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Phú','695',25),(522,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bù Đăng','696',25),(523,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Chơn Thành','697',25),(524,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Riềng','698',25),(525,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tây Ninh','703',26),(526,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Biên','705',26),(527,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Châu','706',26),(528,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Dương Minh Châu','707',26),(529,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','708',26),(530,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hòa Thành','709',26),(531,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bến Cầu','711',26),(532,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Trảng Bàng','712',26),(533,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thủ Dầu Một','718',27),(534,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bàu Bàng','719',27),(535,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Dầu Tiếng','720',27),(536,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bến Cát','721',27),(537,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Giáo','722',27),(538,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Tân Uyên','723',27),(539,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Dĩ An','724',27),(540,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Tân Uyên','726',27),(541,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Biên Hòa','731',28),(542,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Long Khánh','732',28),(543,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Phú','734',28),(544,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Cửu','735',28),(545,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Định Quán','736',28),(546,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trảng Bom','737',28),(547,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thống Nhất','738',28),(548,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Mỹ','739',28),(549,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Thành','740',28),(550,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xuân Lộc','741',28),(551,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nhơn Trạch','742',28),(552,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vũng Tàu','747',30),(553,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bà Rịa','748',30),(554,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Đức','750',30),(555,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xuyên Mộc','751',30),(556,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Điền','752',30),(557,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đất Đỏ','753',30),(558,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Phú Mỹ','754',30),(559,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Côn Đảo','755',30),(560,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Gò Vấp','764',29),(561,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bình Thạnh','765',29),(562,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Tân Bình','766',29),(563,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Tân Phú','767',29),(564,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Phú Nhuận','768',29),(565,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bình Tân','777',29),(566,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Củ Chi','783',29),(567,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hóc Môn','784',29),(568,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Chánh','785',29),(569,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nhà Bè','786',29),(570,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cần Giờ','787',29),(571,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tân An','794',52),(572,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Kiến Tường','795',52),(573,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Hưng','796',52),(574,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Hưng','797',52),(575,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mộc Hóa','798',52),(576,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Thạnh','799',52),(577,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạnh Hóa','800',52),(578,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Huệ','801',52),(579,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Hòa','802',52),(580,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bến Lức','803',52),(581,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thủ Thừa','804',52),(582,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Trụ','805',52),(583,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cần Đước','806',52),(584,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cần Giuộc','807',52),(585,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','808',52),(586,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Mỹ Tho','815',53),(587,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Gò Công','816',53),(588,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Cai Lậy','817',53),(589,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Phước','818',53),(590,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cái Bè','819',53),(591,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cai Lậy','820',53),(592,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','821',53),(593,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Gạo','822',53),(594,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Công Tây','823',53),(595,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Công Đông','824',53),(596,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Phú Đông','825',53),(597,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bến Tre','829',54),(598,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','831',54),(599,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Lách','832',54),(600,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỏ Cày Nam','833',54),(601,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giồng Trôm','834',54),(602,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Đại','835',54),(603,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Tri','836',54),(604,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạnh Phú','837',54),(605,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỏ Cày Bắc','838',54),(606,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Trà Vinh','842',55),(607,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Càng Long','844',55),(608,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cầu Kè','845',55),(609,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiểu Cần','846',55),(610,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','847',55),(611,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cầu Ngang','848',55),(612,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trà Cú','849',55),(613,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Duyên Hải','850',55),(614,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Duyên Hải','851',55),(615,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vĩnh Long','855',56),(616,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Hồ','857',56),(617,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mang Thít','858',56),(618,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vũng Liêm','859',56),(619,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Bình','860',56),(620,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bình Minh','861',56),(621,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trà Ôn','862',56),(622,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Tân','863',56),(623,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cao Lãnh','866',57),(624,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sa Đéc','867',57),(625,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hồng Ngự','868',57),(626,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Hồng','869',57),(627,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hồng Ngự','870',57),(628,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Nông','871',57),(629,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tháp Mười','872',57),(630,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cao Lãnh','873',57),(631,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Bình','874',57),(632,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lấp Vò','875',57),(633,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lai Vung','876',57),(634,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','877',57),(635,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Long Xuyên','883',58),(636,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Châu Đốc','884',58),(637,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Phú','886',58),(638,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Tân Châu','887',58),(639,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Tân','888',58),(640,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Phú','889',58),(641,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tịnh Biên','890',58),(642,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tri Tôn','891',58),(643,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','892',58),(644,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Mới','893',58),(645,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thoại Sơn','894',58),(646,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Rạch Giá','899',59),(647,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hà Tiên','900',59),(648,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiên Lương','902',59),(649,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hòn Đất','903',59),(650,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Hiệp','904',59),(651,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','905',59),(652,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giồng Riềng','906',59),(653,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Quao','907',59),(654,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Biên','908',59),(655,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Minh','909',59),(656,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Thuận','910',59),(657,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phú Quốc','911',59),(658,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiên Hải','912',59),(659,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện U Minh Thượng','913',59),(660,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giang Thành','914',59),(661,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ninh Kiều','916',60),(662,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ô Môn','917',60),(663,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bình Thuỷ','918',60),(664,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Cái Răng','919',60),(665,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Thốt Nốt','923',60),(666,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Thạnh','924',60),(667,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cờ Đỏ','925',60),(668,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phong Điền','926',60),(669,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thới Lai','927',60),(670,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vị Thanh','930',61),(671,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Ngã Bảy','931',61),(672,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành A','932',61),(673,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','933',61),(674,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phụng Hiệp','934',61),(675,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vị Thuỷ','935',61),(676,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Mỹ','936',61),(677,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Long Mỹ','937',61),(678,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sóc Trăng','941',62),(679,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','942',62),(680,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kế Sách','943',62),(681,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Tú','944',62),(682,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cù Lao Dung','945',62),(683,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Phú','946',62),(684,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Xuyên','947',62),(685,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ngã Năm','948',62),(686,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạnh Trị','949',62),(687,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Vĩnh Châu','950',62),(688,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trần Đề','951',62),(689,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bạc Liêu','954',63),(690,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hồng Dân','956',63),(691,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phước Long','957',63),(692,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Lợi','958',63),(693,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Giá Rai','959',63),(694,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Hải','960',63),(695,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoà Bình','961',63),(696,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cà Mau','964',9),(697,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện U Minh','966',9),(698,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thới Bình','967',9),(699,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trần Văn Thời','968',9),(700,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cái Nước','969',9),(701,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đầm Dơi','970',9),(702,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Năm Căn','971',9),(703,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Tân','972',9),(704,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngọc Hiển','973',9),(705,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thủ Đức','769',29);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket`
--

DROP TABLE IF EXISTS `docket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `type` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `reason_id` bigint NOT NULL,
  `warehouse_id` bigint NOT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_docket_code` (`code`),
  KEY `FK_DOCKET_ON_PURCHASE_ORDER` (`purchase_order_id`),
  KEY `FK_DOCKET_ON_REASON` (`reason_id`),
  KEY `FK_DOCKET_ON_WAREHOUSE` (`warehouse_id`),
  KEY `FK_DOCKET_ON_ORDER` (`order_id`),
  CONSTRAINT `FK_DOCKET_ON_ORDER` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FK_DOCKET_ON_PURCHASE_ORDER` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_DOCKET_ON_REASON` FOREIGN KEY (`reason_id`) REFERENCES `docket_reason` (`id`),
  CONSTRAINT `FK_DOCKET_ON_WAREHOUSE` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket`
--

LOCK TABLES `docket` WRITE;
/*!40000 ALTER TABLE `docket` DISABLE KEYS */;
INSERT INTO `docket` VALUES (1,'2024-07-08 00:17:58','2024-07-22 22:04:49',NULL,NULL,1,'68016-008',1,1,1,NULL,'Revision or replacement of artificial spinal disc prosthesis, not otherwise specified',3),(2,'2024-07-05 11:44:55','2024-07-13 11:24:38',NULL,NULL,1,'36987-145',1,2,2,NULL,'Repair of retinal tear by xenon arc photocoagulation',1),(3,'2024-07-20 04:04:06','2024-07-20 00:26:02',NULL,NULL,1,'36987-325',1,3,3,NULL,NULL,1),(4,'2024-07-27 01:34:39','2024-07-22 22:26:16',NULL,NULL,1,'50436-646',1,1,4,NULL,'Carotid sinus stimulation',2),(5,'2024-07-16 17:41:03','2024-07-05 17:16:06',NULL,NULL,1,'68788-108',1,2,5,NULL,NULL,2);
/*!40000 ALTER TABLE `docket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket_reason`
--

DROP TABLE IF EXISTS `docket_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket_reason` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket_reason`
--

LOCK TABLES `docket_reason` WRITE;
/*!40000 ALTER TABLE `docket_reason` DISABLE KEYS */;
INSERT INTO `docket_reason` VALUES (1,'2024-07-02 15:22:57','2024-07-18 19:24:30',NULL,NULL,'Nhập kho',1),(2,'2024-07-31 11:59:41','2024-07-16 04:19:25',NULL,NULL,'Xuất kho',1),(3,'2024-07-31 11:59:41','2024-07-16 04:19:25',NULL,NULL,'Mua hàng',1),(4,'2024-07-31 11:59:41','2024-07-16 04:19:25',NULL,NULL,'Điều chuyển kho',1),(5,'2024-07-02 14:35:04','2024-07-11 18:05:41',NULL,NULL,'Kiểm kho',1),(6,'2024-07-13 15:19:28','2024-07-11 10:36:10',NULL,NULL,'Trả hàng lỗi',2);
/*!40000 ALTER TABLE `docket_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket_variant`
--

DROP TABLE IF EXISTS `docket_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket_variant` (
  `docket_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`docket_id`,`variant_id`),
  KEY `FK_DOCKET_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_DOCKET_VARIANT_ON_DOCKET` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  CONSTRAINT `FK_DOCKET_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket_variant`
--

LOCK TABLES `docket_variant` WRITE;
/*!40000 ALTER TABLE `docket_variant` DISABLE KEYS */;
INSERT INTO `docket_variant` VALUES (1,1,2),(1,2,1),(1,4,2),(1,5,2),(1,6,2),(1,7,2),(1,8,2),(1,9,2),(1,10,2),(1,11,2),(1,12,2),(1,13,2),(1,14,2),(1,15,2),(1,16,17),(1,17,8),(1,18,24),(1,19,25),(1,20,6),(1,21,18),(1,22,11),(1,23,6),(1,24,6),(1,25,24),(1,26,10),(1,27,19),(1,28,16),(1,29,14),(1,30,19),(1,31,24),(1,32,20),(1,33,10),(1,34,9),(1,35,18),(1,36,16),(1,37,15),(1,38,23),(1,39,10),(1,40,25),(1,41,13),(1,42,20),(1,43,24),(1,44,17),(1,45,8),(1,46,12),(1,47,7),(1,48,22),(1,49,22),(1,50,20),(1,51,9),(1,52,5),(1,53,16),(1,54,6),(1,55,6),(1,56,11),(1,57,7),(1,58,17),(1,59,14),(1,60,11),(1,61,17),(1,62,22),(1,63,13),(1,64,11),(1,65,17),(1,66,22),(1,67,18),(1,68,10),(1,69,23),(1,70,19),(1,71,6),(1,72,14),(1,73,11),(1,74,19),(1,75,20),(1,76,10),(1,77,10),(1,78,7),(1,79,16),(1,80,15),(1,81,19),(1,82,23),(1,83,19),(1,84,25),(1,85,10),(1,86,22),(1,87,21),(1,88,21),(1,89,16),(1,90,5),(1,91,11),(1,92,9),(1,93,21),(1,94,21),(1,95,8),(1,96,6),(1,97,11),(1,98,7),(1,99,19),(1,100,13),(1,101,12),(1,102,13),(1,103,8),(2,2,2),(2,3,1),(3,3,2);
/*!40000 ALTER TABLE `docket_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `office_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `job_type_id` bigint NOT NULL,
  `job_level_id` bigint NOT NULL,
  `job_title_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_employee_user` (`user_id`),
  KEY `FK_EMPLOYEE_ON_DEPARTMENT` (`department_id`),
  KEY `FK_EMPLOYEE_ON_JOB_LEVEL` (`job_level_id`),
  KEY `FK_EMPLOYEE_ON_JOB_TITLE` (`job_title_id`),
  KEY `FK_EMPLOYEE_ON_JOB_TYPE` (`job_type_id`),
  KEY `FK_EMPLOYEE_ON_OFFICE` (`office_id`),
  CONSTRAINT `FK_EMPLOYEE_ON_DEPARTMENT` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_JOB_LEVEL` FOREIGN KEY (`job_level_id`) REFERENCES `job_level` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_JOB_TITLE` FOREIGN KEY (`job_title_id`) REFERENCES `job_title` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_JOB_TYPE` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_OFFICE` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'2024-07-04 07:46:15','2024-07-10 11:49:52',NULL,NULL,3,4,5,2,3,4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guarantee`
--

DROP TABLE IF EXISTS `guarantee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guarantee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guarantee`
--

LOCK TABLES `guarantee` WRITE;
/*!40000 ALTER TABLE `guarantee` DISABLE KEYS */;
INSERT INTO `guarantee` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Bảo hành 6 tháng',NULL,1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Bảo hành 1 năm','Lorem ipsum dolor sit amet, consectetur adipiscing elit',2);
/*!40000 ALTER TABLE `guarantee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `size` bigint NOT NULL,
  `group` varchar(255) NOT NULL,
  `is_thumbnail` bit(1) NOT NULL,
  `is_eliminated` bit(1) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_image_name` (`name`),
  UNIQUE KEY `uc_image_path` (`path`),
  KEY `FK_IMAGE_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_IMAGE_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'2024-07-22 20:25:57','2024-07-14 06:28:15',NULL,NULL,'233x100.png','https://media-api-beta.thinkpro.vn/media/core/products/2024/5/9/xps%2013%20plus%209320%201.png?w=700&h=700','image/png',300,'P',_binary '',_binary '\0',1),(2,'2024-07-06 20:40:45','2024-07-02 20:30:28',NULL,NULL,'185x100.png','https://media-api-beta.thinkpro.vn/media/core/products/2024/5/9/xps%2013%20plus%209320%203.png?w=700&h=700','image/png',200,'P',_binary '\0',_binary '\0',1),(3,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'144x100.png','https://media-api-beta.thinkpro.vn/media/core/products/2024/5/9/xps%2013%20plus%209320%202.png?w=700&h=700','image/png',100,'P',_binary '\0',_binary '\0',1),(4,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'2','https://media-api-beta.thinkpro.vn/media/core/products/2023/2/3/surface-pro-9-thinkpro-1.png','image/png',100,'P',_binary '',_binary '\0',2),(5,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'3','https://media-api-beta.thinkpro.vn/media/core/products/2024/1/15/Lenovo_ThinkPad_X1_Nano_Gen_2.png?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',3),(6,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'4','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/dell-precision-5560-thinkpro-1.png?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',4),(7,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'5','https://media-api-beta.thinkpro.vn/media/core/products/2023/1/16/dell-inspiron-16-plus-7610-thinkpro-01.png?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',5),(8,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'6','https://media-api-beta.thinkpro.vn/media/core/products/2024/11/18/Loa-Harman-Kardon-Onyx-Studio-7-thinkpro-01.jpeg?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',6),(9,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'7','https://media-api-beta.thinkpro.vn/media/core/products/2024/12/18/beosound-2-thinkpro-01.jpeg?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',7),(10,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'8','https://media-api-beta.thinkpro.vn/media/core/products/2024/1/15/mx-keys-1.png?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',8),(11,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'9','https://media-api-beta.thinkpro.vn/media/core/products/2024/3/9/XboxS_05.jpg?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',9),(12,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'10','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2020/9/15/mx2s-01jpg?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',10),(13,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'11','https://media-api-beta.thinkpro.vn/media/core/products/2024/11/8/Intel-Core-i9-13900K-Processor.png?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',11),(14,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'12','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/3/3/g5-desktop-1.jpg?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',12),(15,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,'13','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/1/19/40014002-01.jpg?w=700&h=700','image/png',100,'P',_binary '',_binary '\0',13),(16,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-0','https://media-api-beta.thinkpro.vn/media/core/products/2024/8/26/T14sG2is%202.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',14),(17,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-1','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/1/suface-laptop-3-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',15),(18,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-2','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/lenovo-ideapad-3-14-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',16),(19,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-3','https://media-api-beta.thinkpro.vn/media/core/products/2024/7/25/huawei-matepad-t10-thinkpro-1.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',17),(20,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-4','https://media-api-beta.thinkpro.vn/media/core/products/2024/8/2/LG-Gram-16-2024-ThinkPro.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',18),(21,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-5','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/asus-zenbook-14-q409za-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',19),(22,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-6','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/gigabyte-aorus-15p-gaming-laptop-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',20),(23,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-7','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/AERO-16-XE15-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',21),(24,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-8','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/asus-rog-strix-g15-g513-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',22),(25,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-9','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/asus-tuf-dash-f15-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',23),(26,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-10','https://media-api-beta.thinkpro.vn/media/core/products/2024/3/24/02_FX507.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',24),(27,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-11','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/gigabyte-u4-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',25),(28,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-12','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/Asus-Zenbook-Flip-13-OLED-thinkpor-01.jpeg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',26),(29,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-13','https://media-api-beta.thinkpro.vn/media/core/products/2024/8/22/Macbook-Air-M1-ThinkPro-1.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',27),(30,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-14','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/Asus-TUF-FX706H-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',28),(31,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-15','https://media-api-beta.thinkpro.vn/media/core/products/2023/1/16/hp-envy-13-x360-intel-4Y0Y4PA-thinkpro-01.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',29),(32,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-16','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/gigabyte-g4-thinkpro-01.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',30),(33,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-17','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/asus-tuf-gaming-f15-2024-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',31),(34,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-18','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/hp-pavilion-15-intel-thinkpro-01.jpeg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',32),(35,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-19','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/1/avita-liber-v14-intel-07-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',33),(36,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-20','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/14/huawei-matebook-d16-2024-thinkpro-2.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',34),(37,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-21','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/acer-swift-3-14-amd-thinkpro-1.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',35),(38,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-22','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/lenovo-yoga-slim-7i-14-burgundy-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',36),(39,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-23','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/Modern-14-B11MOU-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',37),(40,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-24','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/4/dell-vostro-14-3405-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',38),(41,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-25','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/Matebook-D15-2024-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',39),(42,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-26','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/dell-vostro-15-3500-intel-gen-07-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',40),(43,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-27','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/acer-aspire-3-15-intel-001-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',41),(44,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-28','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/asus-vivobook-15-pro-oled-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',42),(45,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-29','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/acer-nitro-5-2024-thinkpro-001-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',43),(46,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-30','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/hp-victus-gaming-16-intel-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',44),(47,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-31','https://media-api-beta.thinkpro.vn/media/core/products/2024/4/27/ZenBook%20Flip%2014%20OLED_UP5401_Product%20photo_3G_Pine%20Grey_28.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',45),(48,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-32','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/acer-nitro-5-tiger-intel-gen-07-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',46),(49,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-33','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/Acer%20Aspire-5-14-thinkpro-01.jpeg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',47),(50,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-34','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/28/dell-inspiron-15-3511-intel-gen-07-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',48),(51,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-35','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/27/dell-vostro-14-3400-intel-gen-07-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',49),(52,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-36','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/Aspire-3-A315-58-Silver-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',50),(53,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-37','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/28/dell-latitude-3520-intel-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',51),(54,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-38','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/6/5/gram17-21-white-1.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',52),(55,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-39','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/1/dell-inspiron-147420-2-in-1-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',53),(56,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-40','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/10/2/yoga-slim-7-pro-14ihu5-o-ct1-07-thinkpro.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',54),(57,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-41','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/asus-zenbook-14-ux25ea-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',55),(58,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-42','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/6/11/aero15-1.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',56),(59,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-43','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/asus-zenbook-13-ux25ea-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',57),(60,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-44','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/asus-zenbook-14x-oled-space-edition-ux5401-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',58),(61,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-45','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/28/acer-nitro-5-15-intel-gen-07-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',59),(62,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-46','https://media-api-beta.thinkpro.vn/media/core/products/2024/8/3/LG-Gram-14-2024-ThinkPro-10.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',60),(63,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-47','https://media-api-beta.thinkpro.vn/media/core/products/2024/4/15/Dell%20Vostro%205320%20(Chi%CC%81nh%20ha%CC%83ng)%2077.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',61),(64,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-48','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/10/19/macbook-pro-14-inch-large-2x.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',62),(65,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-49','https://media-api-beta.thinkpro.vn/media/core/products/2024/11/1/lenovo-ideapad-5-pro-14iap7-thinkpro-01.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',63),(66,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-50','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/Dell-Vostro-5415-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',64),(67,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-51','https://media-api-beta.thinkpro.vn/media/core/products/2024/4/9/Dell_XPS_9720_17_inch_2024_Thinkpro%204.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',65),(68,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-52','https://media-api-beta.thinkpro.vn/media/core/products/2024/8/1/ThinkPad-T16-1%20(1).jpeg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',66),(69,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-53','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/26/hp-15s-intel-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',67),(70,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-54','https://media-api-beta.thinkpro.vn/media/core/products/2024/4/13/ThinkPad-P1-Gen-4-thinkpro-1-2.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',68),(71,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-55','https://media-api-beta.thinkpro.vn/media/core/products/2024/3/4/A515-OLED-thinkpro-01.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',69),(72,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-56','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/4/14/thinkbook14g2-1.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',70),(73,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-57','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/1/lenovo-legion-5-pro-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',71),(74,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-58','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/microsoft-surface-pro-8-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',72),(75,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-59','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/microsoft-surface-pro-7-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',73),(76,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-60','https://media-api-beta.thinkpro.vn/media/core/products/2024/11/5/A%CC%89nh%20chu%CC%A3p%20Ma%CC%80n%20hi%CC%80nh%202024-07-05%20lu%CC%81c%2010.30.31.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',74),(77,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-61','https://media-api-beta.thinkpro.vn/media/core/products/2023/1/9/lenovo-thinkpad-x1-extreme-gen-3-thinkpro-01.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',75),(78,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-62','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/1/hp-victus-15-2024-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',76),(79,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-63','https://media-api-beta.thinkpro.vn/media/core/products/2024/5/27/Dell%20Inspiron%2014%205420%201.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',77),(80,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-64','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/8/21/dell-inspiron-15-3511.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',78),(81,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-65','https://media-api-beta.thinkpro.vn/media/core/products/2024/1/14/dell-inspiron-13-5310.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',79),(82,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-66','https://media-api-beta.thinkpro.vn/media/core/products/2023/1/9/lenovo-thinkpad-x1-carbon-gen-5-thinkpro-01.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',80),(83,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-67','https://media-api-beta.thinkpro.vn/media/core/products/2024/5/27/Dell%20Inspiron%2016%205620%201.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',81),(84,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-68','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/1/dell-inspiron-14-5425-thinkpro-1.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',82),(85,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-69','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/surface-laptop-3-15inch-thinkpro-01.jpeg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',83),(86,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-70','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/dell-xps-13-9305-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',84),(87,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-71','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/4/dell-inspiron-15-5515-amd-thinkpro-2.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',85),(88,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-72','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/lenovo-thinkbook-13s-gen-2-thinkpro-01.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',86),(89,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-73','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/hp-zbook-firefly-15-g8-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',87),(90,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-74','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2020/7/16/dell-xps-15-9500-XPS15950004NS-Cq9.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',88),(91,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-75','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/2/lenovo-thinkpad-x1-extreme-gen-1-thinkpro-1.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',89),(92,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-76','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2020/11/11/macbook-pro-13-2020.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',90),(93,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-77','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/9/28/dell-latitude-5410.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',91),(94,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-78','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2024/7/6/dell-alienware-m15-r6.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',92),(95,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-79','https://media-api-beta.thinkpro.vn/media/core/products/2024/7/28/Alienware-x15-r1-gaming-thinkpro-01.jpeg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',93),(96,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-80','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2020/7/15/dell-precision-5540-Precision554001NO-8pb.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',94),(97,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-81','https://media-api-beta.thinkpro.vn/media/core/products/2024/10/2/lenovo-thinkpad-x13-gen2.png?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',95),(98,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-82','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/lenovo-thinkpad-t14-gen-2-2024-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',96),(99,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-83','https://media-api-beta.thinkpro.vn/media/core/products/2024/7/25/rwcEpnn3v4Ry9tKAJvX452grx-5591.w520.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',97),(100,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-84','https://media-api-beta.thinkpro.vn/media/core/products/2024/7/27/ThinkBook-16p-NX-ARH-ThinkPro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',98),(101,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-85','https://media-api-beta.thinkpro.vn/backend/uploads/product/color_images/2020/11/11/macbook-air-2020grey01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',99),(102,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-86','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/30/Lenovo-Thinkpad-T14-thinkpro-01.jpg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',100),(103,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'img-87','https://media-api-beta.thinkpro.vn/media/core/products/2024/9/5/LG%20Gram%2016%202%20in%201%202024%209%20Lo%CC%9B%CC%81n.jpeg?w=500&h=500','image/png',1,'P',_binary '',_binary '\0',101);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_level`
--

DROP TABLE IF EXISTS `job_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_level` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_level`
--

LOCK TABLES `job_level` WRITE;
/*!40000 ALTER TABLE `job_level` DISABLE KEYS */;
INSERT INTO `job_level` VALUES (1,'2024-07-11 23:37:21','2024-07-20 10:54:26',NULL,NULL,'Senior',1),(2,'2024-07-08 16:13:12','2024-07-26 19:37:23',NULL,NULL,'Master',2),(3,'2024-07-20 12:14:44','2024-07-30 12:29:20',NULL,NULL,'Intern',3),(4,'2024-07-08 19:12:42','2024-07-16 21:32:18',NULL,NULL,'Fresher',1);
/*!40000 ALTER TABLE `job_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_title`
--

DROP TABLE IF EXISTS `job_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_title` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_title`
--

LOCK TABLES `job_title` WRITE;
/*!40000 ALTER TABLE `job_title` DISABLE KEYS */;
INSERT INTO `job_title` VALUES (1,'2024-07-11 23:37:21','2024-07-20 10:54:26',NULL,NULL,'Marketing Manager',1),(2,'2024-07-08 16:13:12','2024-07-26 19:37:23',NULL,NULL,'Librarian',1),(3,'2024-07-20 12:14:44','2024-07-30 12:29:20',NULL,NULL,'Chemical Engineer',3),(4,'2024-07-08 19:12:42','2024-07-16 21:32:18',NULL,NULL,'Paralegal',1),(5,'2024-07-29 23:30:36','2024-07-15 11:44:18',NULL,NULL,'Compensation Analyst',3);
/*!40000 ALTER TABLE `job_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_type`
--

LOCK TABLES `job_type` WRITE;
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
INSERT INTO `job_type` VALUES (1,'2024-07-11 23:37:21','2024-07-20 10:54:26',NULL,NULL,'Full-time',1),(2,'2024-07-08 16:13:12','2024-07-26 19:37:23',NULL,NULL,'Part-time',1);
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `anchor` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_NOTIFICATION_ON_USER` (`user_id`),
  CONSTRAINT `FK_NOTIFICATION_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (4,'2024-12-12 15:10:41','2024-12-12 15:10:41',NULL,NULL,6,'ORDER','Đơn hàng 6MDUFVDVXGPV của bạn đã được duyệt. Phí vận chuyển là 27.500 ₫. Tổng tiền cần trả là 13.227.500 ₫.','/order/detail/6MDUFVDVXGPV',1),(5,'2024-12-16 21:28:59','2024-12-16 21:28:59',NULL,NULL,6,'ORDER','Đơn hàng OU9G7I61DWEU của bạn đã được duyệt. Phí vận chuyển là 27.500 ₫. Tổng tiền cần trả là 44.027.500 ₫.','/order/detail/OU9G7I61DWEU',1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_office_address` (`address_id`),
  CONSTRAINT `FK_OFFICE_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'2024-07-21 07:19:24','2024-07-26 17:40:14',NULL,NULL,'Talane',1,3),(2,'2024-07-09 08:07:20','2024-07-23 08:36:12',NULL,NULL,'Skyndu',2,1),(3,'2024-07-29 10:10:15','2024-07-21 22:05:41',NULL,NULL,'Yadel',3,2),(4,'2024-07-14 21:49:48','2024-07-11 03:03:22',NULL,NULL,'BlogXS',4,1),(5,'2024-07-18 11:44:50','2024-07-19 19:33:23',NULL,NULL,'BlogXS',5,3);
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `to_phone` varchar(255) NOT NULL,
  `to_address` varchar(255) NOT NULL,
  `to_ward_name` varchar(255) NOT NULL,
  `to_district_name` varchar(255) NOT NULL,
  `to_province_name` varchar(255) NOT NULL,
  `order_resource_id` bigint NOT NULL,
  `order_cancellation_reason_id` bigint DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `total_amount` decimal(15,5) NOT NULL,
  `tax` decimal(15,5) NOT NULL,
  `shipping_cost` decimal(15,5) NOT NULL,
  `total_pay` decimal(15,5) NOT NULL,
  `payment_method_type` varchar(255) NOT NULL,
  `payment_status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_order_code` (`code`),
  KEY `FK_ORDER_ON_ORDER_CANCELLATION_REASON` (`order_cancellation_reason_id`),
  KEY `FK_ORDER_ON_ORDER_RESOURCE` (`order_resource_id`),
  KEY `FK_ORDER_ON_USER` (`user_id`),
  CONSTRAINT `FK_ORDER_ON_ORDER_CANCELLATION_REASON` FOREIGN KEY (`order_cancellation_reason_id`) REFERENCES `order_cancellation_reason` (`id`),
  CONSTRAINT `FK_ORDER_ON_ORDER_RESOURCE` FOREIGN KEY (`order_resource_id`) REFERENCES `order_resource` (`id`),
  CONSTRAINT `FK_ORDER_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2024-07-30 08:32:41','2024-07-17 03:28:55',NULL,NULL,'68400-107',1,'thang','0909998877','Streaming house','Phường 14','Quận 10','TP Hồ Chí Minh',5,NULL,NULL,4,500000.00000,0.10000,50000.00000,600000.00000,'CASH',1),(2,'2024-07-02 23:20:36','2024-07-02 09:02:05',NULL,NULL,'36987-166',4,'do mixi','0909998877','Streaming house','Phường 14','Quận 10','TP Hồ Chí Minh',1,NULL,'Insertion of Other Device into Left Upper Leg, Perc Approach',4,600000.00000,0.10000,40000.00000,700000.00000,'CASH',2),(4,'2024-12-11 01:39:08','2024-12-11 01:39:08',NULL,NULL,'8JHJOAJCEBTF',1,'asasasas asdd','0335548880','sqwewqe','Xã Phong Thạnh Tây B','Huyện Phước Long','Bạc Liêu',1,NULL,NULL,6,12000000.00000,0.10000,0.00000,13200000.00000,'CASH',1),(5,'2024-12-11 01:41:09','2024-12-11 01:41:09',NULL,NULL,'TJAK5NCLOKSL',5,'asasasas asdd','0335548880','sqwewqe','Xã Phong Thạnh Tây B','Huyện Phước Long','Bạc Liêu',1,4,NULL,6,22000000.00000,0.10000,0.00000,24200000.00000,'CASH',1),(6,'2024-12-12 01:51:58','2024-12-12 01:51:58',NULL,NULL,'ERV7EAZ7DO36',1,'asasasas asdd','0335548880','sqwewqe','Xã Phong Thạnh Tây B','Huyện Phước Long','Bạc Liêu',1,NULL,NULL,6,12000000.00000,0.10000,0.00000,13200000.00000,'CASH',1),(7,'2024-12-12 04:12:08','2024-12-12 04:12:08',NULL,NULL,'6MDUFVDVXGPV',4,'asasasas asdd','0335548880','sqwewqe','Xã Phong Thạnh Tây B','Huyện Phước Long','Bạc Liêu',1,NULL,NULL,6,12000000.00000,0.10000,27500.00000,13227500.00000,'CASH',2),(9,'2024-12-16 21:26:56','2024-12-16 21:26:56',NULL,NULL,'ZLSACXA5NMAP',1,'asasasas asdd','0335548880','sqwewqe','Xã Phong Thạnh Tây B','Huyện Phước Long','Bạc Liêu',1,NULL,NULL,6,10200000.00000,0.10000,0.00000,11220000.00000,'CASH',1),(10,'2024-12-16 21:27:27','2024-12-16 21:27:27',NULL,NULL,'OU9G7I61DWEU',4,'asasasas asdd','0335548880','sqwewqe','Xã Phong Thạnh Tây B','Huyện Phước Long','Bạc Liêu',1,NULL,NULL,6,40000000.00000,0.10000,27500.00000,44027500.00000,'CASH',2);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_cancellation_reason`
--

DROP TABLE IF EXISTS `order_cancellation_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_cancellation_reason` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_cancellation_reason`
--

LOCK TABLES `order_cancellation_reason` WRITE;
/*!40000 ALTER TABLE `order_cancellation_reason` DISABLE KEYS */;
INSERT INTO `order_cancellation_reason` VALUES (1,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,'Giao hàng nhưng khách không nhận','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',1),(2,'2024-07-31 03:37:36','2024-07-20 05:49:33',NULL,NULL,'Hết hàng trong kho',NULL,1),(3,'2024-07-01 03:46:49','2024-07-22 10:13:24',NULL,NULL,'Khách hàng hủy',NULL,1),(4,'2024-07-14 10:30:34','2024-07-16 11:45:21',NULL,NULL,'Không liên hệ được','Cras felis urna, facilisis at finibus non, pharetra in turpis.',1),(5,'2024-07-26 05:18:38','2024-07-02 14:58:07',NULL,NULL,'Nhân viên làm sai',NULL,2);
/*!40000 ALTER TABLE `order_cancellation_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_resource`
--

DROP TABLE IF EXISTS `order_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `customer_resource_id` bigint DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_order_resource_code` (`code`),
  KEY `FK_ORDER_RESOURCE_ON_CUSTOMER_RESOURCE` (`customer_resource_id`),
  CONSTRAINT `FK_ORDER_RESOURCE_ON_CUSTOMER_RESOURCE` FOREIGN KEY (`customer_resource_id`) REFERENCES `customer_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_resource`
--

LOCK TABLES `order_resource` WRITE;
/*!40000 ALTER TABLE `order_resource` DISABLE KEYS */;
INSERT INTO `order_resource` VALUES (1,'2024-07-22 11:46:21','2024-07-13 04:37:06',NULL,NULL,'BIZ','Bizweb','Orange',NULL,1),(2,'2024-07-10 08:25:22','2024-07-08 03:30:06',NULL,NULL,'FBK','Facebook','Yellow',NULL,1),(4,'2024-07-31 07:37:30','2024-07-22 23:11:03',NULL,NULL,'POS','POS','Indigo',2,1),(5,'2024-07-21 07:55:27','2024-07-03 19:34:58',NULL,NULL,'WEB','Website','Pink',3,1);
/*!40000 ALTER TABLE `order_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_variant`
--

DROP TABLE IF EXISTS `order_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_variant` (
  `order_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `price` decimal(15,5) NOT NULL,
  `quantity` int NOT NULL,
  `amount` decimal(15,5) NOT NULL,
  PRIMARY KEY (`order_id`,`variant_id`),
  KEY `FK_ORDER_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_ORDER_VARIANT_ON_ORDER` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FK_ORDER_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_variant`
--

LOCK TABLES `order_variant` WRITE;
/*!40000 ALTER TABLE `order_variant` DISABLE KEYS */;
INSERT INTO `order_variant` VALUES (1,1,100000.00000,1,100000.00000),(1,2,200000.00000,2,400000.00000),(2,3,300000.00000,2,600000.00000),(4,4,12000000.00000,1,12000000.00000),(5,13,22000000.00000,1,22000000.00000),(6,4,12000000.00000,1,12000000.00000),(7,4,12000000.00000,1,12000000.00000),(9,14,10200000.00000,1,10200000.00000),(10,7,40000000.00000,1,40000000.00000);
/*!40000 ALTER TABLE `order_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'2024-07-16 00:00:00','2024-07-16 00:00:00',NULL,NULL,'Tiền mặt','CASH',1);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preorder`
--

DROP TABLE IF EXISTS `preorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_preorder` (`user_id`,`product_id`),
  KEY `FK_PREORDER_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_PREORDER_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_PREORDER_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preorder`
--

LOCK TABLES `preorder` WRITE;
/*!40000 ALTER TABLE `preorder` DISABLE KEYS */;
INSERT INTO `preorder` VALUES (1,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,4,1,1);
/*!40000 ALTER TABLE `preorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text,
  `status` tinyint NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `specifications` json DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `guarantee_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_product_code` (`code`),
  UNIQUE KEY `uc_product_slug` (`slug`),
  KEY `FK_PRODUCT_ON_BRAND` (`brand_id`),
  KEY `FK_PRODUCT_ON_CATEGORY` (`category_id`),
  KEY `FK_PRODUCT_ON_GUARANTEE` (`guarantee_id`),
  KEY `FK_PRODUCT_ON_SUPPLIER` (`supplier_id`),
  KEY `FK_PRODUCT_ON_UNIT` (`unit_id`),
  CONSTRAINT `FK_PRODUCT_ON_BRAND` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_GUARANTEE` FOREIGN KEY (`guarantee_id`) REFERENCES `guarantee` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_SUPPLIER` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_UNIT` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'2024-07-10 11:43:15','2024-07-29 10:23:48',NULL,NULL,'Dell XPS 13 9315','0003-1967','ealdus0','Pellentesque ultrices mattis odio. Donec vitae nisi.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',1,1,3,5,2,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',602,2),(2,'2024-07-04 12:24:24','2024-07-22 19:25:02',NULL,NULL,'Microsoft Surface Pro 9','0049-0530','eblackaller1','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',1,1,5,5,2,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',851,1),(3,'2024-07-20 03:49:30','2024-07-12 10:55:49',NULL,NULL,'Lenovo ThinkPad X1 Nano Gen 2','58232-0051','fblakeborough2','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',1,1,3,3,2,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',874,1),(4,'2024-07-17 11:32:13','2024-07-30 21:24:13',NULL,NULL,'Dell Precision 15 5560','11822-0590','jsauvage3','In congue. Etiam justo.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',1,1,4,4,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',553,2),(5,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'New Inspiron 16 Plus Laptop','49288-0458','gphuprate4','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(6,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Loa Harman Kardon Onyx Studio 7','49288-3039','harman','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,2,5,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(7,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Loa di động B&O BeoSound','49288-3937','beosound','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,2,7,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(8,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Bàn phím không dây Logitech MX Keys','32323-3937','logitech','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,3,7,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(9,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Máy chơi game Xbox S','23231-3937','xbox-s','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,4,3,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(10,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Chuột Logitech MX Anywhere 2S','31222-3937','logi-mx','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,5,2,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(11,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Intel Core i9-13900K','22344-3937','i9-13900','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,6,4,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(12,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Gaming G5 5000','56555-3937','dell-g5','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,7,5,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(13,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Túi Laptop chống sốc ReeYee 4001/4002','55544-3937','ree-yee','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,8,11,3,1,'{\"content\": [{\"id\": 1, \"code\": \"screen-size\", \"name\": \"Cỡ màn hình\", \"value\": \"15 inch\"}, {\"id\": 2, \"code\": \"cpu\", \"name\": \"CPU\", \"value\": \"Intel Core i7\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": [\"S\", \"M\", \"L\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đỏ\", \"Xanh dương\"]}], \"totalElements\": 2}',751,2),(14,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad T14s Gen 2 (Intel)','prod-0','prod-0','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(15,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Asus Ultra Thin 15 (LM510MA)','prod-1','prod-1','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(16,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Surface Laptop 3 13.5\"','prod-2','prod-2','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(17,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo IdeaPad 3 14 (Intel Gen 11)','prod-3','prod-3','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(18,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'HUAWEI MatePad T 10','prod-4','prod-4','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(19,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'LG Gram 16 2024','prod-5','prod-5','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(20,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS Zenbook 14 Q409ZA','prod-6','prod-6','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(21,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'GIGABYTE AORUS 15P Gaming Laptop','prod-7','prod-7','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(22,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'GIGABYTE AERO 16 XE (Intel gen 12)','prod-8','prod-8','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(23,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS ROG Strix G15 (G513)','prod-9','prod-9','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(24,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Apple Macbook Pro 16 (Apple M1)','prod-10','prod-10','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(25,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS TUF Dash F15 (Chính hãng)','prod-11','prod-11','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(26,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS TUF Gaming F15 (Intel Gen 12)','prod-12','prod-12','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(27,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'GIGABYTE U4','prod-13','prod-13','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(28,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Asus Zenbook Flip 13 UX363 OLED','prod-14','prod-14','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(29,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Apple Macbook Air (Chính hãng - Apple M1 - Late 2020)','prod-15','prod-15','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(30,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS TUF Gaming FX706H','prod-16','prod-16','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(31,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'HP Envy 13 X360 Intel (Chính hãng)','prod-17','prod-17','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(32,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'GIGABYTE G5 Gaming Laptop','prod-18','prod-18','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(33,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS TUF Gaming F15 2024 (Chính hãng)','prod-19','prod-19','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(34,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'HP Pavilion 15 (Intel Gen 11)','prod-20','prod-20','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(35,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'AVITA Liber V14 Intel','prod-21','prod-21','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(36,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'HUAWEI MateBook D16 2024','prod-22','prod-22','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(37,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Acer Swift 3 14 AMD (Chính hãng)','prod-23','prod-23','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(38,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo Yoga Slim 7i 14 (Chính hãng)','prod-24','prod-24','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(39,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'MSI Modern 14 B11','prod-25','prod-25','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(40,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Vostro 14 3405 (Chính hãng)','prod-26','prod-26','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(41,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Huawei MateBook D15 2024','prod-27','prod-27','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(42,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Vostro 15 3500 Intel gen 11 (Chính Hãng)','prod-28','prod-28','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(43,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Acer Aspire 3 15 Intel (Chính hãng)','prod-29','prod-29','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(44,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Asus Vivobook 15 Pro OLED','prod-30','prod-30','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(45,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS Zenbook Flip 14 OLED','prod-31','prod-31','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(46,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Acer Nitro 5 Tiger Intel Gen 12 (Chính hãng)','prod-32','prod-32','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(47,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Acer Aspire 5 14 (Chính hãng)','prod-33','prod-33','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(48,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 15 3511 Intel gen 11 (Chính hãng)','prod-34','prod-34','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(49,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Vostro 14 3400 Intel gen 11 (Chính Hãng)','prod-35','prod-35','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(50,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Acer Aspire 3 15 Intel gen 11 (Chính hãng)','prod-36','prod-36','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(51,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Latitude 3520 Intel (Chính hãng)','prod-37','prod-37','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(52,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'LG Gram 17\'\' 2024','prod-38','prod-38','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(53,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'LG Gram 16 2024 (No OS)','prod-39','prod-39','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(54,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo Yoga Slim 7i Pro (Chính hãng)','prod-40','prod-40','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(55,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Asus ZenBook 14 UX425','prod-41','prod-41','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(56,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'GIGABYTE AERO 15 OLED','prod-42','prod-42','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(57,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'ASUS ZenBook 13 UX325 OLED','prod-43','prod-43','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(58,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Asus Zenbook 14X OLED Space Edition UX5401','prod-44','prod-44','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(59,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Acer Nitro 5 15 Intel Gen 11 - Chính hãng','prod-45','prod-45','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(60,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'LG Gram 14 2024','prod-46','prod-46','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(61,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Vostro 5320','prod-47','prod-47','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(62,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Apple Macbook Pro 14 (Apple M1)','prod-48','prod-48','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(63,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo IdeaPad 5 Pro 14IAP7','prod-49','prod-49','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(64,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Vostro 5415','prod-50','prod-50','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(65,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell XPS 17 9720 (Intel Gen 12th)','prod-51','prod-51','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(66,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad T16','prod-52','prod-52','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(67,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'HP 15s Intel (Chính hãng)','prod-53','prod-53','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(68,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad P1 Gen 5','prod-54','prod-54','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(69,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Asus Vivobook 15 A515 OLED','prod-55','prod-55','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(70,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkBook 14s G2 (Intel)','prod-56','prod-56','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(71,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo Legion 5 Pro','prod-57','prod-57','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(72,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Microsoft Surface Pro 8','prod-58','prod-58','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(73,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Microsoft Surface Pro 7 Plus','prod-59','prod-59','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(74,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad T14s Gen 3','prod-60','prod-60','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(75,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad X1 Extreme Gen 3','prod-61','prod-61','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(76,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell XPS 13 9300','prod-62','prod-62','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(77,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Acer Nitro 5 Tiger (Intel Gen 12th)','prod-63','prod-63','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(78,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 14 5415','prod-64','prod-64','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(79,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 14 5420','prod-65','prod-65','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(80,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Samsung Galaxy Book Flex 2 Alpha','prod-66','prod-66','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(81,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 15 3511','prod-67','prod-67','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(82,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 13 5310','prod-68','prod-68','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(83,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad X1 Carbon Gen 5','prod-69','prod-69','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(84,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 16 5620','prod-70','prod-70','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1),(85,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 14 7425 2 in 1','prod-71','prod-71','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(86,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo IdeaPad 3 14 Intel (Nhập khẩu)','prod-72','prod-72','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(87,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 14 5425','prod-73','prod-73','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(88,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Surface Laptop 3 15\"','prod-74','prod-74','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(89,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell XPS 13 9305','prod-75','prod-75','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(90,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Inspiron 15 5515 AMD','prod-76','prod-76','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(91,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkBook 13s Gen 2','prod-77','prod-77','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(92,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'HP Zbook Firefly 15 G8','prod-78','prod-78','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,5,1,1,NULL,NULL,1,1),(93,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell XPS 15 9500','prod-79','prod-79','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(94,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad X1 Extreme Gen 1','prod-80','prod-80','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(95,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Apple Macbook Pro 13 (M1, Late 2020 - Apple Silicon)','prod-81','prod-81','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(96,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Latitude 5410','prod-82','prod-82','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,4,1,1,NULL,NULL,1,1),(97,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'HP 14s Notebook','prod-83','prod-83','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(98,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Alienware m15 R6','prod-84','prod-84','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(99,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Alienware x15 R1 GAMING','prod-85','prod-85','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,1,1,1,NULL,NULL,1,1),(100,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Dell Precision 5540','prod-86','prod-86','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,2,1,1,NULL,NULL,1,1),(101,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,'Lenovo ThinkPad X13 Gen 2 (AMD)','prod-87','prod-87','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',1,1,3,1,1,NULL,NULL,1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_inventory_limit`
--

DROP TABLE IF EXISTS `product_inventory_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_inventory_limit` (
  `product_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `minimum_limit` int DEFAULT NULL,
  `maximum_limit` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `FK_PRODUCT_INVENTORY_LIMIT_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventory_limit`
--

LOCK TABLES `product_inventory_limit` WRITE;
/*!40000 ALTER TABLE `product_inventory_limit` DISABLE KEYS */;
INSERT INTO `product_inventory_limit` VALUES (1,'2024-07-09 01:57:18','2024-07-24 14:19:47',NULL,NULL,5,NULL),(2,'2024-07-19 07:44:19','2024-07-18 00:00:22',NULL,NULL,10,20),(3,'2024-07-13 16:55:03','2024-07-29 12:08:00',NULL,NULL,NULL,20);
/*!40000 ALTER TABLE `product_inventory_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tag` (
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `FK_PRODUCT_TAG_ON_TAG` (`tag_id`),
  CONSTRAINT `FK_PRODUCT_TAG_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_PRODUCT_TAG_ON_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` VALUES (1,1),(2,1),(4,1),(1,2),(3,2);
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `percent` int NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'2023-07-08 11:14:35','2023-07-08 11:14:35',NULL,NULL,'Khuyến mãi tháng 3','2023-07-08 00:00:00','2023-07-19 00:00:00',10,1);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_product`
--

DROP TABLE IF EXISTS `promotion_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_product` (
  `promotion_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`promotion_id`,`product_id`),
  KEY `FK_PROMOTION_PRODUCT_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_PROMOTION_PRODUCT_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_PROMOTION_PRODUCT_ON_PROMOTION` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_product`
--

LOCK TABLES `promotion_product` WRITE;
/*!40000 ALTER TABLE `promotion_product` DISABLE KEYS */;
INSERT INTO `promotion_product` VALUES (1,1);
/*!40000 ALTER TABLE `promotion_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Kích cỡ','size','Lorem ipsum dolor sit amet',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Màu sắc','color',NULL,1);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Nội','01'),(2,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Vĩnh Phúc','26'),(3,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bắc Ninh','27'),(4,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hải Dương','30'),(5,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hải Phòng','31'),(6,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hưng Yên','33'),(7,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thái Bình','34'),(8,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Nam','35'),(9,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Cà Mau','96'),(10,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Giang','02'),(11,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Cao Bằng','04'),(12,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bắc Kạn','06'),(13,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Tuyên Quang','08'),(14,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thái Nguyên','19'),(15,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lạng Sơn','20'),(16,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Ninh','22'),(17,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bắc Giang','24'),(18,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Phú Thọ','25'),(19,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lào Cai','10'),(20,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Điện Biên','11'),(21,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lai Châu','12'),(22,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Sơn La','14'),(23,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Yên Bái','15'),(24,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hoà Bình','17'),(25,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Phước','70'),(26,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Tây Ninh','72'),(27,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Dương','74'),(28,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đồng Nai','75'),(29,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hồ Chí Minh','79'),(30,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bà Rịa - Vũng Tàu','77'),(31,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Nam Định','36'),(32,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Ninh Bình','37'),(33,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thanh Hóa','38'),(34,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Nghệ An','40'),(35,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Tĩnh','42'),(36,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Bình','44'),(37,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Trị','45'),(38,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thừa Thiên Huế','46'),(39,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đà Nẵng','48'),(40,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Nam','49'),(41,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Ngãi','51'),(42,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Định','52'),(43,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Phú Yên','54'),(44,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Khánh Hòa','56'),(45,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Ninh Thuận','58'),(46,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Thuận','60'),(47,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Kon Tum','62'),(48,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Gia Lai','64'),(49,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đắk Lắk','66'),(50,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đắk Nông','67'),(51,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lâm Đồng','68'),(52,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Long An','80'),(53,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Tiền Giang','82'),(54,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bến Tre','83'),(55,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Trà Vinh','84'),(56,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Vĩnh Long','86'),(57,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đồng Tháp','87'),(58,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'An Giang','89'),(59,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Kiên Giang','91'),(60,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Cần Thơ','92'),(61,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hậu Giang','93'),(62,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Sóc Trăng','94'),(63,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bạc Liêu','95');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `supplier_id` bigint NOT NULL,
  `destination_id` bigint NOT NULL,
  `total_amount` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_purchase_order_code` (`code`),
  KEY `FK_PURCHASE_ORDER_ON_DESTINATION` (`destination_id`),
  KEY `FK_PURCHASE_ORDER_ON_SUPPLIER` (`supplier_id`),
  CONSTRAINT `FK_PURCHASE_ORDER_ON_DESTINATION` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`id`),
  CONSTRAINT `FK_PURCHASE_ORDER_ON_SUPPLIER` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
INSERT INTO `purchase_order` VALUES (1,'2024-07-19 22:22:03','2024-07-02 04:27:05',NULL,NULL,'41520-499',1,1,1000000,'Revision of Intraluminal Device in Fallopian Tube, Endo',1),(2,'2024-07-13 16:31:05','2024-07-13 01:47:12',NULL,NULL,'48951-203',2,1,2500000,NULL,2),(3,'2024-07-17 00:57:29','2024-07-07 13:54:28',NULL,NULL,'68479-116',2,2,3000000,NULL,1),(4,'2024-07-06 13:14:48','2024-07-05 13:10:53',NULL,NULL,'09043-110',2,2,2000000,'Revision of Drainage Device in L Wrist Jt, Open Approach',2),(5,'2024-07-09 04:34:55','2024-07-18 05:16:04',NULL,NULL,'52686-224',3,3,1250000,NULL,2);
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_variant`
--

DROP TABLE IF EXISTS `purchase_order_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order_variant` (
  `purchase_order_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `cost` double NOT NULL,
  `quantity` int NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`purchase_order_id`,`variant_id`),
  KEY `FK_PURCHASE_ORDER_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_PURCHASE_ORDER_VARIANT_ON_PURCHASE_ORDER` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_PURCHASE_ORDER_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_variant`
--

LOCK TABLES `purchase_order_variant` WRITE;
/*!40000 ALTER TABLE `purchase_order_variant` DISABLE KEYS */;
INSERT INTO `purchase_order_variant` VALUES (1,1,250000,2,500000),(1,2,500000,1,500000),(2,2,500000,2,1000000),(2,3,1500000,1,1500000),(3,3,1500000,2,3000000);
/*!40000 ALTER TABLE `purchase_order_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_refresh_token_token` (`token`),
  KEY `FK_REFRESH_TOKEN_ON_USER` (`user_id`),
  CONSTRAINT `FK_REFRESH_TOKEN_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
INSERT INTO `refresh_token` VALUES (1,'2024-12-11 01:29:33','2024-12-11 01:29:33',NULL,NULL,6,'83db075f-621c-4961-9b53-1fd0f163010b','2024-12-12 01:29:33'),(2,'2024-12-11 01:33:04','2024-12-11 01:33:04',NULL,NULL,7,'be791f76-f427-49d7-b709-ae1d1e63bbd9','2024-12-12 01:33:04'),(3,'2024-12-12 01:51:03','2024-12-12 01:51:03',NULL,NULL,6,'00a11696-8ba0-4b06-b199-5f3b1ec776c4','2024-12-13 01:51:03'),(4,'2024-12-12 04:11:49','2024-12-12 04:11:49',NULL,NULL,6,'bac8dbc1-bd4e-4b7a-a27b-6122833425c7','2024-12-13 04:11:49'),(5,'2024-12-12 04:21:12','2024-12-12 04:21:12',NULL,NULL,6,'33745bd1-7b8e-4e1b-84d5-2d8b269c2f7a','2024-12-13 04:21:12'),(6,'2024-12-12 04:26:09','2024-12-12 04:26:09',NULL,NULL,7,'07754d00-9734-4d9f-9bf6-24ad50339eb8','2024-12-13 04:26:09'),(7,'2024-12-12 04:54:39','2024-12-12 04:54:39',NULL,NULL,7,'fcc0de21-8144-4929-bd46-09ab2d7217e3','2024-12-13 04:54:39'),(8,'2024-12-12 16:18:25','2024-12-12 16:18:25',NULL,NULL,6,'b9e28df0-5816-4a18-9adb-19aec4fc36dc','2024-12-13 16:18:25'),(9,'2024-12-12 16:18:26','2024-12-12 16:18:26',NULL,NULL,6,'079797d5-4869-4307-88ad-7b5c95e39089','2024-12-13 16:18:26'),(10,'2024-12-12 17:54:27','2024-12-12 17:54:27',NULL,NULL,6,'ddf79c55-321f-4213-8b8e-3791d16174fe','2024-12-13 17:54:27'),(11,'2024-12-12 20:56:15','2024-12-12 20:56:15',NULL,NULL,6,'24921cf4-1f29-41bb-945e-3ea74fd92976','2024-12-13 20:56:15'),(12,'2024-12-13 15:08:14','2024-12-13 15:08:14',NULL,NULL,6,'bae2e70d-6620-4229-af32-a66a56fecaa0','2024-12-14 15:08:14'),(13,'2024-12-13 15:10:02','2024-12-13 15:10:02',NULL,NULL,6,'fe5e8fb9-02b9-4066-b9b0-dd3319ff5add','2024-12-14 15:10:02'),(14,'2024-12-13 15:10:02','2024-12-13 15:10:02',NULL,NULL,6,'d4d8dad9-d058-4470-aa39-75cd9ce4cd12','2024-12-14 15:10:02'),(15,'2024-12-13 15:10:04','2024-12-13 15:10:04',NULL,NULL,6,'3496a2e2-80bb-4675-b207-51aba19854b6','2024-12-14 15:10:04'),(16,'2024-12-13 15:10:06','2024-12-13 15:10:06',NULL,NULL,7,'8098268c-4a73-4c4c-900a-fc1aaefb3d6f','2024-12-14 15:10:06'),(17,'2024-12-13 15:32:05','2024-12-13 15:32:05',NULL,NULL,6,'90cb19a4-6d15-4974-aa42-5e7f52b757a7','2024-12-14 15:32:05'),(18,'2024-12-16 18:27:13','2024-12-16 18:27:13',NULL,NULL,6,'efc40652-4b1d-484c-b64d-223ac68c3616','2024-12-17 18:27:13'),(19,'2024-12-16 21:20:24','2024-12-16 21:20:24',NULL,NULL,6,'dde7f31c-d790-43bf-855d-f292614ae4a9','2024-12-17 21:20:24');
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(35) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_role_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'1971-07-11 07:45:46','2006-07-26 03:05:23',NULL,NULL,'ADMIN','Quản trị viên',1),(2,'1995-07-23 17:15:34','1983-07-18 03:01:29',NULL,NULL,'EMPLOYEE','Nhân viên',1),(3,'1989-07-25 23:05:02','2001-07-13 09:01:36',NULL,NULL,'CUSTOMER','Khách hàng',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification`
--

DROP TABLE IF EXISTS `specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_specification_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification`
--

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;
INSERT INTO `specification` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Cỡ màn hình','screen-size','Lorem ipsum dolor sit amet',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'CPU','cpu',NULL,1);
/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_location`
--

DROP TABLE IF EXISTS `storage_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_location` (
  `variant_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `warehouse_id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`variant_id`),
  KEY `FK_STORAGE_LOCATION_ON_WAREHOUSE` (`warehouse_id`),
  CONSTRAINT `FK_STORAGE_LOCATION_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`),
  CONSTRAINT `FK_STORAGE_LOCATION_ON_WAREHOUSE` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_location`
--

LOCK TABLES `storage_location` WRITE;
/*!40000 ALTER TABLE `storage_location` DISABLE KEYS */;
INSERT INTO `storage_location` VALUES (1,'2024-07-03 16:47:22','2024-07-19 19:19:23',NULL,NULL,1,'Kệ 1 Hàng 1'),(2,'2024-07-03 03:46:02','2024-07-06 08:25:05',NULL,NULL,2,'Kệ 2 Hàng 2'),(3,'2024-07-25 14:11:02','2024-07-30 18:56:30',NULL,NULL,3,'Kệ 3 Hàng 4');
/*!40000 ALTER TABLE `storage_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `display_name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `contact_fullname` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_supplier_code` (`code`),
  UNIQUE KEY `uc_supplier_address` (`address_id`),
  CONSTRAINT `FK_SUPPLIER_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'2024-07-16 02:47:51','2024-07-06 15:10:37',NULL,NULL,'Yodo','0944-3032','Aubrie Cowley','acowley0@mysql.com','0919944500','Rhynyx','49349-988','acowley0@japanpost.jp','714-908-9882','Holdlamis',NULL,10,'Oth uni salpingo-oophor','Meningococc endocarditis',3),(2,'2024-07-15 19:55:46','2024-07-20 15:40:51',NULL,NULL,'Roomm','49035-519','Jeth Knipe','jknipe1@nymag.com','0919944500','Babblestorm','43598-012','jknipe1@woothemes.com','134-360-5820','Zathin',NULL,14,'Insert antimicrobial env','Power aircraft acc-psngr',1),(3,'2024-07-07 21:04:34','2024-07-11 13:11:43',NULL,NULL,'Topicblab','43419-861','Alla Gunnell','agunnell2@g.co','0919944500','Voolith','68001-237','agunnell2@amazonaws.com','303-523-6126','Sub-Ex',NULL,15,'Man replac invert uterus','Burn NOS ear',2),(4,'2024-07-16 03:47:13','2024-07-22 18:41:01',NULL,NULL,'Jazzy','68572-6005','Margery Seely','mseely3@xing.com','0919944500','Kwinu','54473-141','mseely3@pagesperso-orange.fr','557-431-0161','Cookley',NULL,13,'CAS w fluoroscopy','Lactation fail-postpart',1),(5,'2024-07-18 12:13:01','2024-07-02 09:04:03',NULL,NULL,'Kimia','49349-675','El De Carlo','ede4@wisc.edu','0919944500','Kanoodle','57520-0467','ede4@exblog.jp','509-999-7966','Zaam-Dox',NULL,11,'Pancreat transplant NOS','Acc poison-analgesic NOS',2);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_tag_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Sản phẩm mới','san-pham-moi',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Sản phẩm nổi bật','san-pham-noi-bat',2);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `export_docket_id` bigint NOT NULL,
  `import_docket_id` bigint NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_transfer_code` (`code`),
  UNIQUE KEY `uc_transfer_export_docket` (`export_docket_id`),
  UNIQUE KEY `uc_transfer_import_docket` (`import_docket_id`),
  CONSTRAINT `FK_TRANSFER_ON_EXPORT_DOCKET` FOREIGN KEY (`export_docket_id`) REFERENCES `docket` (`id`),
  CONSTRAINT `FK_TRANSFER_ON_IMPORT_DOCKET` FOREIGN KEY (`import_docket_id`) REFERENCES `docket` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES (1,'2024-07-01 14:16:33','2024-07-02 23:53:14',NULL,NULL,'06420-076',1,2,'Excision of Right Lower Leg Tendon, Open Approach'),(2,'2024-07-20 08:29:19','2024-07-02 02:52:07',NULL,NULL,'10812-201',3,4,NULL);
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Cái',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Hộp',2);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `address_id` bigint NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_user_address` (`address_id`),
  UNIQUE KEY `uc_user_email` (`email`),
  UNIQUE KEY `uc_user_username` (`username`),
  CONSTRAINT `FK_USER_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2024-07-05 07:30:07','2024-07-05 07:30:07',NULL,NULL,'admin','$2a$10$VsJWsj.z4mu7hwgl24mbLO4kINGNU3NntESfPiZbnslKDts.RqEl6','Nguoi Quan Tri','admin@gmail.com','0919944705','M',1,'http://dummyimage.com/138x100.png/dddddd/000000',1,NULL),(2,'2024-07-07 17:51:29','2024-07-24 10:37:18',NULL,NULL,'jgratten1','$2a$10$VsJWsj.z4mu7hwgl24mbLO4kINGNU3NntESfPiZbnslKDts.RqEl6','Jose Gratten','jgratten1@google.co.jp','0919944709','F',2,'http://dummyimage.com/222x100.png/ff4444/ffffff',1,NULL),(3,'2024-07-30 21:45:42','2024-07-05 17:40:25',NULL,NULL,'ethuillier2','$2a$10$VsJWsj.z4mu7hwgl24mbLO4kINGNU3NntESfPiZbnslKDts.RqEl6','Ermin Thuillier','ethuillier2@jimdo.com','0919944305','M',3,NULL,1,NULL),(4,'2024-07-27 04:22:37','2024-07-04 02:25:59',NULL,NULL,'dtreat3','$2a$10$VsJWsj.z4mu7hwgl24mbLO4kINGNU3NntESfPiZbnslKDts.RqEl6','Danila Treat','dtreat3@nymag.com','0919944735','F',4,NULL,1,NULL),(5,'2024-07-27 11:16:32','2024-07-03 12:04:10',NULL,NULL,'tkorting4','$2a$10$VsJWsj.z4mu7hwgl24mbLO4kINGNU3NntESfPiZbnslKDts.RqEl6','Tanya Korting','tkorting4@livejournal.com','0919944735','F',5,NULL,1,NULL),(6,'2024-12-11 01:28:50','2024-12-11 01:28:50',NULL,NULL,'abc','$2a$10$k7zsCyN/vSSqI4iKnHwiaOxtoSbsqMBG3UnmchGXXlh/FYrELriya','asasasas asdd1231','aaaccc1c@gmail.com','0335548880','M',31,NULL,1,NULL),(7,'2024-12-11 01:32:24','2024-12-11 01:32:24',NULL,NULL,'john_doe','$2a$10$xNbYDhEJwKdYsLFjzUNy/.N0ys6YEYUWpGzyBp9e.1Ybh9iM1OHsy','asasasas asdd','aaacccc@gmail.com','0335548880','M',32,NULL,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_USER_ROLE_ON_ROLE` (`role_id`),
  CONSTRAINT `FK_USER_ROLE_ON_ROLE` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_USER_ROLE_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,1),(7,1),(3,2),(4,3),(5,3),(6,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `sku` varchar(255) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `properties` json DEFAULT NULL,
  `images` json DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_variant_sku` (`sku`),
  KEY `FK_VARIANT_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_VARIANT_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES (1,'2024-07-22 20:25:57','2024-07-14 06:28:15',NULL,NULL,1,'43063-210',9000000,5500000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"S\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,2),(2,'2024-07-06 20:40:45','2024-07-02 20:30:28',NULL,NULL,1,'52125-433',12000000,12500000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"M\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(3,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,1,'48951-8009',10000000,10000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(4,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,2,'abc-2',10000000,12000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(5,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,3,'abc-3',10000000,22000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(6,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,4,'abc-4',10000000,6000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(7,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,5,'abc-5',10000000,40000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(8,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,6,'abc-6',10000000,11000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(9,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,7,'abc-7',10000000,12000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(10,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,8,'8',10000000,8000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(11,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,9,'9',10000000,5000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(12,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,10,'10',10000000,19250000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(13,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,11,'11',10000000,22000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(14,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,12,'12',10000000,10200000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(15,'2024-07-17 02:36:19','2024-07-14 10:10:42',NULL,NULL,13,'13',10000000,12000000,'{\"content\": [{\"id\": 1, \"code\": \"size\", \"name\": \"Kích cỡ\", \"value\": \"L\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đỏ\"}], \"totalElements\": 2}',NULL,1),(16,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,14,'var-0',24990000,24990000,NULL,NULL,1),(17,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,15,'var-1',3790000,3790000,NULL,NULL,1),(18,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,16,'var-2',16990000,16990000,NULL,NULL,1),(19,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,17,'var-3',10090000,10090000,NULL,NULL,1),(20,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,18,'var-4',3500000,3500000,NULL,NULL,1),(21,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,19,'var-5',30990000,30990000,NULL,NULL,1),(22,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,20,'var-6',16790000,16790000,NULL,NULL,1),(23,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,21,'var-7',29690000,29690000,NULL,NULL,1),(24,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,22,'var-8',45990000,45990000,NULL,NULL,1),(25,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,23,'var-9',36990000,36990000,NULL,NULL,1),(26,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,24,'var-10',62990000,62990000,NULL,NULL,1),(27,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,25,'var-11',19990000,19990000,NULL,NULL,1),(28,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,26,'var-12',25990000,25990000,NULL,NULL,1),(29,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,27,'var-13',16090000,16090000,NULL,NULL,1),(30,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,28,'var-14',22690000,22690000,NULL,NULL,1),(31,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,29,'var-15',19690000,19690000,NULL,NULL,1),(32,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,30,'var-16',20490000,20490000,NULL,NULL,1),(33,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,31,'var-17',19790000,19790000,NULL,NULL,1),(34,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,32,'var-18',20990000,20990000,NULL,NULL,1),(35,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,33,'var-19',19990000,19990000,NULL,NULL,1),(36,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,34,'var-20',18990000,18990000,NULL,NULL,1),(37,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,35,'var-21',16090000,16090000,NULL,NULL,1),(38,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,36,'var-22',18990000,18990000,NULL,NULL,1),(39,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,37,'var-23',17790000,17790000,NULL,NULL,1),(40,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,38,'var-24',15990000,15990000,NULL,NULL,1),(41,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,39,'var-25',9490000,9490000,NULL,NULL,1),(42,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,40,'var-26',10990000,10990000,NULL,NULL,1),(43,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,41,'var-27',11990000,11990000,NULL,NULL,1),(44,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,42,'var-28',10090000,10090000,NULL,NULL,1),(45,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,43,'var-29',12990000,12990000,NULL,NULL,1),(46,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,44,'var-30',20490000,20490000,NULL,NULL,1),(47,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,45,'var-31',20090000,20090000,NULL,NULL,1),(48,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,46,'var-32',22700000,22700000,NULL,NULL,1),(49,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,47,'var-33',22990000,22990000,NULL,NULL,1),(50,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,48,'var-34',22490000,22490000,NULL,NULL,1),(51,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,49,'var-35',14599000,14599000,NULL,NULL,1),(52,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,50,'var-36',9990000,9990000,NULL,NULL,1),(53,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,51,'var-37',14990000,14990000,NULL,NULL,1),(54,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,52,'var-38',8990000,8990000,NULL,NULL,1),(55,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,53,'var-39',8990000,8990000,NULL,NULL,1),(56,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,54,'var-40',34090000,34090000,NULL,NULL,1),(57,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,55,'var-41',30990000,30990000,NULL,NULL,1),(58,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,56,'var-42',26690000,26690000,NULL,NULL,1),(59,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,57,'var-43',16990000,16990000,NULL,NULL,1),(60,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,58,'var-44',33990000,33990000,NULL,NULL,1),(61,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,59,'var-45',23690000,23690000,NULL,NULL,1),(62,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,60,'var-46',25990000,25990000,NULL,NULL,1),(63,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,61,'var-47',23690000,23690000,NULL,NULL,1),(64,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,62,'var-48',28990000,28990000,NULL,NULL,1),(65,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,63,'var-49',21990000,21990000,NULL,NULL,1),(66,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,64,'var-50',43890000,43890000,NULL,NULL,1),(67,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,65,'var-51',21690000,21690000,NULL,NULL,1),(68,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,66,'var-52',15790000,15790000,NULL,NULL,1),(69,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,67,'var-53',39990000,39990000,NULL,NULL,1),(70,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,68,'var-54',26990000,26990000,NULL,NULL,1),(71,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,69,'var-55',16690000,16690000,NULL,NULL,1),(72,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,70,'var-56',57990000,57990000,NULL,NULL,1),(73,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,71,'var-57',16090000,16090000,NULL,NULL,1),(74,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,72,'var-58',15990000,15990000,NULL,NULL,1),(75,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,73,'var-59',23990000,23990000,NULL,NULL,1),(76,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,74,'var-60',18990000,18990000,NULL,NULL,1),(77,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,75,'var-61',18390000,18390000,NULL,NULL,1),(78,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,76,'var-62',26390000,26390000,NULL,NULL,1),(79,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,77,'var-63',24990000,24990000,NULL,NULL,1),(80,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,78,'var-64',23990000,23990000,NULL,NULL,1),(81,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,79,'var-65',17990000,17990000,NULL,NULL,1),(82,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,80,'var-66',19990000,19990000,NULL,NULL,1),(83,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,81,'var-67',14990000,14990000,NULL,NULL,1),(84,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,82,'var-68',21990000,21990000,NULL,NULL,1),(85,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,83,'var-69',12390000,12390000,NULL,NULL,1),(86,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,84,'var-70',11790000,11790000,NULL,NULL,1),(87,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,85,'var-71',13990000,13990000,NULL,NULL,1),(88,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,86,'var-72',9990000,9990000,NULL,NULL,1),(89,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,87,'var-73',18390000,18390000,NULL,NULL,1),(90,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,88,'var-74',16790000,16790000,NULL,NULL,1),(91,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,89,'var-75',8990000,8990000,NULL,NULL,1),(92,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,90,'var-76',14390000,14390000,NULL,NULL,1),(93,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,91,'var-77',12990000,12990000,NULL,NULL,1),(94,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,92,'var-78',19990000,19990000,NULL,NULL,1),(95,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,93,'var-79',13490000,13490000,NULL,NULL,1),(96,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,94,'var-80',14990000,14990000,NULL,NULL,1),(97,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,95,'var-81',22390000,22390000,NULL,NULL,1),(98,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,96,'var-82',27990000,27990000,NULL,NULL,1),(99,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,97,'var-83',19990000,19990000,NULL,NULL,1),(100,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,98,'var-84',24990000,24990000,NULL,NULL,1),(101,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,99,'var-85',12990000,12990000,NULL,NULL,1),(102,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,100,'var-86',9990000,9990000,NULL,NULL,1),(103,'2024-07-10 05:01:45','2024-07-12 21:36:14',NULL,NULL,101,'var-87',31990000,31990000,NULL,NULL,1);
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant_inventory_limit`
--

DROP TABLE IF EXISTS `variant_inventory_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant_inventory_limit` (
  `variant_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `minimum_limit` int DEFAULT NULL,
  `maximum_limit` int DEFAULT NULL,
  PRIMARY KEY (`variant_id`),
  CONSTRAINT `FK_VARIANT_INVENTORY_LIMIT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant_inventory_limit`
--

LOCK TABLES `variant_inventory_limit` WRITE;
/*!40000 ALTER TABLE `variant_inventory_limit` DISABLE KEYS */;
INSERT INTO `variant_inventory_limit` VALUES (1,'2024-07-09 01:57:18','2024-07-24 14:19:47',NULL,NULL,5,NULL),(2,'2024-07-09 01:57:18','2024-07-24 14:19:47',NULL,NULL,10,20),(3,'2024-07-09 01:57:18','2024-07-24 14:19:47',NULL,NULL,NULL,20);
/*!40000 ALTER TABLE `variant_inventory_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_verification_user` (`user_id`),
  CONSTRAINT `FK_VERIFICATION_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification`
--

LOCK TABLES `verification` WRITE;
/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
INSERT INTO `verification` VALUES (1,'2024-12-11 01:28:50','2024-12-11 01:28:50',NULL,NULL,6,'4544','2024-12-11 01:33:50','REGISTRATION'),(2,'2024-12-11 01:32:24','2024-12-11 01:32:24',NULL,NULL,7,'6245','2024-12-11 01:37:24','REGISTRATION');
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ward` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  `district_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_WARD_ON_DISTRICT` (`district_id`),
  CONSTRAINT `FK_WARD_ON_DISTRICT` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10600 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address_id` bigint DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_warehouse_code` (`code`),
  UNIQUE KEY `uc_warehouse_address` (`address_id`),
  CONSTRAINT `FK_WAREHOUSE_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'2024-07-16 18:12:55','2024-07-08 04:05:32',NULL,NULL,'WARE-A','Kho A',22,1),(2,'2024-07-28 12:11:14','2024-07-25 15:13:22',NULL,NULL,'WARE-B','Kho B',23,1),(3,'2024-07-16 15:47:15','2024-07-28 18:03:44',NULL,NULL,'WARE-C','Kho C',NULL,2);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waybill`
--

DROP TABLE IF EXISTS `waybill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waybill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `order_id` bigint NOT NULL,
  `shipping_date` datetime NOT NULL,
  `expected_delivery_time` datetime NOT NULL,
  `status` tinyint NOT NULL,
  `cod_amount` int NOT NULL,
  `shipping_fee` int NOT NULL,
  `weight` int NOT NULL,
  `length` int NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `ghn_payment_type_id` int NOT NULL,
  `ghn_required_note` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_waybill_code` (`code`),
  UNIQUE KEY `uc_waybill_order` (`order_id`),
  CONSTRAINT `FK_WAYBILL_ON_ORDER` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waybill`
--

LOCK TABLES `waybill` WRITE;
/*!40000 ALTER TABLE `waybill` DISABLE KEYS */;
INSERT INTO `waybill` VALUES (1,'2023-07-16 00:00:00','2023-07-16 00:00:00',NULL,NULL,'LL939X',1,'2023-07-16 00:00:00','2023-07-18 00:00:00',1,200000,20000,1,50,50,50,NULL,2,'KHONGCHOXEMHANG'),(2,'2024-12-12 15:10:41','2024-12-12 15:10:41',NULL,NULL,'LDRXPP',7,'2024-12-12 00:00:00','2024-12-14 23:59:59',1,13200000,27500,1,1,1,1,NULL,2,'KHONGCHOXEMHANG'),(3,'2024-12-16 21:28:59','2024-12-16 21:28:59',NULL,NULL,'LDMFMN',10,'2024-12-16 00:00:00','2024-12-19 23:59:59',1,44000000,27500,1,1,1,1,NULL,2,'KHONGCHOXEMHANG');
/*!40000 ALTER TABLE `waybill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waybill_log`
--

DROP TABLE IF EXISTS `waybill_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waybill_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `waybill_id` bigint NOT NULL,
  `previous_status` int DEFAULT NULL,
  `current_status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_WAYBILL_LOG_ON_WAYBILL` (`waybill_id`),
  CONSTRAINT `FK_WAYBILL_LOG_ON_WAYBILL` FOREIGN KEY (`waybill_id`) REFERENCES `waybill` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waybill_log`
--

LOCK TABLES `waybill_log` WRITE;
/*!40000 ALTER TABLE `waybill_log` DISABLE KEYS */;
INSERT INTO `waybill_log` VALUES (1,'2024-12-12 15:10:41','2024-12-12 15:10:41',NULL,NULL,2,NULL,1),(2,'2024-12-16 21:28:59','2024-12-16 21:28:59',NULL,NULL,3,NULL,1);
/*!40000 ALTER TABLE `waybill_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish`
--

DROP TABLE IF EXISTS `wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wish` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_wish` (`user_id`,`product_id`),
  KEY `FK_WISH_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_WISH_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_WISH_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish`
--

LOCK TABLES `wish` WRITE;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
INSERT INTO `wish` VALUES (1,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,4,1);
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-16 21:39:38