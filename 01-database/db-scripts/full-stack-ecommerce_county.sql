-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: full-stack-ecommerce
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `county`
--

DROP TABLE IF EXISTS `county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `county` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `county`
--

LOCK TABLES `county` WRITE;
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` VALUES (1,'Arad',1),(2,'Timiș',1),(3,'Cluj',1),(4,'Alba',1),(5,'Bihor',1),(6,'Brașov',1),(7,'Bucharest',1),(8,'Caraș-Severin',1),(9,'Covasna',1),(10,'Dâmbovița',1),(11,'Galați',1),(12,'Harghita',1),(13,'Iași',1),(14,'Maramureș',1),(15,'Mureș',1),(16,'Neamț',1),(17,'Olt',1),(18,'Prahova',1),(19,'Sibiu',1),(20,'Suceava',1),(21,'Teleorman',1),(22,'Tulcea',1),(23,'Vâlcea',1),(24,'Vaslui',1),(25,'Vrancea',1),(26,'Budapest',2),(27,'Pest',2),(28,'Baranya',2),(29,'Bács-Kiskun',2),(30,'Békés',2),(31,'Borsod-Abaúj-Zemplén',2),(32,'Csongrád-Csanád',2),(33,'Fejér',2),(34,'Győr-Moson-Sopron',2),(35,'Hajdú-Bihar',2),(36,'Heves',2),(37,'Jász-Nagykun-Szolnok',2),(38,'Komárom-Esztergom',2),(39,'Nógrád',2),(40,'Somogy',2),(41,'Szabolcs-Szatmár-Bereg',2),(42,'Tolna',2),(43,'Vas',2),(44,'Veszprém',2),(45,'Zala',2),(46,'Chișinău',3),(47,'Bălți',3),(48,'Cahul',3),(49,'Orhei',3),(50,'Soroca',3),(51,'Ungheni',3),(52,'Hîncești',3),(53,'Strășeni',3),(54,'Edineț',3),(55,'Călărași',3),(56,'Criuleni',3),(57,'Fălești',3),(58,'Șoldănești',3),(59,'Telenești',3),(60,'Ialoveni',3),(61,'Anenii Noi',3),(62,'Sîngerei',3),(63,'Cimișlia',3),(64,'Basarabeasca',3),(65,'Glodeni',3),(66,'Paris',4),(67,'Marseille',4),(68,'Lyon',4),(69,'Toulouse',4),(70,'Nice',4),(71,'Nantes',4),(72,'Strasbourg',4),(73,'Montpellier',4),(74,'Bordeaux',4),(75,'Lille',4),(76,'Rennes',4),(77,'Reims',4),(78,'Saint-Étienne',4),(79,'Toulon',4),(80,'Le Havre',4),(81,'Grenoble',4),(82,'Dijon',4),(83,'Angers',4),(84,'Nîmes',4),(85,'Aix-en-Provence',4),(86,'Berlin',5),(87,'Hamburg',5),(88,'Munich',5),(89,'Cologne',5),(90,'Frankfurt',5),(91,'Stuttgart',5),(92,'Düsseldorf',5),(93,'Dortmund',5),(94,'Essen',5),(95,'Leipzig',5),(96,'Bremen',5),(97,'Dresden',5),(98,'Hanover',5),(99,'Nuremberg',5),(100,'Duisburg',5),(101,'Bochum',5),(102,'Wuppertal',5),(103,'Bielefeld',5),(104,'Bonn',5),(105,'Münster',5),(106,'Rome',6),(107,'Milan',6),(108,'Naples',6),(109,'Turin',6),(110,'Palermo',6),(111,'Genoa',6),(112,'Bologna',6),(113,'Florence',6),(114,'Bari',6),(115,'Catania',6),(116,'Venice',6),(117,'Verona',6),(118,'Messina',6),(119,'Padua',6),(120,'Trieste',6),(121,'Brescia',6),(122,'Prato',6),(123,'Taranto',6),(124,'Reggio Calabria',6),(125,'Modena',6);
/*!40000 ALTER TABLE `county` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-18 21:28:06
