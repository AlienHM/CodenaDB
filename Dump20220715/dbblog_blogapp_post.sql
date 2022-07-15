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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15  9:35:15
