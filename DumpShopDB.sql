CREATE DATABASE  IF NOT EXISTS `shopdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopdb`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: shopdb
-- ------------------------------------------------------
-- Server version	8.0.19

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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add shoe',7,'add_shoe'),(26,'Can change shoe',7,'change_shoe'),(27,'Can delete shoe',7,'delete_shoe'),(28,'Can view shoe',7,'view_shoe'),(29,'Can add order',8,'add_order'),(30,'Can change order',8,'change_order'),(31,'Can delete order',8,'delete_order'),(32,'Can view order',8,'view_order'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add order list',10,'add_orderlist'),(38,'Can change order list',10,'change_orderlist'),(39,'Can delete order list',10,'delete_orderlist'),(40,'Can view order list',10,'view_orderlist'),(41,'Can add favorite',11,'add_favorite'),(42,'Can change favorite',11,'change_favorite'),(43,'Can delete favorite',11,'delete_favorite'),(44,'Can view favorite',11,'view_favorite'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment'),(49,'Can add color',13,'add_color'),(50,'Can change color',13,'change_color'),(51,'Can delete color',13,'delete_color'),(52,'Can view color',13,'view_color'),(53,'Can add size',14,'add_size'),(54,'Can change size',14,'change_size'),(55,'Can delete size',14,'delete_size'),(56,'Can view size',14,'view_size'),(57,'Can add image',15,'add_image'),(58,'Can change image',15,'change_image'),(59,'Can delete image',15,'delete_image'),(60,'Can view image',15,'view_image');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$wdJJt8plVCht$2oUxafm5i/5m+FY1dlWxVGt4b9FMYHEhthkwMNDmOS4=','2020-04-11 11:17:21.280060',1,'acer','','','lukash@gmail.com',1,1,'2020-04-08 11:53:13.396254');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_color`
--

DROP TABLE IF EXISTS `befordb_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(20) NOT NULL,
  `shoe_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_color_shoe_id_2c4b1f99_fk_BEforDB_shoe_id` (`shoe_id`),
  CONSTRAINT `BEforDB_color_shoe_id_2c4b1f99_fk_BEforDB_shoe_id` FOREIGN KEY (`shoe_id`) REFERENCES `befordb_shoe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_color`
--

