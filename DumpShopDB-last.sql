CREATE DATABASE  IF NOT EXISTS `shopdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopdb`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopdb
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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Token',7,'add_token'),(26,'Can change Token',7,'change_token'),(27,'Can delete Token',7,'delete_token'),(28,'Can view Token',7,'view_token'),(29,'Can add shoe',8,'add_shoe'),(30,'Can change shoe',8,'change_shoe'),(31,'Can delete shoe',8,'delete_shoe'),(32,'Can view shoe',8,'view_shoe'),(33,'Can add color',9,'add_color'),(34,'Can change color',9,'change_color'),(35,'Can delete color',9,'delete_color'),(36,'Can view color',9,'view_color'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order'),(41,'Can add size',11,'add_size'),(42,'Can change size',11,'change_size'),(43,'Can delete size',11,'delete_size'),(44,'Can view size',11,'view_size'),(45,'Can add order list',12,'add_orderlist'),(46,'Can change order list',12,'change_orderlist'),(47,'Can delete order list',12,'delete_orderlist'),(48,'Can view order list',12,'view_orderlist'),(49,'Can add image',13,'add_image'),(50,'Can change image',13,'change_image'),(51,'Can delete image',13,'delete_image'),(52,'Can view image',13,'view_image'),(53,'Can add favorite',14,'add_favorite'),(54,'Can change favorite',14,'change_favorite'),(55,'Can delete favorite',14,'delete_favorite'),(56,'Can view favorite',14,'view_favorite'),(57,'Can add comment',15,'add_comment'),(58,'Can change comment',15,'change_comment'),(59,'Can delete comment',15,'delete_comment'),(60,'Can view comment',15,'view_comment');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$d8uHXhVJT3D9$eojEBdd5nmlxB68PDQKDnEbnSYgpRbUefYZd1tyNE+8=','2020-04-29 14:51:35.089848',1,'acer','','','lukash2213@gmail.com',1,1,'2020-04-14 08:38:48.400072'),(2,'pbkdf2_sha256$150000$B1Jo9UYlGicG$KUYnVwAjS0I0ZlLKozfnF8pIRD5PWbHOxoMMF/FH/oA=','2020-04-22 12:19:21.074068',1,'max','','','max@gmail.com',1,1,'2020-04-14 08:39:31.115282');
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
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
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
  `image` varchar(300) NOT NULL,
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
INSERT INTO `befordb_color` VALUES (1,'white',1,'https://i.pinimg.com/originals/80/64/ff/8064fffc9471a9dc06c4ff0b7454ea60.jpg'),(2,'black',1,'https://i.pinimg.com/originals/0b/61/89/0b6189118d63368a6a03a8fd23f6081b.jpg'),(3,'blue',1,'https://i.pinimg.com/originals/b3/d4/54/b3d4546c7613d5b381b61ea5d25ac6b4.jpg'),(4,'gray',1,'https://i.pinimg.com/originals/13/be/2b/13be2b4fc67a4c976a6347fdf43bbc0e.jpg'),(5,'black',2,'https://i.pinimg.com/originals/15/41/cd/1541cd24968e64419342b64bcd4ef117.jpg'),(6,'red',2,'https://i.pinimg.com/originals/b9/25/15/b92515d7a022dc82fe9ae6e77ac2b9fd.jpg'),(7,'green',2,'https://i.pinimg.com/originals/90/eb/ca/90ebca926885c93053ed68994cf04cd8.jpg'),(8,'blue',2,'https://i.pinimg.com/originals/e7/74/0d/e7740d37b3c818ab6d6645d64b9de243.jpg'),(9,'gray',2,'https://i.pinimg.com/originals/ec/47/79/ec4779d534e884da80402eb4f97165be.jpg'),(10,'white',3,'https://i.pinimg.com/originals/42/7a/3e/427a3eed13daffd153f9519c1e056b81.jpg'),(11,'black',3,'https://i.pinimg.com/originals/b3/27/35/b32735bbb907eedaa6b56e96130c778a.jpg'),(12,'red',3,'https://i.pinimg.com/originals/03/61/d3/0361d31fee78acf95d7e48a09a94b7d7.jpg'),(13,'green',3,'https://i.pinimg.com/originals/7c/0c/6e/7c0c6e14949db96204bf5a5eec4cf6fe.jpg'),(14,'blue',3,'https://i.pinimg.com/originals/b4/84/d8/b484d807219afe7611b6415cc425d7c1.jpg'),(15,'gray',3,'https://i.pinimg.com/originals/a6/d7/ce/a6d7ce3f983cc464a08100bbbdfba985.jpg'),(16,'black',4,'https://i.pinimg.com/originals/2a/6f/65/2a6f655a450fbe8121ded20c32dbe802.jpg'),(17,'red',4,'https://i.pinimg.com/originals/20/e4/ea/20e4eaf03f9ef633c2b4dd07859e4a47.jpg'),(18,'green',4,'https://i.pinimg.com/originals/ec/57/28/ec572800b0558e6e5f1c3655ac045fb8.jpg'),(19,'blue',4,'https://i.pinimg.com/originals/ba/8b/4b/ba8b4b68c1afd56ae122fbdb23dd1ddb.jpg'),(20,'gray',4,'https://i.pinimg.com/originals/69/b2/f3/69b2f30379a6fa9e5eb8de9a0e60786a.webp'),(21,'white',5,'https://i.pinimg.com/originals/5e/63/71/5e6371b377f5b5a57383a13240967213.webp'),(22,'black',5,'https://i.pinimg.com/originals/0b/fd/6a/0bfd6a85edb31696b8a4771624d6763f.webp'),(23,'blue',5,'https://i.pinimg.com/originals/a2/44/f4/a244f46e884deeb9d0428da89b65876e.webp'),(24,'gray',5,'https://i.pinimg.com/originals/78/29/7b/78297bc85b7edf037833056e1d9ac136.jpg'),(25,'black',6,'https://i.pinimg.com/originals/90/96/a4/9096a427d1b6f910ded8311bd45e5452.jpg'),(26,'white',6,'https://i.pinimg.com/originals/54/57/df/5457df088a150506a0dfecbd5d6555f7.jpg'),(27,'gray',6,'https://i.pinimg.com/originals/c8/aa/73/c8aa73bd2531fc47a9740db898972a58.jpg'),(28,'white',7,'https://i.pinimg.com/originals/7f/ea/87/7fea87325455f84c83ef0f49b4891e1d.jpg'),(29,'black',7,'https://i.pinimg.com/originals/de/7f/ef/de7fef3aa3fae647e2c2aa047423ea4c.jpg'),(30,'red',7,'https://i.pinimg.com/originals/55/e6/2e/55e62e1413746b2eb09259382de3ce9d.jpg'),(32,'gray',7,'https://i.pinimg.com/originals/ad/2d/2a/ad2d2a414952261fa60eda1f6e533baf.jpg'),(33,'white',8,'https://i.pinimg.com/originals/2f/b4/5f/2fb45f020d0c5a754af83d58625f752c.jpg'),(34,'black',8,'https://i.pinimg.com/originals/0f/4b/af/0f4baffa265344e5b2e9ff4aacc6445b.jpg'),(35,'red',8,'https://i.pinimg.com/originals/2c/34/3e/2c343e51446a02b6edd29697bdb8b8d7.jpg'),(36,'gray',8,'https://i.pinimg.com/originals/6b/f6/8c/6bf68c622683a90dc0ca717e38e6397f.jpg'),(37,'white',9,'https://i.pinimg.com/originals/db/14/05/db1405d66836af0054d7c06487851344.jpg'),(38,'black',9,'https://i.pinimg.com/originals/f2/89/44/f2894405ad4e2ab6e13e97e039c35bf6.jpg'),(39,'red',9,'https://i.pinimg.com/originals/f5/50/5e/f5505e89845d18739303bde53d574fda.jpg'),(41,'blue',9,'https://i.pinimg.com/originals/85/14/87/851487a51d3829f9dc54bb7214a382c0.jpg'),(42,'gray',9,'https://i.pinimg.com/originals/0c/2c/46/0c2c46f7ffa6cc9297b26648475114f0.jpg'),(43,'white',10,'https://i.pinimg.com/originals/06/31/16/063116d6343c4db4c47b8df27efd31d9.jpg'),(44,'red',10,'https://i.pinimg.com/originals/50/23/ea/5023eacb9a31953616d5d4d472520d7d.jpg'),(45,'green',10,'https://i.pinimg.com/originals/3b/ad/d5/3badd566fa0ca15a5ed7ba7072b13d8d.jpg'),(46,'gray',10,'https://i.pinimg.com/originals/21/a1/77/21a177aee5ed484722e5a99ab706253c.jpg'),(47,'white',11,'https://i.pinimg.com/originals/6e/6f/e9/6e6fe902a1f9b846a9efad2f5be5c2aa.jpg'),(48,'blue',11,'https://i.pinimg.com/originals/84/c2/7e/84c27e0cd4674ea134c65f61fcb2aa39.jpg'),(49,'gray',11,'https://i.pinimg.com/originals/ea/31/26/ea3126a83788204aa9547b11af633ecb.jpg'),(50,'blue',12,'https://i.pinimg.com/originals/66/60/09/66600929381f0c0c9a6cbdef82665591.jpg'),(51,'gray',12,'https://i.pinimg.com/originals/26/39/3a/26393aa40607899dc97a0dc7bac8349d.jpg'),(53,'red',13,'https://i.pinimg.com/originals/d9/31/a1/d931a15a09cc6082af6f34cf048e1098.jpg'),(54,'green',13,'https://i.pinimg.com/originals/37/93/c8/3793c853a5864dae379b54ccc491b772.jpg'),(55,'blue',13,'https://i.pinimg.com/originals/62/21/e9/6221e93bdb137cc46cc6adc825d767e7.jpg'),(56,'gray',13,'https://i.pinimg.com/originals/4e/b8/f8/4eb8f8e647bb922ec3a6244a19225330.jpg'),(57,'red',14,'https://i.pinimg.com/originals/4f/39/e6/4f39e61b3e2f55109d1f5d0e8d286498.jpg'),(58,'green',14,'https://i.pinimg.com/originals/6b/a0/52/6ba0526a0e268233c6339e888ab2c204.jpg'),(59,'gray',14,'https://i.pinimg.com/originals/ed/e3/d2/ede3d26f902cf7ca00234a44055532e8.jpg'),(61,'black',15,'https://i.pinimg.com/originals/9d/52/54/9d52549e263f8e04ca7d6f91a09c838c.jpg'),(62,'red',15,'https://i.pinimg.com/originals/47/6f/ff/476fff51cc03fdf0ecd64ae3d521a22c.jpg'),(63,'blue',15,'https://i.pinimg.com/originals/49/72/7c/49727cf811bb526bef6e9325529fb084.jpg'),(64,'gray',15,'https://i.pinimg.com/originals/ed/7d/87/ed7d8787caf5fcf98dd9d610820bb6fe.jpg'),(65,'white',16,'https://i.pinimg.com/originals/ae/71/82/ae7182c09f08961095f0c4d67d46b562.jpg'),(66,'black',16,'https://i.pinimg.com/originals/1e/74/c1/1e74c1ecf1e3c65bd064d575459d1d90.jpg'),(67,'red',16,'https://i.pinimg.com/originals/4e/be/a3/4ebea32091ff3c64cfa921ede7fb55f5.jpg'),(68,'green',16,'https://i.pinimg.com/originals/69/5d/7c/695d7c0dee04d2914713ab37d1c4fe6f.jpg'),(69,'blue',16,'https://i.pinimg.com/originals/50/b8/18/50b81889b93bd50a0101d181c44115a6.jpg'),(70,'gray',16,'https://i.pinimg.com/originals/fb/39/37/fb39373bede308adcd26be857bfe3de1.jpg'),(71,'white',17,'https://i.pinimg.com/originals/e2/f7/3e/e2f73ee0380f46744c531f9ef2edcd55.jpg'),(72,'green',17,'https://i.pinimg.com/originals/ae/aa/79/aeaa791dcbd56cb6dc2efeb3698f2ad4.jpg'),(73,'blue',17,'https://i.pinimg.com/originals/04/c5/37/04c5370d4a4c0cc189d54ad7fbad6dad.jpg'),(74,'gray',17,'https://i.pinimg.com/originals/9b/62/90/9b6290e870427e09f2ea6b52c997df25.jpg'),(75,'white',18,'https://i.pinimg.com/originals/64/27/ec/6427ec6ace697795a8df466c9787f05d.jpg'),(76,'green',18,'https://i.pinimg.com/originals/90/5a/be/905abec023c7298b2b6ec188ff2d2db0.jpg'),(77,'blue',18,'https://i.pinimg.com/originals/e5/49/c8/e549c886ad8e864211f62e9db703f87a.jpg'),(78,'gray',18,'https://i.pinimg.com/originals/25/5e/5a/255e5af2899d14ed1af3616a89518aad.jpg'),(79,'green',19,'https://i.pinimg.com/originals/37/a1/36/37a136407be61a553fe684c7946cabc4.jpg'),(80,'gray',19,'https://i.pinimg.com/originals/ae/4c/b3/ae4cb3cc1cbfdd6ac9d0b77b9b9060df.jpg'),(81,'white',20,'https://i.pinimg.com/originals/e1/32/88/e132889b9e4f6777c20a5f101a30a690.jpg'),(82,'red',20,'https://i.pinimg.com/originals/a1/2d/58/a12d5801933dec739ff71f957c4c23a5.jpg'),(83,'blue',20,'https://i.pinimg.com/originals/cf/97/a8/cf97a837e2335fb82fab440a92707416.jpg'),(84,'gray',20,'https://i.pinimg.com/originals/95/41/fb/9541fb32ffe5b7d9f4805af3665313ea.jpg'),(85,'red',21,'https://i.pinimg.com/originals/bf/ad/8e/bfad8ed5bc75a8b930421aed74c8587e.jpg'),(86,'blue',21,'https://i.pinimg.com/originals/f3/0e/1e/f30e1ee7075d712591a24d4b0a7d89d3.jpg'),(87,'white',22,'https://i.pinimg.com/originals/8f/36/89/8f368959d5a95921e94b0daa8967476d.jpg'),(88,'red',22,'https://i.pinimg.com/originals/e6/24/f7/e624f7b57dacc6d498580ce42a267271.jpg'),(89,'gray',22,'https://i.pinimg.com/originals/7f/dc/50/7fdc506a30cd7698acc44f8253f1b8a1.jpg'),(90,'white',23,'https://i.pinimg.com/originals/1b/81/4b/1b814b05e480425a759149643b62377e.jpg'),(91,'black',23,'https://i.pinimg.com/originals/3e/68/79/3e687939c88e02e7ac47a7e22ff649a5.jpg'),(92,'blue',23,'https://i.pinimg.com/originals/91/0f/83/910f8305c2a1c6950b2116ac0ed40164.jpg'),(93,'gray',23,'https://i.pinimg.com/originals/d6/77/91/d677912c298a6483302b19f139980881.jpg'),(95,'blue',24,'https://i.pinimg.com/originals/b8/0d/06/b80d06c4cf5e44d6306cf7f0170c7d61.jpg'),(96,'gray',24,'https://i.pinimg.com/originals/40/40/3e/40403ea0ab93ca519e0ae637127bc77b.jpg'),(97,'white',25,'https://i.pinimg.com/originals/4e/b2/34/4eb234d8f158da9bbf82fbcab73949aa.jpg'),(98,'black',25,'https://i.pinimg.com/originals/8e/f2/56/8ef2566fd60c2a777d0096df911dcaf7.jpg'),(99,'red',25,'https://i.pinimg.com/originals/e5/6f/db/e56fdbd48924f5ba21e332ad82550d32.jpg'),(100,'green',25,'https://i.pinimg.com/originals/4e/a4/ee/4ea4ee4cccc9cd7e17e8e8b9f8af6a7c.jpg'),(101,'blue',25,'https://i.pinimg.com/originals/a9/58/ed/a958ed6b675a16a832d0cb13ac85c963.jpg'),(102,'black',26,'https://i.pinimg.com/originals/6c/e6/88/6ce68824270e43563e5b16de8157a83f.jpg'),(103,'green',26,'https://i.pinimg.com/originals/6a/1b/33/6a1b33bef2be993b2f4f70ad3b199ad4.jpg'),(104,'blue',26,'https://i.pinimg.com/originals/3b/36/99/3b369912b7f386767b93693c75a5ed37.jpg'),(105,'gray',26,'https://i.pinimg.com/originals/7e/65/26/7e65268aa9a5612922d2c1440fa14ba8.jpg'),(106,'white',27,'https://i.pinimg.com/originals/03/30/b3/0330b3817ff42f364adb259f5c068585.jpg'),(107,'black',27,'https://i.pinimg.com/originals/5d/f1/9d/5df19daa39de29435a97b5fe73bba181.jpg'),(109,'blue',27,'https://i.pinimg.com/originals/cd/88/69/cd88694d3892253023cc346d558664aa.jpg'),(110,'gray',27,'https://i.pinimg.com/originals/46/68/c0/4668c0eff74fd46553ade34a34326750.jpg');
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
  KEY `BEforDB_comment_user_id_a091e26f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `BEforDB_comment_shoe_id_9a16d5dd_fk_BEforDB_shoe_id` FOREIGN KEY (`shoe_id`) REFERENCES `befordb_shoe` (`id`),
  CONSTRAINT `BEforDB_comment_user_id_a091e26f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `color_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_favorite_user_id_c22ca91f_fk_auth_user_id` (`user_id`),
  KEY `BEforDB_favorite_color_id_836c5236_fk_BEforDB_color_id` (`color_id`),
  CONSTRAINT `BEforDB_favorite_color_id_836c5236_fk_BEforDB_color_id` FOREIGN KEY (`color_id`) REFERENCES `befordb_color` (`id`),
  CONSTRAINT `BEforDB_favorite_user_id_c22ca91f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_favorite`
