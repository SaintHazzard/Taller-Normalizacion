CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Tercero_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tercero_contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tercero` int DEFAULT NULL,
  `id_telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tercero` (`id_tercero`),
  CONSTRAINT `Tercero_contacto_ibfk_1` FOREIGN KEY (`id_tercero`) REFERENCES `Tercero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tercero_contacto`
--

LOCK TABLES `Tercero_contacto` WRITE;
/*!40000 ALTER TABLE `Tercero_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tercero_contacto` ENABLE KEYS */;
UNLOCK TABLES;