LOCK TABLES `befordb_color` WRITE;
/*!40000 ALTER TABLE `befordb_color` DISABLE KEYS */;
INSERT INTO `befordb_color` VALUES (1,'white',1),(2,'black',1),(3,'green',1),(4,'gray',1),(5,'black',2),(6,'red',2),(7,'green',2),(8,'blue',2),(9,'gray',2),(10,'white',3),(11,'black',3),(12,'red',3),(13,'green',3),(14,'blue',3),(15,'gray',3),(16,'black',4),(17,'red',4),(18,'green',4),(19,'blue',4),(20,'gray',4),(21,'white',5),(22,'black',5),(23,'blue',5),(24,'gray',5),(25,'black',6),(26,'green',6),(27,'gray',6),(28,'white',7),(29,'black',7),(30,'red',7),(31,'green',7),(32,'gray',7),(33,'white',8),(34,'black',8),(35,'red',8),(36,'gray',8),(37,'white',9),(38,'black',9),(39,'red',9),(40,'green',9),(41,'blue',9),(42,'gray',9),(43,'white',10),(44,'red',10),(45,'green',10),(46,'gray',10),(47,'white',11),(48,'blue',11),(49,'gray',11),(50,'red',12),(51,'gray',12),(52,'black',13),(53,'red',13),(54,'green',13),(55,'blue',13),(56,'gray',13),(57,'red',14),(58,'green',14),(59,'gray',14),(60,'white',15),(61,'black',15),(62,'red',15),(63,'blue',15),(64,'gray',15),(65,'white',16),(66,'black',16),(67,'red',16),(68,'green',16),(69,'blue',16),(70,'gray',16),(71,'white',17),(72,'green',17),(73,'blue',17),(74,'gray',17),(75,'white',18),(76,'green',18),(77,'blue',18),(78,'gray',18),(79,'green',19),(80,'gray',19),(81,'white',20),(82,'red',20),(83,'blue',20),(84,'gray',20),(85,'red',21),(86,'blue',21),(87,'white',22),(88,'red',22),(89,'gray',22),(90,'white',23),(91,'black',23),(92,'blue',23),(93,'gray',23),(94,'green',24),(95,'blue',24),(96,'gray',24),(97,'white',25),(98,'black',25),(99,'red',25),(100,'green',25),(101,'blue',25),(102,'black',26),(103,'green',26),(104,'blue',26),(105,'gray',26),(106,'white',27),(107,'black',27),(108,'red',27),(109,'blue',27),(110,'gray',27);
/*!40000 ALTER TABLE `befordb_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_comment`
--

DROP TABLE IF EXISTS `befordb_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `shoe_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_comment_shoe_id_9a16d5dd_fk_BEforDB_shoe_id` (`shoe_id`),
  KEY `BEforDB_comment_user_id_a091e26f_fk_BEforDB_user_id` (`user_id`),
  CONSTRAINT `BEforDB_comment_shoe_id_9a16d5dd_fk_BEforDB_shoe_id` FOREIGN KEY (`shoe_id`) REFERENCES `befordb_shoe` (`id`),
  CONSTRAINT `BEforDB_comment_user_id_a091e26f_fk_BEforDB_user_id` FOREIGN KEY (`user_id`) REFERENCES `befordb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_comment`
--

LOCK TABLES `befordb_comment` WRITE;
/*!40000 ALTER TABLE `befordb_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `befordb_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_favorite`
--

DROP TABLE IF EXISTS `befordb_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_favorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `shoe_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_favorite_user_id_c22ca91f_fk_BEforDB_user_id` (`user_id`),
  KEY `BEforDB_favorite_shoe_id_032a6507_fk_BEforDB_size_id` (`shoe_id`),
  CONSTRAINT `BEforDB_favorite_shoe_id_032a6507_fk_BEforDB_size_id` FOREIGN KEY (`shoe_id`) REFERENCES `befordb_size` (`id`),
  CONSTRAINT `BEforDB_favorite_user_id_c22ca91f_fk_BEforDB_user_id` FOREIGN KEY (`user_id`) REFERENCES `befordb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_favorite`
--

LOCK TABLES `befordb_favorite` WRITE;
/*!40000 ALTER TABLE `befordb_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `befordb_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_image`
--

DROP TABLE IF EXISTS `befordb_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(300) NOT NULL,
  `color_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_image_color_id_8fd7e2f9_fk_BEforDB_color_id` (`color_id`),
  CONSTRAINT `BEforDB_image_color_id_8fd7e2f9_fk_BEforDB_color_id` FOREIGN KEY (`color_id`) REFERENCES `befordb_color` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_image`
--

LOCK TABLES `befordb_image` WRITE;
/*!40000 ALTER TABLE `befordb_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `befordb_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_order`
--

DROP TABLE IF EXISTS `befordb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `phone` int NOT NULL,
  `date` date NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `user_shoe_status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_order_user_id_a7867164_fk_BEforDB_user_id` (`user_id`),
  CONSTRAINT `BEforDB_order_user_id_a7867164_fk_BEforDB_user_id` FOREIGN KEY (`user_id`) REFERENCES `befordb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_order`
--

LOCK TABLES `befordb_order` WRITE;
/*!40000 ALTER TABLE `befordb_order` DISABLE KEYS */;
INSERT INTO `befordb_order` VALUES (1,'Oleksii',125478965,'2020-04-08',0,'In progres',0,1);
/*!40000 ALTER TABLE `befordb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_orderlist`
--

DROP TABLE IF EXISTS `befordb_orderlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_orderlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  `order_id` int NOT NULL,
  `shoe_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_orderlist_order_id_e635c5bf_fk_BEforDB_order_id` (`order_id`),
  KEY `BEforDB_orderlist_shoe_id_b2f4252c_fk_BEforDB_size_id` (`shoe_id`),
  CONSTRAINT `BEforDB_orderlist_order_id_e635c5bf_fk_BEforDB_order_id` FOREIGN KEY (`order_id`) REFERENCES `befordb_order` (`id`),
  CONSTRAINT `BEforDB_orderlist_shoe_id_b2f4252c_fk_BEforDB_size_id` FOREIGN KEY (`shoe_id`) REFERENCES `befordb_size` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_orderlist`
--

LOCK TABLES `befordb_orderlist` WRITE;
/*!40000 ALTER TABLE `befordb_orderlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `befordb_orderlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_shoe`
--

DROP TABLE IF EXISTS `befordb_shoe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_shoe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_shoe`
--

LOCK TABLES `befordb_shoe` WRITE;
/*!40000 ALTER TABLE `befordb_shoe` DISABLE KEYS */;
INSERT INTO `befordb_shoe` VALUES (1,'Adidas','Gazelle',2100),(2,'Adidas','Hamburg',2000),(3,'Adidas','Iniki',1800),(4,'Adidas','Special',2050),(5,'Adidas','Springblade',1700),(6,'Adidas','Stan Smith Suede',1950),(7,'Adidas','Superstar',2000),(8,'Asics','Gel',1900),(9,'Asics','Gel DuoSole',2050),(10,'Asics','Gel Lyte',1850),(11,'Asics','Gel Lyte III',2100),(12,'Asics','Gel-Lique',2000),(13,'Asics','Sock',1950),(14,'New Balance','1400',1750),(15,'New Balance','574',1850),(16,'New Balance','670',1800),(17,'New Balance','991',1900),(18,'Nike','Air Force',1900),(19,'Nike','Air Max',1800),(20,'Nike','Air Max 270',2100),(21,'Nike','Air Max Zero',2100),(22,'Nike','Huarache',2000),(23,'Nike','Huarache City',2000),(24,'Nike','Roshe Run',2050),(25,'Reebok','Classic',1950),(26,'Reebok','Fury',2100),(27,'Reebok','Gore-Tex',1950);
/*!40000 ALTER TABLE `befordb_shoe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_size`
--

DROP TABLE IF EXISTS `befordb_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size` int NOT NULL,
  `count` int NOT NULL,
  `color_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_size_color_id_b65bfc71_fk_BEforDB_color_id` (`color_id`),
  CONSTRAINT `BEforDB_size_color_id_b65bfc71_fk_BEforDB_color_id` FOREIGN KEY (`color_id`) REFERENCES `befordb_color` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_size`
--

LOCK TABLES `befordb_size` WRITE;
/*!40000 ALTER TABLE `befordb_size` DISABLE KEYS */;
INSERT INTO `befordb_size` VALUES (1,36,10,1),(2,37,10,1),(3,38,9,1),(4,39,9,1),(5,40,10,1),(6,41,9,1),(7,42,5,1),(8,43,5,1),(9,44,9,1),(10,45,7,1),(11,36,10,2),(12,37,10,2),(13,38,6,2),(14,39,8,2),(15,40,6,2),(16,41,10,2),(17,42,6,2),(18,43,7,2),(19,44,8,2),(20,45,5,2),(21,36,8,3),(22,37,5,3),(23,38,7,3),(24,39,8,3),(25,40,9,3),(26,41,9,3),(27,42,8,3),(28,43,7,3),(29,44,7,3),(30,45,10,3),(31,36,10,4),(32,37,5,4),(33,38,10,4),(34,39,5,4),(35,40,8,4),(36,41,9,4),(37,42,10,4),(38,43,6,4),(39,44,6,4),(40,45,5,4),(41,36,10,5),(42,37,8,5),(43,38,7,5),(44,39,8,5),(45,40,8,5),(46,41,7,5),(47,42,8,5),(48,43,6,5),(49,44,10,5),(50,45,9,5),(51,36,10,6),(52,37,7,6),(53,38,9,6),(54,39,8,6),(55,40,8,6),(56,41,6,6),(57,42,10,6),(58,43,8,6),(59,44,6,6),(60,45,9,6),(61,36,9,7),(62,37,10,7),(63,38,7,7),(64,39,5,7),(65,40,5,7),(66,41,9,7),(67,42,9,7),(68,43,7,7),(69,44,9,7),(70,45,9,7),(71,36,7,8),(72,37,8,8),(73,38,7,8),(74,39,8,8),(75,40,9,8),(76,41,7,8),(77,42,5,8),(78,43,8,8),(79,44,8,8),(80,45,7,8),(81,36,8,9),(82,37,10,9),(83,38,5,9),(84,39,9,9),(85,40,5,9),(86,41,7,9),(87,42,9,9),(88,43,7,9),(89,44,10,9),(90,45,9,9),(91,36,5,10),(92,37,8,10),(93,38,7,10),(94,39,6,10),(95,40,10,10),(96,41,9,10),(97,42,7,10),(98,43,5,10),(99,44,8,10),(100,45,10,10),(101,36,8,11),(102,37,10,11),(103,38,6,11),(104,39,5,11),(105,40,5,11),(106,41,5,11),(107,42,8,11),(108,43,7,11),(109,44,10,11),(110,45,5,11),(111,36,10,12),(112,37,10,12),(113,38,7,12),(114,39,9,12),(115,40,5,12),(116,41,8,12),(117,42,10,12),(118,43,8,12),(119,44,8,12),(120,45,5,12),(121,36,9,13),(122,37,5,13),(123,38,10,13),(124,39,5,13),(125,40,10,13),(126,41,10,13),(127,42,8,13),(128,43,9,13),(129,44,10,13),(130,45,9,13),(131,36,7,14),(132,37,9,14),(133,38,8,14),(134,39,9,14),(135,40,9,14),(136,41,9,14),(137,42,8,14),(138,43,10,14),(139,44,6,14),(140,45,8,14),(141,36,6,15),(142,37,10,15),(143,38,8,15),(144,39,8,15),(145,40,10,15),(146,41,10,15),(147,42,6,15),(148,43,7,15),(149,44,10,15),(150,45,5,15),(151,36,7,16),(152,37,9,16),(153,38,7,16),(154,39,9,16),(155,40,8,16),(156,41,7,16),(157,42,5,16),(158,43,10,16),(159,44,5,16),(160,45,10,16),(161,36,9,17),(162,37,10,17),(163,38,5,17),(164,39,10,17),(165,40,7,17),(166,41,8,17),(167,42,6,17),(168,43,8,17),(169,44,7,17),(170,45,7,17),(171,36,6,18),(172,37,7,18),(173,38,7,18),(174,39,9,18),(175,40,5,18),(176,41,8,18),(177,42,5,18),(178,43,8,18),(179,44,5,18),(180,45,9,18),(181,36,6,19),(182,37,5,19),(183,38,10,19),(184,39,6,19),(185,40,5,19),(186,41,7,19),(187,42,5,19),(188,43,7,19),(189,44,6,19),(190,45,10,19),(191,36,7,20),(192,37,6,20),(193,38,5,20),(194,39,6,20),(195,40,10,20),(196,41,8,20),(197,42,5,20),(198,43,10,20),(199,44,6,20),(200,45,9,20),(201,36,10,21),(202,37,7,21),(203,38,10,21),(204,39,8,21),(205,40,7,21),(206,41,10,21),(207,42,6,21),(208,43,7,21),(209,44,9,21),(210,45,8,21),(211,36,7,22),(212,37,9,22),(213,38,5,22),(214,39,10,22),(215,40,6,22),(216,41,7,22),(217,42,8,22),(218,43,6,22),(219,44,8,22),(220,45,8,22),(221,36,6,23),(222,37,8,23),(223,38,9,23),(224,39,10,23),(225,40,7,23),(226,41,5,23),(227,42,5,23),(228,43,5,23),(229,44,5,23),(230,45,7,23),(231,36,7,24),(232,37,10,24),(233,38,10,24),(234,39,7,24),(235,40,6,24),(236,41,6,24),(237,42,5,24),(238,43,5,24),(239,44,9,24),(240,45,9,24),(241,36,7,25),(242,37,10,25),(243,38,9,25),(244,39,10,25),(245,40,7,25),(246,41,10,25),(247,42,8,25),(248,43,9,25),(249,44,9,25),(250,45,8,25),(251,36,7,26),(252,37,5,26),(253,38,7,26),(254,39,8,26),(255,40,5,26),(256,41,7,26),(257,42,9,26),(258,43,7,26),(259,44,10,26),(260,45,10,26),(261,36,6,27),(262,37,5,27),(263,38,5,27),(264,39,5,27),(265,40,10,27),(266,41,5,27),(267,42,7,27),(268,43,8,27),(269,44,6,27),(270,45,10,27),(271,36,10,28),(272,37,5,28),(273,38,9,28),(274,39,10,28),(275,40,10,28),(276,41,7,28),(277,42,7,28),(278,43,7,28),(279,44,8,28),(280,45,6,28),(281,36,10,29),(282,37,5,29),(283,38,8,29),(284,39,8,29),(285,40,8,29),(286,41,6,29),(287,42,9,29),(288,43,6,29),(289,44,7,29),(290,45,6,29),(291,36,9,30),(292,37,9,30),(293,38,8,30),(294,39,8,30),(295,40,9,30),(296,41,7,30),(297,42,10,30),(298,43,5,30),(299,44,10,30),(300,45,10,30),(301,36,7,31),(302,37,8,31),(303,38,9,31),(304,39,5,31),(305,40,10,31),(306,41,6,31),(307,42,7,31),(308,43,6,31),(309,44,6,31),(310,45,7,31),(311,36,6,32),(312,37,5,32),(313,38,9,32),(314,39,8,32),(315,40,10,32),(316,41,8,32),(317,42,6,32),(318,43,9,32),(319,44,6,32),(320,45,6,32),(321,36,6,33),(322,37,6,33),(323,38,5,33),(324,39,6,33),(325,40,6,33),(326,41,10,33),(327,42,8,33),(328,43,9,33),(329,44,7,33),(330,45,6,33),(331,36,7,34),(332,37,9,34),(333,38,10,34),(334,39,5,34),(335,40,5,34),(336,41,6,34),(337,42,7,34),(338,43,6,34),(339,44,7,34),(340,45,10,34),(341,36,10,35),(342,37,6,35),(343,38,8,35),(344,39,6,35),(345,40,5,35),(346,41,7,35),(347,42,7,35),(348,43,10,35),(349,44,10,35),(350,45,5,35),(351,36,6,36),(352,37,9,36),(353,38,5,36),(354,39,9,36),(355,40,6,36),(356,41,9,36),(357,42,5,36),(358,43,7,36),(359,44,6,36),(360,45,6,36),(361,36,8,37),(362,37,7,37),(363,38,6,37),(364,39,7,37),(365,40,7,37),(366,41,10,37),(367,42,5,37),(368,43,8,37),(369,44,8,37),(370,45,7,37),(371,36,5,38),(372,37,7,38),(373,38,10,38),(374,39,8,38),(375,40,9,38),(376,41,8,38),(377,42,9,38),(378,43,7,38),(379,44,7,38),(380,45,7,38),(381,36,6,39),(382,37,10,39),(383,38,5,39),(384,39,10,39),(385,40,7,39),(386,41,6,39),(387,42,10,39),(388,43,9,39),(389,44,7,39),(390,45,5,39),(391,36,5,40),(392,37,7,40),(393,38,5,40),(394,39,10,40),(395,40,6,40),(396,41,7,40),(397,42,10,40),(398,43,6,40),(399,44,5,40),(400,45,10,40),(401,36,6,41),(402,37,7,41),(403,38,10,41),(404,39,9,41),(405,40,7,41),(406,41,10,41),(407,42,5,41),(408,43,7,41),(409,44,10,41),(410,45,6,41),(411,36,7,42),(412,37,6,42),(413,38,10,42),(414,39,8,42),(415,40,6,42),(416,41,9,42),(417,42,6,42),(418,43,7,42),(419,44,10,42),(420,45,8,42),(421,36,6,43),(422,37,5,43),(423,38,8,43),(424,39,10,43),(425,40,8,43),(426,41,10,43),(427,42,7,43),(428,43,9,43),(429,44,7,43),(430,45,7,43),(431,36,7,44),(432,37,9,44),(433,38,10,44),(434,39,7,44),(435,40,8,44),(436,41,7,44),(437,42,7,44),(438,43,9,44),(439,44,6,44),(440,45,10,44),(441,36,6,45),(442,37,7,45),(443,38,7,45),(444,39,10,45),(445,40,6,45),(446,41,9,45),(447,42,7,45),(448,43,7,45),(449,44,6,45),(450,45,5,45),(451,36,10,46),(452,37,6,46),(453,38,7,46),(454,39,9,46),(455,40,7,46),(456,41,9,46),(457,42,6,46),(458,43,7,46),(459,44,9,46),(460,45,8,46),(461,36,6,47),(462,37,7,47),(463,38,9,47),(464,39,5,47),(465,40,10,47),(466,41,9,47),(467,42,9,47),(468,43,8,47),(469,44,9,47),(470,45,5,47),(471,36,9,48),(472,37,10,48),(473,38,9,48),(474,39,10,48),(475,40,5,48),(476,41,10,48),(477,42,6,48),(478,43,5,48),(479,44,5,48),(480,45,8,48),(481,36,9,49),(482,37,9,49),(483,38,8,49),(484,39,6,49),(485,40,8,49),(486,41,7,49),(487,42,8,49),(488,43,6,49),(489,44,6,49),(490,45,7,49),(491,36,6,50),(492,37,7,50),(493,38,7,50),(494,39,9,50),(495,40,8,50),(496,41,7,50),(497,42,10,50),(498,43,6,50),(499,44,6,50),(500,45,10,50),(501,36,9,51),(502,37,9,51),(503,38,9,51),(504,39,9,51),(505,40,7,51),(506,41,9,51),(507,42,6,51),(508,43,8,51),(509,44,8,51),(510,45,10,51),(511,36,8,52),(512,37,9,52),(513,38,5,52),(514,39,7,52),(515,40,7,52),(516,41,6,52),(517,42,7,52),(518,43,6,52),(519,44,7,52),(520,45,10,52),(521,36,5,53),(522,37,6,53),(523,38,9,53),(524,39,9,53),(525,40,6,53),(526,41,10,53),(527,42,10,53),(528,43,5,53),(529,44,5,53),(530,45,6,53),(531,36,10,54),(532,37,9,54),(533,38,6,54),(534,39,7,54),(535,40,8,54),(536,41,7,54),(537,42,10,54),(538,43,6,54),(539,44,6,54),(540,45,7,54),(541,36,5,55),(542,37,5,55),(543,38,8,55),(544,39,5,55),(545,40,6,55),(546,41,5,55),(547,42,6,55),(548,43,5,55),(549,44,6,55),(550,45,9,55),(551,36,5,56),(552,37,9,56),(553,38,6,56),(554,39,6,56),(555,40,5,56),(556,41,7,56),(557,42,5,56),(558,43,8,56),(559,44,5,56),(560,45,6,56),(561,36,8,57),(562,37,8,57),(563,38,6,57),(564,39,8,57),(565,40,7,57),(566,41,7,57),(567,42,6,57),(568,43,7,57),(569,44,8,57),(570,45,5,57),(571,36,10,58),(572,37,10,58),(573,38,8,58),(574,39,8,58),(575,40,6,58),(576,41,10,58),(577,42,6,58),(578,43,9,58),(579,44,5,58),(580,45,10,58),(581,36,10,59),(582,37,5,59),(583,38,7,59),(584,39,9,59),(585,40,5,59),(586,41,9,59),(587,42,6,59),(588,43,10,59),(589,44,7,59),(590,45,10,59),(591,36,8,60),(592,37,10,60),(593,38,10,60),(594,39,6,60),(595,40,10,60),(596,41,5,60),(597,42,6,60),(598,43,7,60),(599,44,8,60),(600,45,7,60),(601,36,5,61),(602,37,6,61),(603,38,6,61),(604,39,8,61),(605,40,8,61),(606,41,10,61),(607,42,10,61),(608,43,7,61),(609,44,5,61),(610,45,7,61),(611,36,6,62),(612,37,6,62),(613,38,5,62),(614,39,9,62),(615,40,6,62),(616,41,8,62),(617,42,6,62),(618,43,7,62),(619,44,10,62),(620,45,7,62),(621,36,5,63),(622,37,6,63),(623,38,5,63),(624,39,6,63),(625,40,7,63),(626,41,5,63),(627,42,10,63),(628,43,5,63),(629,44,6,63),(630,45,8,63),(631,36,6,64),(632,37,8,64),(633,38,7,64),(634,39,7,64),(635,40,10,64),(636,41,6,64),(637,42,5,64),(638,43,7,64),(639,44,5,64),(640,45,10,64),(641,36,5,65),(642,37,6,65),(643,38,7,65),(644,39,6,65),(645,40,10,65),(646,41,7,65),(647,42,7,65),(648,43,9,65),(649,44,8,65),(650,45,9,65),(651,36,7,66),(652,37,10,66),(653,38,10,66),(654,39,10,66),(655,40,5,66),(656,41,9,66),(657,42,10,66),(658,43,9,66),(659,44,8,66),(660,45,8,66),(661,36,9,67),(662,37,6,67),(663,38,8,67),(664,39,5,67),(665,40,8,67),(666,41,9,67),(667,42,5,67),(668,43,7,67),(669,44,10,67),(670,45,10,67),(671,36,7,68),(672,37,8,68),(673,38,9,68),(674,39,6,68),(675,40,8,68),(676,41,6,68),(677,42,8,68),(678,43,9,68),(679,44,5,68),(680,45,8,68),(681,36,10,69),(682,37,5,69),(683,38,6,69),(684,39,6,69),(685,40,10,69),(686,41,8,69),(687,42,10,69),(688,43,9,69),(689,44,8,69),(690,45,7,69),(691,36,8,70),(692,37,10,70),(693,38,6,70),(694,39,6,70),(695,40,10,70),(696,41,9,70),(697,42,5,70),(698,43,8,70),(699,44,9,70),(700,45,8,70),(701,36,5,71),(702,37,9,71),(703,38,6,71),(704,39,9,71),(705,40,6,71),(706,41,5,71),(707,42,5,71),(708,43,9,71),(709,44,10,71),(710,45,8,71),(711,36,5,72),(712,37,10,72),(713,38,10,72),(714,39,6,72),(715,40,5,72),(716,41,10,72),(717,42,9,72),(718,43,6,72),(719,44,8,72),(720,45,5,72),(721,36,7,73),(722,37,5,73),(723,38,10,73),(724,39,8,73),(725,40,6,73),(726,41,7,73),(727,42,5,73),(728,43,9,73),(729,44,5,73),(730,45,10,73),(731,36,6,74),(732,37,8,74),(733,38,8,74),(734,39,9,74),(735,40,7,74),(736,41,8,74),(737,42,5,74),(738,43,9,74),(739,44,6,74),(740,45,7,74),(741,36,10,75),(742,37,10,75),(743,38,10,75),(744,39,7,75),(745,40,7,75),(746,41,5,75),(747,42,10,75),(748,43,9,75),(749,44,10,75),(750,45,10,75),(751,36,10,76),(752,37,7,76),(753,38,8,76),(754,39,5,76),(755,40,6,76),(756,41,7,76),(757,42,9,76),(758,43,5,76),(759,44,6,76),(760,45,8,76),(761,36,5,77),(762,37,9,77),(763,38,7,77),(764,39,6,77),(765,40,9,77),(766,41,8,77),(767,42,8,77),(768,43,8,77),(769,44,10,77),(770,45,10,77),(771,36,7,78),(772,37,10,78),(773,38,10,78),(774,39,8,78),(775,40,9,78),(776,41,8,78),(777,42,8,78),(778,43,5,78),(779,44,8,78),(780,45,6,78),(781,36,10,79),(782,37,8,79),(783,38,8,79),(784,39,6,79),(785,40,9,79),(786,41,7,79),(787,42,7,79),(788,43,7,79),(789,44,10,79),(790,45,5,79),(791,36,7,80),(792,37,7,80),(793,38,9,80),(794,39,5,80),(795,40,10,80),(796,41,8,80),(797,42,9,80),(798,43,5,80),(799,44,9,80),(800,45,6,80),(801,36,5,81),(802,37,10,81),(803,38,10,81),(804,39,5,81),(805,40,10,81),(806,41,5,81),(807,42,6,81),(808,43,8,81),(809,44,9,81),(810,45,9,81),(811,36,8,82),(812,37,10,82),(813,38,6,82),(814,39,9,82),(815,40,5,82),(816,41,8,82),(817,42,7,82),(818,43,7,82),(819,44,6,82),(820,45,6,82),(821,36,8,83),(822,37,10,83),(823,38,6,83),(824,39,9,83),(825,40,7,83),(826,41,10,83),(827,42,5,83),(828,43,7,83),(829,44,10,83),(830,45,8,83),(831,36,7,84),(832,37,7,84),(833,38,5,84),(834,39,9,84),(835,40,7,84),(836,41,7,84),(837,42,6,84),(838,43,8,84),(839,44,9,84),(840,45,8,84),(841,36,9,85),(842,37,9,85),(843,38,6,85),(844,39,8,85),(845,40,10,85),(846,41,9,85),(847,42,5,85),(848,43,10,85),(849,44,9,85),(850,45,5,85),(851,36,5,86),(852,37,9,86),(853,38,7,86),(854,39,9,86),(855,40,9,86),(856,41,10,86),(857,42,8,86),(858,43,8,86),(859,44,7,86),(860,45,8,86),(861,36,8,87),(862,37,6,87),(863,38,8,87),(864,39,9,87),(865,40,9,87),(866,41,5,87),(867,42,9,87),(868,43,9,87),(869,44,8,87),(870,45,8,87),(871,36,7,88),(872,37,5,88),(873,38,9,88),(874,39,7,88),(875,40,8,88),(876,41,5,88),(877,42,6,88),(878,43,7,88),(879,44,10,88),(880,45,5,88),(881,36,9,89),(882,37,5,89),(883,38,10,89),(884,39,6,89),(885,40,6,89),(886,41,9,89),(887,42,9,89),(888,43,7,89),(889,44,5,89),(890,45,9,89),(891,36,7,90),(892,37,10,90),(893,38,10,90),(894,39,5,90),(895,40,10,90),(896,41,9,90),(897,42,8,90),(898,43,10,90),(899,44,9,90),(900,45,8,90),(901,36,6,91),(902,37,5,91),(903,38,9,91),(904,39,8,91),(905,40,7,91),(906,41,5,91),(907,42,7,91),(908,43,10,91),(909,44,8,91),(910,45,6,91),(911,36,7,92),(912,37,8,92),(913,38,5,92),(914,39,10,92),(915,40,6,92),(916,41,8,92),(917,42,8,92),(918,43,6,92),(919,44,7,92),(920,45,7,92),(921,36,8,93),(922,37,10,93),(923,38,7,93),(924,39,8,93),(925,40,7,93),(926,41,9,93),(927,42,10,93),(928,43,7,93),(929,44,8,93),(930,45,5,93),(931,36,9,94),(932,37,6,94),(933,38,10,94),(934,39,6,94),(935,40,8,94),(936,41,8,94),(937,42,6,94),(938,43,8,94),(939,44,9,94),(940,45,5,94),(941,36,8,95),(942,37,7,95),(943,38,8,95),(944,39,8,95),(945,40,8,95),(946,41,8,95),(947,42,5,95),(948,43,8,95),(949,44,7,95),(950,45,7,95),(951,36,7,96),(952,37,9,96),(953,38,10,96),(954,39,9,96),(955,40,9,96),(956,41,5,96),(957,42,9,96),(958,43,6,96),(959,44,6,96),(960,45,6,96),(961,36,6,97),(962,37,10,97),(963,38,9,97),(964,39,7,97),(965,40,8,97),(966,41,7,97),(967,42,6,97),(968,43,5,97),(969,44,9,97),(970,45,8,97),(971,36,6,98),(972,37,5,98),(973,38,10,98),(974,39,9,98),(975,40,6,98),(976,41,8,98),(977,42,9,98),(978,43,7,98),(979,44,9,98),(980,45,5,98),(981,36,6,99),(982,37,6,99),(983,38,7,99),(984,39,8,99),(985,40,10,99),(986,41,6,99),(987,42,10,99),(988,43,8,99),(989,44,7,99),(990,45,10,99),(991,36,9,100),(992,37,10,100),(993,38,5,100),(994,39,5,100),(995,40,8,100),(996,41,6,100),(997,42,5,100),(998,43,7,100),(999,44,5,100),(1000,45,8,100),(1001,36,8,101),(1002,37,9,101),(1003,38,8,101),(1004,39,9,101),(1005,40,8,101),(1006,41,10,101),(1007,42,5,101),(1008,43,5,101),(1009,44,9,101),(1010,45,5,101),(1011,36,9,102),(1012,37,10,102),(1013,38,8,102),(1014,39,7,102),(1015,40,7,102),(1016,41,9,102),(1017,42,8,102),(1018,43,9,102),(1019,44,8,102),(1020,45,9,102),(1021,36,10,103),(1022,37,8,103),(1023,38,9,103),(1024,39,10,103),(1025,40,5,103),(1026,41,6,103),(1027,42,8,103),(1028,43,9,103),(1029,44,6,103),(1030,45,8,103),(1031,36,5,104),(1032,37,9,104),(1033,38,5,104),(1034,39,9,104),(1035,40,10,104),(1036,41,6,104),(1037,42,8,104),(1038,43,9,104),(1039,44,9,104),(1040,45,7,104),(1041,36,5,105),(1042,37,6,105),(1043,38,9,105),(1044,39,5,105),(1045,40,7,105),(1046,41,10,105),(1047,42,7,105),(1048,43,9,105),(1049,44,9,105),(1050,45,6,105),(1051,36,7,106),(1052,37,7,106),(1053,38,8,106),(1054,39,7,106),(1055,40,6,106),(1056,41,5,106),(1057,42,10,106),(1058,43,7,106),(1059,44,7,106),(1060,45,9,106),(1061,36,10,107),(1062,37,7,107),(1063,38,8,107),(1064,39,8,107),(1065,40,9,107),(1066,41,10,107),(1067,42,5,107),(1068,43,5,107),(1069,44,6,107),(1070,45,7,107),(1071,36,9,108),(1072,37,9,108),(1073,38,9,108),(1074,39,10,108),(1075,40,7,108),(1076,41,9,108),(1077,42,5,108),(1078,43,7,108),(1079,44,10,108),(1080,45,6,108),(1081,36,8,109),(1082,37,9,109),(1083,38,7,109),(1084,39,8,109),(1085,40,5,109),(1086,41,7,109),(1087,42,5,109),(1088,43,7,109),(1089,44,5,109),(1090,45,8,109),(1091,36,9,110),(1092,37,5,110),(1093,38,9,110),(1094,39,5,110),(1095,40,6,110),(1096,41,8,110),(1097,42,7,110),(1098,43,8,110),(1099,44,9,110),(1100,45,6,110);
/*!40000 ALTER TABLE `befordb_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_user`
--

DROP TABLE IF EXISTS `befordb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_user`
--

LOCK TABLES `befordb_user` WRITE;
/*!40000 ALTER TABLE `befordb_user` DISABLE KEYS */;
INSERT INTO `befordb_user` VALUES (1,'Oleksii','Lukash','lukash2213@gmail.com','28822882',975645342),(2,'Max','Bilet','max.bilet@gmail.com','max123',973820648),(3,'Bogdan','Voloskiy','voloskiy123@gmail.com','135792468',964763426),(4,'Nastya','Pipinstall','nastya.pip@gmail.com','nastya159753',678634223);
/*!40000 ALTER TABLE `befordb_user` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-08 11:53:56.307896','1','Air Max Zero',1,'[{\"added\": {}}]',7,1),(2,'2020-04-08 11:54:57.404572','2','white',1,'[{\"added\": {}}]',13,1),(3,'2020-04-08 11:55:12.651097','3','black',1,'[{\"added\": {}}]',13,1),(4,'2020-04-08 11:55:57.921165','2','Image object (2)',1,'[{\"added\": {}}]',15,1),(5,'2020-04-08 12:04:36.863676','1','Size object (1)',1,'[{\"added\": {}}]',14,1),(6,'2020-04-08 12:08:32.763350','1','lukash2213@gmail.com',1,'[{\"added\": {}}]',9,1),(7,'2020-04-08 12:09:12.789619','2','Nike Air Max Zero',1,'[{\"added\": {}}]',12,1),(8,'2020-04-08 12:09:25.185894','2','Nike Air Max Zero',2,'[]',12,1),(9,'2020-04-08 12:10:26.074016','2','lukash2213@gmail.com Nike Air Max Zero',1,'[{\"added\": {}}]',11,1),(10,'2020-04-08 12:11:31.575966','1','In progres',1,'[{\"added\": {}}]',8,1),(11,'2020-04-08 12:14:03.854038','2','Nike Air Max Zero - 3',1,'[{\"added\": {}}]',10,1),(12,'2020-04-08 12:40:13.941506','1','Nike Air Max Zero - black - 36',2,'[]',14,1),(13,'2020-04-08 12:47:06.271161','2','Nike Air Max Zero - 3',2,'[]',10,1),(14,'2020-04-09 13:14:32.124585','2','Adidas Hamburg',1,'[{\"added\": {}}]',7,1),(15,'2020-04-09 13:14:53.780704','3','Reebok Classic',1,'[{\"added\": {}}]',7,1),(16,'2020-04-09 13:18:00.589306','4','Nike Air Max',1,'[{\"added\": {}}]',7,1),(17,'2020-04-09 13:18:26.128618','5','Nike Air Force',1,'[{\"added\": {}}]',7,1),(18,'2020-04-09 13:19:08.282671','6','Nike Huarache',1,'[{\"added\": {}}]',7,1),(19,'2020-04-09 13:20:02.840501','7','Adidas Springblade',1,'[{\"added\": {}}]',7,1),(20,'2020-04-09 13:21:18.569469','8','Adidas Superstar',1,'[{\"added\": {}}]',7,1),(21,'2020-04-09 13:22:57.492017','9','New Balance 574',1,'[{\"added\": {}}]',7,1),(22,'2020-04-09 13:24:29.319319','10','New Balance 1400',1,'[{\"added\": {}}]',7,1),(23,'2020-04-09 13:26:02.699444','11','Asics Gel-Lique',1,'[{\"added\": {}}]',7,1),(24,'2020-04-09 13:26:33.845716','12','Asics Gel',1,'[{\"added\": {}}]',7,1),(25,'2020-04-09 13:26:51.964634','13','Asics Gel III',1,'[{\"added\": {}}]',7,1),(26,'2020-04-09 13:28:00.071173','13','Asics Gel Lyte III',2,'[{\"changed\": {\"fields\": [\"Model\"]}}]',7,1),(27,'2020-04-09 13:29:20.937986','14','Asics Gel Lyte',1,'[{\"added\": {}}]',7,1),(28,'2020-04-09 13:29:35.809683','15','New Balance 670',1,'[{\"added\": {}}]',7,1),(29,'2020-04-09 13:30:00.315552','16','Acics Sock',1,'[{\"added\": {}}]',7,1),(30,'2020-04-09 13:30:23.548062','17','Reebok Fury',1,'[{\"added\": {}}]',7,1),(31,'2020-04-09 13:32:15.001086','18','Reebok Gore-Tex',1,'[{\"added\": {}}]',7,1),(32,'2020-04-09 13:33:26.252716','19','Asics Gel DuoSole',1,'[{\"added\": {}}]',7,1),(33,'2020-04-09 13:33:41.094817','20','New Balance 991',1,'[{\"added\": {}}]',7,1),(34,'2020-04-09 13:34:00.485545','21','Nike Roshe Run',1,'[{\"added\": {}}]',7,1),(35,'2020-04-09 13:34:30.961220','22','Nike Air Max 270',1,'[{\"added\": {}}]',7,1),(36,'2020-04-09 13:35:08.709806','23','Nike Huarache City',1,'[{\"added\": {}}]',7,1),(37,'2020-04-09 13:39:32.462068','4','Reebok Classic - white',1,'[{\"added\": {}}]',13,1),(38,'2020-04-09 13:40:02.299625','16','Asics Sock',2,'[{\"changed\": {\"fields\": [\"Brand\"]}}]',7,1),(39,'2020-04-09 13:42:55.975307','24','Adidas Special',1,'[{\"added\": {}}]',7,1),(40,'2020-04-09 13:43:32.067599','25','Adidas Gazelle',1,'[{\"added\": {}}]',7,1),(41,'2020-04-09 13:44:29.474958','26','Adidas Stan Smith Suede',1,'[{\"added\": {}}]',7,1),(42,'2020-04-09 13:44:57.252110','27','Adidas Iniki',1,'[{\"added\": {}}]',7,1),(43,'2020-04-09 13:48:24.576176','4','Reebok Classic - white',3,'',13,1),(44,'2020-04-09 13:48:24.580127','3','Nike Air Max Zero - black',3,'',13,1),(45,'2020-04-09 13:48:24.584280','2','Nike Air Max Zero - white',3,'',13,1),(46,'2020-04-09 13:49:32.860223','2','Nike Air Max Zero',3,'',12,1),(47,'2020-04-09 13:50:21.895462','2','lukash2213@gmail.com - Nike Air Max Zero',3,'',11,1),(48,'2020-04-10 08:10:34.012411','5','Asics Gel - white',1,'[{\"added\": {}}]',13,1),(49,'2020-04-10 08:10:56.045917','2','Asics Gel - white - 36',1,'[{\"added\": {}}]',14,1),(50,'2020-04-10 08:11:39.439813','3','Asics Gel - white - 36 - 2',1,'[{\"added\": {}}]',10,1),(51,'2020-04-10 08:34:53.508606','3','lukash2213@gmail.com - Asics Gel - white - 36',1,'[{\"added\": {}}]',11,1),(52,'2020-04-11 11:19:34.998263','6','Adidas Gazelle - white',1,'[{\"added\": {}}]',13,1),(53,'2020-04-11 11:19:56.403252','6','Adidas Gazelle - white',3,'',13,1),(54,'2020-04-11 11:19:56.413233','5','Asics Gel - white',3,'',13,1),(55,'2020-04-11 11:27:00.497408','23','Reebok Gore-Tex - white',3,'',13,1),(56,'2020-04-11 11:27:00.501475','22','Reebok Classic - white',3,'',13,1),(57,'2020-04-11 11:27:00.504389','21','Nike Huarache City - white',3,'',13,1),(58,'2020-04-11 11:27:00.512369','20','Nike Huarache - white',3,'',13,1),(59,'2020-04-11 11:27:00.531659','19','Nike Air Max 270 - white',3,'',13,1),(60,'2020-04-11 11:27:00.535479','18','Nike Air Force - white',3,'',13,1),(61,'2020-04-11 11:27:00.538298','17','New Balance 991 - white',3,'',13,1),(62,'2020-04-11 11:27:00.541290','16','New Balance 670 - white',3,'',13,1),(63,'2020-04-11 11:27:00.549268','15','New Balance 574 - white',3,'',13,1),(64,'2020-04-11 11:27:00.562235','14','Asics Gel Lyte III - white',3,'',13,1),(65,'2020-04-11 11:27:00.570214','13','Asics Gel Lyte - white',3,'',13,1),(66,'2020-04-11 11:27:00.572207','12','Asics Gel DuoSole - white',3,'',13,1),(67,'2020-04-11 11:27:00.575199','11','Asics Gel - white',3,'',13,1),(68,'2020-04-11 11:27:00.588164','10','Adidas Superstar - white',3,'',13,1),(69,'2020-04-11 11:27:00.601377','9','Adidas Springblade - white',3,'',13,1),(70,'2020-04-11 11:27:00.604122','8','Adidas Iniki - white',3,'',13,1),(71,'2020-04-11 11:27:00.607257','7','Adidas Gazelle - white',3,'',13,1),(72,'2020-04-11 12:39:17.824726','110','Reebok Gore-Tex - gray',3,'',13,1),(73,'2020-04-11 12:39:17.829711','109','Reebok Fury - gray',3,'',13,1),(74,'2020-04-11 12:39:17.832703','108','Nike Roshe Run - gray',3,'',13,1),(75,'2020-04-11 12:39:17.839685','107','Nike Huarache City - gray',3,'',13,1),(76,'2020-04-11 12:39:17.852649','106','Nike Huarache - gray',3,'',13,1),(77,'2020-04-11 12:39:17.859631','105','Nike Air Max 270 - gray',3,'',13,1),(78,'2020-04-11 12:39:17.861625','104','Nike Air Max - gray',3,'',13,1),(79,'2020-04-11 12:39:17.863620','103','Nike Air Force - gray',3,'',13,1),(80,'2020-04-11 12:39:17.871598','102','New Balance 991 - gray',3,'',13,1),(81,'2020-04-11 12:39:17.883579','101','New Balance 670 - gray',3,'',13,1),(82,'2020-04-11 12:39:17.892545','100','New Balance 574 - gray',3,'',13,1),(83,'2020-04-11 12:39:17.895537','99','New Balance 1400 - gray',3,'',13,1),(84,'2020-04-11 12:39:17.898528','98','Asics Sock - gray',3,'',13,1),(85,'2020-04-11 12:39:17.916481','97','Asics Gel-Lique - gray',3,'',13,1),(86,'2020-04-11 12:39:17.923461','96','Asics Gel Lyte III - gray',3,'',13,1),(87,'2020-04-11 12:39:17.927449','95','Asics Gel Lyte - gray',3,'',13,1),(88,'2020-04-11 12:39:17.930443','94','Asics Gel DuoSole - gray',3,'',13,1),(89,'2020-04-11 12:39:17.938453','93','Asics Gel - gray',3,'',13,1),(90,'2020-04-11 12:39:17.960690','92','Adidas Superstar - gray',3,'',13,1),(91,'2020-04-11 12:39:17.963353','91','Adidas Stan Smith Suede - gray',3,'',13,1),(92,'2020-04-11 12:39:17.965348','90','Adidas Springblade - gray',3,'',13,1),(93,'2020-04-11 12:39:17.974656','89','Adidas Special - gray',3,'',13,1),(94,'2020-04-11 12:39:17.996265','88','Adidas Iniki - gray',3,'',13,1),(95,'2020-04-11 12:39:17.999259','87','Adidas Hamburg - gray',3,'',13,1),(96,'2020-04-11 12:39:18.001252','86','Adidas Gazelle - gray',3,'',13,1),(97,'2020-04-11 12:39:18.016214','85','Reebok Gore-Tex - blue',3,'',13,1),(98,'2020-04-11 12:39:18.025187','84','Reebok Fury - blue',3,'',13,1),(99,'2020-04-11 12:39:18.027183','83','Reebok Classic - blue',3,'',13,1),(100,'2020-04-11 12:39:18.030177','82','Nike Roshe Run - blue',3,'',13,1),(101,'2020-04-11 12:39:18.045136','81','Nike Huarache City - blue',3,'',13,1),(102,'2020-04-11 12:39:18.061093','80','Nike Air Max Zero - blue',3,'',13,1),(103,'2020-04-11 12:39:18.063088','79','Nike Air Max 270 - blue',3,'',13,1),(104,'2020-04-11 12:39:18.066404','78','Nike Air Force - blue',3,'',13,1),(105,'2020-04-11 12:39:18.069072','77','New Balance 991 - blue',3,'',13,1),(106,'2020-04-11 12:39:18.087023','76','New Balance 670 - blue',3,'',13,1),(107,'2020-04-11 12:39:18.095002','75','New Balance 574 - blue',3,'',13,1),(108,'2020-04-11 12:39:18.115945','74','Asics Sock - blue',3,'',13,1),(109,'2020-04-11 12:39:18.124921','73','Asics Gel Lyte III - blue',3,'',13,1),(110,'2020-04-11 12:39:18.141875','72','Asics Gel DuoSole - blue',3,'',13,1),(111,'2020-04-11 12:39:18.149856','71','Adidas Springblade - blue',3,'',13,1),(112,'2020-04-11 12:39:18.151850','70','Adidas Special - blue',3,'',13,1),(113,'2020-04-11 12:39:18.153867','69','Adidas Iniki - blue',3,'',13,1),(114,'2020-04-11 12:39:18.161067','68','Adidas Hamburg - blue',3,'',13,1),(115,'2020-04-11 12:39:18.179017','67','Reebok Fury - green',3,'',13,1),(116,'2020-04-11 12:39:18.181769','66','Reebok Classic - green',3,'',13,1),(117,'2020-04-11 12:39:18.183764','65','Nike Roshe Run - green',3,'',13,1),(118,'2020-04-11 12:39:18.191982','64','Nike Air Max - green',3,'',13,1),(119,'2020-04-11 12:39:18.208697','63','Nike Air Force - green',3,'',13,1),(120,'2020-04-11 12:39:18.210692','62','New Balance 991 - green',3,'',13,1),(121,'2020-04-11 12:39:18.213685','61','New Balance 670 - green',3,'',13,1),(122,'2020-04-11 12:39:18.222666','60','New Balance 1400 - green',3,'',13,1),(123,'2020-04-11 12:39:18.240614','59','Asics Sock - green',3,'',13,1),(124,'2020-04-11 12:39:18.243607','58','Asics Gel Lyte - green',3,'',13,1),(125,'2020-04-11 12:39:18.248596','57','Asics Gel DuoSole - green',3,'',13,1),(126,'2020-04-11 12:39:18.256570','56','Adidas Superstar - green',3,'',13,1),(127,'2020-04-11 12:39:18.269575','55','Adidas Stan Smith Suede - green',3,'',13,1),(128,'2020-04-11 12:39:18.277628','54','Adidas Special - green',3,'',13,1),(129,'2020-04-11 12:39:18.281503','53','Adidas Iniki - green',3,'',13,1),(130,'2020-04-11 12:39:18.284496','52','Adidas Hamburg - green',3,'',13,1),(131,'2020-04-11 12:39:18.287487','51','Adidas Gazelle - green',3,'',13,1),(132,'2020-04-11 12:39:18.305581','50','Reebok Gore-Tex - red',3,'',13,1),(133,'2020-04-11 12:39:18.313418','49','Reebok Classic - red',3,'',13,1),(134,'2020-04-11 12:39:18.318404','48','Nike Huarache - red',3,'',13,1),(135,'2020-04-11 12:39:18.321400','47','Nike Air Max Zero - red',3,'',13,1),(136,'2020-04-11 12:39:18.334362','46','Nike Air Max 270 - red',3,'',13,1),(137,'2020-04-11 12:39:18.347330','45','New Balance 670 - red',3,'',13,1),(138,'2020-04-11 12:39:18.350363','44','New Balance 574 - red',3,'',13,1),(139,'2020-04-11 12:39:18.352389','43','New Balance 1400 - red',3,'',13,1),(140,'2020-04-11 12:39:18.354309','42','Asics Sock - red',3,'',13,1),(141,'2020-04-11 12:39:18.368445','41','Asics Gel-Lique - red',3,'',13,1),(142,'2020-04-11 12:39:18.381236','40','Asics Gel Lyte - red',3,'',13,1),(143,'2020-04-11 12:39:18.384228','39','Asics Gel DuoSole - red',3,'',13,1),(144,'2020-04-11 12:39:18.388222','38','Asics Gel - red',3,'',13,1),(145,'2020-04-11 12:39:18.401524','37','Adidas Superstar - red',3,'',13,1),(146,'2020-04-11 12:39:18.414150','36','Adidas Special - red',3,'',13,1),(147,'2020-04-11 12:39:18.417141','35','Adidas Iniki - red',3,'',13,1),(148,'2020-04-11 12:39:18.419135','34','Adidas Hamburg - red',3,'',13,1),(149,'2020-04-11 12:39:18.427113','33','Reebok Gore-Tex - black',3,'',13,1),(150,'2020-04-11 12:39:18.440179','32','Reebok Fury - black',3,'',13,1),(151,'2020-04-11 12:39:18.447061','31','Reebok Classic - black',3,'',13,1),(152,'2020-04-11 12:39:18.450052','30','Nike Huarache City - black',3,'',13,1),(153,'2020-04-11 12:39:18.453167','29','New Balance 670 - black',3,'',13,1),(154,'2020-04-11 12:39:18.455039','28','New Balance 574 - black',3,'',13,1),(155,'2020-04-11 12:39:18.468004','27','Asics Sock - black',3,'',13,1),(156,'2020-04-11 12:39:18.480974','26','Asics Gel DuoSole - black',3,'',13,1),(157,'2020-04-11 12:39:18.484962','25','Asics Gel - black',3,'',13,1),(158,'2020-04-11 12:39:18.487952','24','Adidas Superstar - black',3,'',13,1),(159,'2020-04-11 12:39:18.505903','23','Adidas Stan Smith Suede - black',3,'',13,1),(160,'2020-04-11 12:39:18.512885','22','Adidas Springblade - black',3,'',13,1),(161,'2020-04-11 12:39:18.515879','21','Adidas Special - black',3,'',13,1),(162,'2020-04-11 12:39:18.518869','20','Adidas Iniki - black',3,'',13,1),(163,'2020-04-11 12:39:18.526984','19','Adidas Hamburg - black',3,'',13,1),(164,'2020-04-11 12:39:18.539875','18','Adidas Gazelle - black',3,'',13,1),(165,'2020-04-11 12:39:18.547792','17','Reebok Gore-Tex - white',3,'',13,1),(166,'2020-04-11 12:39:18.549787','16','Reebok Classic - white',3,'',13,1),(167,'2020-04-11 12:39:18.552778','15','Nike Huarache City - white',3,'',13,1),(168,'2020-04-11 12:39:18.566741','14','Nike Huarache - white',3,'',13,1),(169,'2020-04-11 12:39:18.579706','13','Nike Air Max 270 - white',3,'',13,1),(170,'2020-04-11 12:39:18.581701','12','Nike Air Force - white',3,'',13,1),(171,'2020-04-11 12:39:18.583695','11','New Balance 991 - white',3,'',13,1),(172,'2020-04-11 12:39:29.629176','10','New Balance 670 - white',3,'',13,1),(173,'2020-04-11 12:39:29.633151','9','New Balance 574 - white',3,'',13,1),(174,'2020-04-11 12:39:29.635146','8','Asics Gel Lyte III - white',3,'',13,1),(175,'2020-04-11 12:39:29.642227','7','Asics Gel Lyte - white',3,'',13,1),(176,'2020-04-11 12:39:29.655166','6','Asics Gel DuoSole - white',3,'',13,1),(177,'2020-04-11 12:39:29.662076','5','Asics Gel - white',3,'',13,1),(178,'2020-04-11 12:39:29.664084','4','Adidas Superstar - white',3,'',13,1),(179,'2020-04-11 12:39:29.666065','3','Adidas Springblade - white',3,'',13,1),(180,'2020-04-11 12:39:29.684087','2','Adidas Iniki - white',3,'',13,1),(181,'2020-04-11 12:39:29.691994','1','Adidas Gazelle - white',3,'',13,1),(182,'2020-04-11 12:41:12.562658','243','Reebok Gore-Tex - white',3,'',13,1),(183,'2020-04-11 12:41:12.566608','242','Reebok Classic - white',3,'',13,1),(184,'2020-04-11 12:41:12.568602','241','Nike Huarache City - white',3,'',13,1),(185,'2020-04-11 12:41:12.571594','240','Nike Huarache - white',3,'',13,1),(186,'2020-04-11 12:41:12.588550','239','Nike Air Max 270 - white',3,'',13,1),(187,'2020-04-11 12:41:12.595532','238','Nike Air Force - white',3,'',13,1),(188,'2020-04-11 12:41:12.598524','237','New Balance 991 - white',3,'',13,1),(189,'2020-04-11 12:41:12.605506','236','New Balance 670 - white',3,'',13,1),(190,'2020-04-11 12:41:12.618471','235','New Balance 574 - white',3,'',13,1),(191,'2020-04-11 12:41:12.626569','234','Asics Gel Lyte III - white',3,'',13,1),(192,'2020-04-11 12:41:12.629443','233','Asics Gel Lyte - white',3,'',13,1),(193,'2020-04-11 12:41:12.632435','232','Asics Gel DuoSole - white',3,'',13,1),(194,'2020-04-11 12:41:12.650388','231','Asics Gel - white',3,'',13,1),(195,'2020-04-11 12:41:12.657367','230','Adidas Superstar - white',3,'',13,1),(196,'2020-04-11 12:41:12.660606','229','Adidas Springblade - white',3,'',13,1),(197,'2020-04-11 12:41:12.663351','228','Adidas Iniki - white',3,'',13,1),(198,'2020-04-11 12:41:12.665345','227','Adidas Gazelle - white',3,'',13,1),(199,'2020-04-11 12:42:07.629793','363','New Balance 670 - white',3,'',13,1),(200,'2020-04-11 12:42:07.637771','362','New Balance 574 - white',3,'',13,1),(201,'2020-04-11 12:42:07.653729','361','Asics Gel Lyte III - white',3,'',13,1),(202,'2020-04-11 12:42:07.655723','360','Asics Gel Lyte - white',3,'',13,1),(203,'2020-04-11 12:42:07.657719','359','Asics Gel DuoSole - white',3,'',13,1),(204,'2020-04-11 12:42:07.665696','358','Asics Gel - white',3,'',13,1),(205,'2020-04-11 12:42:07.682651','357','Adidas Superstar - white',3,'',13,1),(206,'2020-04-11 12:42:07.685643','356','Adidas Springblade - white',3,'',13,1),(207,'2020-04-11 12:42:07.687637','355','Adidas Iniki - white',3,'',13,1),(208,'2020-04-11 12:42:07.700602','354','Adidas Gazelle - white',3,'',13,1),(209,'2020-04-11 12:42:07.712570','353','Reebok Gore-Tex - gray',3,'',13,1),(210,'2020-04-11 12:42:07.714565','352','Reebok Fury - gray',3,'',13,1),(211,'2020-04-11 12:42:07.716561','351','Nike Roshe Run - gray',3,'',13,1),(212,'2020-04-11 12:42:07.718555','350','Nike Huarache City - gray',3,'',13,1),(213,'2020-04-11 12:42:07.720551','349','Nike Huarache - gray',3,'',13,1),(214,'2020-04-11 12:42:07.732518','348','Nike Air Max 270 - gray',3,'',13,1),(215,'2020-04-11 12:42:07.745483','347','Nike Air Max - gray',3,'',13,1),(216,'2020-04-11 12:42:07.747478','346','Nike Air Force - gray',3,'',13,1),(217,'2020-04-11 12:42:07.765430','345','New Balance 991 - gray',3,'',13,1),(218,'2020-04-11 12:42:07.772410','344','New Balance 670 - gray',3,'',13,1),(219,'2020-04-11 12:42:07.774405','343','New Balance 574 - gray',3,'',13,1),(220,'2020-04-11 12:42:07.777397','342','New Balance 1400 - gray',3,'',13,1),(221,'2020-04-11 12:42:07.784379','341','Asics Sock - gray',3,'',13,1),(222,'2020-04-11 12:42:07.797345','340','Asics Gel-Lique - gray',3,'',13,1),(223,'2020-04-11 12:42:07.805323','339','Asics Gel Lyte III - gray',3,'',13,1),(224,'2020-04-11 12:42:07.808315','338','Asics Gel Lyte - gray',3,'',13,1),(225,'2020-04-11 12:42:07.810310','337','Asics Gel DuoSole - gray',3,'',13,1),(226,'2020-04-11 12:42:07.817290','336','Asics Gel - gray',3,'',13,1),(227,'2020-04-11 12:42:07.830257','335','Adidas Superstar - gray',3,'',13,1),(228,'2020-04-11 12:42:07.837238','334','Adidas Stan Smith Suede - gray',3,'',13,1),(229,'2020-04-11 12:42:07.839232','333','Adidas Springblade - gray',3,'',13,1),(230,'2020-04-11 12:42:07.841227','332','Adidas Special - gray',3,'',13,1),(231,'2020-04-11 12:42:07.853203','331','Adidas Iniki - gray',3,'',13,1),(232,'2020-04-11 12:42:07.866162','330','Adidas Hamburg - gray',3,'',13,1),(233,'2020-04-11 12:42:07.868155','329','Adidas Gazelle - gray',3,'',13,1),(234,'2020-04-11 12:42:07.870150','328','Reebok Gore-Tex - blue',3,'',13,1),(235,'2020-04-11 12:42:07.883115','327','Reebok Fury - blue',3,'',13,1),(236,'2020-04-11 12:42:07.895109','326','Reebok Classic - blue',3,'',13,1),(237,'2020-04-11 12:42:07.899072','325','Nike Roshe Run - blue',3,'',13,1),(238,'2020-04-11 12:42:07.907324','324','Nike Huarache City - blue',3,'',13,1),(239,'2020-04-11 12:42:07.920184','323','Nike Air Max Zero - blue',3,'',13,1),(240,'2020-04-11 12:42:07.927997','322','Nike Air Max 270 - blue',3,'',13,1),(241,'2020-04-11 12:42:07.930988','321','Nike Air Force - blue',3,'',13,1),(242,'2020-04-11 12:42:07.935032','320','New Balance 991 - blue',3,'',13,1),(243,'2020-04-11 12:42:07.937970','319','New Balance 670 - blue',3,'',13,1),(244,'2020-04-11 12:42:07.950942','318','New Balance 574 - blue',3,'',13,1),(245,'2020-04-11 12:42:07.964899','317','Asics Sock - blue',3,'',13,1),(246,'2020-04-11 12:42:07.970917','316','Asics Gel Lyte III - blue',3,'',13,1),(247,'2020-04-11 12:42:07.975108','315','Asics Gel DuoSole - blue',3,'',13,1),(248,'2020-04-11 12:42:07.979858','314','Adidas Springblade - blue',3,'',13,1),(249,'2020-04-11 12:42:07.985086','313','Adidas Special - blue',3,'',13,1),(250,'2020-04-11 12:42:07.989830','312','Adidas Iniki - blue',3,'',13,1),(251,'2020-04-11 12:42:07.995151','311','Adidas Hamburg - blue',3,'',13,1),(252,'2020-04-11 12:42:08.004921','310','Reebok Fury - green',3,'',13,1),(253,'2020-04-11 12:42:08.015760','309','Reebok Classic - green',3,'',13,1),(254,'2020-04-11 12:42:08.026767','308','Nike Roshe Run - green',3,'',13,1),(255,'2020-04-11 12:42:08.037702','307','Nike Air Max - green',3,'',13,1),(256,'2020-04-11 12:42:08.051666','306','Nike Air Force - green',3,'',13,1),(257,'2020-04-11 12:42:08.062635','305','New Balance 991 - green',3,'',13,1),(258,'2020-04-11 12:42:08.072643','304','New Balance 670 - green',3,'',13,1),(259,'2020-04-11 12:42:08.082583','303','New Balance 1400 - green',3,'',13,1),(260,'2020-04-11 12:42:08.087568','302','Asics Sock - green',3,'',13,1),(261,'2020-04-11 12:42:08.091592','301','Asics Gel Lyte - green',3,'',13,1),(262,'2020-04-11 12:42:08.096546','300','Asics Gel DuoSole - green',3,'',13,1),(263,'2020-04-11 12:42:08.109546','299','Adidas Superstar - green',3,'',13,1),(264,'2020-04-11 12:42:08.111504','298','Adidas Stan Smith Suede - green',3,'',13,1),(265,'2020-04-11 12:42:08.113499','297','Adidas Special - green',3,'',13,1),(266,'2020-04-11 12:42:08.115496','296','Adidas Iniki - green',3,'',13,1),(267,'2020-04-11 12:42:08.124471','295','Adidas Hamburg - green',3,'',13,1),(268,'2020-04-11 12:42:08.128459','294','Adidas Gazelle - green',3,'',13,1),(269,'2020-04-11 12:42:08.130454','293','Reebok Gore-Tex - red',3,'',13,1),(270,'2020-04-11 12:42:08.132450','292','Reebok Classic - red',3,'',13,1),(271,'2020-04-11 12:42:08.139429','291','Nike Huarache - red',3,'',13,1),(272,'2020-04-11 12:42:08.145413','290','Nike Air Max Zero - red',3,'',13,1),(273,'2020-04-11 12:42:08.148406','289','Nike Air Max 270 - red',3,'',13,1),(274,'2020-04-11 12:42:08.151398','288','New Balance 670 - red',3,'',13,1),(275,'2020-04-11 12:42:08.153393','287','New Balance 574 - red',3,'',13,1),(276,'2020-04-11 12:42:08.157382','286','New Balance 1400 - red',3,'',13,1),(277,'2020-04-11 12:42:08.197285','285','Asics Sock - red',3,'',13,1),(278,'2020-04-11 12:42:08.200306','284','Asics Gel-Lique - red',3,'',13,1),(279,'2020-04-11 12:42:08.203259','283','Asics Gel Lyte - red',3,'',13,1),(280,'2020-04-11 12:42:08.220215','282','Asics Gel DuoSole - red',3,'',13,1),(281,'2020-04-11 12:42:08.228193','281','Asics Gel - red',3,'',13,1),(282,'2020-04-11 12:42:08.230187','280','Adidas Superstar - red',3,'',13,1),(283,'2020-04-11 12:42:08.233181','279','Adidas Special - red',3,'',13,1),(284,'2020-04-11 12:42:08.254354','278','Adidas Iniki - red',3,'',13,1),(285,'2020-04-11 12:42:08.263100','277','Adidas Hamburg - red',3,'',13,1),(286,'2020-04-11 12:42:08.267089','276','Reebok Gore-Tex - black',3,'',13,1),(287,'2020-04-11 12:42:08.271080','275','Reebok Fury - black',3,'',13,1),(288,'2020-04-11 12:42:08.285041','274','Reebok Classic - black',3,'',13,1),(289,'2020-04-11 12:42:08.299004','273','Nike Huarache City - black',3,'',13,1),(290,'2020-04-11 12:42:08.302996','272','New Balance 670 - black',3,'',13,1),(291,'2020-04-11 12:42:08.311975','271','New Balance 574 - black',3,'',13,1),(292,'2020-04-11 12:42:08.330922','270','Asics Sock - black',3,'',13,1),(293,'2020-04-11 12:42:08.334908','269','Asics Gel DuoSole - black',3,'',13,1),(294,'2020-04-11 12:42:08.336902','268','Asics Gel - black',3,'',13,1),(295,'2020-04-11 12:42:08.338896','267','Adidas Superstar - black',3,'',13,1),(296,'2020-04-11 12:42:08.361835','266','Adidas Stan Smith Suede - black',3,'',13,1),(297,'2020-04-11 12:42:08.384775','265','Adidas Springblade - black',3,'',13,1),(298,'2020-04-11 12:42:08.400732','264','Adidas Special - black',3,'',13,1),(299,'2020-04-11 12:42:15.682086','263','Adidas Iniki - black',3,'',13,1),(300,'2020-04-11 12:42:15.687037','262','Adidas Hamburg - black',3,'',13,1),(301,'2020-04-11 12:42:15.690154','261','Adidas Gazelle - black',3,'',13,1),(302,'2020-04-11 12:42:15.693019','260','Reebok Gore-Tex - white',3,'',13,1),(303,'2020-04-11 12:42:15.705226','259','Reebok Classic - white',3,'',13,1),(304,'2020-04-11 12:42:15.718196','258','Nike Huarache City - white',3,'',13,1),(305,'2020-04-11 12:42:15.720944','257','Nike Huarache - white',3,'',13,1),(306,'2020-04-11 12:42:15.722938','256','Nike Air Max 270 - white',3,'',13,1),(307,'2020-04-11 12:42:15.725930','255','Nike Air Force - white',3,'',13,1),(308,'2020-04-11 12:42:15.733909','254','New Balance 991 - white',3,'',13,1),(309,'2020-04-11 12:42:15.746496','253','New Balance 670 - white',3,'',13,1),(310,'2020-04-11 12:42:15.754513','252','New Balance 574 - white',3,'',13,1),(311,'2020-04-11 12:42:15.756469','251','Asics Gel Lyte III - white',3,'',13,1),(312,'2020-04-11 12:42:15.759695','250','Asics Gel Lyte - white',3,'',13,1),(313,'2020-04-11 12:42:15.762455','249','Asics Gel DuoSole - white',3,'',13,1),(314,'2020-04-11 12:42:15.779408','248','Asics Gel - white',3,'',13,1),(315,'2020-04-11 12:42:15.787428','247','Adidas Superstar - white',3,'',13,1),(316,'2020-04-11 12:42:15.789383','246','Adidas Springblade - white',3,'',13,1),(317,'2020-04-11 12:42:15.792374','245','Adidas Iniki - white',3,'',13,1),(318,'2020-04-11 12:42:15.800354','244','Adidas Gazelle - white',3,'',13,1),(319,'2020-04-11 12:42:24.774798','463','Reebok Gore-Tex - gray',3,'',13,1),(320,'2020-04-11 12:42:24.780990','462','Reebok Fury - gray',3,'',13,1),(321,'2020-04-11 12:42:24.783775','461','Nike Roshe Run - gray',3,'',13,1),(322,'2020-04-11 12:42:24.785770','460','Nike Huarache City - gray',3,'',13,1),(323,'2020-04-11 12:42:24.803724','459','Nike Huarache - gray',3,'',13,1),(324,'2020-04-11 12:42:24.811700','458','Nike Air Max 270 - gray',3,'',13,1),(325,'2020-04-11 12:42:24.813695','457','Nike Air Max - gray',3,'',13,1),(326,'2020-04-11 12:42:24.815692','456','Nike Air Force - gray',3,'',13,1),(327,'2020-04-11 12:42:24.840754','455','New Balance 991 - gray',3,'',13,1),(328,'2020-04-11 12:42:24.843615','454','New Balance 670 - gray',3,'',13,1),(329,'2020-04-11 12:42:24.846609','453','New Balance 574 - gray',3,'',13,1),(330,'2020-04-11 12:42:24.865568','452','New Balance 1400 - gray',3,'',13,1),(331,'2020-04-11 12:42:24.868549','451','Asics Sock - gray',3,'',13,1),(332,'2020-04-11 12:42:24.871541','450','Asics Gel-Lique - gray',3,'',13,1),(333,'2020-04-11 12:42:24.874575','449','Asics Gel Lyte III - gray',3,'',13,1),(334,'2020-04-11 12:42:24.881515','448','Asics Gel Lyte - gray',3,'',13,1),(335,'2020-04-11 12:42:24.894718','447','Asics Gel DuoSole - gray',3,'',13,1),(336,'2020-04-11 12:42:24.903457','446','Asics Gel - gray',3,'',13,1),(337,'2020-04-11 12:42:24.905451','445','Adidas Superstar - gray',3,'',13,1),(338,'2020-04-11 12:42:24.908441','444','Adidas Stan Smith Suede - gray',3,'',13,1),(339,'2020-04-11 12:42:24.915424','443','Adidas Springblade - gray',3,'',13,1),(340,'2020-04-11 12:42:24.935537','442','Adidas Special - gray',3,'',13,1),(341,'2020-04-11 12:42:24.938361','441','Adidas Iniki - gray',3,'',13,1),(342,'2020-04-11 12:42:24.940357','440','Adidas Hamburg - gray',3,'',13,1),(343,'2020-04-11 12:42:24.943353','439','Adidas Gazelle - gray',3,'',13,1),(344,'2020-04-11 12:42:24.959306','438','Reebok Gore-Tex - blue',3,'',13,1),(345,'2020-04-11 12:42:24.973615','437','Reebok Fury - blue',3,'',13,1),(346,'2020-04-11 12:42:24.977258','436','Reebok Classic - blue',3,'',13,1),(347,'2020-04-11 12:42:24.981249','435','Nike Roshe Run - blue',3,'',13,1),(348,'2020-04-11 12:42:24.983241','434','Nike Huarache City - blue',3,'',13,1),(349,'2020-04-11 12:42:24.991220','433','Nike Air Max Zero - blue',3,'',13,1),(350,'2020-04-11 12:42:25.009173','432','Nike Air Max 270 - blue',3,'',13,1),(351,'2020-04-11 12:42:25.012165','431','Nike Air Force - blue',3,'',13,1),(352,'2020-04-11 12:42:25.014159','430','New Balance 991 - blue',3,'',13,1),(353,'2020-04-11 12:42:25.017152','429','New Balance 670 - blue',3,'',13,1),(354,'2020-04-11 12:42:25.025129','428','New Balance 574 - blue',3,'',13,1),(355,'2020-04-11 12:42:25.039092','427','Asics Sock - blue',3,'',13,1),(356,'2020-04-11 12:42:25.047072','426','Asics Gel Lyte III - blue',3,'',13,1),(357,'2020-04-11 12:42:25.050063','425','Asics Gel DuoSole - blue',3,'',13,1),(358,'2020-04-11 12:42:25.052057','424','Adidas Springblade - blue',3,'',13,1),(359,'2020-04-11 12:42:25.071006','423','Adidas Special - blue',3,'',13,1),(360,'2020-04-11 12:42:25.079983','422','Adidas Iniki - blue',3,'',13,1),(361,'2020-04-11 12:42:25.081978','421','Adidas Hamburg - blue',3,'',13,1),(362,'2020-04-11 12:42:25.083974','420','Reebok Fury - green',3,'',13,1),(363,'2020-04-11 12:42:25.097934','419','Reebok Classic - green',3,'',13,1),(364,'2020-04-11 12:42:25.099930','418','Nike Roshe Run - green',3,'',13,1),(365,'2020-04-11 12:42:25.102921','417','Nike Air Max - green',3,'',13,1),(366,'2020-04-11 12:42:25.104916','416','Nike Air Force - green',3,'',13,1),(367,'2020-04-11 12:42:25.121910','415','New Balance 991 - green',3,'',13,1),(368,'2020-04-11 12:42:25.129851','414','New Balance 670 - green',3,'',13,1),(369,'2020-04-11 12:42:25.131884','413','New Balance 1400 - green',3,'',13,1),(370,'2020-04-11 12:42:25.133839','412','Asics Sock - green',3,'',13,1),(371,'2020-04-11 12:42:25.146843','411','Asics Gel Lyte - green',3,'',13,1),(372,'2020-04-11 12:42:25.159770','410','Asics Gel DuoSole - green',3,'',13,1),(373,'2020-04-11 12:42:25.162764','409','Adidas Superstar - green',3,'',13,1),(374,'2020-04-11 12:42:25.164757','408','Adidas Stan Smith Suede - green',3,'',13,1),(375,'2020-04-11 12:42:25.166752','407','Adidas Special - green',3,'',13,1),(376,'2020-04-11 12:42:25.212627','406','Adidas Iniki - green',3,'',13,1),(377,'2020-04-11 12:42:25.224596','405','Adidas Hamburg - green',3,'',13,1),(378,'2020-04-11 12:42:25.227588','404','Adidas Gazelle - green',3,'',13,1),(379,'2020-04-11 12:42:25.229583','403','Reebok Gore-Tex - red',3,'',13,1),(380,'2020-04-11 12:42:25.242548','402','Reebok Classic - red',3,'',13,1),(381,'2020-04-11 12:42:25.255514','401','Nike Huarache - red',3,'',13,1),(382,'2020-04-11 12:42:25.258506','400','Nike Air Max Zero - red',3,'',13,1),(383,'2020-04-11 12:42:25.261498','399','Nike Air Max 270 - red',3,'',13,1),(384,'2020-04-11 12:42:25.274463','398','New Balance 670 - red',3,'',13,1),(385,'2020-04-11 12:42:25.288425','397','New Balance 574 - red',3,'',13,1),(386,'2020-04-11 12:42:25.290420','396','New Balance 1400 - red',3,'',13,1),(387,'2020-04-11 12:42:25.291418','395','Asics Sock - red',3,'',13,1),(388,'2020-04-11 12:42:25.294410','394','Asics Gel-Lique - red',3,'',13,1),(389,'2020-04-11 12:42:25.312373','393','Asics Gel Lyte - red',3,'',13,1),(390,'2020-04-11 12:42:25.319342','392','Asics Gel DuoSole - red',3,'',13,1),(391,'2020-04-11 12:42:25.321337','391','Asics Gel - red',3,'',13,1),(392,'2020-04-11 12:42:25.323332','390','Adidas Superstar - red',3,'',13,1),(393,'2020-04-11 12:42:25.342288','389','Adidas Special - red',3,'',13,1),(394,'2020-04-11 12:42:25.344276','388','Adidas Iniki - red',3,'',13,1),(395,'2020-04-11 12:42:25.347268','387','Adidas Hamburg - red',3,'',13,1),(396,'2020-04-11 12:42:25.349263','386','Reebok Gore-Tex - black',3,'',13,1),(397,'2020-04-11 12:42:25.367464','385','Reebok Fury - black',3,'',13,1),(398,'2020-04-11 12:42:25.375193','384','Reebok Classic - black',3,'',13,1),(399,'2020-04-11 12:42:25.378185','383','Nike Huarache City - black',3,'',13,1),(400,'2020-04-11 12:42:25.381178','382','New Balance 670 - black',3,'',13,1),(401,'2020-04-11 12:42:25.388435','381','New Balance 574 - black',3,'',13,1),(402,'2020-04-11 12:42:25.407330','380','Asics Sock - black',3,'',13,1),(403,'2020-04-11 12:42:25.410103','379','Asics Gel DuoSole - black',3,'',13,1),(404,'2020-04-11 12:42:25.413093','378','Asics Gel - black',3,'',13,1),(405,'2020-04-11 12:42:25.415087','377','Adidas Superstar - black',3,'',13,1),(406,'2020-04-11 12:42:25.434431','376','Adidas Stan Smith Suede - black',3,'',13,1),(407,'2020-04-11 12:42:25.443013','375','Adidas Springblade - black',3,'',13,1),(408,'2020-04-11 12:42:25.446005','374','Adidas Special - black',3,'',13,1),(409,'2020-04-11 12:42:25.448000','373','Adidas Iniki - black',3,'',13,1),(410,'2020-04-11 12:42:25.455979','372','Adidas Hamburg - black',3,'',13,1),(411,'2020-04-11 12:42:25.469195','371','Adidas Gazelle - black',3,'',13,1),(412,'2020-04-11 12:42:25.477920','370','Reebok Gore-Tex - white',3,'',13,1),(413,'2020-04-11 12:42:25.480912','369','Reebok Classic - white',3,'',13,1),(414,'2020-04-11 12:42:25.482906','368','Nike Huarache City - white',3,'',13,1),(415,'2020-04-11 12:42:25.484901','367','Nike Huarache - white',3,'',13,1),(416,'2020-04-11 12:42:25.497918','366','Nike Air Max 270 - white',3,'',13,1),(417,'2020-04-11 12:42:25.510832','365','Nike Air Force - white',3,'',13,1),(418,'2020-04-11 12:42:25.512826','364','New Balance 991 - white',3,'',13,1),(419,'2020-04-11 12:47:43.192249','574','Adidas Gazelle - sdfsa',1,'[{\"added\": {}}]',13,1),(420,'2020-04-11 12:48:27.486097','574','Adidas Gazelle - sdfsa',3,'',13,1),(421,'2020-04-11 13:09:54.763198','182','Adidas Gazelle - white - 45',3,'',14,1),(422,'2020-04-11 13:09:54.766190','181','Adidas Gazelle - white - 44',3,'',14,1),(423,'2020-04-11 13:09:54.768186','180','Adidas Gazelle - white - 43',3,'',14,1),(424,'2020-04-11 13:09:54.776203','179','Adidas Gazelle - white - 42',3,'',14,1),(425,'2020-04-11 13:09:54.789128','178','Adidas Gazelle - white - 41',3,'',14,1),(426,'2020-04-11 13:09:54.796111','177','Adidas Gazelle - white - 40',3,'',14,1),(427,'2020-04-11 13:09:54.799102','176','Adidas Gazelle - white - 39',3,'',14,1),(428,'2020-04-11 13:09:54.801098','175','Adidas Gazelle - white - 38',3,'',14,1),(429,'2020-04-11 13:09:54.808080','174','Adidas Gazelle - white - 37',3,'',14,1),(430,'2020-04-11 13:09:54.827028','173','Adidas Gazelle - white - 36',3,'',14,1),(431,'2020-04-11 13:10:16.374298','183','Adidas Gazelle - black - 22',1,'[{\"added\": {}}]',14,1),(432,'2020-04-11 13:10:58.822108','183','Adidas Gazelle - black - 22',3,'',14,1),(433,'2020-04-11 13:19:00.936683','1','lukash2213@gmail.com',2,'[{\"changed\": {\"fields\": [\"Phone\"]}}]',9,1),(434,'2020-04-11 13:20:55.505206','2','max.bilet@gmail.com',1,'[{\"added\": {}}]',9,1),(435,'2020-04-11 13:21:57.880388','3','voloskiy123@gmail.com',1,'[{\"added\": {}}]',9,1),(436,'2020-04-11 13:24:10.960759','4','nastya.pip@gmail.com',1,'[{\"added\": {}}]',9,1),(437,'2020-04-11 13:24:23.605726','2','max.bilet@gmail.com',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'BEforDB','color'),(12,'BEforDB','comment'),(11,'BEforDB','favorite'),(15,'BEforDB','image'),(8,'BEforDB','order'),(10,'BEforDB','orderlist'),(7,'BEforDB','shoe'),(14,'BEforDB','size'),(9,'BEforDB','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'BEforDB','0001_initial','2020-04-08 11:52:07.585001'),(2,'BEforDB','0002_auto_20200407_2221','2020-04-08 11:52:08.564839'),(3,'BEforDB','0003_auto_20200408_1452','2020-04-08 11:52:13.226908'),(4,'contenttypes','0001_initial','2020-04-08 11:52:13.744927'),(5,'auth','0001_initial','2020-04-08 11:52:14.371260'),(6,'admin','0001_initial','2020-04-08 11:52:16.022438'),(7,'admin','0002_logentry_remove_auto_add','2020-04-08 11:52:16.477876'),(8,'admin','0003_logentry_add_action_flag_choices','2020-04-08 11:52:16.517804'),(9,'contenttypes','0002_remove_content_type_name','2020-04-08 11:52:16.897947'),(10,'auth','0002_alter_permission_name_max_length','2020-04-08 11:52:17.097808'),(11,'auth','0003_alter_user_email_max_length','2020-04-08 11:52:17.203217'),(12,'auth','0004_alter_user_username_opts','2020-04-08 11:52:17.254083'),(13,'auth','0005_alter_user_last_login_null','2020-04-08 11:52:17.463784'),(14,'auth','0006_require_contenttypes_0002','2020-04-08 11:52:17.474883'),(15,'auth','0007_alter_validators_add_error_messages','2020-04-08 11:52:17.525557'),(16,'auth','0008_alter_user_username_max_length','2020-04-08 11:52:17.769053'),(17,'auth','0009_alter_user_last_name_max_length','2020-04-08 11:52:18.036040'),(18,'auth','0010_alter_group_name_max_length','2020-04-08 11:52:18.078138'),(19,'auth','0011_update_proxy_permissions','2020-04-08 11:52:18.110651'),(20,'sessions','0001_initial','2020-04-08 11:52:18.203083'),(21,'BEforDB','0004_auto_20200409_1131','2020-04-09 08:31:25.175703'),(22,'BEforDB','0005_auto_20200410_1132','2020-04-10 08:33:10.617751');
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
INSERT INTO `django_session` VALUES ('0u4p8bqkp2n3h96p7r8vtd02didumely','MmU1ODFjOWI1OWI4ZWFjY2UzN2ExYmIxYzQ5NmE5ZTk1NWI2ODBlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzFlNDU1NTRkNjhjNjBkNmFhNDRiOGUyMzlmZmIyOWQwMGFhODUzIn0=','2020-04-25 11:17:21.285046'),('9jq154n0r5og94y7mpo8g9nnwv1p9juo','MmU1ODFjOWI1OWI4ZWFjY2UzN2ExYmIxYzQ5NmE5ZTk1NWI2ODBlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzFlNDU1NTRkNjhjNjBkNmFhNDRiOGUyMzlmZmIyOWQwMGFhODUzIn0=','2020-04-23 08:17:55.111182'),('zc08vsfejhozuz1xj3j3p5gchasznv0r','MmU1ODFjOWI1OWI4ZWFjY2UzN2ExYmIxYzQ5NmE5ZTk1NWI2ODBlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzFlNDU1NTRkNjhjNjBkNmFhNDRiOGUyMzlmZmIyOWQwMGFhODUzIn0=','2020-04-22 11:53:30.931067');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-11 16:26:31
