CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ciudad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `codigo_ciudad` varchar(10) DEFAULT NULL,
  `region_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `Ciudad_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `Region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci PACK_KEYS=1;

LOCK TABLES `Ciudad` WRITE;
/*!40000 ALTER TABLE `Ciudad` DISABLE KEYS */;
INSERT INTO `Ciudad` VALUES (1,'Los Angeles','90001','LA',1),(2,'San Francisco','94102','SF',1),(3,'Miami','33101','MI',2),(4,'Orlando','32801','ORL',2),(5,'Nueva York','10001','NYC',3),(6,'Madrid','28001','MAD',4),(7,'Barcelona','08001','BCN',5),(8,'Girona','17001','GIR',5),(9,'Tarragona','43001','TGN',5),(10,'Fuenlabrada','25001','LLE',5);
/*!40000 ALTER TABLE `Ciudad` ENABLE KEYS */;
UNLOCK TABLES;

