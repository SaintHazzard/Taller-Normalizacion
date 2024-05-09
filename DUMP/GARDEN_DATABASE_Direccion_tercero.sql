CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;
cture for table `Direccion_tercero`
--

DROP TABLE IF EXISTS `Direccion_tercero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Direccion_tercero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_direccion` varchar(45) DEFAULT NULL,
  `tercero_id` int NOT NULL,
  `direccion_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tercero_id` (`tercero_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `Direccion_tercero_ibfk_1` FOREIGN KEY (`tercero_id`) REFERENCES `Tercero` (`id`),
  CONSTRAINT `Direccion_tercero_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `Direccion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Direccion_tercero` WRITE;
/*!40000 ALTER TABLE `Direccion_tercero` DISABLE KEYS */;
INSERT INTO `Direccion_tercero` VALUES (1,'Casa',5,8),(2,'Oficina',26,14),(3,'Casa',21,16),(4,'Casa',28,9),(5,'Oficina',7,11),(6,'Principal',27,10),(7,'Oficina',8,19),(8,'Principal',30,17),(9,'Casa',11,15),(10,'Oficina',13,8),(11,'Principal',22,7),(12,'Casa',24,6),(13,'Principal',9,9),(14,'Casa',16,6);
/*!40000 ALTER TABLE `Direccion_tercero` ENABLE KEYS */;
UNLOCK TABLES;

