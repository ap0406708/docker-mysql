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
-- Table structure for table `auth_permission`
--
CREATE DATABASE IF NOT EXISTS soccergame DEFAULT CHARACTER SET utf8;
USE soccergame;
SET NAMES utf8;

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add site',7,'add_site'),(26,'Can change site',7,'change_site'),(27,'Can delete site',7,'delete_site'),(28,'Can view site',7,'view_site'),(29,'Can add player info',8,'add_playerinfo'),(30,'Can change player info',8,'change_playerinfo'),(31,'Can delete player info',8,'delete_playerinfo'),(32,'Can view player info',8,'view_playerinfo'),(33,'Can add goals event',9,'add_goalsevent'),(34,'Can change goals event',9,'change_goalsevent'),(35,'Can delete goals event',9,'delete_goalsevent'),(36,'Can view goals event',9,'view_goalsevent'),(37,'Can add goals rank',10,'add_goalsrank'),(38,'Can change goals rank',10,'change_goalsrank'),(39,'Can delete goals rank',10,'delete_goalsrank'),(40,'Can view goals rank',10,'view_goalsrank'),(41,'Can add timeline',11,'add_timeline'),(42,'Can change timeline',11,'change_timeline'),(43,'Can delete timeline',11,'delete_timeline'),(44,'Can view timeline',11,'view_timeline'),(45,'Can add league info',12,'add_leagueinfo'),(46,'Can change league info',12,'change_leagueinfo'),(47,'Can delete league info',12,'delete_leagueinfo'),(48,'Can view league info',12,'view_leagueinfo'),(49,'Can add cards event',13,'add_cardsevent'),(50,'Can change cards event',13,'change_cardsevent'),(51,'Can delete cards event',13,'delete_cardsevent'),(52,'Can view cards event',13,'view_cardsevent'),(53,'Can add race schedule',14,'add_raceschedule'),(54,'Can change race schedule',14,'change_raceschedule'),(55,'Can delete race schedule',14,'delete_raceschedule'),(56,'Can view race schedule',14,'view_raceschedule'),(57,'Can add substitutions event',15,'add_substitutionsevent'),(58,'Can change substitutions event',15,'change_substitutionsevent'),(59,'Can delete substitutions event',15,'delete_substitutionsevent'),(60,'Can view substitutions event',15,'view_substitutionsevent'),(61,'Can add league rank',16,'add_leaguerank'),(62,'Can change league rank',16,'change_leaguerank'),(63,'Can delete league rank',16,'delete_leaguerank'),(64,'Can view league rank',16,'view_leaguerank'),(65,'Can add team info',17,'add_teaminfo'),(66,'Can change team info',17,'change_teaminfo'),(67,'Can delete team info',17,'delete_teaminfo'),(68,'Can view team info',17,'view_teaminfo'),(69,'Can add lineup',18,'add_lineup'),(70,'Can change lineup',18,'change_lineup'),(71,'Can delete lineup',18,'delete_lineup'),(72,'Can view lineup',18,'view_lineup'),(73,'Can add race final',19,'add_racefinal'),(74,'Can change race final',19,'change_racefinal'),(75,'Can delete race final',19,'delete_racefinal'),(76,'Can view race final',19,'view_racefinal'),(77,'Can add assist rank',20,'add_assistrank'),(78,'Can change assist rank',20,'change_assistrank'),(79,'Can delete assist rank',20,'delete_assistrank'),(80,'Can view assist rank',20,'view_assistrank');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 10:21:33
