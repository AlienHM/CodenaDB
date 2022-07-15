-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: dbblog
-- ------------------------------------------------------
-- Server version	8.0.29

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add categorie',9,'add_categorie'),(34,'Can change categorie',9,'change_categorie'),(35,'Can delete categorie',9,'delete_categorie'),(36,'Can view categorie',9,'view_categorie'),(37,'Can add category',10,'add_category'),(38,'Can change category',10,'change_category'),(39,'Can delete category',10,'delete_category'),(40,'Can view category',10,'view_category'),(41,'Can add posts',11,'add_posts'),(42,'Can change posts',11,'change_posts'),(43,'Can delete posts',11,'delete_posts'),(44,'Can view posts',11,'view_posts'),(45,'Can add profiles',12,'add_profiles'),(46,'Can change profiles',12,'change_profiles'),(47,'Can delete profiles',12,'delete_profiles'),(48,'Can view profiles',12,'view_profiles');
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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$CTiuS7pND1rNchYTyqjKwx$N5BGE5CGYEPQYWMjxa4XNzOgFczgtEvFE0e4hzjyGTQ=','2022-07-14 21:32:48.011830',0,'Alien0','','','alien0@gmail.com',0,1,'2022-07-14 21:32:41.626894'),(2,'pbkdf2_sha256$320000$bqFvPZLUnz6flsdhM1yki3$uwvod9cIA82dumEZU3/U227rjb11J33bqh1dvwoXEsQ=','2022-07-15 13:40:28.953688',1,'Ali','','','',1,1,'2022-07-14 21:38:15.628891'),(3,'pbkdf2_sha256$320000$A2BBisCpey4XhMRhEwkVt0$eoNx3bkzcfOJugAiDILJQ1lAA/OVTsfKAbjJR67bSW8=','2022-07-15 13:44:32.429825',0,'Nurlan','','','nurlan@gmail.com',0,1,'2022-07-15 13:36:34.553242');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `blogapp_categorie`
--

DROP TABLE IF EXISTS `blogapp_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_categorie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_categorie`
--

