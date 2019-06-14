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
-- Table structure for table `league_rank`
--
CREATE DATABASE IF NOT EXISTS soccergame DEFAULT CHARACTER SET utf8;
USE soccergame;
SET NAMES utf8;

DROP TABLE IF EXISTS `league_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `league_rank` (
  `league_unique` varchar(50) NOT NULL,
  `ranking` int(11) NOT NULL,
  `team_name_cn` varchar(50) DEFAULT NULL,
  `match_num` int(11) DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `lose` int(11) DEFAULT NULL,
  `goal_scored_for` int(11) DEFAULT NULL,
  `goal_scored_against` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `team_unique` varchar(50) DEFAULT NULL,
  `goal_difference` int(11) DEFAULT NULL,
  PRIMARY KEY (`ranking`,`league_unique`),
  KEY `pk_team_4_idx` (`team_unique`),
  KEY `pk_league_8_idx` (`league_unique`),
  CONSTRAINT `pk_league_8` FOREIGN KEY (`league_unique`) REFERENCES `league_info` (`league_unique`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pk_team_4` FOREIGN KEY (`team_unique`) REFERENCES `team_info` (`team_unique`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联赛积分榜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league_rank`
--

LOCK TABLES `league_rank` WRITE;
/*!40000 ALTER TABLE `league_rank` DISABLE KEYS */;
INSERT INTO `league_rank` VALUES ('7',1,'巴塞罗那',38,26,9,3,90,36,87,'50001756',54),('8',1,'曼城',38,32,2,4,95,23,98,'50000529',72),('7',2,'马德里竞技',38,22,10,6,55,29,76,'50001759',26),('8',2,'利物浦',38,30,7,1,89,22,97,'50000516',67),('7',3,'皇家马德里',38,21,5,12,63,46,68,'50001755',17),('8',3,'切尔西',38,21,9,8,63,39,72,'50000514',24),('7',4,'瓦伦西亚',38,15,16,7,51,35,61,'50001754',16),('8',4,'托特纳姆热刺',38,23,2,13,67,39,71,'50000528',28),('7',5,'赫塔费',38,15,14,9,48,35,59,'50001778',13),('8',5,'阿森纳',38,21,7,10,73,51,70,'50000513',22),('7',6,'塞维利亚',38,17,8,13,62,47,59,'50001760',15),('8',6,'曼联',38,19,9,10,65,54,66,'50000515',11),('7',7,'西班牙人',38,14,11,13,48,50,53,'50001771',-2),('8',7,'狼队',38,16,9,13,47,46,57,'50000533',1),('7',8,'毕尔巴鄂竞技',38,13,14,11,41,45,53,'50001758',-4),('8',8,'埃弗顿',38,15,9,14,54,46,54,'50000527',8),('7',9,'皇家社会',38,13,11,14,45,46,50,'50001767',-1),('8',9,'莱斯特城',38,15,7,16,51,48,52,'50000535',3),('7',10,'皇家贝蒂斯',38,14,8,16,44,52,50,'50001764',-8),('8',10,'西汉姆联',38,15,7,16,52,55,52,'50000537',-3),('7',11,'阿拉维斯',38,13,11,14,39,50,50,'50001776',-11),('8',11,'沃特福德',38,14,8,16,52,59,50,'50000549',-7),('7',12,'埃瓦尔',38,11,14,13,46,50,47,'50001781',-4),('8',12,'水晶宫',38,14,7,17,51,53,49,'50000532',-2),('7',13,'莱加内斯',38,11,12,15,37,43,45,'50001792',-6),('8',13,'纽卡斯尔联',38,12,9,17,42,48,45,'50000517',-6),('7',14,'比利亚雷亚尔',38,10,14,14,49,52,44,'50001762',-3),('8',14,'伯恩茅斯',38,13,6,19,56,70,45,'50000564',-14),('7',15,'莱万特',38,11,11,16,59,66,44,'50001775',-7),('8',15,'伯恩利',38,11,7,20,45,68,40,'50000551',-23),('7',16,'巴拉多利德',38,10,11,17,32,51,41,'50001770',-19),('8',16,'南安普顿',38,9,12,17,45,65,39,'50000523',-20),('7',17,'塞尔塔',38,10,11,17,53,62,41,'50001772',-9),('8',17,'布莱顿',38,9,9,20,35,60,36,'50000556',-25),('7',18,'赫罗纳',38,9,10,19,37,53,37,'50001836',-16),('8',18,'卡迪夫城',38,10,4,24,34,69,34,'50000544',-35),('7',19,'韦斯卡',38,7,12,19,43,65,33,'50002562',-22),('8',19,'富勒姆',38,7,5,26,34,81,26,'50000520',-47),('7',20,'巴列卡诺',38,8,8,22,41,70,32,'50001793',-29),('8',20,'哈德斯菲尔德',38,3,7,28,22,76,16,'50000579',-54);
/*!40000 ALTER TABLE `league_rank` ENABLE KEYS */;
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