--

LOCK TABLES `befordb_favorite` WRITE;
/*!40000 ALTER TABLE `befordb_favorite` DISABLE KEYS */;
INSERT INTO `befordb_favorite` VALUES (1,'2020-04-22',2,1),(2,'2020-04-22',5,1);
/*!40000 ALTER TABLE `befordb_favorite` ENABLE KEYS */;
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
  `phone` varchar(14) NOT NULL,
  `date` date NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(40) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_order_user_id_a7867164_fk_auth_user_id` (`user_id`),
  CONSTRAINT `BEforDB_order_user_id_a7867164_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_order`
--

LOCK TABLES `befordb_order` WRITE;
/*!40000 ALTER TABLE `befordb_order` DISABLE KEYS */;
INSERT INTO `befordb_order` VALUES (12,'sadfasf','+380965878332','2020-04-22',0,'Not_Confirmed',1,'Lviv',0),(13,'','','2020-04-22',0,'',2,'',0);
/*!40000 ALTER TABLE `befordb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_order_shoes`
--

DROP TABLE IF EXISTS `befordb_order_shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_order_shoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `orderlist_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BEforDB_order_shoes_order_id_orderlist_id_c342f681_uniq` (`order_id`,`orderlist_id`),
  KEY `BEforDB_order_shoes_orderlist_id_a94259a7_fk_BEforDB_o` (`orderlist_id`),
  CONSTRAINT `BEforDB_order_shoes_order_id_51ace9b7_fk_BEforDB_order_id` FOREIGN KEY (`order_id`) REFERENCES `befordb_order` (`id`),
  CONSTRAINT `BEforDB_order_shoes_orderlist_id_a94259a7_fk_BEforDB_o` FOREIGN KEY (`orderlist_id`) REFERENCES `befordb_orderlist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_order_shoes`
--

LOCK TABLES `befordb_order_shoes` WRITE;
/*!40000 ALTER TABLE `befordb_order_shoes` DISABLE KEYS */;
INSERT INTO `befordb_order_shoes` VALUES (34,12,111),(36,12,113),(40,12,117),(41,12,118),(42,12,119),(43,12,120),(38,13,115);
/*!40000 ALTER TABLE `befordb_order_shoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `befordb_orderlist`
--

DROP TABLE IF EXISTS `befordb_orderlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `befordb_orderlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shoe_id` int NOT NULL,
  `quantity` int NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BEforDB_orderlist_shoe_id_b2f4252c_fk_BEforDB_size_id` (`shoe_id`),
  KEY `BEforDB_orderlist_user_id_87986822_fk_auth_user_id` (`user_id`),
  CONSTRAINT `BEforDB_orderlist_shoe_id_b2f4252c_fk_BEforDB_size_id` FOREIGN KEY (`shoe_id`) REFERENCES `befordb_size` (`id`),
  CONSTRAINT `BEforDB_orderlist_user_id_87986822_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_orderlist`
--

LOCK TABLES `befordb_orderlist` WRITE;
/*!40000 ALTER TABLE `befordb_orderlist` DISABLE KEYS */;
INSERT INTO `befordb_orderlist` VALUES (111,8,4,0,1),(113,18,2,0,1),(114,44,2,0,2),(115,456,3,0,2),(117,5,11,0,1),(118,94,3,0,1),(119,904,17,0,1),(120,43,2,0,1);
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
  `image` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `befordb_shoe`
