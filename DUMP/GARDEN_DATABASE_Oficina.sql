CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Oficina` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion_id` int NOT NULL,
  `telefono_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `direccion_id` (`direccion_id`),
  KEY `telefono_id` (`telefono_id`),
  CONSTRAINT `Oficina_ibfk_1` FOREIGN KEY (`direccion_id`) REFERENCES `Direccion` (`id`),
  CONSTRAINT `Oficina_ibfk_3` FOREIGN KEY (`telefono_id`) REFERENCES `Telefono` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Oficina`
--

LOCK TABLES `Oficina` WRITE;
/*!40000 ALTER TABLE `Oficina` DISABLE KEYS */;
INSERT INTO `Oficina` VALUES (11,'Oficina del Norte',11,6),(12,'Oficina del Sur',12,7),(13,'Oficina del Este',13,8),(14,'Oficina del Oeste',14,9),(15,'Oficina Central I',10,10),(16,'Oficina Central II',15,11),(17,'Oficina Principal II',17,12),(18,'Oficina de Diseño II',18,13),(19,'Oficina de Ventas II',19,14),(20,'Oficina de Servicios',20,15);
/*!40000 ALTER TABLE `Oficina` ENABLE KEYS */;
UNLOCK TABLES;

