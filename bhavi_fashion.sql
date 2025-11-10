-- MySQL dump 10.13  Distrib 9.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: bhavi_fashion
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `bhavi_fashion`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bhavi_fashion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bhavi_fashion`;

--
-- Table structure for table `accounts_address`
--

DROP TABLE IF EXISTS `accounts_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_address_user_id_c8c74ddf_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `accounts_address_user_id_c8c74ddf_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_address`
--

LOCK TABLES `accounts_address` WRITE;
/*!40000 ALTER TABLE `accounts_address` DISABLE KEYS */;
INSERT INTO `accounts_address` VALUES (1,'urvisha','784749394','sardardham','surat','ahmedabad','Gujarat','395006',1,2),(2,'urvisha','784749394','sardardham','surat','ahmedabad','Gujarat','395006',0,1);
/*!40000 ALTER TABLE `accounts_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user`
--

DROP TABLE IF EXISTS `accounts_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(10) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user`
--

LOCK TABLES `accounts_user` WRITE;
/*!40000 ALTER TABLE `accounts_user` DISABLE KEYS */;
INSERT INTO `accounts_user` VALUES (1,'pbkdf2_sha256$870000$zFPCdoge7cpLaBvOtbtjE1$OkuSc1crbwXfX2kCLX7C3PS+EGs+/mQWQRUYj9KaoK8=','2025-04-16 18:00:48.030220',0,'UV','Urvisha','Patel','',0,1,'2025-04-14 12:19:25.514256','customer','8320798429',''),(2,'pbkdf2_sha256$870000$MAjXlrPDZs6I7staFbzBZt$ZQWTaHYGqjptXiG9B60+wq5+7QpDNdZ0AhccnxTquHo=','2025-11-10 03:40:45.777316',1,'JK','Krishna','Patel','uvgothadiya1812@gmail.com',1,1,'2025-04-14 12:21:02.000000','admin','8320798566','profile_images/IMG-20240504-WA0008_v8XTAJV.jpg'),(3,'pbkdf2_sha256$870000$2rz4TDSQlUDzpVDAaXgQ0j$LVFVWOhN5jrL0wizxw8fagfQ+C3sL1+hovZhh7Br9DM=',NULL,1,'shiv','','','shiv@gmail.com',1,1,'2025-04-15 11:06:22.636639','customer',NULL,''),(4,'pbkdf2_sha256$870000$6mH2QHP4XZP6bqhB0u0760$AN83wH2V8MGqZE37Yba9DjEOc0IiZutlvN/9zMblkUg=',NULL,1,'uma','','','uma@gmail.com',1,1,'2025-04-15 12:17:06.845318','admin',NULL,''),(5,'pbkdf2_sha256$870000$sk3tEFZgepJ0R6eLLBmmZ2$Vlvl1OJ9YODVnNRN8KTLAmfME7JtoHnK4BWM9EDCUYg=','2025-05-01 09:11:03.356567',0,'UK','Urvisha','Patel','uvgothadiya1812@gmail.com',0,1,'2025-04-28 12:05:14.990205','customer','JK','');
/*!40000 ALTER TABLE `accounts_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user_groups`
--

DROP TABLE IF EXISTS `accounts_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user_groups`
--

LOCK TABLES `accounts_user_groups` WRITE;
/*!40000 ALTER TABLE `accounts_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user_user_permissions`
--

DROP TABLE IF EXISTS `accounts_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user_user_permissions`
--

LOCK TABLES `accounts_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add address',7,'add_address'),(26,'Can change address',7,'change_address'),(27,'Can delete address',7,'delete_address'),(28,'Can view address',7,'view_address'),(29,'Can add coupon',8,'add_coupon'),(30,'Can change coupon',8,'change_coupon'),(31,'Can delete coupon',8,'delete_coupon'),(32,'Can view coupon',8,'view_coupon'),(33,'Can add cart',9,'add_cart'),(34,'Can change cart',9,'change_cart'),(35,'Can delete cart',9,'delete_cart'),(36,'Can view cart',9,'view_cart'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order'),(41,'Can add order item',11,'add_orderitem'),(42,'Can change order item',11,'change_orderitem'),(43,'Can delete order item',11,'delete_orderitem'),(44,'Can view order item',11,'view_orderitem'),(45,'Can add payment',12,'add_payment'),(46,'Can change payment',12,'change_payment'),(47,'Can delete payment',12,'delete_payment'),(48,'Can view payment',12,'view_payment'),(49,'Can add razorpay payment',13,'add_razorpaypayment'),(50,'Can change razorpay payment',13,'change_razorpaypayment'),(51,'Can delete razorpay payment',13,'delete_razorpaypayment'),(52,'Can view razorpay payment',13,'view_razorpaypayment'),(53,'Can add cart item',14,'add_cartitem'),(54,'Can change cart item',14,'change_cartitem'),(55,'Can delete cart item',14,'delete_cartitem'),(56,'Can view cart item',14,'view_cartitem'),(57,'Can add cart item new',15,'add_cartitemnew'),(58,'Can change cart item new',15,'change_cartitemnew'),(59,'Can delete cart item new',15,'delete_cartitemnew'),(60,'Can view cart item new',15,'view_cartitemnew'),(61,'Can add custom design',16,'add_customdesign'),(62,'Can change custom design',16,'change_customdesign'),(63,'Can delete custom design',16,'delete_customdesign'),(64,'Can view custom design',16,'view_customdesign'),(65,'Can add bulk order',17,'add_bulkorder'),(66,'Can change bulk order',17,'change_bulkorder'),(67,'Can delete bulk order',17,'delete_bulkorder'),(68,'Can view bulk order',17,'view_bulkorder'),(69,'Can add tailor application',18,'add_tailorapplication'),(70,'Can change tailor application',18,'change_tailorapplication'),(71,'Can delete tailor application',18,'delete_tailorapplication'),(72,'Can view tailor application',18,'view_tailorapplication'),(73,'Can add category',19,'add_category'),(74,'Can change category',19,'change_category'),(75,'Can delete category',19,'delete_category'),(76,'Can view category',19,'view_category'),(77,'Can add product',20,'add_product'),(78,'Can change product',20,'change_product'),(79,'Can delete product',20,'delete_product'),(80,'Can view product',20,'view_product'),(81,'Can add product image',21,'add_productimage'),(82,'Can change product image',21,'change_productimage'),(83,'Can delete product image',21,'delete_productimage'),(84,'Can view product image',21,'view_productimage'),(85,'Can add product review',22,'add_productreview'),(86,'Can change product review',22,'change_productreview'),(87,'Can delete product review',22,'delete_productreview'),(88,'Can view product review',22,'view_productreview'),(89,'Can add product variant',23,'add_productvariant'),(90,'Can change product variant',23,'change_productvariant'),(91,'Can delete product variant',23,'delete_productvariant'),(92,'Can view product variant',23,'view_productvariant'),(93,'Can add wishlist',24,'add_wishlist'),(94,'Can change wishlist',24,'change_wishlist'),(95,'Can delete wishlist',24,'delete_wishlist'),(96,'Can view wishlist',24,'view_wishlist'),(97,'Can add bulk order item',25,'add_bulkorderitem'),(98,'Can change bulk order item',25,'change_bulkorderitem'),(99,'Can delete bulk order item',25,'delete_bulkorderitem'),(100,'Can view bulk order item',25,'view_bulkorderitem'),(101,'Can add product',26,'add_product'),(102,'Can change product',26,'change_product'),(103,'Can delete product',26,'delete_product'),(104,'Can view product',26,'view_product'),(105,'Can add custom design image',27,'add_customdesignimage'),(106,'Can change custom design image',27,'change_customdesignimage'),(107,'Can delete custom design image',27,'delete_customdesignimage'),(108,'Can view custom design image',27,'view_customdesignimage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulk_orders_bulkorder`
--

DROP TABLE IF EXISTS `bulk_orders_bulkorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulk_orders_bulkorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `quantity` int unsigned NOT NULL,
  `budget` decimal(10,2) NOT NULL,
  `delivery_timeline` varchar(50) NOT NULL,
  `shipping_address` longtext NOT NULL,
  `notes` longtext,
  `status` varchar(20) NOT NULL,
  `rejection_reason` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `advance_payment` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bulk_orders_bulkorder_user_id_dd08d3d5_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `bulk_orders_bulkorder_user_id_dd08d3d5_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
  CONSTRAINT `bulk_orders_bulkorder_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulk_orders_bulkorder`
--

LOCK TABLES `bulk_orders_bulkorder` WRITE;
/*!40000 ALTER TABLE `bulk_orders_bulkorder` DISABLE KEYS */;
INSERT INTO `bulk_orders_bulkorder` VALUES (1,'bhavi fashion','urvisha','832789778','uvgothadiya1812@gmail.com',23,50000.00,'Within 30 days','sardardham','','accepted','','2025-04-14 13:04:18.198580','2025-04-14 13:10:29.253281',2,15000.00,'partial'),(3,'bhavi fashion','urvisha','784749394','uv1812@gmail.com',10,6000.00,'Flexible','sardardham\r\nsurat','hello','accepted','','2025-04-16 04:25:39.790890','2025-04-16 04:30:45.293344',2,1800.00,'partial'),(4,'bhavi fashion','urvisha','ORD250400001','uv1812@gmail.com',20,6000.00,'Within 60 days','sardardham\r\nsurat','htt','accepted','','2025-04-16 05:12:48.026509','2025-04-16 05:39:06.579420',2,1800.00,'partial'),(5,'bhavi fashion','urvisha','ORD250400001','uvgothadiya1812@gmail.com',10,10000.00,'Within 45 days','sardardham\r\nsurat','hello','accepted','','2025-04-16 05:41:44.533726','2025-04-16 05:43:19.881221',2,3000.00,'partial'),(7,'bhavi fashion','urvisha','8298498223','uvgothadiya1812@gmail.com',10,10000.00,'Flexible','sardardham\r\nsurat','jii','accepted','','2025-04-16 16:52:14.881859','2025-04-16 16:54:24.555023',1,3000.00,'partial'),(8,'bhavi fashion','urvisha','8320798429','uvgothadiya1812@gmail.com',30,50000.00,'2 months','sardardham\r\nsurat','hello','accepted','','2025-04-16 17:36:19.817862','2025-04-16 18:17:54.796455',1,15000.00,'partial'),(9,'bhavi fashion','urvisha','832079842yu','uvgothadiya1812@gmail.com',34,50000.00,'2 months','sardardham\r\nsurat','jii','accepted','','2025-04-16 18:31:42.516525','2025-04-16 18:36:55.753253',2,15000.00,'partial'),(10,'bhavi fashion','urvisha','7838273828','uvgothadiya1812@gmail.com',24,6000.00,'2 months','sardardham\r\nsurat','yellow','accepted','','2025-04-16 19:03:04.081481','2025-04-16 19:05:04.646279',2,1800.00,'partial'),(11,'bhavi fashion','urvisha','7838273828','uvgothadiya1812@gmail.com',22,13000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-04-16 19:11:51.493328','2025-04-16 19:13:19.335603',2,3900.00,'partial'),(12,'uk','urvisha','7838273828','uvgothadiya1812@gmail.com',21,13000.00,'2 months','sardardham\r\nsurat','yellow','accepted','','2025-04-16 19:19:46.767032','2025-04-17 02:31:14.247290',2,NULL,'pending'),(13,'kimaan','urvisha','7838273828','uvgothadiya1812@gmail.com',139,13000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-04-17 02:18:03.104218','2025-04-17 02:19:26.860938',2,3900.00,'partial'),(14,'bhavi fashion','Urvisha','7847493942','uv1812@gmail.com',12,74000.00,'2 months','sardardham\r\nsurat','kai nhi','accepted','','2025-05-01 03:24:41.740972','2025-05-01 04:03:00.387770',2,22200.00,'partial'),(15,'bhavi fashion','Urvisha','7847493942','uv1812@gmail.com',12,74000.00,'2 months','sardardham\r\nsurat','hii','accepted','','2025-05-01 08:46:00.352807','2025-05-01 08:49:27.668310',2,22200.00,'partial'),(16,'kk','Urvisha','7847493942','uv1812@gmail.com',10,90000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-05-01 08:46:34.302739','2025-05-01 08:58:15.982623',2,27000.00,'partial'),(17,'bhavi fashion','Urvisha','7847493942','uv1812@gmail.com',13,74000.00,'2 months','sardardham\r\nsurat','hii','accepted','','2025-05-01 09:39:47.407864','2025-05-01 10:02:45.422060',2,22200.00,'partial'),(18,'bhavi fashion','Urvisha','7847493942','uv1812@gmail.com',15,74000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-05-01 09:41:50.804375','2025-05-01 10:11:54.368173',2,22200.00,'partial'),(19,'kanha','Urvisha','7847493942','uvgothadiya1812@gmail.com',45,74000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-05-01 09:45:37.640005','2025-05-01 10:14:57.856793',2,22200.00,'pending'),(20,'kk','Urvisha','7847493942','uv1812@gmail.com',14,90000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-05-01 10:15:42.819434','2025-05-01 10:23:18.508213',2,27000.00,'partial'),(21,'bhavi fashion','Urvisha','7847493942','uvgothadiya1812@gmail.com',14,293000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-05-01 10:16:43.599538','2025-05-01 10:22:09.728754',2,NULL,'pending'),(22,'bhavi fashion','Urvisha','7847493942','uvgothadiya1812@gmail.com',40,29300.00,'2 months','sardardham\r\nsurat','14','accepted','','2025-05-01 10:17:38.436919','2025-05-01 12:29:19.819115',2,8790.00,'partial'),(23,'bhavi fashion','Urvisha','7847493942','uvgothadiya1812@gmail.com',90,29300.00,'2 months','sardardham\r\nsurat','','accepted','','2025-05-01 10:21:32.981967','2025-05-01 10:27:44.327059',2,8790.00,'partial'),(24,'bhavi fashion','Urvisha','7847493942','uvgothadiya1812@gmail.com',56,29300.00,'2 months','sardardham\r\nstreet 2 road','','accepted','','2025-05-01 10:26:31.066098','2025-05-01 10:28:50.439999',2,8790.00,'partial'),(25,'bhavi fashion','Urvisha','7847493942','uv1812@gmail.com',13,74000.00,'2 months','sardardham\r\nsurat','','accepted','','2025-05-01 12:28:03.729254','2025-05-01 12:39:53.601062',2,22200.00,'partial');
/*!40000 ALTER TABLE `bulk_orders_bulkorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulk_orders_bulkorderitem`
--

DROP TABLE IF EXISTS `bulk_orders_bulkorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulk_orders_bulkorderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `custom_design_name` varchar(255) NOT NULL,
  `quantity` int unsigned NOT NULL,
  `size_color` varchar(255) NOT NULL,
  `notes` longtext NOT NULL,
  `bulk_order_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bulk_orders_bulkorde_bulk_order_id_2a4672f0_fk_bulk_orde` (`bulk_order_id`),
  KEY `bulk_orders_bulkorde_product_id_ff242954_fk_products_` (`product_id`),
  CONSTRAINT `bulk_orders_bulkorde_bulk_order_id_2a4672f0_fk_bulk_orde` FOREIGN KEY (`bulk_order_id`) REFERENCES `bulk_orders_bulkorder` (`id`),
  CONSTRAINT `bulk_orders_bulkorde_product_id_ff242954_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `bulk_orders_bulkorderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulk_orders_bulkorderitem`
--

LOCK TABLES `bulk_orders_bulkorderitem` WRITE;
/*!40000 ALTER TABLE `bulk_orders_bulkorderitem` DISABLE KEYS */;
INSERT INTO `bulk_orders_bulkorderitem` VALUES (2,'',10,'pink','hello',3,NULL),(3,'htt',20,'xxl','htt',4,NULL),(4,'hello',10,'xxl','hello',5,NULL),(5,'jii',10,'pink','jii',7,NULL),(6,'',10,'pink','htt',8,4),(7,'flora',20,'yello','hello',8,NULL),(9,'qw',12,'jii','jii',9,NULL),(10,'we',10,'jii','jii',9,1),(11,'',12,'pink','pink',10,4),(12,'kikd',12,'yellow','yellow',10,NULL),(13,'gopi',12,'pink','',11,NULL),(14,'urvisha',10,'yellow','',11,NULL),(15,'',10,'pink','pink',12,3),(16,'urofira',11,'xl/yellow','yellow',12,NULL),(17,'',30,'xxl/pink','',13,4),(18,'',30,'xl/yellow','',13,4),(19,'flora jamin',12,'s,m,l/green','',13,NULL),(20,'cuora',67,'m,xl,xxl-blue','',13,NULL),(21,'',12,'pink','kai nhi',14,3),(22,'kamora',12,'pink','hii',15,NULL),(23,'',10,'xxl','',16,1),(24,'kamora',13,'hii','hii',17,NULL),(25,'',15,'','',18,4),(26,'',45,'pink','',19,2),(27,'',14,'','',20,1),(28,'gopi',14,'hii','',21,NULL),(29,'',40,'14','14',22,1),(30,'',90,'','',23,1),(31,'',56,'','',24,5),(32,'kamora',13,'','',25,NULL);
/*!40000 ALTER TABLE `bulk_orders_bulkorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulk_orders_customdesignimage`
--

DROP TABLE IF EXISTS `bulk_orders_customdesignimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulk_orders_customdesignimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `bulk_order_item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bulk_orders_customde_bulk_order_item_id_20d2cfa5_fk_bulk_orde` (`bulk_order_item_id`),
  CONSTRAINT `bulk_orders_customde_bulk_order_item_id_20d2cfa5_fk_bulk_orde` FOREIGN KEY (`bulk_order_item_id`) REFERENCES `bulk_orders_bulkorderitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulk_orders_customdesignimage`
--

LOCK TABLES `bulk_orders_customdesignimage` WRITE;
/*!40000 ALTER TABLE `bulk_orders_customdesignimage` DISABLE KEYS */;
INSERT INTO `bulk_orders_customdesignimage` VALUES (2,'custom_designs/2025/04/16/IMG-20240514-WA0001.jpg',2),(3,'custom_designs/2025/04/16/IMG-20240514-WA0001_bAvrSaO.jpg',3),(4,'custom_designs/2025/04/16/IMG-20240504-WA0006_Ltdt7pN.jpg',4),(5,'custom_designs/2025/04/16/IMG-20240514-WA0002.jpg',5),(6,'custom_designs/2025/04/16/IMG-20240504-WA0008.jpg',7),(8,'custom_designs/2025/04/17/IMG-20240514-WA0003.jpg',9),(9,'custom_designs/2025/04/17/IMG-20240514-WA0003_yX0sWVV.jpg',10),(10,'custom_designs/2025/04/17/IMG-20240504-WA0008.jpg',12),(11,'custom_designs/2025/04/17/IMG-20240514-WA0003_6HwnPBO.jpg',13),(12,'custom_designs/2025/04/17/IMG-20240514-WA0010.jpg',14),(13,'custom_designs/2025/04/17/IMG-20240515-WA0011.jpg',16),(14,'custom_designs/2025/04/17/IMG-20240504-WA0008_znsTlwy.jpg',19),(15,'custom_designs/2025/04/17/IMG-20240515-WA0016.jpg',20),(16,'custom_designs/2025/05/01/IMG-20240504-WA0008.jpg',22),(17,'custom_designs/2025/05/01/IMG-20240514-WA0009.jpg',24),(18,'custom_designs/2025/05/01/IMG-20240514-WA0010.jpg',28),(19,'custom_designs/2025/05/01/IMG-20240514-WA0010_KkujAgH.jpg',32);
/*!40000 ALTER TABLE `bulk_orders_customdesignimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_designs_customdesign`
--

DROP TABLE IF EXISTS `custom_designs_customdesign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_designs_customdesign` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `design_type` varchar(10) NOT NULL,
  `other_design_type` varchar(50) DEFAULT NULL,
  `fabric_type` varchar(100) NOT NULL,
  `color` json DEFAULT NULL,
  `reference_image` varchar(100) DEFAULT NULL,
  `embroidery` tinyint(1) NOT NULL,
  `measurement_mode` varchar(10) NOT NULL,
  `quantity` int unsigned NOT NULL,
  `timeline` varchar(50) NOT NULL,
  `budget` decimal(10,2) NOT NULL,
  `notes` longtext,
  `status` varchar(20) NOT NULL,
  `rejection_reason` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `accepted_at` datetime(6) DEFAULT NULL,
  `actual_delivery` date DEFAULT NULL,
  `advance_payment` decimal(10,2) NOT NULL,
  `completion_status` varchar(20) NOT NULL,
  `custom_measurements` json NOT NULL DEFAULT (_utf8mb3'{}'),
  `estimated_delivery` date DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL,
  `selected_color` varchar(50) NOT NULL,
  `standard_size` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_designs_customdesign_user_id_c2eaa371_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `custom_designs_customdesign_user_id_c2eaa371_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
  CONSTRAINT `custom_designs_customdesign_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_designs_customdesign`
--

LOCK TABLES `custom_designs_customdesign` WRITE;
/*!40000 ALTER TABLE `custom_designs_customdesign` DISABLE KEYS */;
INSERT INTO `custom_designs_customdesign` VALUES (1,'urvisha','784749394','sardardham\r\nsurat','kurti',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_K7SC2aq.jpg',1,'dynamic',3,'Expedited (2 weeks)',3000.00,'','pending','','2025-04-14 12:36:15.920022','2025-04-15 09:59:50.216009',2,NULL,NULL,900.00,'pending','{\"hips\": null, \"chest\": null, \"waist\": null, \"shoulder\": null, \"top_length\": null, \"sleeve_length\": null}',NULL,'partial','{\"hex\":\"#0084ff\",\"name\":\"Custom Color\"}',NULL),(2,'urvisha','784749394','sardardham\r\nsurat','pant',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_v3x9mJU.jpg',0,'dynamic',2,'Expedited (2 weeks)',2000.00,'good','accepted','','2025-04-14 12:49:11.661804','2025-04-14 13:01:16.436929',2,'2025-04-14 12:49:40.000000','2025-04-18',600.00,'pending','{\"knee\": 67.0, \"rise\": 34.0, \"ankle\": 45.0, \"thigh\": 54.0, \"waist\": null, \"pant_length\": null}','2025-04-23','partial','{\"hex\":\"#e9a23f\",\"name\":\"Custom Color\"}',NULL),(3,'Urvisha Patel','08320798429','sardardham','blouse',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_pcup7EM.jpg',1,'dynamic',1,'Rush (7-10 days)',10000.00,'','pending',NULL,'2025-04-14 15:10:04.018314','2025-04-14 15:10:04.018314',2,NULL,NULL,0.00,'in_progress','{}',NULL,'pending','{\"hex\":\"#ff0000\",\"name\":\"Red\"}','XS'),(4,'chikoo','08320798429','Surat','blouse',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_gNTDdaj.jpg',1,'dynamic',3,'Expedited (2 weeks)',3000.00,'','pending',NULL,'2025-04-14 15:12:56.577242','2025-04-14 15:12:56.577242',2,NULL,NULL,0.00,'in_progress','{}',NULL,'pending','{\"hex\":\"#933434\",\"name\":\"Custom Color\"}','XS'),(6,'just kano','08320798429','sardardham\r\nsurat','blouse',NULL,'Crepe','{}','custom_design_images/custom_design_None_JK_JmE3BvI.jpg',1,'dynamic',1,'Expedited (2 weeks)',5000.00,'','pending',NULL,'2025-04-14 15:44:59.055211','2025-04-14 15:44:59.055211',2,NULL,NULL,0.00,'in_progress','{\"chest\": 4.0, \"waist\": 545.0, \"armhole\": 45.0, \"shoulder\": 45.0, \"blouse_length\": 5.0, \"sleeve_length\": 45.0, \"back_neck_depth\": 4.0}',NULL,'pending','{\"hex\":\"#0000ff\",\"name\":\"Blue\"}',NULL),(7,'urvisha','784749394','sardardham\r\nsurat','kurti',NULL,'Silk','{}','custom_design_images/custom_design_None_JK_HIGfYWu.jpg',0,'dynamic',1,'Rush (7-10 days)',3000.00,'error','pending',NULL,'2025-04-14 16:07:29.537508','2025-04-14 16:07:29.537508',2,NULL,NULL,0.00,'in_progress','{\"hips\": 23.0, \"chest\": 34.0, \"waist\": 45.0, \"shoulder\": 23.0, \"top_length\": 54.0, \"sleeve_length\": 23.0}',NULL,'pending','{\"hex\":\"#ff00ff\",\"name\":\"Magenta\"}',NULL),(8,'urvisha','784749394','sardardham\r\nsurat','choli',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_99AUutZ.JPG',1,'dynamic',1,'Expedited (2 weeks)',5000.00,'','pending',NULL,'2025-04-14 16:40:35.533585','2025-04-14 16:40:35.533585',2,NULL,NULL,0.00,'in_progress','{\"hips\": 16.0, \"chest\": 45.0, \"other\": 19.0, \"waist\": 13.0, \"shoulder\": 45.0}',NULL,'pending','{\"hex\":\"#ff0000\",\"name\":\"Red\"}',NULL),(9,'just kano','08320798429','sardardham\r\nsurat','choli',NULL,'Silk','{}','custom_design_images/custom_design_None_JK_5Ud6Mzv.jpg',1,'static',1,'Standard (3-4 weeks)',3000.00,'','pending',NULL,'2025-04-14 16:52:36.264340','2025-04-14 16:52:36.264340',2,NULL,NULL,0.00,'in_progress','{}',NULL,'pending','{\"hex\":\"#ff0000\",\"name\":\"Red\"}','XS'),(10,'1028 Urvisha Gothadiya','8320798429','Sardardham Hostel','kurti',NULL,'Georgette','{}','custom_design_images/custom_design_None_JK_T7VOb7N.JPG',1,'dynamic',1,'Standard (3-4 weeks)',5000.00,'good','pending',NULL,'2025-04-14 17:24:55.265569','2025-04-14 17:24:55.265569',2,NULL,NULL,0.00,'in_progress','{\"hips\": 23.0, \"chest\": 23.0, \"waist\": 12.0, \"shoulder\": 45.0, \"top_length\": 12.0, \"sleeve_length\": 23.0}',NULL,'pending','{\"hex\":\"#ff0000\",\"name\":\"Red\"}',NULL),(11,'1028 Urvisha Gothadiya','8320798429','Sardardham Hostel','blouse',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_68kJxA1.jpg',1,'dynamic',1,'Standard (3-4 weeks)',5000.00,'good','pending',NULL,'2025-04-14 17:26:09.477634','2025-04-14 17:26:09.477634',2,NULL,NULL,0.00,'in_progress','{\"chest\": 23.0, \"waist\": 34.0, \"armhole\": 45.0, \"shoulder\": 12.0, \"blouse_length\": 234.0, \"sleeve_length\": 45.0, \"back_neck_depth\": 565.0}',NULL,'pending','{\"hex\":\"#ff0000\",\"name\":\"Red\"}',NULL),(12,'Urvisha','6755678989','Sardardham Hostel','pant',NULL,'Georgette','{}','custom_design_images/custom_design_None_JK_DlLVygq.jpg',1,'dynamic',1,'Rush (7-10 days)',3000.00,'','pending',NULL,'2025-04-14 17:33:16.681260','2025-04-14 17:33:16.681260',2,NULL,NULL,0.00,'in_progress','{\"knee\": 56.0, \"rise\": 43.0, \"ankle\": 45.0, \"thigh\": 45.0, \"waist\": 32.0, \"pant_length\": 23.0}',NULL,'pending','{\"hex\":\"#e76e6e\",\"name\":\"Custom Color\"}',NULL),(13,'chikoo','784749394','Surat','blouse',NULL,'Georgette','{}','custom_design_images/custom_design_None_JK_dT0fYGq.jpg',1,'dynamic',1,'Expedited (2 weeks)',5000.00,'','accepted','','2025-04-14 17:40:55.549569','2025-04-15 10:24:51.029829',2,NULL,NULL,1500.00,'pending','{\"chest\": 23.0, \"waist\": 55.0, \"armhole\": 16.0, \"shoulder\": 34.0, \"blouse_length\": 15.0, \"sleeve_length\": 61.0, \"back_neck_depth\": 13.0}',NULL,'partial','{\"hex\":\"#f49a9a\",\"name\":\"Custom Color\"}',NULL),(14,'urvisha','784749394','sardardham\r\nsurat','blouse',NULL,'Chiffon','{}','custom_design_images/custom_design_None_UV_JtgNd0x.jpg',1,'static',1,'Expedited (2 weeks)',2000.00,'','pending','','2025-04-15 08:58:50.522556','2025-04-15 09:58:45.915718',1,NULL,NULL,0.00,'pending','{}',NULL,'pending','{\"hex\":\"#b63535\",\"name\":\"Custom Color\"}','XS'),(15,'Urvisha Patel','08320798429','sardardham','blouse',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_0VPNf3q.jpg',0,'dynamic',1,'Expedited (2 weeks)',2000.00,'67627324','accepted','','2025-04-15 09:09:51.122728','2025-04-15 10:07:44.591372',2,NULL,NULL,600.00,'pending','{\"chest\": 56.0, \"waist\": 77.0, \"armhole\": 34.0, \"shoulder\": 23.0, \"blouse_length\": 34.0, \"sleeve_length\": 77.0, \"back_neck_depth\": 45.0}',NULL,'partial','{\"hex\":\"#572e2e\",\"name\":\"Custom Color\"}',NULL),(16,'Urvisha','784749394','sardardham\r\nsurat','blouse',NULL,'Chiffon','{}','custom_design_images/custom_design_None_JK_LxSeQzF.jpg',1,'static',1,'Expedited (2 weeks)',5000.00,'','accepted','','2025-05-01 10:45:25.812939','2025-05-01 10:47:36.793609',2,NULL,NULL,1500.00,'pending','{}',NULL,'partial','{\"hex\":\"#000000\",\"name\":\"black\"}','XS'),(17,'just kano','8320798429','sardardham\r\nstreet 2 road','blouse',NULL,'Georgette','{}','custom_design_images/custom_design_None_JK_zEc1tF0.jpg',0,'static',1,'Expedited (2 weeks)',5000.00,'','pending',NULL,'2025-05-01 15:03:23.637589','2025-05-01 15:03:23.640083',2,NULL,NULL,0.00,'in_progress','{}',NULL,'pending','{\"hex\":\"#000000\",\"name\":\"black\"}','XL');
/*!40000 ALTER TABLE `custom_designs_customdesign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-04-14 12:22:02.071013','1','Saree',1,'[{\"added\": {}}]',19,2),(2,'2025-04-14 12:22:15.571416','2','Choli',1,'[{\"added\": {}}]',19,2),(3,'2025-04-14 12:22:39.909649','3','Pants',1,'[{\"added\": {}}]',19,2),(4,'2025-04-14 12:22:51.569822','4','Dupattas',1,'[{\"added\": {}}]',19,2),(5,'2025-04-14 12:23:07.205744','5','Kurti pair',1,'[{\"added\": {}}]',19,2),(6,'2025-04-14 12:23:29.397633','6','Kurtas',1,'[{\"added\": {}}]',19,2),(7,'2025-04-14 12:23:40.967622','7','Blouse',1,'[{\"added\": {}}]',19,2),(8,'2025-04-14 12:25:15.926507','1','Urben trendz',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Urben trendz\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Urben trendz\"}}]',20,2),(9,'2025-04-14 12:26:32.517859','2','Fabric folk',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Fabric folk\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Fabric folk\"}}]',20,2),(10,'2025-04-14 12:28:22.766502','3','Fabric folk',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Fabric folk\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Fabric folk\"}}]',20,2),(11,'2025-04-14 12:29:32.609881','4','Cottage',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Cottage\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Cottage\"}}]',20,2),(12,'2025-04-14 12:30:42.109527','5','Divine',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Divine\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Divine\"}}]',20,2),(13,'2025-04-14 12:31:37.804741','6','ethernal rose',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for ethernal rose\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for ethernal rose\"}}]',20,2),(14,'2025-04-14 12:38:58.293255','1','Custom Kurti (ID: 1)',2,'[{\"changed\": {\"fields\": [\"Completion status\"]}}]',16,2),(15,'2025-04-14 12:40:05.893000','1','Custom Kurti (ID: 1)',2,'[{\"changed\": {\"fields\": [\"Completion status\", \"Status\"]}}]',16,2),(16,'2025-04-14 12:46:46.244085','2','JK',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,2),(17,'2025-04-14 12:50:05.487497','2','Custom Pant (ID: 2)',2,'[{\"changed\": {\"fields\": [\"Completion status\", \"Status\", \"Accepted at\", \"Estimated delivery\", \"Actual delivery\"]}}]',16,2),(18,'2025-04-14 13:07:55.108225','1','Bulk order by bhavi fashion for Blouses',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(19,'2025-04-14 13:09:43.071293','1','Bulk order by bhavi fashion for Blouses',2,'[{\"changed\": {\"fields\": [\"Budget\"]}}]',17,2),(20,'2025-04-14 15:21:50.331729','5','Custom Pant (ID: 5)',2,'[{\"changed\": {\"fields\": [\"Completion status\", \"Status\"]}}]',16,2),(21,'2025-04-14 17:45:12.320797','13','Custom Blouse (ID: 13)',2,'[{\"changed\": {\"fields\": [\"Completion status\", \"Status\"]}}]',16,2),(22,'2025-04-14 18:35:21.142603','1','Order #ORD250400001 - JK',2,'[{\"changed\": {\"fields\": [\"Order status\"]}}]',10,2),(23,'2025-04-15 09:06:46.383302','1','23 - 10₹',1,'[{\"added\": {}}]',8,2),(24,'2025-04-15 09:18:25.101648','15','Custom Blouse (ID: 15)',2,'[{\"changed\": {\"fields\": [\"Completion status\", \"Status\"]}}]',16,2),(25,'2025-04-15 09:31:42.475271','14','Custom Blouse (ID: 14)',2,'[{\"changed\": {\"fields\": [\"Completion status\", \"Status\"]}}]',16,2),(26,'2025-04-15 09:58:45.927144','14','Custom Blouse (ID: 14)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',16,2),(27,'2025-04-15 09:59:50.222859','1','Custom Kurti (ID: 1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',16,2),(28,'2025-04-15 10:31:28.808522','2','JK',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,2),(29,'2025-04-15 10:59:48.602917','2','JK',2,'[{\"changed\": {\"fields\": [\"Email address\", \"Role\"]}}]',6,2),(30,'2025-04-15 12:28:19.759637','2','JK',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,2),(31,'2025-04-16 04:27:49.084551','3','Bulk order by bhavi fashion for Lehengas',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(32,'2025-04-16 05:36:56.785075','4','Bulk order by bhavi fashion for Lehengas',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(33,'2025-04-16 05:40:14.734255','2','JK',2,'[]',6,2),(34,'2025-04-16 05:42:19.726968','5','Bulk order by bhavi fashion for Blouses',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(35,'2025-04-16 16:53:14.737791','7','Bulk order by bhavi fashion for Blouses',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(36,'2025-04-16 17:37:52.248906','8','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(37,'2025-04-16 18:32:42.865826','9','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(38,'2025-04-16 19:04:25.971491','10','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(39,'2025-04-16 19:12:41.789488','11','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(40,'2025-04-17 02:18:44.747457','13','Bulk order by kimaan',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(41,'2025-04-17 02:31:14.247290','12','Bulk order by uk',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(42,'2025-04-28 12:41:30.512989','17','JK\'s cart - Fabric folk x 1',3,'',15,2),(43,'2025-04-28 12:41:40.820261','15','JK\'s cart - Cottage x 1',3,'',15,2),(44,'2025-04-28 12:41:44.382883','14','JK\'s cart - Divine x 1',3,'',15,2),(45,'2025-04-28 12:41:47.503511','8','UV\'s cart - Cottage x 3',3,'',15,2),(46,'2025-04-28 12:41:51.633262','16','JK\'s cart - Fabric folk x 1',3,'',15,2),(47,'2025-04-28 12:41:55.619086','7','UV\'s cart - Divine x 15',3,'',15,2),(48,'2025-05-01 04:02:17.454904','14','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(49,'2025-05-01 08:45:01.763875','8','12 x gh',3,'',25,2),(50,'2025-05-01 08:45:23.111615','5','Custom Pant (ID: 5)',3,'',16,2),(51,'2025-05-01 08:47:10.204931','16','Bulk order by kk',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(52,'2025-05-01 08:47:18.865709','15','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(53,'2025-05-01 09:50:46.220479','19','Bulk order by kanha',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(54,'2025-05-01 10:01:52.790214','18','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(55,'2025-05-01 10:02:01.528185','17','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(56,'2025-05-01 10:14:57.864673','19','Bulk order by kanha',2,'[{\"changed\": {\"fields\": [\"Payment status\"]}}]',17,2),(57,'2025-05-01 10:22:00.290821','20','Bulk order by kk',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(58,'2025-05-01 10:22:09.735839','21','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(59,'2025-05-01 10:22:17.550579','22','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(60,'2025-05-01 10:22:24.633515','23','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(61,'2025-05-01 10:26:48.199231','24','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(62,'2025-05-01 10:27:00.297776','23','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Budget\"]}}]',17,2),(63,'2025-05-01 10:46:58.712974','16','Custom Blouse (ID: 16)',2,'[{\"changed\": {\"fields\": [\"Completion status\", \"Status\"]}}]',16,2),(64,'2025-05-01 12:28:29.721337','22','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Budget\"]}}]',17,2),(65,'2025-05-01 12:39:13.006410','25','Bulk order by bhavi fashion',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',17,2),(66,'2025-05-01 15:52:38.644889','12','shiv\'s Cart',1,'[{\"added\": {}}, {\"added\": {\"name\": \"cart item new\", \"object\": \"shiv\'s cart - Divine x 1\"}}]',9,2),(67,'2025-11-10 03:46:33.453497','6','ethernal rose',2,'[{\"added\": {\"name\": \"product image\", \"object\": \"Image for ethernal rose\"}}, {\"changed\": {\"name\": \"product image\", \"object\": \"Image for ethernal rose\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"product image\", \"object\": \"Image for ethernal rose\", \"fields\": [\"Image\"]}}, {\"added\": {\"name\": \"product variant\", \"object\": \"Size: XL,S,M Color: black\"}}]',20,2),(68,'2025-11-10 03:46:55.636113','5','Divine',2,'[{\"changed\": {\"name\": \"product image\", \"object\": \"Image for Divine\", \"fields\": [\"Image\"]}}]',20,2),(69,'2025-11-10 03:51:04.147054','4','Cottage',2,'[{\"changed\": {\"fields\": [\"Description\"]}}, {\"changed\": {\"name\": \"product image\", \"object\": \"Image for Cottage\", \"fields\": [\"Image\"]}}]',20,2),(70,'2025-11-10 03:51:45.791442','3','Fabric folk',2,'[{\"changed\": {\"name\": \"product image\", \"object\": \"Image for Fabric folk\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"product image\", \"object\": \"Image for Fabric folk\"}}]',20,2),(71,'2025-11-10 03:53:36.176489','2','South Indian folk',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}, {\"changed\": {\"name\": \"product image\", \"object\": \"Image for South Indian folk\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"product image\", \"object\": \"Image for South Indian folk\"}}]',20,2),(72,'2025-11-10 03:55:34.099587','1','Urben trendz',2,'[{\"changed\": {\"fields\": [\"Description\"]}}, {\"changed\": {\"name\": \"product image\", \"object\": \"Image for Urben trendz\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"product image\", \"object\": \"Image for Urben trendz\"}}]',20,2),(73,'2025-11-10 03:56:24.962534','7','Traditional design',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Traditional design\"}}]',20,2),(74,'2025-11-10 04:00:43.384796','8','Partywear saree',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Partywear saree\"}}]',20,2),(75,'2025-11-10 04:00:57.166113','7','Traditional design',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',20,2),(76,'2025-11-10 04:01:11.557746','6','ethernal rose',2,'[{\"changed\": {\"fields\": [\"Stock\"]}}]',20,2),(77,'2025-11-10 04:02:42.988573','9','modern look',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for modern look\"}}]',20,2),(78,'2025-11-10 04:04:24.060432','10','modern look',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for modern look\"}}]',20,2),(79,'2025-11-10 04:05:03.649394','9','hand dyed',2,'[{\"changed\": {\"fields\": [\"Name\", \"Colors\"]}}]',20,2),(80,'2025-11-10 04:06:31.151030','4','Cottage',2,'[{\"changed\": {\"fields\": [\"Discount price\"]}}]',20,2),(81,'2025-11-10 04:06:39.520078','10','modern look',2,'[{\"changed\": {\"fields\": [\"Discount price\"]}}]',20,2),(82,'2025-11-10 04:06:49.285266','9','hand dyed',2,'[{\"changed\": {\"fields\": [\"Discount price\"]}}]',20,2),(83,'2025-11-10 04:07:00.995668','8','Partywear saree',2,'[{\"changed\": {\"fields\": [\"Discount price\"]}}]',20,2),(84,'2025-11-10 04:08:15.798783','4','Cottage',2,'[{\"deleted\": {\"name\": \"product image\", \"object\": \"Image for Cottage\"}}]',20,2),(85,'2025-11-10 04:09:48.125370','7','Blouse',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(86,'2025-11-10 04:10:02.453571','2','Choli',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(87,'2025-11-10 04:10:19.384611','4','Dupattas',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(88,'2025-11-10 04:10:37.815708','6','Kurtas',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(89,'2025-11-10 04:11:02.201413','5','Kurti pair',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(90,'2025-11-10 04:11:14.530824','6','Kurtas',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(91,'2025-11-10 04:11:27.777437','3','Pants',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(92,'2025-11-10 04:11:42.550686','1','Saree',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,2),(93,'2025-11-10 04:14:37.347584','11','cutwork',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for cutwork\"}}]',20,2),(94,'2025-11-10 04:16:10.782825','12','plazo type',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for plazo type\"}}]',20,2),(95,'2025-11-10 04:17:15.578318','13','pant devine',1,'[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for pant devine\"}}]',20,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'accounts','address'),(6,'accounts','user'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(17,'bulk_orders','bulkorder'),(25,'bulk_orders','bulkorderitem'),(27,'bulk_orders','customdesignimage'),(26,'bulk_orders','product'),(4,'contenttypes','contenttype'),(16,'custom_designs','customdesign'),(9,'orders','cart'),(14,'orders','cartitem'),(15,'orders','cartitemnew'),(8,'orders','coupon'),(10,'orders','order'),(11,'orders','orderitem'),(12,'orders','payment'),(13,'orders','razorpaypayment'),(19,'products','category'),(20,'products','product'),(21,'products','productimage'),(22,'products','productreview'),(23,'products','productvariant'),(24,'products','wishlist'),(5,'sessions','session'),(18,'tailor_jobs','tailorapplication');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-04-14 12:17:48.535062'),(2,'contenttypes','0002_remove_content_type_name','2025-04-14 12:17:48.707027'),(3,'auth','0001_initial','2025-04-14 12:17:49.111462'),(4,'auth','0002_alter_permission_name_max_length','2025-04-14 12:17:49.234316'),(5,'auth','0003_alter_user_email_max_length','2025-04-14 12:17:49.240801'),(6,'auth','0004_alter_user_username_opts','2025-04-14 12:17:49.254262'),(7,'auth','0005_alter_user_last_login_null','2025-04-14 12:17:49.270135'),(8,'auth','0006_require_contenttypes_0002','2025-04-14 12:17:49.270135'),(9,'auth','0007_alter_validators_add_error_messages','2025-04-14 12:17:49.285794'),(10,'auth','0008_alter_user_username_max_length','2025-04-14 12:17:49.301887'),(11,'auth','0009_alter_user_last_name_max_length','2025-04-14 12:17:49.301887'),(12,'auth','0010_alter_group_name_max_length','2025-04-14 12:17:49.344514'),(13,'auth','0011_update_proxy_permissions','2025-04-14 12:17:49.349702'),(14,'auth','0012_alter_user_first_name_max_length','2025-04-14 12:17:49.365621'),(15,'accounts','0001_initial','2025-04-14 12:17:50.023694'),(16,'admin','0001_initial','2025-04-14 12:17:50.245634'),(17,'admin','0002_logentry_remove_auto_add','2025-04-14 12:17:50.256162'),(18,'admin','0003_logentry_add_action_flag_choices','2025-04-14 12:17:50.287950'),(19,'bulk_orders','0001_initial','2025-04-14 12:17:50.431140'),(20,'bulk_orders','0002_bulkorder_advance_payment_bulkorder_payment_status_and_more','2025-04-14 12:17:50.673677'),(21,'bulk_orders','0003_alter_bulkorder_payment_status','2025-04-14 12:17:50.813479'),(22,'custom_designs','0001_initial','2025-04-14 12:17:50.991741'),(23,'custom_designs','0002_remove_customdesign_size_inputs_and_more','2025-04-14 12:17:52.466447'),(24,'products','0001_initial','2025-04-14 12:17:53.846243'),(25,'orders','0001_initial','2025-04-14 12:17:56.388527'),(26,'orders','0002_alter_order_order_status','2025-04-14 12:17:56.436617'),(27,'orders','0003_alter_order_subtotal_alter_order_total_amount','2025-04-14 12:17:56.579865'),(28,'sessions','0001_initial','2025-04-14 12:17:56.661137'),(29,'tailor_jobs','0001_initial','2025-04-14 12:17:56.860578'),(30,'orders','0004_order_carrier_order_estimated_delivery_and_more','2025-04-14 18:31:54.917311'),(31,'custom_designs','0003_alter_customdesign_contact','2025-04-15 11:19:06.287286'),(32,'bulk_orders','0004_product_bulkorderitem_customdesignimage','2025-04-16 04:19:04.325929'),(33,'bulk_orders','0005_alter_bulkorderitem_product_and_more','2025-04-16 17:18:45.557752');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1om8y4aq9qklkzldvpi3jvep8ojinyu6','.eJxVjEEOwiAQRe_C2hAGgWlduvcMZICpVA1NgK6Md9eabrp97_3_FpFq93MSF3sSntae_dq4_okAcWCB4pPLJtKDyn2RcSm9zkFuidxtk7cl8eu6t4eDTC3_1hqYrdIJESwjTQNDQHsGNZjROGRjEMCgU1ElDDomHlkj8YRMSgUnPl9Y_Dsk:1u4ctK:N3Jex4Ex6Oje0ymf5MHyk25D4WKesKHv8ZDlrA5QJR4','2025-04-29 09:47:42.795815'),('3rj3i5kbumrzh0czwci20itoxmcx5bae','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1uAPG4:rR_RC-Zq8LZgSgvvR15DRUnR-8MZMS2O-HoLBIOYNc8','2025-05-15 08:27:04.537747'),('51u43jff6c9p7l425dbw99qtmw0e48ek','.eJxVzEFugzAQheG7eI3QBAM2LLvPGaxhPC5uXDvCttQqyt0LUiqF7fue_ocwWMtqaubNeCtm0YnmfVuQbhwPsF8YP1NLKZbNL-1xaV-a22uyHD5e31NgxbweWYaBNIEjB0h6kjQOStIkJ6cWPV5ALbBTP4LuB9mNFpBV17PWTisAuUcd-sDWYCn8fS9ZzNCIgLmYM4g51hB2SnRLtZgaiw__o8mcs0_R8M_db7974_kHXJxXkg:1uAT0k:HXrjGpjHe0BxL9Rb19DrDJBCu_Bb0ySkyLn8JJhk4Lw','2025-05-15 12:27:30.818405'),('675shmifv6xngq7lw6tb6pbp9erqmwdv','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u9NRa:2YMGmFWBb0pGkOpAyqQGv4yEdDLB2kZnJN2HRAmyH4Q','2025-05-12 12:18:42.375780'),('6hmvzw32gr4uq4kfjng23lcxnynnydls','.eJxVjEEOgyAQAP_CuSErCKw99u4bzLJAsW00AT01_XtL48XrzGTegqls0xzEtdMXMdG-5WmvsfyRUOLEPPEzLk2EBy33VfK6bGX2siXysFWOa4iv29GeBplqbtsIhpEhcQJiHDRb4zQPekjOo-3Aefip3gL2RisbgKJTfURM6AC0-HwBlh46_Q:1vIIlp:s9G1uWFoqK5U17oTBhFaADvZH1j8S0VSqSaMbeYzt2Y','2025-11-24 03:40:45.780732'),('6lxm6easccbcqzs5229mfklw54lk5wer','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u9MTX:5F7I__KF0ZBv8X5cCtsaQlAMBtVrvYNRcMnrQ2yLYe0','2025-05-12 11:16:39.614497'),('70qcem3lv6229w3gg3ogxan052qufz75','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u4uGF:5XTEi4iBRiGCa5sZuSFHF5jYNu8SYcYUoDHuCmSaSmI','2025-04-30 04:20:31.994048'),('8kxobw7cyb9lv5v5yolsu6nrntl1mai6','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u9NBa:ngeDIoyrDutJgp6avshoCUprcKJ0BjwCVTmSEjVXGoY','2025-05-12 12:02:10.039066'),('8xknzk1ybms80tg1qzncnjj2depfo1v8','.eJxVj0EOwiAURO_C2jRgpS1duvcM5AMfi0VoCiQa492lSV10OfNmJpkPseA8Ggk543PJiYz0RDykLI-AjKF4X1HUcyxZlpCd_5sSSp5kSbhKZ8hIODl4CvSMYQPmAeEeGx1DXp1qtkiz09TcokF_3bOHgQnSVNvIjEKFYIFypAicIgoNjFnVtS3jQ68MpVoPgg79pbNgBcOqmGFWnDXdRhOm5GKQ-Frc-q5vvz8d-Vlh:1u9NEp:3DAOd0WgF9ImIFefw949tvrrPuXQdLw8Xq_komI5kVw','2025-05-12 12:05:31.613751'),('963xnnqjbmz01xwa1rizof2yh4smj2mj','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u4ZDg:BfJYMibjMowkHKcldz85mWZnma82F-QrQDpW-ZI_EE4','2025-04-29 05:52:28.375597'),('9bqaoc7d5vuhbgdqtqgbrsz50x1e2lll','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u9NZz:sfhNYIt5qR8uaKX-EgtMpJrXW3qveaYuzYvYMbhFv0c','2025-05-12 12:27:23.087473'),('aev5i90k8zz1j2zdsiqk46ccb9gxcu3n','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u9MrH:Dso_7S0ebJHcCDAXPkgBxXqpc4-I0UYmjuJhYagF9eU','2025-05-12 11:41:11.904382'),('cv1ntaasos3ilx6wnl73ybnocxs0p1xw','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u8vXp:wosSAKOirT-qiY1_sNONkaVjbGhHQN6vc58CLf4BH7A','2025-05-11 06:31:17.784662'),('dgx4phlkvodexizq67cjvtdzpefuiury','.eJxVjEEOwiAQAP_C2ZC1UNh69O4byLKAVA1NCj0Z_66YXnqdmcxbMK3NzUFc9Ek42lp2W43rn4hBHJgnfsbSRXhQuS-Sl9LW2cueyN1WeVtCfF339jDIVHPfRhgZGRInIMZJsRmt4klNyXo0Z7AefkobQD2qwQSgaAcdERNaACU-X3HdOs0:1u4cse:mB-yiHr30-DIjjr7xEwnGXieBDpLDTaxKopwXV1eBjk','2025-04-29 09:47:00.566003'),('dlney28kmj88m185vq8gw2e45tpyaonl','.eJxVj0EOgyAURO_CujFg0a8uu-8ZyAe-lZaCEUjaNL17NbELt_PeTDIfNqLzZBXmTM85JzbwE_OYsjoCNoTi_YqiecSSVQnZ-X-osORJlUSLcpYNTLBDptE8KGzA3jHcYmViyIvT1aZUO03VNVryl909DEyYprVdC6KG1xZANAQ4diQ0NGfBO9nLFkhKEEJCyw23oGtjqacakEYg5Fy322iilFwMil6zW97r2-8Pn41X6A:1u4vnF:Ee7UpfuJzb-bIiQ7w5uxc86xY0Nmt31glK0Rhp4RsX8','2025-04-30 05:58:41.418529'),('e94ofhakuju3eex0sbrz1jf7ndn7i8x8','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u4gMF:skCF8BrH3wCYOyoTc7D66bXq0HifNWTUxfEfuv6_ad4','2025-04-29 13:29:47.098258'),('gh4ka5g4a9i6md4k1vg9jwr2kv0svwdl','eyJjYXJ0X2lkIjo3fQ:1u4cvG:g_kVUON0J4C7KGDiaSEM_zzzBMywVMNR0j7Wopz4srw','2025-04-29 09:49:42.303332'),('gi9dpivkk36lecyj7nwdijjm4x7ewxrw','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u5FKC:98AT86otax4M7x7DxWqFaMH97HHOGp27H5R7zxlNKiA','2025-05-01 02:50:00.503191'),('gys0ta5jud4fanqrie832qw8rdfw150r','.eJxVjjsOwjAQBe_iGlkbf9eU9Jwhstc2CSA7SuIKcXcSlALaN6PRe7Het3Xo25LmfozszAQ7_W7B0yOVHcS7L7fKqZZ1HgPfFX7QhV9rTM_L4f4FBr8MezaBJiTIlMETOklGW0lOumwDmg5sgA0pA6i0FCaCT1aohJjRAsgtSrVNtXxfdu8PAQ47tA:1u4cFr:5zy65CvqkWv3SbWp4F_m2eFaYzYPZjxrkDLAlAQqhls','2025-04-29 09:06:55.240758'),('hngp29c146m0q18b2nem4wwhxn92191i','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u8tX9:GXa0kTigzCJGke4LUfI3eY_kYzTbU-nj45R4zpHMvbc','2025-05-11 04:22:27.465499'),('hsepmu2llbx1zo7buod96fekbn20u9t5','.eJxVj0FugzAQRe_idYQGDNiw7L5nsIbxODhx7QjbUquqdy9EyYLte19P-r-CcCvGWzG37UU49IGtwVL461GymOEiAuZizkLMsYawq0T3VIupsfjwhgZrWU3NvD2zohMntiDdOR7C3jBeU0Mpls0vzTFpXjY3n8ly-HhtT4EV83pkGQbSBI4cIOlJ0jgoSZOcnFr02IJaYFf9CLofZDdaQFZdz1o7rQDkEc2cs0_R8PfDbz_7279_wKFbdA:1u9NkJ:tIgkHPwMe2FJkEmia-AQas9epMeAS44n8jeXtLx4NSE','2025-05-12 12:38:03.706562'),('iuhgbyg80cssb1yd1elxzn04qzay0nts','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u9Nbb:xKOcaK4NSE86Y8F2bAp0Blb91H0Ft2zQHafkdwdfZBk','2025-05-12 12:29:03.459739'),('j53u50j4oa3lfozjgvtffm2a3comv0u6','.eJxVzEFugzAQheG7eI3QBAM2LLvPGaxhPC5uXDvCttQqyt0LUiqF7fue_ocwWMtqaubNeCtm0YnmfVuQbhwPsF8YP1NLKZbNL-1xaV-a22uyHD5e31NgxbweWYaBNIEjB0h6kjQOStIkJ6cWPV5ALbBTP4LuB9mNFpBV17PWTisAuUcd-sDWYCn8fS9ZzNCIgLmYM4g51hB2SnRLtZgaiw__o8mcs0_R8M_db7974_kHXJxXkg:1uAPyB:gDbXCq7ZBykPyMwYZZAk-4Vlzs8qHUj5guTrkiryZSk','2025-05-15 09:12:39.277568'),('jzg8lbcu9b03p90641ubf2klzg79j0y4','eyJjYXJ0X2lkIjo2fQ:1u4cuX:Ohi3-uo9QMg4ii9T6NHrydAN9Ez2BeSo8MLb4GmzdDo','2025-04-29 09:48:57.130412'),('klvnsetvccu8a6rtcagm6ebtmfuqw6s7','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u9NZC:35VCR4GK0UxnQtC970lbpSn1UeKaI9cvNVHXhFDJ67Q','2025-05-12 12:26:34.441067'),('kyz6unwbd90u8umqryycld5fj5hki8g8','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u9Nd3:iADLqzC7HUW8qmpM_5HJ4c2zNAfEEagCVMP49UwJAOc','2025-05-12 12:30:33.863957'),('ll0g45zecglg71st71010n9mrmwhc61x','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u9NZb:X-0MO7XTwPmRreVdWzMJ97zP816pm8QsgRQNyNjRdew','2025-05-12 12:26:59.970376'),('lsxbpmn8tcnf4i0phteeces2446t258e','.eJxVjEEOwiAQAP_C2ZAVKCwevfuGZllAqqZNoD0Z_66YXnqdmcxbMNV1nKK46JMYaVvLuLVU_0QocWCB-JnmLuKD5vsieZnXOgXZE7nbJm9LTK_r3h4GhVrp2wQDI0PmDMToNdvBafbaZxfQnsEF-CljAc2glY1AySmTEDM6AC0-X3ExOsw:1u4crd:INMzgUs-JiTts_6IgcaHDKmxhF99VMRMQ-X-QX_EKYI','2025-04-29 09:45:57.420329'),('lzixlkoh4rdt41vnxz5woxvznj9eiwh9','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u4bop:rE9uRioPibSk3nJNPGZ9sNs35FiQP56qOZbjLtE09Io','2025-04-29 08:38:59.733338'),('p80quqlu70571hvio19kdmwoyhit9cpj','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u4c3G:luOVaRNwjIBjoTP__qVStGzbm7-RKiyvMF2VchhwU94','2025-04-29 08:53:54.203008'),('po1qcjwrkubbhap7u8pgrqh89w93vus1','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u4NWW:YblhilDRs3dNNxwU8JYjSbnL69ilAakLFbd9K7ahhaU','2025-04-28 17:23:08.417260'),('qbez4ygmtt47oo8z84p44vje1mjtfgjm','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u9N88:fhxE49sb5oLaSZeliRU09UpMRnQGqpBuYdi6ROxSoIo','2025-05-12 11:58:36.712505'),('qqsp4gaxs2eu9w1fmrmz58yvl9jc49pr','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u4d2a:TPBOGNwrDvtpPi1V21sl7htKvDW5F7IPNzMYsyfv5GE','2025-04-29 09:57:16.499751'),('qsqt61xgbf5fx4m0l1oogn58999eid6z','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u4bgh:pTym7qo5Kt0BfzmOuc04UdNiA5Yp5U_oMWx6fEmS9h0','2025-04-29 08:30:35.166960'),('scqtlkql6povboq7i2ct13rhkvzfez19','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1uATtL:ndxZ5qbS5sl7FhRwE_AsUe7j4Qh07iiBMnX7aOV92fk','2025-05-15 13:23:55.922384'),('tdtqdciji4q2hdnpojkbkc092e3bbjny','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u4dr4:xxNcb5ajThONDEVQIdBmGgJ9jULLBh1xCcE2eQFWgW0','2025-04-29 10:49:26.706078'),('tqnq9jxdga1lzp3c9z319s67nwl4wcje','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u4hcF:mWwf-1bprAWpMcTH7NHWgDReAzrfhcAOblUV2m8z6Uo','2025-04-29 14:50:23.796876'),('u41gqfenjjo0anzh1q1pgw6pmh8zmu57','.eJxVzEFugzAQheG7eI3QBAM2LLvPGaxhPC5uXDvCttQqyt0LUiqF7fue_ocwWMtqaubNeCtm0YnmfVuQbhwPsF8YP1NLKZbNL-1xaV-a22uyHD5e31NgxbweWYaBNIEjB0h6kjQOStIkJ6cWPV5ALbBTP4LuB9mNFpBV17PWTisAuUcd-sDWYCn8fS9ZzNCIgLmYM4g51hB2SnRLtZgaiw__o8mcs0_R8M_db7974_kHXJxXkg:1uASKp:vLhX7WwQitYL1fufMB9LCYvrDSPpxmqY0tEVLRpj0S0','2025-05-15 11:44:11.845327'),('vc0fd97lmbu6mbjvgwen24z7pcqc0yx0','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1uATnJ:Bx_8lCKSzzOrhfOyrNn5dNleIigJS5wZ7bGTmSlNEwc','2025-05-15 13:17:41.159216'),('vqqrw1jko1pbmztgo34r45p6vkwyk6q7','.eJxVjEsOwiAUAO_C2pAn34dL9z0DgQdI1dCktCvj3ZWkC93OTObFfNi36veeVz8ndmGCnX5ZDPTIbYh0D-22cFrats6Rj4QftvNpSfl5Pdq_QQ29jm0GTUhQqEAgdJKMtpKcdMVGNGewEb5KGUClpTAJQrZCZcSCFkCy9wfcRjcZ:1u9NA2:daapOA6CafoRcSC3Yr5XfL7NIrNxqeTDWL51wYAmDjw','2025-05-12 12:00:34.186519'),('x6c59xgt6ub8c4l6rub6vlzzw5aqwigs','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1uAKVv:KIJ4EMFyuJMD4YLPm-0T0IMLIXoLoV_xjw2o04f8txg','2025-05-15 03:23:07.301313'),('xomhgenagatzucpluwibfs9gcsxuv2mi','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u9NJl:pej9l6qPyaaixy7GD0HZBgP5UDubmmzDQoTwIdlMIP4','2025-05-12 12:10:37.146632'),('zz1j23l52e0zyikhs8748mpsnz9imwax','.eJxVj8FuhCAURf-F9cS8ERV02f18A3k-HpUOBSOQtJnMv1cTu3B7zs1J7ks49IGtwVL4ey1ZTHATAXMxVyGmWEPYVaJnqsXUWHz4hwZrWUzNvBlvxSRacWEz0pPjIewXxs_UUIpl83NzTJrT5uaRLIePc3sJLJiXI8vQkyZw5ABJj5KGXkka5ejUrIc7qBl21Q2gu162gwVk1XastdMKQB7RzDn7FA3_rH773d--_wCyYleS:1u57Rg:-G8Bu0X1M5--hatMGIsmYeNPf1vOhHvCiwI0PJmrM2I','2025-04-30 18:25:12.728776');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_cart`
--

DROP TABLE IF EXISTS `orders_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `orders_cart_user_id_121a069e_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_cart`
--

LOCK TABLES `orders_cart` WRITE;
/*!40000 ALTER TABLE `orders_cart` DISABLE KEYS */;
INSERT INTO `orders_cart` VALUES (1,'2025-04-14 12:19:55.786420','2025-04-14 12:19:55.789658',1),(2,'2025-04-14 12:31:46.663263','2025-04-14 12:31:46.663263',2),(3,'2025-04-15 09:45:40.819022','2025-04-15 09:45:40.819022',NULL),(4,'2025-04-15 09:46:41.644654','2025-04-15 09:46:41.644654',NULL),(5,'2025-04-15 09:47:24.181746','2025-04-15 09:47:24.181746',NULL),(6,'2025-04-15 09:48:57.053949','2025-04-15 09:48:57.053949',NULL),(7,'2025-04-15 09:49:42.135490','2025-04-15 09:49:42.135490',NULL),(8,'2025-04-15 13:06:02.124836','2025-04-15 13:06:02.124836',NULL),(9,'2025-04-28 12:09:36.436648','2025-04-28 12:09:36.436648',NULL),(10,'2025-04-28 12:10:24.471397','2025-04-28 12:10:24.471397',5),(11,'2025-04-28 12:37:56.404168','2025-04-28 12:37:56.404168',NULL),(12,'2025-05-01 15:52:38.633138','2025-05-01 15:52:38.633138',3),(13,'2025-11-10 03:40:10.177321','2025-11-10 03:40:10.177321',NULL);
/*!40000 ALTER TABLE `orders_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_cartitem`
--

DROP TABLE IF EXISTS `orders_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `added_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `variant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_cartitem_user_id_product_id_variant_id_c811688d_uniq` (`user_id`,`product_id`,`variant_id`),
  KEY `orders_cartitem_product_id_55063ee7_fk_products_product_id` (`product_id`),
  KEY `orders_cartitem_variant_id_a3661000_fk_products_` (`variant_id`),
  CONSTRAINT `orders_cartitem_product_id_55063ee7_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `orders_cartitem_user_id_78cc55ab_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
  CONSTRAINT `orders_cartitem_variant_id_a3661000_fk_products_` FOREIGN KEY (`variant_id`) REFERENCES `products_productvariant` (`id`),
  CONSTRAINT `orders_cartitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_cartitem`
--

LOCK TABLES `orders_cartitem` WRITE;
/*!40000 ALTER TABLE `orders_cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_cartitemnew`
--

DROP TABLE IF EXISTS `orders_cartitemnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_cartitemnew` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `added_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `variant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_cartitemnew_cart_id_product_id_variant_id_ed50737b_uniq` (`cart_id`,`product_id`,`variant_id`),
  KEY `orders_cartitemnew_product_id_3d653425_fk_products_product_id` (`product_id`),
  KEY `orders_cartitemnew_variant_id_583f412a_fk_products_` (`variant_id`),
  CONSTRAINT `orders_cartitemnew_cart_id_d66fc41a_fk_orders_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `orders_cart` (`id`),
  CONSTRAINT `orders_cartitemnew_product_id_3d653425_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `orders_cartitemnew_variant_id_583f412a_fk_products_` FOREIGN KEY (`variant_id`) REFERENCES `products_productvariant` (`id`),
  CONSTRAINT `orders_cartitemnew_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_cartitemnew`
--

LOCK TABLES `orders_cartitemnew` WRITE;
/*!40000 ALTER TABLE `orders_cartitemnew` DISABLE KEYS */;
INSERT INTO `orders_cartitemnew` VALUES (24,1,'2025-05-01 09:11:37.147154','2025-05-01 09:11:37.147154',10,5,NULL),(25,1,'2025-05-01 09:11:38.198342','2025-05-01 09:11:38.198342',10,4,NULL),(31,1,'2025-05-01 15:52:38.641052','2025-05-01 15:52:38.641052',12,5,NULL);
/*!40000 ALTER TABLE `orders_cartitemnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_coupon`
--

DROP TABLE IF EXISTS `orders_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_coupon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `discount_type` varchar(10) NOT NULL,
  `discount_value` decimal(8,2) NOT NULL,
  `min_purchase` decimal(10,2) NOT NULL,
  `valid_from` datetime(6) NOT NULL,
  `valid_to` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `max_uses` int unsigned NOT NULL,
  `current_uses` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  CONSTRAINT `orders_coupon_chk_1` CHECK ((`max_uses` >= 0)),
  CONSTRAINT `orders_coupon_chk_2` CHECK ((`current_uses` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_coupon`
--

LOCK TABLES `orders_coupon` WRITE;
/*!40000 ALTER TABLE `orders_coupon` DISABLE KEYS */;
INSERT INTO `orders_coupon` VALUES (1,'23','fixed',10.00,100.00,'2025-04-15 09:06:26.000000','2025-04-22 09:06:41.000000',1,0,0,'2025-04-15 09:06:46.380192');
/*!40000 ALTER TABLE `orders_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_number` varchar(20) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `payment_status` varchar(15) NOT NULL,
  `payment_method` varchar(15) NOT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `shipping_notes` longtext,
  `customer_notes` longtext,
  `admin_notes` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `delivered_at` datetime(6) DEFAULT NULL,
  `billing_address_id` bigint DEFAULT NULL,
  `coupon_id` bigint DEFAULT NULL,
  `shipping_address_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `carrier` varchar(50) DEFAULT NULL,
  `estimated_delivery` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `orders_order_billing_address_id_deb02e83_fk_accounts_address_id` (`billing_address_id`),
  KEY `orders_order_coupon_id_5bddb887_fk_orders_coupon_id` (`coupon_id`),
  KEY `orders_order_shipping_address_id_c4f8227a_fk_accounts_address_id` (`shipping_address_id`),
  KEY `orders_order_user_id_e9b59eb1_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `orders_order_billing_address_id_deb02e83_fk_accounts_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `accounts_address` (`id`),
  CONSTRAINT `orders_order_coupon_id_5bddb887_fk_orders_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `orders_coupon` (`id`),
  CONSTRAINT `orders_order_shipping_address_id_c4f8227a_fk_accounts_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `accounts_address` (`id`),
  CONSTRAINT `orders_order_user_id_e9b59eb1_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (1,'ORD250400001',22700.00,0.00,0.00,1135.00,23835.00,'processing','paid','card',NULL,'','','','2025-04-14 18:32:50.429779','2025-04-14 18:35:21.134200',NULL,1,NULL,1,2,NULL,NULL),(2,'ORD250400002',3600.00,0.00,0.00,180.00,3780.00,'confirmed','paid','card',NULL,NULL,'',NULL,'2025-04-15 04:26:49.036390','2025-04-15 04:27:16.320116',NULL,1,NULL,1,2,NULL,NULL),(3,'ORD250400003',9000.00,0.00,0.00,450.00,9450.00,'confirmed','paid','card',NULL,NULL,'',NULL,'2025-04-15 15:47:40.019588','2025-04-15 15:48:08.788916',NULL,1,NULL,1,2,NULL,NULL),(4,'ORD250400004',15900.00,0.00,0.00,795.00,16695.00,'pending','pending','card',NULL,NULL,'',NULL,'2025-04-16 18:06:29.335205','2025-04-16 18:06:29.335205',NULL,2,NULL,2,1,NULL,NULL),(5,'ORD250500005',1300.00,0.00,0.00,65.00,1365.00,'pending','pending','card',NULL,NULL,'',NULL,'2025-05-01 03:37:53.025559','2025-05-01 03:37:53.025559',NULL,1,NULL,1,2,NULL,NULL),(6,'ORD250500006',1300.00,0.00,0.00,65.00,1365.00,'confirmed','paid','card',NULL,NULL,'packed very well',NULL,'2025-05-01 03:39:12.645412','2025-05-01 03:39:39.707893',NULL,1,NULL,1,2,NULL,NULL),(7,'ORD250500007',4500.00,0.00,0.00,225.00,4725.00,'pending','pending','card',NULL,NULL,'',NULL,'2025-05-01 04:37:42.314540','2025-05-01 04:37:42.314540',NULL,1,NULL,1,2,NULL,NULL),(8,'ORD250500008',4500.00,0.00,0.00,225.00,4725.00,'confirmed','paid','card',NULL,NULL,'',NULL,'2025-05-01 04:38:11.011816','2025-05-01 04:38:36.053448',NULL,1,NULL,1,2,NULL,NULL),(9,'ORD250500009',1000.00,0.00,0.00,50.00,1050.00,'pending','pending','card',NULL,NULL,'',NULL,'2025-05-01 04:48:53.541220','2025-05-01 04:48:53.541220',NULL,1,NULL,1,2,NULL,NULL),(10,'ORD250500010',1000.00,0.00,0.00,50.00,1050.00,'pending','pending','card',NULL,NULL,'',NULL,'2025-05-01 04:49:30.045127','2025-05-01 04:49:30.045127',NULL,1,NULL,1,2,NULL,NULL),(11,'ORD250500011',1000.00,0.00,0.00,50.00,1050.00,'pending','pending','card',NULL,NULL,'',NULL,'2025-05-01 04:52:25.133110','2025-05-01 04:52:25.133110',NULL,1,NULL,1,2,NULL,NULL),(12,'ORD250500012',2500.00,0.00,0.00,125.00,2625.00,'confirmed','paid','card',NULL,NULL,'',NULL,'2025-05-01 09:08:51.842762','2025-05-01 09:09:15.172610',NULL,1,NULL,1,2,NULL,NULL);
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_orderitem`
--

DROP TABLE IF EXISTS `orders_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `variant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` (`order_id`),
  KEY `orders_orderitem_product_id_afe4254a_fk_products_product_id` (`product_id`),
  KEY `orders_orderitem_variant_id_5d350ded_fk_products_` (`variant_id`),
  CONSTRAINT `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `orders_orderitem_product_id_afe4254a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `orders_orderitem_variant_id_5d350ded_fk_products_` FOREIGN KEY (`variant_id`) REFERENCES `products_productvariant` (`id`),
  CONSTRAINT `orders_orderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_orderitem`
--

LOCK TABLES `orders_orderitem` WRITE;
/*!40000 ALTER TABLE `orders_orderitem` DISABLE KEYS */;
INSERT INTO `orders_orderitem` VALUES (1,1,1000.00,1000.00,1,5,NULL),(2,4,1800.00,7200.00,1,6,NULL),(3,3,4500.00,13500.00,1,2,NULL),(4,1,1000.00,1000.00,1,1,NULL),(5,2,1800.00,3600.00,2,6,NULL),(6,9,1000.00,9000.00,3,5,NULL),(7,3,300.00,900.00,4,4,NULL),(8,15,1000.00,15000.00,4,5,NULL),(9,1,300.00,300.00,5,4,NULL),(10,1,1000.00,1000.00,5,5,NULL),(11,1,300.00,300.00,6,4,NULL),(12,1,1000.00,1000.00,6,5,NULL),(13,1,4500.00,4500.00,7,3,NULL),(14,1,4500.00,4500.00,8,3,NULL),(15,1,1000.00,1000.00,9,5,NULL),(16,1,1000.00,1000.00,10,5,NULL),(17,1,1000.00,1000.00,11,5,NULL),(18,5,300.00,1500.00,12,4,NULL),(19,1,1000.00,1000.00,12,5,NULL);
/*!40000 ALTER TABLE `orders_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_payment`
--

DROP TABLE IF EXISTS `orders_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(15) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(15) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_response` json DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_payment_order_id_bdccf250_fk_orders_order_id` (`order_id`),
  CONSTRAINT `orders_payment_order_id_bdccf250_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_payment`
--

LOCK TABLES `orders_payment` WRITE;
/*!40000 ALTER TABLE `orders_payment` DISABLE KEYS */;
INSERT INTO `orders_payment` VALUES (1,'card',23835.00,'completed','pay_QJ2P1fXuhl8LrR',NULL,'2025-04-14 18:32:52.216769','2025-04-14 18:33:16.335026',1),(2,'card',3780.00,'completed','pay_QJCWV7ipP2ZkA9',NULL,'2025-04-15 04:26:50.915042','2025-04-15 04:27:16.305959',2),(3,'card',9450.00,'completed','pay_QJO7jkIPggfYCq',NULL,'2025-04-15 15:47:43.989197','2025-04-15 15:48:08.771553',3),(4,'card',16695.00,'pending',NULL,NULL,'2025-04-16 18:06:32.315083','2025-04-16 18:06:32.315083',4),(5,'card',1365.00,'pending',NULL,NULL,'2025-05-01 03:37:54.143016','2025-05-01 03:37:54.143016',5),(6,'card',1365.00,'completed','pay_QPWGA8Dz2OKsll',NULL,'2025-05-01 03:39:12.752393','2025-05-01 03:39:39.697365',6),(7,'card',4725.00,'pending',NULL,NULL,'2025-05-01 04:37:44.155802','2025-05-01 04:37:44.155802',7),(8,'card',4725.00,'completed','pay_QPXGOtrSjaXr9M',NULL,'2025-05-01 04:38:11.125226','2025-05-01 04:38:36.048005',8),(9,'card',1050.00,'pending',NULL,NULL,'2025-05-01 04:48:54.490361','2025-05-01 04:48:54.490361',9),(10,'card',1050.00,'pending',NULL,NULL,'2025-05-01 04:49:30.180640','2025-05-01 04:49:30.180640',10),(11,'card',1050.00,'pending',NULL,NULL,'2025-05-01 04:52:25.207793','2025-05-01 04:52:25.207793',11),(12,'card',2625.00,'completed','pay_QPbsJMncavKjms',NULL,'2025-05-01 09:08:53.354874','2025-05-01 09:09:15.151048',12);
/*!40000 ALTER TABLE `orders_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_razorpaypayment`
--

DROP TABLE IF EXISTS `orders_razorpaypayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_razorpaypayment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `razorpay_order_id` varchar(100) NOT NULL,
  `razorpay_payment_id` varchar(100) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `razorpay_response` json DEFAULT NULL,
  `attempts` int unsigned NOT NULL,
  `last_attempt` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `razorpay_order_id` (`razorpay_order_id`),
  UNIQUE KEY `payment_id` (`payment_id`),
  CONSTRAINT `orders_razorpaypayment_payment_id_f6d6c2fc_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  CONSTRAINT `orders_razorpaypayment_chk_1` CHECK ((`attempts` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_razorpaypayment`
--

LOCK TABLES `orders_razorpaypayment` WRITE;
/*!40000 ALTER TABLE `orders_razorpaypayment` DISABLE KEYS */;
INSERT INTO `orders_razorpaypayment` VALUES (1,'order_QJ2OwRf5RgCJqb','pay_QJ2P1fXuhl8LrR','6c24ce07380e61c97551e09cfaa4c5b07df12348a45345ad13143cda6ce9e6f4','paid',NULL,1,'2025-04-14 18:32:52.232809','2025-04-14 18:32:52.244047','2025-04-14 18:33:16.349491',1),(2,'order_QJCWNQaykDyZaX','pay_QJCWV7ipP2ZkA9','c3d6e0034bf439c791d44478e92a72993501d026b2b1e45df70837431b650e23','paid',NULL,1,'2025-04-15 04:26:50.922320','2025-04-15 04:26:50.922320','2025-04-15 04:27:16.314561',2),(3,'order_QJO7bPuWtcu6sb','pay_QJO7jkIPggfYCq','20116d744f660c09c5ade82ff046c6d9ff9d01d43b082a90d4afc0beb5eddf68','paid',NULL,1,'2025-04-15 15:47:43.989197','2025-04-15 15:47:43.989197','2025-04-15 15:48:08.782226',3),(4,'order_QJp1MpAD7S7t1u',NULL,NULL,'created',NULL,1,'2025-04-16 18:06:32.362577','2025-04-16 18:06:32.362577','2025-04-16 18:06:32.362577',4),(5,'order_QPWEal9uwnXeyB',NULL,NULL,'created',NULL,1,'2025-05-01 03:37:54.174600','2025-05-01 03:37:54.174600','2025-05-01 03:37:54.174600',5),(6,'order_QPWFyYOsRZqXcJ','pay_QPWGA8Dz2OKsll','b36ab2e3b601612f77db5e79450e6090d5671841f618d2caa9edfecf754d7480','paid',NULL,1,'2025-05-01 03:39:12.756159','2025-05-01 03:39:12.758169','2025-05-01 03:39:39.702315',6),(7,'order_QPXFnxciAeg6Sn',NULL,NULL,'created',NULL,1,'2025-05-01 04:37:44.183457','2025-05-01 04:37:44.184537','2025-05-01 04:37:44.184537',7),(8,'order_QPXGHNmjNhYnax','pay_QPXGOtrSjaXr9M','c3bea1af6832f3edf8fde4f9979a711f02bb1d2c386bb3853fdf25b98bc30c71','paid',NULL,1,'2025-05-01 04:38:11.125226','2025-05-01 04:38:11.125226','2025-05-01 04:38:36.053448',8),(9,'order_QPXRbi3jykJpT6',NULL,NULL,'created',NULL,1,'2025-05-01 04:48:54.506300','2025-05-01 04:48:54.506300','2025-05-01 04:48:54.506300',9),(10,'order_QPXSEdwxL5On3u',NULL,NULL,'created',NULL,1,'2025-05-01 04:49:30.198617','2025-05-01 04:49:30.198617','2025-05-01 04:49:30.198617',10),(11,'order_QPXVJjCf9GpMwu',NULL,NULL,'created',NULL,1,'2025-05-01 04:52:25.216403','2025-05-01 04:52:25.216403','2025-05-01 04:52:25.216403',11),(12,'order_QPbsE267YyDTzx','pay_QPbsJMncavKjms','9cb176b9c2322169a23e4088b55b607488d26e7c59cf8ffeb4ba4310dba9c0a9','paid',NULL,1,'2025-05-01 09:08:53.367842','2025-05-01 09:08:53.367842','2025-05-01 09:09:15.167659',12);
/*!40000 ALTER TABLE `orders_razorpaypayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_category`
--

DROP TABLE IF EXISTS `products_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext,
  `image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `products_category_parent_id_3388f6c9_fk_products_category_id` (`parent_id`),
  CONSTRAINT `products_category_parent_id_3388f6c9_fk_products_category_id` FOREIGN KEY (`parent_id`) REFERENCES `products_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_category`
--

LOCK TABLES `products_category` WRITE;
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` VALUES (1,'Saree','tyh','','categories/purple_IsbuKe2.jpeg',1,'2025-04-14 12:22:02.071013','2025-11-10 04:11:42.547138',NULL),(2,'Choli','ww','','categories/Purple.jpeg',1,'2025-04-14 12:22:15.566223','2025-11-10 04:10:02.451455',NULL),(3,'Pants','ui','','categories/pant_wale.jpeg',1,'2025-04-14 12:22:39.905806','2025-11-10 04:11:27.777437',NULL),(4,'Dupattas','uj','','categories/black.jpeg',1,'2025-04-14 12:22:51.568186','2025-11-10 04:10:19.378018',NULL),(5,'Kurti pair','jk','','categories/kurta_set_green.jpg',1,'2025-04-14 12:23:07.203732','2025-11-10 04:11:02.198333',NULL),(6,'Kurtas','re','','categories/green.jpg',1,'2025-04-14 12:23:29.382468','2025-11-10 04:11:14.530824',NULL),(7,'Blouse','gh','','categories/Marathi.jpeg',1,'2025-04-14 12:23:40.965599','2025-11-10 04:09:48.121733',NULL);
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `design_id` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `stock` int NOT NULL,
  `available_sizes` varchar(255) DEFAULT NULL,
  `colors` varchar(255) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `views` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `design_id` (`design_id`),
  KEY `products_product_category_id_9b594869_fk_products_category_id` (`category_id`),
  CONSTRAINT `products_product_category_id_9b594869_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (1,'Urben trendz','1','V-neck modern blouse design',1000.00,NULL,19,'S,M,L,XL',NULL,NULL,1,1,7,'2025-04-14 12:25:15.903049','2025-11-10 04:07:46.174723',7),(2,'South Indian folk','2','White Ghaghra with maroon dupattas looks gorgeous',5000.00,4500.00,47,NULL,NULL,'saffron',0,1,2,'2025-04-14 12:26:32.509903','2025-11-10 04:07:39.357653',2),(3,'Fabric folk','3','jk',5000.00,4500.00,49,NULL,NULL,'saffron',0,1,4,'2025-04-14 12:28:22.760455','2025-11-10 04:07:33.330987',2),(4,'Cottage','5','All types of dupatta available',300.00,300.00,24,NULL,NULL,NULL,1,1,7,'2025-04-14 12:29:32.595084','2025-11-10 04:08:15.795408',4),(5,'Divine','7','jjk',3500.00,1000.00,48,NULL,NULL,NULL,1,1,11,'2025-04-14 12:30:42.085867','2025-11-10 03:46:55.617785',6),(6,'ethernal rose','8','tyrerere',2000.00,1800.00,50,NULL,NULL,NULL,1,1,11,'2025-04-14 12:31:37.798159','2025-11-10 04:01:11.553702',5),(7,'Traditional design','20','Marathi style blouse design',1200.00,NULL,12,NULL,NULL,NULL,0,1,0,'2025-11-10 03:56:24.960680','2025-11-10 04:00:57.159676',7),(8,'Partywear saree','41','partywear suitable comfort saree',3500.00,3300.00,10,'S,M,L,XL','Black',NULL,0,1,1,'2025-11-10 04:00:43.384796','2025-11-10 04:07:51.156162',1),(9,'hand dyed','90','hand dyed smooth saree purple',3000.00,2900.00,13,'S,M,L,XL','green',NULL,0,1,1,'2025-11-10 04:02:42.979066','2025-11-10 04:07:23.430256',1),(10,'modern look','98','design vital20 with modern look',4500.00,4200.00,80,'S,M,L,XL','purple',NULL,0,1,0,'2025-11-10 04:04:24.050557','2025-11-10 04:06:39.515520',1),(11,'cutwork','23','cutwork fabric',600.00,500.00,30,'S,M,L,XL','cream','net fabric',0,1,0,'2025-11-10 04:14:37.334450','2025-11-10 04:14:37.337576',3),(12,'plazo type','40','plazo suit',4000.00,3500.00,60,'S,M,L,XL','light mahendi',NULL,0,1,0,'2025-11-10 04:16:10.780326','2025-11-10 04:16:10.780326',3),(13,'pant devine','47','pant wale',2000.00,1800.00,80,'S,M,L,XL','pink',NULL,0,1,1,'2025-11-10 04:17:15.578318','2025-11-10 04:17:24.460275',3);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productimage`
--

DROP TABLE IF EXISTS `products_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `alt_text` varchar(200) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_productimage_product_id_e747596a_fk_products_product_id` (`product_id`),
  CONSTRAINT `products_productimage_product_id_e747596a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productimage`
--

LOCK TABLES `products_productimage` WRITE;
/*!40000 ALTER TABLE `products_productimage` DISABLE KEYS */;
INSERT INTO `products_productimage` VALUES (1,'products/1/V-neck.jpeg',1,NULL,'2025-04-14 12:25:15.914823',1),(3,'products/2/South.jpeg',1,NULL,'2025-04-14 12:26:32.513938',2),(5,'products/3/Purple.jpeg',1,NULL,'2025-04-14 12:28:22.760455',3),(7,'products/4/purple.jpeg',1,NULL,'2025-04-14 12:29:32.595084',4),(9,'products/5/IMG-20240515-WA0010.jpg',0,NULL,'2025-04-14 12:30:42.097437',5),(10,'products/5/kurta_set_blue.jpg',1,NULL,'2025-04-14 12:30:42.102047',5),(11,'products/6/black.jpg',1,NULL,'2025-04-14 12:31:37.800756',6),(12,'products/6/blue.jpg',0,NULL,'2025-04-14 12:31:37.804741',6),(13,'products/6/green.jpg',0,NULL,'2025-11-10 03:46:33.445266',6),(14,'products/7/Marathi.jpeg',0,NULL,'2025-11-10 03:56:24.962534',7),(15,'products/8/partywaer.jpeg',1,NULL,'2025-11-10 04:00:43.384796',8),(16,'products/9/hand_dyed.jpeg',1,NULL,'2025-11-10 04:02:42.988573',9),(17,'products/10/purple.jpeg',1,NULL,'2025-11-10 04:04:24.060432',10),(18,'products/11/cutwork.jpeg',1,NULL,'2025-11-10 04:14:37.345830',11),(19,'products/12/plazo_suits.jpeg',1,NULL,'2025-11-10 04:16:10.782825',12),(20,'products/13/pant_wale.jpeg',0,NULL,'2025-11-10 04:17:15.578318',13);
/*!40000 ALTER TABLE `products_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productreview`
--

DROP TABLE IF EXISTS `products_productreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_productreview` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_productreview_product_id_user_id_8cc1724b_uniq` (`product_id`,`user_id`),
  KEY `products_productreview_user_id_5c551aaa_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `products_productrevi_product_id_7e81c4a6_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `products_productreview_user_id_5c551aaa_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productreview`
--

LOCK TABLES `products_productreview` WRITE;
/*!40000 ALTER TABLE `products_productreview` DISABLE KEYS */;
INSERT INTO `products_productreview` VALUES (1,5,'Urvisha','good','2025-04-14 13:08:47.523481','2025-04-14 13:08:47.523481',6,2),(2,4,'Urvisha','fabulous experience','2025-04-15 05:00:01.438475','2025-04-15 05:00:01.438475',5,2),(3,3,'Pumpkin','very good items when i receive and wear it looks preety on me seriously','2025-04-15 05:51:48.024422','2025-04-15 05:51:48.024422',4,1);
/*!40000 ALTER TABLE `products_productreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productvariant`
--

DROP TABLE IF EXISTS `products_productvariant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_productvariant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `size` varchar(10) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `stock` int NOT NULL,
  `image_id` bigint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_productvariant_product_id_size_color_120996eb_uniq` (`product_id`,`size`,`color`),
  KEY `products_productvari_image_id_3523e882_fk_products_` (`image_id`),
  CONSTRAINT `products_productvari_image_id_3523e882_fk_products_` FOREIGN KEY (`image_id`) REFERENCES `products_productimage` (`id`),
  CONSTRAINT `products_productvari_product_id_d9c22902_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productvariant`
--

LOCK TABLES `products_productvariant` WRITE;
/*!40000 ALTER TABLE `products_productvariant` DISABLE KEYS */;
INSERT INTO `products_productvariant` VALUES (1,'XL,S,M','black',20,NULL,6);
/*!40000 ALTER TABLE `products_productvariant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_wishlist`
--

DROP TABLE IF EXISTS `products_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `added_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_wishlist_user_id_product_id_dcf61f93_uniq` (`user_id`,`product_id`),
  KEY `products_wishlist_product_id_7c798228_fk_products_product_id` (`product_id`),
  CONSTRAINT `products_wishlist_product_id_7c798228_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `products_wishlist_user_id_eea5692f_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_wishlist`
--

LOCK TABLES `products_wishlist` WRITE;
/*!40000 ALTER TABLE `products_wishlist` DISABLE KEYS */;
INSERT INTO `products_wishlist` VALUES (3,'2025-04-15 04:20:59.884312',6,2),(4,'2025-04-15 08:59:02.063105',6,1),(5,'2025-04-15 08:59:05.189737',5,1),(6,'2025-04-15 09:10:41.457724',5,2),(11,'2025-05-01 09:11:32.865884',5,5);
/*!40000 ALTER TABLE `products_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tailor_jobs_tailorapplication`
--

DROP TABLE IF EXISTS `tailor_jobs_tailorapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tailor_jobs_tailorapplication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` longtext NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `other_skills` varchar(255) DEFAULT NULL,
  `work_mode` varchar(50) NOT NULL,
  `sample_work` varchar(100) DEFAULT NULL,
  `notes` longtext,
  `status` varchar(20) NOT NULL,
  `rejection_reason` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tailor_jobs_tailorap_user_id_0cb4e572_fk_accounts_` (`user_id`),
  CONSTRAINT `tailor_jobs_tailorap_user_id_0cb4e572_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tailor_jobs_tailorapplication`
--

LOCK TABLES `tailor_jobs_tailorapplication` WRITE;
/*!40000 ALTER TABLE `tailor_jobs_tailorapplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `tailor_jobs_tailorapplication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-10 18:38:03