--

LOCK TABLES `befordb_shoe` WRITE;
/*!40000 ALTER TABLE `befordb_shoe` DISABLE KEYS */;
INSERT INTO `befordb_shoe` VALUES (1,'Adidas','Gazelle',2100,'https://i.pinimg.com/originals/13/be/2b/13be2b4fc67a4c976a6347fdf43bbc0e.jpg'),(2,'Adidas','Hamburg',2000,'https://i.pinimg.com/originals/90/eb/ca/90ebca926885c93053ed68994cf04cd8.jpg'),(3,'Adidas','Iniki',1800,'https://i.pinimg.com/originals/b4/84/d8/b484d807219afe7611b6415cc425d7c1.jpg'),(4,'Adidas','Spezial',2050,'https://i.pinimg.com/originals/20/e4/ea/20e4eaf03f9ef633c2b4dd07859e4a47.jpg'),(5,'Adidas','Springblade',1700,'https://i.pinimg.com/originals/0b/fd/6a/0bfd6a85edb31696b8a4771624d6763f.webp'),(6,'Adidas','Stan Smith Suede',1950,'https://i.pinimg.com/originals/90/96/a4/9096a427d1b6f910ded8311bd45e5452.jpg'),(7,'Adidas','Superstar',2000,'https://i.pinimg.com/originals/7f/ea/87/7fea87325455f84c83ef0f49b4891e1d.jpg'),(8,'Asics','Gel',1900,'https://i.pinimg.com/originals/6b/f6/8c/6bf68c622683a90dc0ca717e38e6397f.jpg'),(9,'Asics','Gel DuoSole',2050,'https://i.pinimg.com/originals/85/14/87/851487a51d3829f9dc54bb7214a382c0.jpg'),(10,'Asics','Gel Lyte',1850,'https://i.pinimg.com/originals/3b/ad/d5/3badd566fa0ca15a5ed7ba7072b13d8d.jpg'),(11,'Asics','Gel Lyte III',2100,'https://i.pinimg.com/originals/ea/31/26/ea3126a83788204aa9547b11af633ecb.jpg'),(12,'Asics','Gel-Lique',2000,'https://i.pinimg.com/originals/26/39/3a/26393aa40607899dc97a0dc7bac8349d.jpg'),(13,'Nike','Sock',1950,'https://i.pinimg.com/originals/4e/b8/f8/4eb8f8e647bb922ec3a6244a19225330.jpg'),(14,'New Balance','1300',1750,'https://i.pinimg.com/originals/6b/a0/52/6ba0526a0e268233c6339e888ab2c204.jpg'),(15,'New Balance','577',1850,'https://i.pinimg.com/originals/47/6f/ff/476fff51cc03fdf0ecd64ae3d521a22c.jpg'),(16,'New Balance','996',1800,'https://i.pinimg.com/originals/4e/be/a3/4ebea32091ff3c64cfa921ede7fb55f5.jpg'),(17,'New Balance','530',1900,'https://i.pinimg.com/originals/ae/aa/79/aeaa791dcbd56cb6dc2efeb3698f2ad4.jpg'),(18,'Nike','Air Force',1900,'https://i.pinimg.com/originals/90/5a/be/905abec023c7298b2b6ec188ff2d2db0.jpg'),(19,'Nike','Air Max',1800,'https://i.pinimg.com/originals/ae/4c/b3/ae4cb3cc1cbfdd6ac9d0b77b9b9060df.jpg'),(20,'Nike','Air Max 270',2100,'https://i.pinimg.com/originals/95/41/fb/9541fb32ffe5b7d9f4805af3665313ea.jpg'),(21,'Nike','Air Max Zero',2100,'https://i.pinimg.com/originals/bf/ad/8e/bfad8ed5bc75a8b930421aed74c8587e.jpg'),(22,'Nike','Huarache',2000,'https://i.pinimg.com/originals/8f/36/89/8f368959d5a95921e94b0daa8967476d.jpg'),(23,'Nike','Huarache City',2000,'https://i.pinimg.com/originals/91/0f/83/910f8305c2a1c6950b2116ac0ed40164.jpg'),(24,'Nike','Roshe Run',2050,'https://i.pinimg.com/originals/b8/0d/06/b80d06c4cf5e44d6306cf7f0170c7d61.jpg'),(25,'Reebok','Classic',1950,'https://i.pinimg.com/originals/4e/a4/ee/4ea4ee4cccc9cd7e17e8e8b9f8af6a7c.jpg'),(26,'Reebok','Fury',2100,'https://i.pinimg.com/originals/6a/1b/33/6a1b33bef2be993b2f4f70ad3b199ad4.jpg'),(27,'Reebok','Gore-Tex',1950,'https://i.pinimg.com/originals/cd/88/69/cd88694d3892253023cc346d558664aa.jpg');
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
INSERT INTO `befordb_size` VALUES (1,36,10,1),(2,37,10,1),(3,38,9,1),(4,39,9,1),(5,40,10,1),(6,41,9,1),(7,42,5,1),(8,43,5,1),(9,44,9,1),(10,45,7,1),(11,36,10,2),(12,37,10,2),(13,38,6,2),(14,39,8,2),(15,40,6,2),(16,41,10,2),(17,42,6,2),(18,43,7,2),(19,44,8,2),(20,45,5,2),(21,36,8,3),(22,37,5,3),(23,38,7,3),(24,39,8,3),(25,40,9,3),(26,41,9,3),(27,42,8,3),(28,43,7,3),(29,44,7,3),(30,45,10,3),(31,36,10,4),(32,37,5,4),(33,38,10,4),(34,39,5,4),(35,40,8,4),(36,41,9,4),(37,42,10,4),(38,43,6,4),(39,44,6,4),(40,45,5,4),(41,36,10,5),(42,37,8,5),(43,38,7,5),(44,39,8,5),(45,40,8,5),(46,41,7,5),(47,42,8,5),(48,43,6,5),(49,44,10,5),(50,45,9,5),(51,36,10,6),(52,37,7,6),(53,38,9,6),(54,39,8,6),(55,40,8,6),(56,41,6,6),(57,42,10,6),(58,43,8,6),(59,44,6,6),(60,45,9,6),(61,36,9,7),(62,37,10,7),(63,38,7,7),(64,39,5,7),(65,40,5,7),(66,41,9,7),(67,42,9,7),(68,43,7,7),(69,44,9,7),(70,45,9,7),(71,36,7,8),(72,37,8,8),(73,38,7,8),(74,39,8,8),(75,40,9,8),(76,41,7,8),(77,42,5,8),(78,43,8,8),(79,44,8,8),(80,45,7,8),(81,36,8,9),(82,37,10,9),(83,38,5,9),(84,39,9,9),(85,40,5,9),(86,41,7,9),(87,42,9,9),(88,43,7,9),(89,44,10,9),(90,45,9,9),(91,36,5,10),(92,37,8,10),(93,38,7,10),(94,39,6,10),(95,40,10,10),(96,41,9,10),(97,42,7,10),(98,43,5,10),(99,44,8,10),(100,45,10,10),(101,36,8,11),(102,37,10,11),(103,38,6,11),(104,39,5,11),(105,40,5,11),(106,41,5,11),(107,42,8,11),(108,43,7,11),(109,44,10,11),(110,45,5,11),(111,36,10,12),(112,37,10,12),(113,38,7,12),(114,39,9,12),(115,40,5,12),(116,41,8,12),(117,42,10,12),(118,43,8,12),(119,44,8,12),(120,45,5,12),(121,36,9,13),(122,37,5,13),(123,38,10,13),(124,39,5,13),(125,40,10,13),(126,41,10,13),(127,42,8,13),(128,43,9,13),(129,44,10,13),(130,45,9,13),(131,36,7,14),(132,37,9,14),(133,38,8,14),(134,39,9,14),(135,40,9,14),(136,41,9,14),(137,42,8,14),(138,43,10,14),(139,44,6,14),(140,45,8,14),(141,36,6,15),(142,37,10,15),(143,38,8,15),(144,39,8,15),(145,40,10,15),(146,41,10,15),(147,42,6,15),(148,43,7,15),(149,44,10,15),(150,45,5,15),(151,36,7,16),(152,37,9,16),(153,38,7,16),(154,39,9,16),(155,40,8,16),(156,41,7,16),(157,42,5,16),(158,43,10,16),(159,44,5,16),(160,45,10,16),(161,36,9,17),(162,37,10,17),(163,38,5,17),(164,39,10,17),(165,40,7,17),(166,41,8,17),(167,42,6,17),(168,43,8,17),(169,44,7,17),(170,45,7,17),(171,36,6,18),(172,37,7,18),(173,38,7,18),(174,39,9,18),(175,40,5,18),(176,41,8,18),(177,42,5,18),(178,43,8,18),(179,44,5,18),(180,45,9,18),(181,36,6,19),(182,37,5,19),(183,38,10,19),(184,39,6,19),(185,40,5,19),(186,41,7,19),(187,42,5,19),(188,43,7,19),(189,44,6,19),(190,45,10,19),(191,36,7,20),(192,37,6,20),(193,38,5,20),(194,39,6,20),(195,40,10,20),(196,41,8,20),(197,42,5,20),(198,43,10,20),(199,44,6,20),(200,45,9,20),(201,36,10,21),(202,37,7,21),(203,38,10,21),(204,39,8,21),(205,40,7,21),(206,41,10,21),(207,42,6,21),(208,43,7,21),(209,44,9,21),(210,45,8,21),(211,36,7,22),(212,37,9,22),(213,38,5,22),(214,39,10,22),(215,40,6,22),(216,41,7,22),(217,42,8,22),(218,43,6,22),(219,44,8,22),(220,45,8,22),(221,36,6,23),(222,37,8,23),(223,38,9,23),(224,39,10,23),(225,40,7,23),(226,41,5,23),(227,42,5,23),(228,43,5,23),(229,44,5,23),(230,45,7,23),(231,36,7,24),(232,37,10,24),(233,38,10,24),(234,39,7,24),(235,40,6,24),(236,41,6,24),(237,42,5,24),(238,43,5,24),(239,44,9,24),(240,45,9,24),(241,36,7,25),(242,37,10,25),(243,38,9,25),(244,39,10,25),(245,40,7,25),(246,41,10,25),(247,42,8,25),(248,43,9,25),(249,44,9,25),(250,45,8,25),(251,36,7,26),(252,37,5,26),(253,38,7,26),(254,39,8,26),(255,40,5,26),(256,41,7,26),(257,42,9,26),(258,43,7,26),(259,44,10,26),(260,45,10,26),(261,36,6,27),(262,37,5,27),(263,38,5,27),(264,39,5,27),(265,40,10,27),(266,41,5,27),(267,42,7,27),(268,43,8,27),(269,44,6,27),(270,45,10,27),(271,36,10,28),(272,37,5,28),(273,38,9,28),(274,39,10,28),(275,40,10,28),(276,41,7,28),(277,42,7,28),(278,43,7,28),(279,44,8,28),(280,45,6,28),(281,36,10,29),(282,37,5,29),(283,38,8,29),(284,39,8,29),(285,40,8,29),(286,41,6,29),(287,42,9,29),(288,43,6,29),(289,44,7,29),(290,45,6,29),(291,36,9,30),(292,37,9,30),(293,38,8,30),(294,39,8,30),(295,40,9,30),(296,41,7,30),(297,42,10,30),(298,43,5,30),(299,44,10,30),(300,45,10,30),(311,36,6,32),(312,37,5,32),(313,38,9,32),(314,39,8,32),(315,40,10,32),(316,41,8,32),(317,42,6,32),(318,43,9,32),(319,44,6,32),(320,45,6,32),(321,36,6,33),(322,37,6,33),(323,38,5,33),(324,39,6,33),(325,40,6,33),(326,41,10,33),(327,42,8,33),(328,43,9,33),(329,44,7,33),(330,45,6,33),(331,36,7,34),(332,37,9,34),(333,38,10,34),(334,39,5,34),(335,40,5,34),(336,41,6,34),(337,42,7,34),(338,43,6,34),(339,44,7,34),(340,45,10,34),(341,36,10,35),(342,37,6,35),(343,38,8,35),(344,39,6,35),(345,40,5,35),(346,41,7,35),(347,42,7,35),(348,43,10,35),(349,44,10,35),(350,45,5,35),(351,36,6,36),(352,37,9,36),(353,38,5,36),(354,39,9,36),(355,40,6,36),(356,41,9,36),(357,42,5,36),(358,43,7,36),(359,44,6,36),(360,45,6,36),(361,36,8,37),(362,37,7,37),(363,38,6,37),(364,39,7,37),(365,40,7,37),(366,41,10,37),(367,42,5,37),(368,43,8,37),(369,44,8,37),(370,45,7,37),(371,36,5,38),(372,37,7,38),(373,38,10,38),(374,39,8,38),(375,40,9,38),(376,41,8,38),(377,42,9,38),(378,43,7,38),(379,44,7,38),(380,45,7,38),(381,36,6,39),(382,37,10,39),(383,38,5,39),(384,39,10,39),(385,40,7,39),(386,41,6,39),(387,42,10,39),(388,43,9,39),(389,44,7,39),(390,45,5,39),(401,36,6,41),(402,37,7,41),(403,38,10,41),(404,39,9,41),(405,40,7,41),(406,41,10,41),(407,42,5,41),(408,43,7,41),(409,44,10,41),(410,45,6,41),(411,36,7,42),(412,37,6,42),(413,38,10,42),(414,39,8,42),(415,40,6,42),(416,41,9,42),(417,42,6,42),(418,43,7,42),(419,44,10,42),(420,45,8,42),(421,36,6,43),(422,37,5,43),(423,38,8,43),(424,39,10,43),(425,40,8,43),(426,41,10,43),(427,42,7,43),(428,43,9,43),(429,44,7,43),(430,45,7,43),(431,36,7,44),(432,37,9,44),(433,38,10,44),(434,39,7,44),(435,40,8,44),(436,41,7,44),(437,42,7,44),(438,43,9,44),(439,44,6,44),(440,45,10,44),(441,36,6,45),(442,37,7,45),(443,38,7,45),(444,39,10,45),(445,40,6,45),(446,41,9,45),(447,42,7,45),(448,43,7,45),(449,44,6,45),(450,45,5,45),(451,36,10,46),(452,37,6,46),(453,38,7,46),(454,39,9,46),(455,40,7,46),(456,41,9,46),(457,42,6,46),(458,43,7,46),(459,44,9,46),(460,45,8,46),(461,36,6,47),(462,37,7,47),(463,38,9,47),(464,39,5,47),(465,40,10,47),(466,41,9,47),(467,42,9,47),(468,43,8,47),(469,44,9,47),(470,45,5,47),(471,36,9,48),(472,37,10,48),(473,38,9,48),(474,39,10,48),(475,40,5,48),(476,41,10,48),(477,42,6,48),(478,43,5,48),(479,44,5,48),(480,45,8,48),(481,36,9,49),(482,37,9,49),(483,38,8,49),(484,39,6,49),(485,40,8,49),(486,41,7,49),(487,42,8,49),(488,43,6,49),(489,44,6,49),(490,45,7,49),(491,36,6,50),(492,37,7,50),(493,38,7,50),(494,39,9,50),(495,40,8,50),(496,41,7,50),(497,42,10,50),(498,43,6,50),(499,44,6,50),(500,45,10,50),(501,36,9,51),(502,37,9,51),(503,38,9,51),(504,39,9,51),(505,40,7,51),(506,41,9,51),(507,42,6,51),(508,43,8,51),(509,44,8,51),(510,45,10,51),(521,36,5,53),(522,37,6,53),(523,38,9,53),(524,39,9,53),(525,40,6,53),(526,41,10,53),(527,42,10,53),(528,43,5,53),(529,44,5,53),(530,45,6,53),(531,36,10,54),(532,37,9,54),(533,38,6,54),(534,39,7,54),(535,40,8,54),(536,41,7,54),(537,42,10,54),(538,43,6,54),(539,44,6,54),(540,45,7,54),(541,36,5,55),(542,37,5,55),(543,38,8,55),(544,39,5,55),(545,40,6,55),(546,41,5,55),(547,42,6,55),(548,43,5,55),(549,44,6,55),(550,45,9,55),(551,36,5,56),(552,37,9,56),(553,38,6,56),(554,39,6,56),(555,40,5,56),(556,41,7,56),(557,42,5,56),(558,43,8,56),(559,44,5,56),(560,45,6,56),(561,36,8,57),(562,37,8,57),(563,38,6,57),(564,39,8,57),(565,40,7,57),(566,41,7,57),(567,42,6,57),(568,43,7,57),(569,44,8,57),(570,45,5,57),(571,36,10,58),(572,37,10,58),(573,38,8,58),(574,39,8,58),(575,40,6,58),(576,41,10,58),(577,42,6,58),(578,43,9,58),(579,44,5,58),(580,45,10,58),(581,36,10,59),(582,37,5,59),(583,38,7,59),(584,39,9,59),(585,40,5,59),(586,41,9,59),(587,42,6,59),(588,43,10,59),(589,44,7,59),(590,45,10,59),(601,36,5,61),(602,37,6,61),(603,38,6,61),(604,39,8,61),(605,40,8,61),(606,41,10,61),(607,42,10,61),(608,43,7,61),(609,44,5,61),(610,45,7,61),(611,36,6,62),(612,37,6,62),(613,38,5,62),(614,39,9,62),(615,40,6,62),(616,41,8,62),(617,42,6,62),(618,43,7,62),(619,44,10,62),(620,45,7,62),(621,36,5,63),(622,37,6,63),(623,38,5,63),(624,39,6,63),(625,40,7,63),(626,41,5,63),(627,42,10,63),(628,43,5,63),(629,44,6,63),(630,45,8,63),(631,36,6,64),(632,37,8,64),(633,38,7,64),(634,39,7,64),(635,40,10,64),(636,41,6,64),(637,42,5,64),(638,43,7,64),(639,44,5,64),(640,45,10,64),(641,36,5,65),(642,37,6,65),(643,38,7,65),(644,39,6,65),(645,40,10,65),(646,41,7,65),(647,42,7,65),(648,43,9,65),(649,44,8,65),(650,45,9,65),(651,36,7,66),(652,37,10,66),(653,38,10,66),(654,39,10,66),(655,40,5,66),(656,41,9,66),(657,42,10,66),(658,43,9,66),(659,44,8,66),(660,45,8,66),(661,36,9,67),(662,37,6,67),(663,38,8,67),(664,39,5,67),(665,40,8,67),(666,41,9,67),(667,42,5,67),(668,43,7,67),(669,44,10,67),(670,45,10,67),(671,36,7,68),(672,37,8,68),(673,38,9,68),(674,39,6,68),(675,40,8,68),(676,41,6,68),(677,42,8,68),(678,43,9,68),(679,44,5,68),(680,45,8,68),(681,36,10,69),(682,37,5,69),(683,38,6,69),(684,39,6,69),(685,40,10,69),(686,41,8,69),(687,42,10,69),(688,43,9,69),(689,44,8,69),(690,45,7,69),(691,36,8,70),(692,37,10,70),(693,38,6,70),(694,39,6,70),(695,40,10,70),(696,41,9,70),(697,42,5,70),(698,43,8,70),(699,44,9,70),(700,45,8,70),(701,36,5,71),(702,37,9,71),(703,38,6,71),(704,39,9,71),(705,40,6,71),(706,41,5,71),(707,42,5,71),(708,43,9,71),(709,44,10,71),(710,45,8,71),(711,36,5,72),(712,37,10,72),(713,38,10,72),(714,39,6,72),(715,40,5,72),(716,41,10,72),(717,42,9,72),(718,43,6,72),(719,44,8,72),(720,45,5,72),(721,36,7,73),(722,37,5,73),(723,38,10,73),(724,39,8,73),(725,40,6,73),(726,41,7,73),(727,42,5,73),(728,43,9,73),(729,44,5,73),(730,45,10,73),(731,36,6,74),(732,37,8,74),(733,38,8,74),(734,39,9,74),(735,40,7,74),(736,41,8,74),(737,42,5,74),(738,43,9,74),(739,44,6,74),(740,45,7,74),(741,36,10,75),(742,37,10,75),(743,38,10,75),(744,39,7,75),(745,40,7,75),(746,41,5,75),(747,42,10,75),(748,43,9,75),(749,44,10,75),(750,45,10,75),(751,36,10,76),(752,37,7,76),(753,38,8,76),(754,39,5,76),(755,40,6,76),(756,41,7,76),(757,42,9,76),(758,43,5,76),(759,44,6,76),(760,45,8,76),(761,36,5,77),(762,37,9,77),(763,38,7,77),(764,39,6,77),(765,40,9,77),(766,41,8,77),(767,42,8,77),(768,43,8,77),(769,44,10,77),(770,45,10,77),(771,36,7,78),(772,37,10,78),(773,38,10,78),(774,39,8,78),(775,40,9,78),(776,41,8,78),(777,42,8,78),(778,43,5,78),(779,44,8,78),(780,45,6,78),(781,36,10,79),(782,37,8,79),(783,38,8,79),(784,39,6,79),(785,40,9,79),(786,41,7,79),(787,42,7,79),(788,43,7,79),(789,44,10,79),(790,45,5,79),(791,36,7,80),(792,37,7,80),(793,38,9,80),(794,39,5,80),(795,40,10,80),(796,41,8,80),(797,42,9,80),(798,43,5,80),(799,44,9,80),(800,45,6,80),(801,36,5,81),(802,37,10,81),(803,38,10,81),(804,39,5,81),(805,40,10,81),(806,41,5,81),(807,42,6,81),(808,43,8,81),(809,44,9,81),(810,45,9,81),(811,36,8,82),(812,37,10,82),(813,38,6,82),(814,39,9,82),(815,40,5,82),(816,41,8,82),(817,42,7,82),(818,43,7,82),(819,44,6,82),(820,45,6,82),(821,36,8,83),(822,37,10,83),(823,38,6,83),(824,39,9,83),(825,40,7,83),(826,41,10,83),(827,42,5,83),(828,43,7,83),(829,44,10,83),(830,45,8,83),(831,36,7,84),(832,37,7,84),(833,38,5,84),(834,39,9,84),(835,40,7,84),(836,41,7,84),(837,42,6,84),(838,43,8,84),(839,44,9,84),(840,45,8,84),(841,36,9,85),(842,37,9,85),(843,38,6,85),(844,39,8,85),(845,40,10,85),(846,41,9,85),(847,42,5,85),(848,43,10,85),(849,44,9,85),(850,45,5,85),(851,36,5,86),(852,37,9,86),(853,38,7,86),(854,39,9,86),(855,40,9,86),(856,41,10,86),(857,42,8,86),(858,43,8,86),(859,44,7,86),(860,45,8,86),(861,36,8,87),(862,37,6,87),(863,38,8,87),(864,39,9,87),(865,40,9,87),(866,41,5,87),(867,42,9,87),(868,43,9,87),(869,44,8,87),(870,45,8,87),(871,36,7,88),(872,37,5,88),(873,38,9,88),(874,39,7,88),(875,40,8,88),(876,41,5,88),(877,42,6,88),(878,43,7,88),(879,44,10,88),(880,45,5,88),(881,36,9,89),(882,37,5,89),(883,38,10,89),(884,39,6,89),(885,40,6,89),(886,41,9,89),(887,42,9,89),(888,43,7,89),(889,44,5,89),(890,45,9,89),(891,36,7,90),(892,37,10,90),(893,38,10,90),(894,39,5,90),(895,40,10,90),(896,41,9,90),(897,42,8,90),(898,43,10,90),(899,44,9,90),(900,45,8,90),(901,36,6,91),(902,37,5,91),(903,38,9,91),(904,39,8,91),(905,40,7,91),(906,41,5,91),(907,42,7,91),(908,43,10,91),(909,44,8,91),(910,45,6,91),(911,36,7,92),(912,37,8,92),(913,38,5,92),(914,39,10,92),(915,40,6,92),(916,41,8,92),(917,42,8,92),(918,43,6,92),(919,44,7,92),(920,45,7,92),(921,36,8,93),(922,37,10,93),(923,38,7,93),(924,39,8,93),(925,40,7,93),(926,41,9,93),(927,42,10,93),(928,43,7,93),(929,44,8,93),(930,45,5,93),(941,36,8,95),(942,37,7,95),(943,38,8,95),(944,39,8,95),(945,40,8,95),(946,41,8,95),(947,42,5,95),(948,43,8,95),(949,44,7,95),(950,45,7,95),(951,36,7,96),(952,37,9,96),(953,38,10,96),(954,39,9,96),(955,40,9,96),(956,41,5,96),(957,42,9,96),(958,43,6,96),(959,44,6,96),(960,45,6,96),(961,36,6,97),(962,37,10,97),(963,38,9,97),(964,39,7,97),(965,40,8,97),(966,41,7,97),(967,42,6,97),(968,43,5,97),(969,44,9,97),(970,45,8,97),(971,36,6,98),(972,37,5,98),(973,38,10,98),(974,39,9,98),(975,40,6,98),(976,41,8,98),(977,42,9,98),(978,43,7,98),(979,44,9,98),(980,45,5,98),(981,36,6,99),(982,37,6,99),(983,38,7,99),(984,39,8,99),(985,40,10,99),(986,41,6,99),(987,42,10,99),(988,43,8,99),(989,44,7,99),(990,45,10,99),(991,36,9,100),(992,37,10,100),(993,38,5,100),(994,39,5,100),(995,40,8,100),(996,41,6,100),(997,42,5,100),(998,43,7,100),(999,44,5,100),(1000,45,8,100),(1001,36,8,101),(1002,37,9,101),(1003,38,8,101),(1004,39,9,101),(1005,40,8,101),(1006,41,10,101),(1007,42,5,101),(1008,43,5,101),(1009,44,9,101),(1010,45,5,101),(1011,36,9,102),(1012,37,10,102),(1013,38,8,102),(1014,39,7,102),(1015,40,7,102),(1016,41,9,102),(1017,42,8,102),(1018,43,9,102),(1019,44,8,102),(1020,45,9,102),(1021,36,10,103),(1022,37,8,103),(1023,38,9,103),(1024,39,10,103),(1025,40,5,103),(1026,41,6,103),(1027,42,8,103),(1028,43,9,103),(1029,44,6,103),(1030,45,8,103),(1031,36,5,104),(1032,37,9,104),(1033,38,5,104),(1034,39,9,104),(1035,40,10,104),(1036,41,6,104),(1037,42,8,104),(1038,43,9,104),(1039,44,9,104),(1040,45,7,104),(1041,36,5,105),(1042,37,6,105),(1043,38,9,105),(1044,39,5,105),(1045,40,7,105),(1046,41,10,105),(1047,42,7,105),(1048,43,9,105),(1049,44,9,105),(1050,45,6,105),(1051,36,7,106),(1052,37,7,106),(1053,38,8,106),(1054,39,7,106),(1055,40,6,106),(1056,41,5,106),(1057,42,10,106),(1058,43,7,106),(1059,44,7,106),(1060,45,9,106),(1061,36,10,107),(1062,37,7,107),(1063,38,8,107),(1064,39,8,107),(1065,40,9,107),(1066,41,10,107),(1067,42,5,107),(1068,43,5,107),(1069,44,6,107),(1070,45,7,107),(1081,36,8,109),(1082,37,9,109),(1083,38,7,109),(1084,39,8,109),(1085,40,5,109),(1086,41,7,109),(1087,42,5,109),(1088,43,7,109),(1089,44,5,109),(1090,45,8,109),(1091,36,9,110),(1092,37,5,110),(1093,38,9,110),(1094,39,5,110),(1095,40,6,110),(1096,41,8,110),(1097,42,7,110),(1098,43,8,110),(1099,44,9,110),(1100,45,6,110);
/*!40000 ALTER TABLE `befordb_size` ENABLE KEYS */;
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
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-22 08:37:50.653759','47','Nike Huarache - gray - 43 - 1',3,'',12,1),(2,'2020-04-22 08:37:50.659852','46','Nike Huarache - gray - 43 - 1',3,'',12,1),(3,'2020-04-22 08:37:50.662844','45','Nike Huarache - gray - 43 - 1',3,'',12,1),(4,'2020-04-22 08:37:50.680826','44','Nike Huarache - gray - 43 - 1',3,'',12,1),(5,'2020-04-22 08:37:50.688774','43','Adidas Gazelle - black - 43 - 1',3,'',12,1),(6,'2020-04-22 08:37:50.690770','42','Adidas Gazelle - black - 43 - 1',3,'',12,1),(7,'2020-04-22 08:37:50.693762','41','Adidas Gazelle - white - 37 - 1',3,'',12,1),(8,'2020-04-22 08:37:50.695756','40','Adidas Gazelle - white - 37 - 1',3,'',12,1),(9,'2020-04-22 08:37:50.708724','39','Adidas Gazelle - white - 37 - 1',3,'',12,1),(10,'2020-04-22 08:37:50.722684','38','Adidas Gazelle - white - 37 - 1',3,'',12,1),(11,'2020-04-22 08:37:50.725677','37','Adidas Gazelle - white - 37 - 1',3,'',12,1),(12,'2020-04-22 08:37:50.727673','36','Adidas Gazelle - white - 37 - 1',3,'',12,1),(13,'2020-04-22 08:37:50.731660','35','Adidas Gazelle - white - 37 - 1',3,'',12,1),(14,'2020-04-22 08:37:50.744865','34','Adidas Gazelle - white - 37 - 1',3,'',12,1),(15,'2020-04-22 08:37:50.757825','33','Adidas Gazelle - white - 37 - 1',3,'',12,1),(16,'2020-04-22 08:37:50.761581','32','Adidas Gazelle - white - 37 - 1',3,'',12,1),(17,'2020-04-22 08:37:50.763574','31','Adidas Gazelle - white - 37 - 1',3,'',12,1),(18,'2020-04-22 08:37:50.766567','30','Adidas Gazelle - white - 37 - 1',3,'',12,1),(19,'2020-04-22 08:37:50.774546','29','Adidas Gazelle - white - 37 - 1',3,'',12,1),(20,'2020-04-22 08:37:50.793496','28','Adidas Gazelle - white - 37 - 1',3,'',12,1),(21,'2020-04-22 08:37:50.797485','27','Adidas Gazelle - white - 37 - 1',3,'',12,1),(22,'2020-04-22 08:37:50.800477','26','Adidas Gazelle - white - 37 - 1',3,'',12,1),(23,'2020-04-22 08:37:50.804466','25','Adidas Gazelle - white - 37 - 1',3,'',12,1),(24,'2020-04-22 08:37:50.823792','24','Adidas Gazelle - white - 37 - 1',3,'',12,1),(25,'2020-04-22 08:37:50.831394','23','Adidas Gazelle - white - 37 - 1',3,'',12,1),(26,'2020-04-22 08:37:50.834386','22','Adidas Gazelle - white - 37 - 1',3,'',12,1),(27,'2020-04-22 08:37:50.837490','21','Adidas Gazelle - white - 37 - 1',3,'',12,1),(28,'2020-04-22 08:37:50.845357','20','Adidas Gazelle - white - 37 - 1',3,'',12,1),(29,'2020-04-22 08:37:50.865304','19','Adidas Gazelle - white - 37 - 1',3,'',12,1),(30,'2020-04-22 08:37:50.868295','18','Adidas Gazelle - white - 37 - 1',3,'',12,1),(31,'2020-04-22 08:37:50.872285','17','Adidas Gazelle - white - 37 - 1',3,'',12,1),(32,'2020-04-22 08:37:50.875276','16','Adidas Gazelle - white - 37 - 1',3,'',12,1),(33,'2020-04-22 08:37:50.890543','15','Adidas Gazelle - white - 37 - 1',3,'',12,1),(34,'2020-04-22 08:37:50.905307','14','Adidas Gazelle - white - 37 - 1',3,'',12,1),(35,'2020-04-22 08:37:50.908188','13','Adidas Gazelle - white - 37 - 1',3,'',12,1),(36,'2020-04-22 08:37:50.912180','12','Adidas Gazelle - white - 37 - 1',3,'',12,1),(37,'2020-04-22 08:37:50.920156','11','Adidas Gazelle - white - 37 - 1',3,'',12,1),(38,'2020-04-22 08:37:50.939105','10','Adidas Gazelle - white - 37 - 1',3,'',12,1),(39,'2020-04-22 08:37:50.943096','9','Adidas Gazelle - white - 37 - 1',3,'',12,1),(40,'2020-04-22 08:37:50.947085','8','Adidas Gazelle - white - 37 - 1',3,'',12,1),(41,'2020-04-22 08:37:50.950076','7','Adidas Gazelle - white - 37 - 1',3,'',12,1),(42,'2020-04-22 08:37:50.968030','6','Adidas Gazelle - white - 37 - 1',3,'',12,1),(43,'2020-04-22 08:37:50.976010','5','Adidas Gazelle - white - 37 - 1',3,'',12,1),(44,'2020-04-22 08:37:50.979000','4','Adidas Gazelle - white - 37 - 1',3,'',12,1),(45,'2020-04-22 08:37:50.983027','3','Adidas Gazelle - white - 37 - 1',3,'',12,1),(46,'2020-04-22 08:37:50.985981','2','Adidas Gazelle - white - 37 - 1',3,'',12,1),(47,'2020-04-22 08:37:51.003932','1','Adidas Gazelle - white - 37 - 1',3,'',12,1),(48,'2020-04-22 10:06:35.286949','1','NC - 2020-04-22',1,'[{\"added\": {}}]',10,1),(49,'2020-04-22 10:12:08.287387','1','NC - 2020-04-22',2,'[{\"changed\": {\"fields\": [\"shoes\"]}}]',10,1),(50,'2020-04-22 10:12:30.616739','67','Nike Huarache - red - 45 - 1',3,'',12,1),(51,'2020-04-22 10:12:30.620688','66','Nike Huarache - red - 45 - 1',3,'',12,1),(52,'2020-04-22 10:12:30.623681','65','Nike Huarache - red - 45 - 1',3,'',12,1),(53,'2020-04-22 10:12:30.626672','64','Nike Huarache - red - 45 - 1',3,'',12,1),(54,'2020-04-22 10:12:30.647617','63','Nike Huarache - red - 45 - 1',3,'',12,1),(55,'2020-04-22 10:12:30.656593','62','Nike Huarache - red - 45 - 1',3,'',12,1),(56,'2020-04-22 10:12:30.660583','61','Nike Huarache - red - 45 - 1',3,'',12,1),(57,'2020-04-22 10:12:30.663574','60','Nike Huarache - red - 45 - 1',3,'',12,1),(58,'2020-04-22 10:12:30.683843','59','Nike Huarache - red - 45 - 1',3,'',12,1),(59,'2020-04-22 10:12:30.693495','58','Nike Huarache - red - 45 - 1',3,'',12,1),(60,'2020-04-22 10:12:30.698481','57','Nike Huarache - red - 45 - 1',3,'',12,1),(61,'2020-04-22 10:12:30.702471','56','Nike Huarache - red - 45 - 1',3,'',12,1),(62,'2020-04-22 10:12:30.716738','55','Nike Huarache - red - 45 - 1',3,'',12,1),(63,'2020-04-22 10:12:30.731699','54','Nike Huarache - red - 45 - 1',3,'',12,1),(64,'2020-04-22 10:12:30.735689','53','Nike Huarache - red - 45 - 1',3,'',12,1),(65,'2020-04-22 10:12:30.739676','52','Nike Huarache - red - 45 - 1',3,'',12,1),(66,'2020-04-22 10:12:30.743666','51','Nike Huarache - red - 45 - 1',3,'',12,1),(67,'2020-04-22 10:12:30.764611','50','Nike Huarache - gray - 43 - 1',3,'',12,1),(68,'2020-04-22 10:12:30.773587','49','Nike Huarache - gray - 43 - 1',3,'',12,1),(69,'2020-04-22 10:12:30.777576','48','Nike Huarache - gray - 43 - 1',3,'',12,1),(70,'2020-04-22 10:12:52.078389','1','NC - 2020-04-22',3,'',10,1),(71,'2020-04-22 10:18:42.425603','2',' - 2020-04-22',3,'',10,1),(72,'2020-04-22 10:22:12.887450','76','Adidas Gazelle - white - 37 - 1',3,'',12,1),(73,'2020-04-22 10:22:12.897421','75','Adidas Gazelle - white - 37 - 1',3,'',12,1),(74,'2020-04-22 10:22:12.901609','74','Adidas Gazelle - white - 37 - 1',3,'',12,1),(75,'2020-04-22 10:22:12.905504','73','Adidas Gazelle - white - 37 - 1',3,'',12,1),(76,'2020-04-22 10:22:12.913379','72','Adidas Hamburg - gray - 43 - 1',3,'',12,1),(77,'2020-04-22 10:22:12.920464','71','Adidas Hamburg - gray - 43 - 1',3,'',12,1),(78,'2020-04-22 10:22:12.923424','70','Nike Huarache - red - 45 - 1',3,'',12,1),(79,'2020-04-22 10:22:12.926370','69','Nike Huarache - red - 45 - 1',3,'',12,1),(80,'2020-04-22 10:22:12.930360','68','Nike Huarache - red - 45 - 1',3,'',12,1),(81,'2020-04-22 10:22:42.090165','78','Adidas Gazelle - white - 37 - 2',2,'[{\"changed\": {\"fields\": [\"quantity\"]}}]',12,1),(82,'2020-04-22 10:22:52.203703','78','Adidas Gazelle - white - 37 - 3',2,'[{\"changed\": {\"fields\": [\"quantity\"]}}]',12,1),(83,'2020-04-22 10:24:06.813970','78','Adidas Gazelle - white - 37 - 3',3,'',12,1),(84,'2020-04-22 10:31:41.828957','3','NC - 2020-04-22',2,'[{\"changed\": {\"fields\": [\"name\", \"phone\", \"address\", \"order_status\", \"ordered\"]}}]',10,1),(85,'2020-04-22 10:33:35.040746','4','DE - 2020-04-22',2,'[{\"changed\": {\"fields\": [\"name\", \"phone\", \"address\", \"order_status\"]}}]',10,2),(86,'2020-04-22 10:35:55.887695','83','Adidas Gazelle - white - 37 - 1',3,'',12,2),(87,'2020-04-22 10:35:55.906065','82','Adidas Gazelle - white - 37 - 1',3,'',12,2),(88,'2020-04-22 10:35:55.909636','81','Adidas Gazelle - white - 37 - 1',3,'',12,2),(89,'2020-04-22 10:35:55.912628','80','Adidas Gazelle - white - 37 - 2',3,'',12,2),(90,'2020-04-22 10:35:55.921856','79','Adidas Gazelle - white - 37 - 1',3,'',12,2),(91,'2020-04-22 10:35:55.934572','77','Adidas Gazelle - white - 37 - 1',3,'',12,2),(92,'2020-04-22 10:36:28.013958','6',' - 2020-04-22',3,'',10,2),(93,'2020-04-22 10:36:28.018945','4','DE - 2020-04-22',3,'',10,2),(94,'2020-04-22 10:36:28.020939','3','NC - 2020-04-22',3,'',10,2),(95,'2020-04-22 10:41:35.309936','96','Adidas Gazelle - white - 42 - 6',1,'[{\"added\": {}}]',12,2),(96,'2020-04-22 10:41:53.130480','97','Adidas Gazelle - white - 40 - 7',1,'[{\"added\": {}}]',12,2),(97,'2020-04-22 10:43:09.851616','7','NC - 2020-04-22',2,'[{\"changed\": {\"fields\": [\"name\", \"phone\", \"shoes\", \"address\", \"order_status\"]}}]',10,2),(98,'2020-04-22 10:43:31.091554','7','NC - 2020-04-22',3,'',10,2),(99,'2020-04-22 10:43:49.833763','97','Adidas Gazelle - white - 40 - 7',3,'',12,2),(100,'2020-04-22 10:43:49.838750','96','Adidas Gazelle - white - 42 - 6',3,'',12,2),(101,'2020-04-22 10:43:49.842741','95','Asics Gel - black - 40 - 2',3,'',12,2),(102,'2020-04-22 10:43:49.855990','94','Asics Gel - black - 40 - 2',3,'',12,2),(103,'2020-04-22 10:43:49.869667','93','Asics Gel - black - 40 - 1',3,'',12,2),(104,'2020-04-22 10:43:49.872682','92','Asics Gel - black - 40 - 1',3,'',12,2),(105,'2020-04-22 10:43:49.876649','91','Adidas Gazelle - gray - 38 - 2',3,'',12,2),(106,'2020-04-22 10:43:49.912572','90','Adidas Gazelle - gray - 38 - 2',3,'',12,2),(107,'2020-04-22 10:43:49.931502','89','Adidas Gazelle - gray - 38 - 2',3,'',12,2),(108,'2020-04-22 10:43:49.935697','88','Adidas Gazelle - gray - 38 - 2',3,'',12,2),(109,'2020-04-22 10:43:49.938604','87','Adidas Gazelle - gray - 38 - 2',3,'',12,2),(110,'2020-04-22 10:43:49.941477','86','Adidas Gazelle - gray - 38 - 1',3,'',12,2),(111,'2020-04-22 10:43:49.949493','85','Adidas Gazelle - gray - 38 - 1',3,'',12,2),(112,'2020-04-22 10:43:49.962418','84','Adidas Gazelle - white - 37 - 1',3,'',12,2),(113,'2020-04-22 11:02:31.765782','8',' - 2020-04-22',3,'',10,2),(114,'2020-04-22 11:02:39.442205','100','Asics Gel - black - 43 - 1',3,'',12,2),(115,'2020-04-22 11:02:39.449187','99','Asics Gel - black - 43 - 1',3,'',12,2),(116,'2020-04-22 11:02:39.459164','98','Asics Gel - black - 40 - 1',3,'',12,2),(117,'2020-04-22 11:43:59.485101','9','NC - 2020-04-22',2,'[{\"changed\": {\"fields\": [\"name\", \"phone\", \"address\", \"order_status\"]}}]',10,1),(118,'2020-04-22 11:59:36.096934','110','Adidas Gazelle - white - 43 - 2',3,'',12,1),(119,'2020-04-22 11:59:36.101921','108','Adidas Gazelle - gray - 43 - 1',3,'',12,1),(120,'2020-04-22 11:59:36.105910','107','Asics Gel - black - 43 - 3',3,'',12,1),(121,'2020-04-22 11:59:36.115886','106','Asics Gel - black - 43 - 4',3,'',12,1),(122,'2020-04-22 11:59:36.135834','105','Asics Gel - black - 43 - 4',3,'',12,1),(123,'2020-04-22 11:59:36.138823','104','Adidas Gazelle - white - 40 - 6',3,'',12,1),(124,'2020-04-22 11:59:36.143808','103','Adidas Gazelle - white - 38 - 1',3,'',12,1),(125,'2020-04-22 11:59:36.147800','102','Asics Gel - black - 44 - 1',3,'',12,1),(126,'2020-04-22 11:59:36.161799','101','Asics Gel - black - 43 - 1',3,'',12,1),(127,'2020-04-22 11:59:57.719483','11',' - 2020-04-22',3,'',10,1),(128,'2020-04-22 11:59:57.725530','9','NC - 2020-04-22',3,'',10,1),(129,'2020-04-22 12:03:21.350621','12','NotConfirmed - 2020-04-22',2,'[{\"changed\": {\"fields\": [\"name\", \"phone\", \"address\", \"order_status\"]}}]',10,1),(130,'2020-04-22 12:04:27.260709','12','Not_Confirmed -- 2020-04-22',2,'[{\"changed\": {\"fields\": [\"order_status\"]}}]',10,1),(131,'2020-04-27 08:26:30.990853','3','blue',2,'[{\"changed\": {\"fields\": [\"color\"]}}]',9,1),(132,'2020-04-27 08:27:05.929157','3','gr',2,'[{\"changed\": {\"fields\": [\"color\"]}}]',9,1),(133,'2020-04-27 08:27:32.314111','3','blue',2,'[{\"changed\": {\"fields\": [\"color\"]}}]',9,1),(134,'2020-04-27 08:43:46.738829','4','Adidas Spezial',2,'[{\"changed\": {\"fields\": [\"model\"]}}]',8,1),(135,'2020-04-29 14:53:26.126767','26','white',2,'[{\"changed\": {\"fields\": [\"color\"]}}]',9,1),(136,'2020-04-29 15:10:36.491459','31','green',3,'',9,1),(137,'2020-04-29 15:38:33.521122','40','green',3,'',9,1),(138,'2020-04-29 15:48:55.691980','50','blue',2,'[{\"changed\": {\"fields\": [\"color\"]}}]',9,1),(139,'2020-04-29 15:52:26.470091','13','Adidas Sock',2,'[{\"changed\": {\"fields\": [\"brand\"]}}]',8,1),(140,'2020-04-29 15:55:56.662476','13','NIke Sock',2,'[{\"changed\": {\"fields\": [\"brand\"]}}]',8,1),(141,'2020-04-29 15:56:16.133533','13','Nike Sock',2,'[{\"changed\": {\"fields\": [\"brand\"]}}]',8,1),(142,'2020-04-29 16:06:14.299101','16','New Balance 996',2,'[{\"changed\": {\"fields\": [\"model\"]}}]',8,1),(143,'2020-04-29 16:12:50.552288','14','New Balance 1300',2,'[{\"changed\": {\"fields\": [\"model\"]}}]',8,1),(144,'2020-04-29 16:14:49.308384','15','New Balance 577',2,'[{\"changed\": {\"fields\": [\"model\"]}}]',8,1),(145,'2020-04-29 16:15:11.594567','60','white',3,'',9,1),(146,'2020-04-29 16:21:13.159162','17','New Balance 420',2,'[{\"changed\": {\"fields\": [\"model\"]}}]',8,1),(147,'2020-04-29 16:22:36.999236','17','New Balance 530',2,'[{\"changed\": {\"fields\": [\"model\"]}}]',8,1),(148,'2020-04-29 17:31:28.398785','108','red',3,'',9,1),(149,'2020-04-29 18:16:17.171351','1','Adidas Gazelle',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(150,'2020-04-29 18:16:38.499637','4','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(151,'2020-04-29 18:17:09.434155','3','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(152,'2020-04-29 18:17:36.317673','2','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(153,'2020-04-29 18:17:59.340247','1','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(154,'2020-04-29 18:23:45.783342','28','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(155,'2020-04-29 18:24:14.350007','7','Adidas Superstar',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(156,'2020-04-29 18:25:16.971971','4','Adidas Spezial',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(157,'2020-04-29 18:29:55.050667','6','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(158,'2020-04-29 18:30:09.208751','6','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(159,'2020-04-29 18:30:22.015107','17','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(160,'2020-04-29 18:31:08.698386','16','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(161,'2020-04-29 18:31:31.133083','19','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(162,'2020-04-29 18:31:57.607194','20','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(163,'2020-04-29 18:32:14.463623','18','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(164,'2020-04-29 18:33:10.417948','2','Adidas Hamburg',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(165,'2020-04-29 18:33:20.181849','7','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(166,'2020-04-29 18:33:35.991620','9','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(167,'2020-04-29 18:33:57.761207','8','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(168,'2020-04-29 18:34:16.621040','6','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(169,'2020-04-29 18:34:32.471226','5','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(170,'2020-04-29 18:36:09.218091','9','Asics Gel DuoSole',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(171,'2020-04-29 18:36:24.524130','41','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(172,'2020-04-29 18:36:38.462643','42','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(173,'2020-04-29 18:36:52.687232','38','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(174,'2020-04-29 18:37:12.835342','37','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(175,'2020-04-29 18:37:25.374843','39','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(176,'2020-04-29 18:39:01.036252','10','Asics Gel Lyte',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(177,'2020-04-29 18:39:10.666255','45','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(178,'2020-04-29 18:39:25.654847','44','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(179,'2020-04-29 18:39:55.597518','46','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(180,'2020-04-29 18:40:10.753715','43','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(181,'2020-04-29 18:41:12.354241','11','Asics Gel Lyte III',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(182,'2020-04-29 18:41:20.701090','49','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(183,'2020-04-29 18:41:35.263713','48','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(184,'2020-04-29 18:42:03.200422','47','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(185,'2020-04-29 18:42:40.764794','12','Asics Gel-Lique',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(186,'2020-04-29 18:42:52.176408','51','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(187,'2020-04-29 18:43:09.234432','50','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(188,'2020-04-29 18:47:55.221925','8','Asics Gel',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(189,'2020-04-29 18:49:13.448969','8','Asics Gel',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(190,'2020-04-29 18:49:25.021607','36','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(191,'2020-04-29 18:49:40.296705','34','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(192,'2020-04-29 18:49:54.796617','35','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(193,'2020-04-29 18:50:08.630078','33','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(194,'2020-04-29 18:50:51.309117','10','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(195,'2020-04-29 18:51:05.338300','12','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(196,'2020-04-29 18:51:17.576880','11','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(197,'2020-04-29 18:51:35.526479','3','Adidas Iniki',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(198,'2020-04-29 18:51:45.060635','14','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(199,'2020-04-29 18:51:58.374344','13','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(200,'2020-04-29 18:52:10.227953','15','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(201,'2020-04-29 18:52:45.689606','17','New Balance 530',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(202,'2020-04-29 18:52:54.394504','72','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(203,'2020-04-29 18:53:07.617970','71','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(204,'2020-04-29 18:53:19.645612','73','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(205,'2020-04-29 18:53:32.760520','74','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(206,'2020-04-29 18:56:56.691599','61','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(207,'2020-04-29 18:57:22.325861','63','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(208,'2020-04-29 18:57:36.402174','62','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(209,'2020-04-29 18:57:44.707433','15','New Balance 577',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(210,'2020-04-29 19:00:17.592529','64','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(211,'2020-04-29 19:02:15.609403','68','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(212,'2020-04-29 19:03:10.328506','66','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(213,'2020-04-29 19:03:30.089461','69','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(214,'2020-04-29 19:03:42.820160','67','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(215,'2020-04-29 19:03:46.837851','16','New Balance 996',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(216,'2020-04-29 20:03:13.616894','30','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(217,'2020-04-29 20:03:34.847742','32','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(218,'2020-04-29 20:03:49.567296','29','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(219,'2020-04-29 20:04:23.390160','26','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(220,'2020-04-29 20:04:37.769433','27','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(221,'2020-04-29 20:13:32.036625','25','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(222,'2020-04-29 20:13:50.263459','21','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(223,'2020-04-29 20:14:03.625396','24','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(224,'2020-04-29 20:14:15.191817','23','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(225,'2020-04-29 20:14:27.553908','22','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(226,'2020-04-29 20:14:41.311365','23','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(227,'2020-04-29 20:14:51.799574','22','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(228,'2020-04-29 20:15:33.093785','97','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(229,'2020-04-29 20:15:44.748374','98','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(230,'2020-04-29 20:15:57.172766','99','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(231,'2020-04-29 20:16:11.493276','96','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(232,'2020-04-29 20:16:25.483389','95','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(233,'2020-04-29 20:16:34.951210','100','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(234,'2020-04-29 20:16:45.969584','101','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(235,'2020-04-29 20:17:00.879510','55','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(236,'2020-04-29 20:17:12.712113','53','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(237,'2020-04-29 20:17:25.957033','90','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(238,'2020-04-29 20:17:37.224993','93','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(239,'2020-04-29 20:17:48.714732','54','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(240,'2020-04-29 20:17:59.336089','56','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(241,'2020-04-29 20:18:27.539525','110','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(242,'2020-04-29 20:18:52.266327','92','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(243,'2020-04-29 20:33:50.559511','107','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(244,'2020-04-29 20:34:00.600651','91','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(245,'2020-04-29 20:34:10.125465','106','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(246,'2020-04-29 20:34:24.997632','102','black',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(247,'2020-04-29 20:34:33.757656','103','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(248,'2020-04-29 20:34:52.288603','85','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(249,'2020-04-29 20:35:03.363514','86','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(250,'2020-04-29 20:35:16.017020','105','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(251,'2020-04-29 20:35:25.593064','104','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(252,'2020-04-29 20:35:45.070320','83','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(253,'2020-04-29 20:36:13.096632','81','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(254,'2020-04-29 20:36:26.712524','79','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(255,'2020-04-29 20:36:36.489068','80','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(256,'2020-04-29 20:36:47.680501','82','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(257,'2020-04-29 20:37:02.935733','84','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(258,'2020-04-29 20:37:23.329660','77','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(259,'2020-04-29 20:37:36.250859','75','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(260,'2020-04-29 20:37:48.328271','87','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(261,'2020-04-29 20:38:00.039744','88','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(262,'2020-04-29 20:38:11.689733','76','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(263,'2020-04-29 20:38:25.256892','78','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(264,'2020-04-29 20:38:41.302945','59','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(265,'2020-04-29 20:38:53.255369','89','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(266,'2020-04-29 20:39:28.266927','65','white',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(267,'2020-04-29 20:39:50.315284','57','red',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(268,'2020-04-29 20:40:01.917683','70','gray',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(269,'2020-04-29 20:41:06.486640','109','blue',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(270,'2020-04-29 20:41:23.301478','27','Reebok Gore-Tex',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(271,'2020-04-29 20:43:39.291319','52','black',3,'',9,1),(272,'2020-04-29 20:44:06.969082','94','green',3,'',9,1),(273,'2020-04-29 20:44:40.386355','58','green',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(274,'2020-04-29 20:44:52.652924','14','New Balance 1300',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(275,'2020-04-29 20:45:39.525339','5','Adidas Springblade',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(276,'2020-04-29 20:46:16.350723','26','Reebok Fury',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(277,'2020-04-29 20:47:01.648068','25','Reebok Classic',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(278,'2020-04-29 20:47:27.187465','24','Nike Roshe Run',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(279,'2020-04-29 20:48:07.305637','23','Nike Huarache City',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(280,'2020-04-29 20:48:54.670979','22','Nike Huarache',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(281,'2020-04-29 20:49:26.990267','21','Nike Air Max Zero',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(282,'2020-04-29 20:50:03.746290','20','Nike Air Max 270',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(283,'2020-04-29 20:50:32.735202','19','Nike Air Max',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(284,'2020-04-29 20:51:13.134930','18','Nike Air Force',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(285,'2020-04-29 20:51:42.593014','13','Nike Sock',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(286,'2020-04-29 20:52:02.339146','6','Adidas Stan Smith Suede',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1);
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'authtoken','token'),(9,'BEforDB','color'),(15,'BEforDB','comment'),(14,'BEforDB','favorite'),(13,'BEforDB','image'),(10,'BEforDB','order'),(12,'BEforDB','orderlist'),(8,'BEforDB','shoe'),(11,'BEforDB','size'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-20 19:18:51.286689'),(2,'auth','0001_initial','2020-04-20 19:18:51.724519'),(3,'BEforDB','0001_initial','2020-04-20 19:18:52.888407'),(4,'BEforDB','0002_auto_20200410_2310','2020-04-20 19:18:53.619452'),(5,'BEforDB','0003_auto_20200414_1137','2020-04-20 19:18:55.473494'),(6,'BEforDB','0004_auto_20200420_2211','2020-04-20 19:18:56.010061'),(7,'admin','0001_initial','2020-04-20 19:18:56.373087'),(8,'admin','0002_logentry_remove_auto_add','2020-04-20 19:18:56.649348'),(9,'admin','0003_logentry_add_action_flag_choices','2020-04-20 19:18:56.668298'),(10,'contenttypes','0002_remove_content_type_name','2020-04-20 19:18:56.890704'),(11,'auth','0002_alter_permission_name_max_length','2020-04-20 19:18:57.015398'),(12,'auth','0003_alter_user_email_max_length','2020-04-20 19:18:57.070223'),(13,'auth','0004_alter_user_username_opts','2020-04-20 19:18:57.084185'),(14,'auth','0005_alter_user_last_login_null','2020-04-20 19:18:57.198878'),(15,'auth','0006_require_contenttypes_0002','2020-04-20 19:18:57.202872'),(16,'auth','0007_alter_validators_add_error_messages','2020-04-20 19:18:57.232828'),(17,'auth','0008_alter_user_username_max_length','2020-04-20 19:18:57.369425'),(18,'auth','0009_alter_user_last_name_max_length','2020-04-20 19:18:57.528001'),(19,'auth','0010_alter_group_name_max_length','2020-04-20 19:18:57.560912'),(20,'auth','0011_update_proxy_permissions','2020-04-20 19:18:57.582852'),(21,'auth','0012_auto_20200414_1428','2020-04-20 19:18:57.657653'),(22,'auth','0013_auto_20200420_2002','2020-04-20 19:18:57.730460'),(23,'authtoken','0001_initial','2020-04-20 19:18:57.801269'),(24,'authtoken','0002_auto_20160226_1747','2020-04-20 19:18:58.095483'),(25,'sessions','0001_initial','2020-04-20 19:18:58.153329'),(26,'BEforDB','0005_auto_20200420_2227','2020-04-20 19:27:20.727250'),(27,'BEforDB','0006_auto_20200420_2233','2020-04-20 19:33:55.470379'),(28,'BEforDB','0007_auto_20200420_2236','2020-04-20 19:36:17.185459'),(29,'BEforDB','0008_auto_20200420_2243','2020-04-20 19:43:36.277488'),(30,'BEforDB','0009_auto_20200420_2244','2020-04-20 19:44:48.002773'),(31,'BEforDB','0010_auto_20200420_2245','2020-04-20 19:45:30.398880'),(32,'BEforDB','0011_auto_20200422_1127','2020-04-22 08:27:16.737274'),(33,'BEforDB','0012_auto_20200422_1129','2020-04-22 08:29:06.187812'),(34,'BEforDB','0013_auto_20200422_1132','2020-04-22 08:32:56.829399'),(35,'BEforDB','0014_auto_20200422_1316','2020-04-22 10:16:33.078362'),(36,'BEforDB','0015_auto_20200422_1402','2020-04-22 11:02:10.135432'),(37,'BEforDB','0016_auto_20200422_1502','2020-04-22 12:03:01.777769'),(38,'BEforDB','0017_auto_20200422_1504','2020-04-22 12:04:08.516122'),(39,'BEforDB','0018_auto_20200422_1512','2020-04-22 12:12:26.863463'),(40,'BEforDB','0019_auto_20200426_2235','2020-04-27 09:40:33.142247'),(41,'BEforDB','0020_auto_20200426_2245','2020-04-27 09:40:34.438778'),(42,'BEforDB','0021_auto_20200426_2251','2020-04-27 09:40:34.538733'),(43,'BEforDB','0022_auto_20200426_2354','2020-04-27 09:40:34.599349'),(44,'BEforDB','0023_auto_20200426_2359','2020-04-27 09:40:34.659413'),(45,'BEforDB','0024_auto_20200427_0010','2020-04-27 09:40:34.718031'),(46,'BEforDB','0025_auto_20200427_1240','2020-04-27 09:40:34.779865'),(47,'BEforDB','0026_auto_20200427_1259','2020-04-27 09:59:25.920440'),(48,'BEforDB','0027_auto_20200427_1530','2020-04-27 12:30:10.643370'),(49,'BEforDB','0019_auto_20200428_1440','2020-04-29 14:52:45.320446'),(50,'BEforDB','0020_auto_20200428_2137','2020-04-29 14:52:45.686957'),(51,'BEforDB','0021_auto_20200428_2202','2020-04-29 14:52:45.724899'),(52,'BEforDB','0022_auto_20200429_0030','2020-04-29 14:52:45.870470'),(53,'BEforDB','0023_auto_20200429_0053','2020-04-29 14:52:46.114813'),(54,'BEforDB','0024_auto_20200429_1752','2020-04-29 14:52:46.150717');
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
INSERT INTO `django_session` VALUES ('8gdku9avn4a8rqu0npcn84tpp28rbw8r','ZWU3NTRiNTRjNGZhODFlZTk4MWJjMGFkMGJmMDEwYWFkYzE1NjMwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0Y2QxN2U5ZWFmM2YwNjA2ZGNlMmFkZmMyODNiMTM0YTQ5YmYwNzVkIn0=','2020-05-11 08:25:59.349386'),('9nh8rx0dxjlts2gr0vqb3fyati10zgw5','YjcwNjQzZjliZjlkNDdlZDVmODY2OWRjMDE4ZDNlODBiYjQ0M2JhMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjZlZWFlNGI1NjNiYjlhODBjYTgxYTkzYzE1NzRkY2I1NDg0MGNiIn0=','2020-05-06 12:19:21.086036'),('fa8qrio1c6gc77gmmzrrxl5fqa0ykcw3','ZWU3NTRiNTRjNGZhODFlZTk4MWJjMGFkMGJmMDEwYWFkYzE1NjMwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0Y2QxN2U5ZWFmM2YwNjA2ZGNlMmFkZmMyODNiMTM0YTQ5YmYwNzVkIn0=','2020-05-08 10:19:45.176331'),('wxwdqpangm5tu7qbqls27q6qvdpmdqo0','ZWU3NTRiNTRjNGZhODFlZTk4MWJjMGFkMGJmMDEwYWFkYzE1NjMwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0Y2QxN2U5ZWFmM2YwNjA2ZGNlMmFkZmMyODNiMTM0YTQ5YmYwNzVkIn0=','2020-05-13 14:51:35.111791');
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

-- Dump completed on 2020-04-30  0:09:38
