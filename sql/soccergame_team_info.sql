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
-- Table structure for table `team_info`
--
CREATE DATABASE IF NOT EXISTS soccergame DEFAULT CHARACTER SET utf8;
USE soccergame;
SET NAMES utf8;

DROP TABLE IF EXISTS `team_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_info` (
  `team_unique` varchar(50) NOT NULL,
  `team_name_cn` varchar(50) DEFAULT NULL,
  `team_name_en` varchar(50) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `home` varchar(150) DEFAULT NULL,
  `telephone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `found_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`team_unique`),
  UNIQUE KEY `team_unique_UNIQUE` (`team_unique`),
  KEY `pk_league_4_idx` (`country_region`),
  CONSTRAINT `pk_league_4` FOREIGN KEY (`country_region`) REFERENCES `league_info` (`league_unique`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_info`
--

LOCK TABLES `team_info` WRITE;
/*!40000 ALTER TABLE `team_info` DISABLE KEYS */;
INSERT INTO `team_info` VALUES ('50000513','阿森纳','Arsenal','8','伦敦','酋长球场 (60355人)','+44 (207) 619 5003','info@arsenal.co.uk','Highbury House, 75 Drayton Park','1886'),('50000514','切尔西','Chelsea','8','伦敦','斯坦福桥球场 (41841人)','+44 (871) 984 1955','','Fulham Road','1905'),('50000515','曼联','Manchester United','8','曼彻斯特','老特拉福德球场 (76212人)','+44 (870) 442 1994','enquiries@manutd.co.uk','Sir Matt Busby Way','1878'),('50000516','利物浦','Liverpool','8','利物浦','安菲尔德球场 (54074人)','+44 (151) 263 2361','customercontact@liverpoolfc.tv','Anfield Road','1892'),('50000517','纽卡斯尔联','Newcastle United','8','纽卡斯尔','圣詹姆斯公园 (52389人)','+44 (844) 372 1892','admin@nufc.co.uk','St. James\' Park','1892'),('50000520','富勒姆','Fulham','8','伦敦','','+44 (870) 442 1222','enquiries@fulhamfc.com','Stevenage Road','1879'),('50000523','南安普顿','Southampton','8','南安普顿','圣玛丽球场 (32689人)','+44 (845) 688 9448','sfc@saintsfc.co.uk','Britannia Road','1885'),('50000527','埃弗顿','Everton','8','利物浦','古迪逊公园球场 (40569人)','+44 (871) 663 1878','everton@evertonfc.com','Goodison Road','1878'),('50000528','托特纳姆热刺','Tottenham Hotspur','8','伦敦','托特纳姆热刺球场 (62062人)','+44 (844) 499 5000','email@spurs.co.uk','Bill Nicholson Way, 748 High Road','1882'),('50000529','曼城','Manchester City','8','曼彻斯特','阿提哈德球场 (55097人)','+44 (870) 062 1894','mcfc@mcfc.co.uk','Rowsley Street','1880'),('50000532','水晶宫','Crystal Palace','8','伦敦','塞尔赫斯特公园球场 (26309人)','+44 (208) 768 6000','info@cpfc.co.uk','Selhurst Park','1905'),('50000533','狼队','Wolverhampton Wanderers','8','Wolverhampton','','+44 (870) 222 2220','info@wolves.co.uk','Waterloo Road','1877'),('50000535','莱斯特城','Leicester City','8','莱斯特','皇权球场 (32262人)','+44 (870) 040 6000','sales@lcfc.co.uk','Filbert Way','1884'),('50000537','西汉姆联','West Ham United','8','伦敦','伦敦体育场 (60000人)','+44 (208) 548 2748','customerservices@westhamunited.co.uk','Green Street','1895'),('50000544','卡迪夫城','Cardiff City','8','Cardiff','卡迪夫城球场 (33280人)','+44 (845) 365 1115','club@cardiffcityfc.co.uk','Leckwith Road','1889'),('50000549','沃特福德','Watford','8','沃特福德','维卡拉格路球场 (21577人)','+44 (845) 442 1881','yourvoice@watfordfc.com','Vicarage Road','1881'),('50000551','伯恩利','Burnley','8','伯恩利','摩亚球场 (22546人)','+44 (870) 443 1882','info@burnleyfc.com','Harry Potts Way','1882'),('50000556','布莱顿','Brighton & Hove Albion','8','布莱顿','美国运通社区球场 (30750人)','+44 (1273) 878 288','customerservices@bhafc.co.uk','Village Way','1901'),('50000564','伯恩茅斯','AFC Bournemouth','8','伯恩茅斯','迪恩考特球场 (12000人)','+44 (844) 576 1910','enquiries@afcb.co.uk','Dean Court, Kings Park','1899'),('50000579','哈德斯菲尔德','Huddersfield Town','8','哈德斯菲尔德','约翰史密斯球场 (24554人)','+44 (870) 444 4677','info@htafc.com','Stadium Way','1908'),('50001754','瓦伦西亚','Valencia','7','瓦伦西亚','梅斯塔利亚球场 (55000人)','+34 (902) 011 919','informacion@valenciacf.es','Plaza del Valencia CF','1919'),('50001755','皇家马德里','Real Madrid','7','马德里','伯纳乌球场 (85454人)','+34 (91) 398 4300','international@realmadrid.es','Avenida de Concha Espina 1, Chamartín','1902'),('50001756','巴塞罗那','Barcelona','7','巴塞罗那','诺坎普球场 (99787人)','+34 (902) 189 900','oab@club.fcbarcelona.com','Avenida de Arístides Maillol','1899'),('50001758','毕尔巴鄂竞技','Athletic Club','7','毕尔巴鄂','圣马梅斯球场 (53289人)','+34 (94) 424 0877','prensa@athletic-club.net','Alameda de Mazarredo 23','1898'),('50001759','马德里竞技','Atlético Madrid','7','马德里','万达大都会球场 (67703人)','+34 (91) 366 4707','comunicacion@clubatleticodemadrid.com','Paseo Virgen del Puerto 67','1903'),('50001760','塞维利亚','Sevilla','7','塞维利亚','皮斯胡安球场 (48649人)','+34 (902) 510 011','sevillafc@sevillafc.es','Calle Sevilla Fútbol Club','1890'),('50001762','比利亚雷亚尔','Villarreal','7','比利亚雷亚尔','陶瓷球场 (24500人)','+34 (964) 500 250','villarrealcf@villarrealcf.es','Camino Miralcamp','1923'),('50001764','皇家贝蒂斯','Real Betis','7','塞维利亚','洛佩拉球场 (60721人)','+34 (902) 191 907','info@realbetisbalompie.es','Avenida de Heliópolis','1907'),('50001767','皇家社会','Real Sociedad','7','圣塞瓦斯蒂安','阿诺埃塔球场 (32076人)','+34 (943) 451 109','realsoc@realsociedad.com','Paseo de Anoeta 1','1909'),('50001770','巴拉多利德','Real Valladolid','7','Valladolid','索里利斯 (26512人)','+34 (983) 360 342','realvalladolid@realvalladolid.es','Avenida del Mundial 82','1928'),('50001771','西班牙人','Espanyol','7','巴塞罗那','埃尔普拉特球场 (40423人)','+34 (93) 292 7700','info@rcdespanyol.com','Avenida Baix Llobregat 100','1900'),('50001772','塞尔塔','Celta de Vigo','7','维戈','巴莱多斯球场 (31800人)','+34 (986) 110 900','web@celtavigo.net','Calle Conde de Gondomar 1','1923'),('50001775','莱万特','Levante','7','瓦伦西亚','瓦伦西亚城市球场 (25534人)','+34 (902) 220 304','admon@levanteud.es','Calle San Vicente de Paúl 44','1909'),('50001776','阿拉维斯','Deportivo Alavés','7','维多利亚','门迪佐洛萨球场 (19840人)','+34 (945) 131 018','deportivoalavessad@alaves.com','Paseo de Cervantes','1921'),('50001778','赫塔费','Getafe','7','Getafe (Madrid)','佩雷斯球场 (17393人)','+34 (91) 695 9771','fsantos@getafecf.com','Avenida Teresa de Calcuta','1983'),('50001781','埃瓦尔','Eibar','7','埃瓦尔','伊普鲁阿市立球场 (7083人)','+34 (943) 201 831','sdeibar@sdeibar.com','Ipurua Kalea 2','1940'),('50001792','莱加内斯','Leganés','7','莱加内斯','穆尼西帕尔-德-布塔克球场 (11454人)','+34 (916) 887 159','comunicacion@deportivoleganes.com','Calle Arquitectura','1928'),('50001793','巴列卡诺','Rayo Vallecano','7','马德里','','+34 (914) 782 253','infoweb@rayovallecano.es','Calle Payaso Fofó','1924'),('50001836','赫罗纳','Girona','7','赫罗纳','蒙蒂利维球场 (13500人)','+34 (972) 202 277','info@gironafutbolclub.com','Avenida Montlivi 141','1930'),('50002562','韦斯卡','Huesca','7','Huesca','','+34 (974) 212 679','sdhuesca@sdhuesca.es','Camino del Alto Cocorón','1922');
/*!40000 ALTER TABLE `team_info` ENABLE KEYS */;
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