LOCK TABLES `blogapp_categorie` WRITE;
/*!40000 ALTER TABLE `blogapp_categorie` DISABLE KEYS */;
INSERT INTO `blogapp_categorie` VALUES (1,'Coding'),(2,'CyberTech'),(3,'Science'),(4,'Design');
/*!40000 ALTER TABLE `blogapp_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_post`
--

DROP TABLE IF EXISTS `blogapp_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `post_date` date NOT NULL,
  `category` varchar(255) NOT NULL,
  `snippet` longtext NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlogApp_post_author_id_e19373f1_fk_auth_user_id` (`author_id`),
  CONSTRAINT `BlogApp_post_author_id_e19373f1_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_post`
--

LOCK TABLES `blogapp_post` WRITE;
/*!40000 ALTER TABLE `blogapp_post` DISABLE KEYS */;
INSERT INTO `blogapp_post` VALUES (1,'What is fuzzy logic?','<p>Fuzzy logic is an approach to computing based on &quot;degrees of truth&quot; rather than the usual &quot;true or false&quot; (1 or 0)&nbsp;Boolean&nbsp;logic on which the modern computer is based.&nbsp;</p>\r\n\r\n<p>The idea of fuzzy logic was first advanced by Lotfi Zadeh of the University of California at Berkeley in the 1960s. Zadeh was working on the problem of computer understanding of natural language. Natural language -- like most other activities in life and indeed the universe -- is not easily translated into the absolute terms of 0 and 1. Whether everything is ultimately describable in binary&nbsp;terms is a philosophical question worth pursuing, but in practice, much data we might want to feed a computer is in some state in between and so, frequently, are the results of computing. It may help to see fuzzy logic as the way reasoning really works and binary, or Boolean, logic is simply a special case of it.</p>','2022-07-14','Science','<p>Fuzzy logic is an approach to computing based...</p>',2),(2,'My Real World','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae lacinia erat. Donec mattis mollis lacus eget condimentum. Cras ac euismod magna, cursus maximus arcu. Sed elementum accumsan convallis. Donec ultrices dolor vel felis gravida gravida. Sed ornare nibh sapien, vel aliquet erat efficitur ac. Duis eget orci at elit euismod porttitor eget ac lorem. Cras scelerisque ante non neque efficitur finibus sit amet in lorem. In interdum lorem et augue interdum consequat. Suspendisse feugiat sem sed neque pharetra imperdiet. Sed in lectus tristique, aliquam ligula et, mollis dolor. Proin arcu nunc, dignissim at tempor vel, fermentum elementum nibh. Suspendisse eget justo ut metus auctor fermentum. Integer rhoncus, tellus a eleifend porttitor, velit justo finibus sem, eu porta tellus augue sed urna.</p>\r\n\r\n<p>Ut tempor vestibulum malesuada. Ut at ornare felis, quis auctor purus. Quisque pulvinar risus ac tempus sollicitudin. Donec blandit sapien eget lacus laoreet lacinia. Suspendisse potenti. Quisque dapibus dolor vel metus vehicula, sit amet porta lorem mattis. Nullam efficitur fermentum tellus, in egestas metus pellentesque dignissim.</p>\r\n\r\n<p>Maecenas rhoncus augue pretium purus accumsan, volutpat egestas tellus vestibulum. Integer dictum, tortor a rhoncus tempus, sapien magna dictum elit, fermentum consequat magna eros sed erat. Vestibulum in lobortis massa, eget varius felis. Nulla accumsan cursus nisi, sed ultrices urna. Integer sit amet mi vel purus imperdiet porttitor quis ac sem. Maecenas eu accumsan sem. Nam porta dui tempus feugiat pellentesque. Mauris accumsan malesuada fermentum. Curabitur quis efficitur sapien, a tincidunt ante. Donec blandit dapibus porta. Vivamus feugiat pellentesque nunc, nec blandit lorem venenatis eget. Praesent blandit, est mollis sagittis tempus, mauris magna consequat tortor, in fringilla justo purus vitae est. Integer sit amet turpis sed purus interdum elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris porta magna sit amet auctor maximus.</p>\r\n\r\n<p>Aliquam sit amet quam pharetra, auctor tortor vitae, elementum leo. Vivamus eleifend, leo vel maximus aliquam, felis ipsum facilisis mi, a porttitor mi elit nec tortor. Donec volutpat nisi nec consectetur pharetra. Praesent pretium imperdiet lacus, vel scelerisque ante aliquet non. Cras finibus turpis at sapien auctor, vitae elementum nibh mollis. Nulla facilisi. Proin fermentum imperdiet suscipit. Donec tristique ornare commodo.</p>\r\n\r\n<p>Integer leo diam, cursus eget elit sed, pretium aliquam odio. Donec tortor purus, dignissim sed ullamcorper a, efficitur ac erat. Nulla tristique libero at sapien dignissim imperdiet. Integer egestas mauris interdum consequat consectetur. Cras ultrices viverra tortor ut rhoncus. Donec a purus libero. Ut vulputate dapibus faucibus. Curabitur ullamcorper sem sit amet dui facilisis, at malesuada justo vulputate.</p>\r\n\r\n<p>In id condimentum lacus. Ut tempor accumsan leo, nec facilisis eros finibus sit amet. Maecenas ex nulla, viverra eget magna sed, tristique cursus lorem. Etiam dapibus convallis risus. Quisque sit amet turpis dictum, vulputate mauris non, facilisis lectus. Maecenas molestie purus a justo venenatis bibendum. Maecenas sagittis sagittis lorem eu gravida. Quisque finibus felis sed tellus varius, eget mattis velit venenatis. Aliquam sit amet massa at ex suscipit fringilla. Vestibulum interdum rhoncus sagittis. Aenean vel ex vel nunc venenatis maximus. Morbi convallis nisl eu dapibus.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:238px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>','2022-07-15','Design','<p>Lorem ipsum dolor sit amet, consectetur</p>',3);
/*!40000 ALTER TABLE `blogapp_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_post_likes`
--

DROP TABLE IF EXISTS `blogapp_post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_post_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BlogApp_post_likes_post_id_user_id_0d44f5aa_uniq` (`post_id`,`user_id`),
  KEY `BlogApp_post_likes_user_id_9c0bbedb_fk_auth_user_id` (`user_id`),
  CONSTRAINT `BlogApp_post_likes_post_id_d1d18e65_fk_BlogApp_post_id` FOREIGN KEY (`post_id`) REFERENCES `blogapp_post` (`id`),
  CONSTRAINT `BlogApp_post_likes_user_id_9c0bbedb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_post_likes`
--

LOCK TABLES `blogapp_post_likes` WRITE;
/*!40000 ALTER TABLE `blogapp_post_likes` DISABLE KEYS */;
INSERT INTO `blogapp_post_likes` VALUES (1,1,2),(4,1,3),(2,2,2),(3,2,3);
/*!40000 ALTER TABLE `blogapp_post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_profile`
--

DROP TABLE IF EXISTS `blogapp_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bio` longtext NOT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `prof_pic` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `BlogApp_profile_user_id_8144a67f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_profile`
--

LOCK TABLES `blogapp_profile` WRITE;
/*!40000 ALTER TABLE `blogapp_profile` DISABLE KEYS */;
INSERT INTO `blogapp_profile` VALUES (1,'I am Ali Hasanov\r\nYou know, I am something of a scientist myself...',NULL,NULL,NULL,'images/prof_pics/maxresdefault.jpg',2),(2,'I am from the Titan and I wanna love you all. he hehe heheh',NULL,NULL,NULL,'images/prof_pics/green-alien-looking-angry-or-dangerous-royalty-free-image-1620398625_.jpg',1),(3,'I am Nurlan of Asgard',NULL,NULL,NULL,'images/prof_pics/loki.webp',3);
/*!40000 ALTER TABLE `blogapp_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_profile_follower`
--

DROP TABLE IF EXISTS `blogapp_profile_follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_profile_follower` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `profile_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BlogApp_profile_follower_profile_id_user_id_2105b3a3_uniq` (`profile_id`,`user_id`),
  KEY `BlogApp_profile_follower_user_id_16cbdfce_fk_auth_user_id` (`user_id`),
  CONSTRAINT `BlogApp_profile_foll_profile_id_2f6fed26_fk_BlogApp_p` FOREIGN KEY (`profile_id`) REFERENCES `blogapp_profile` (`id`),
  CONSTRAINT `BlogApp_profile_follower_user_id_16cbdfce_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_profile_follower`
--

LOCK TABLES `blogapp_profile_follower` WRITE;
/*!40000 ALTER TABLE `blogapp_profile_follower` DISABLE KEYS */;
INSERT INTO `blogapp_profile_follower` VALUES (1,1,1),(2,2,2),(3,3,2);
/*!40000 ALTER TABLE `blogapp_profile_follower` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-07-14 21:41:50.117539','1','Ali',1,'[{\"added\": {}}]',7,2),(2,'2022-07-14 21:44:30.368029','2','Alien0',1,'[{\"added\": {}}]',7,2),(3,'2022-07-15 13:42:56.957208','3','Nurlan',1,'[{\"added\": {}}]',7,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'BlogApp','categorie'),(10,'BlogApp','category'),(8,'BlogApp','post'),(11,'BlogApp','posts'),(7,'BlogApp','profile'),(12,'BlogApp','profiles'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-07-14 21:00:07.014538'),(2,'auth','0001_initial','2022-07-14 21:00:20.970915'),(3,'admin','0001_initial','2022-07-14 21:00:23.210047'),(4,'admin','0002_logentry_remove_auto_add','2022-07-14 21:00:23.317891'),(5,'admin','0003_logentry_add_action_flag_choices','2022-07-14 21:00:23.408030'),(6,'contenttypes','0002_remove_content_type_name','2022-07-14 21:00:25.277273'),(7,'auth','0002_alter_permission_name_max_length','2022-07-14 21:00:27.216317'),(8,'auth','0003_alter_user_email_max_length','2022-07-14 21:00:27.650418'),(9,'auth','0004_alter_user_username_opts','2022-07-14 21:00:27.830887'),(10,'auth','0005_alter_user_last_login_null','2022-07-14 21:00:29.389792'),(11,'auth','0006_require_contenttypes_0002','2022-07-14 21:00:29.573063'),(12,'auth','0007_alter_validators_add_error_messages','2022-07-14 21:00:29.871312'),(13,'auth','0008_alter_user_username_max_length','2022-07-14 21:00:32.489201'),(14,'auth','0009_alter_user_last_name_max_length','2022-07-14 21:00:34.179339'),(15,'auth','0010_alter_group_name_max_length','2022-07-14 21:00:34.627523'),(16,'auth','0011_update_proxy_permissions','2022-07-14 21:00:34.835032'),(17,'auth','0012_alter_user_first_name_max_length','2022-07-14 21:00:37.309042'),(18,'sessions','0001_initial','2022-07-14 21:00:38.993121'),(19,'BlogApp','0001_initial','2022-07-14 21:27:39.230134');
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
INSERT INTO `django_session` VALUES ('tofw55nufrmqwll44ieza398dq0bxop8','.eJxVjEEOwiAQRe_C2hAGpIBL9z0DGWaoVA0kpV0Z765NutDtf-_9l4i4rSVuPS9xZnERRpx-t4T0yHUHfMd6a5JaXZc5yV2RB-1ybJyf18P9OyjYy7f2aINjssETK0QyZgKvJzCcBoIQLLEzWjs1-KRBJUgZVLYK9Bm8ZxTvD-HIN18:1oCLcO:TE6_B_QE80HtOD-VYpfVOv7iN5rb5EDOH1hPwWDMOKs','2022-07-29 13:44:32.541745');
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

-- Dump completed on 2022-07-15  9:59:12
