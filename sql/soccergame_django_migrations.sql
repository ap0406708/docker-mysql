-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: soccergame
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_migrations`
--
CREATE DATABASE IF NOT EXISTS soccergame DEFAULT CHARACTER SET utf8;
USE soccergame;
SET NAMES utf8;

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-14 04:18:51.236115'),(2,'auth','0001_initial','2019-04-14 04:18:52.197564'),(3,'admin','0001_initial','2019-04-14 04:18:52.484402'),(4,'admin','0002_logentry_remove_auto_add','2019-04-14 04:18:52.499394'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-14 04:18:52.516384'),(6,'contenttypes','0002_remove_content_type_name','2019-04-14 04:18:52.709271'),(7,'auth','0002_alter_permission_name_max_length','2019-04-14 04:18:52.729261'),(8,'auth','0003_alter_user_email_max_length','2019-04-14 04:18:52.754246'),(9,'auth','0004_alter_user_username_opts','2019-04-14 04:18:52.773237'),(10,'auth','0005_alter_user_last_login_null','2019-04-14 04:18:52.859185'),(11,'auth','0006_require_contenttypes_0002','2019-04-14 04:18:52.865182'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-14 04:18:52.877176'),(13,'auth','0008_alter_user_username_max_length','2019-04-14 04:18:52.909157'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-14 04:18:52.938140'),(15,'sessions','0001_initial','2019-04-14 04:18:53.015116'),(16,'sites','0001_initial','2019-05-28 09:48:48.302988'),(17,'sites','0002_alter_domain_unique','2019-05-28 09:48:48.336968'),(18,'soccer','0001_initial','2019-06-02 10:09:11.695276'),(19,'soccer','0002_auto_20190602_0628','2019-06-02 10:09:11.707268'),(20,'soccer','0003_auto_20190602_0658','2019-06-02 10:09:11.714263'),(21,'soccer','0004_auto_20190602_1740','2019-06-02 10:09:11.724258'),(22,'soccer','0005_auto_20190602_1752','2019-06-02 10:09:11.732254'),(23,'soccer','0006_auto_20190602_1806','2019-06-02 10:09:11.741249'),(24,'soccer','0007_auto_20190602_1810','2019-06-02 10:12:24.064727');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 10:21:34
