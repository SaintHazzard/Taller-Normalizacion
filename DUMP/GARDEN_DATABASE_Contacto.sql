CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tercero_id` int NOT NULL,
  `telefono_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tercero_id` (`tercero_id`),
  KEY `telefono_id` (`telefono_id`),
  CONSTRAINT `Contacto_ibfk_1` FOREIGN KEY (`tercero_id`) REFERENCES `Tercero` (`id`),
  CONSTRAINT `Contacto_ibfk_2` FOREIGN KEY (`telefono_id`) REFERENCES `Telefono` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Contacto` WRITE;
INSERT INTO `Contacto` VALUES (1,6,9),(2,17,8),(3,20,6),(4,10,7),(5,22,25),(6,25,12),(7,19,13),(8,14,20),(9,18,22),(10,16,23),(11,5,24),(12,26,14),(13,21,16),(14,29,22),(15,18,25),(16,28,9),(17,7,11),(18,27,10),(19,23,21),(20,8,19),(21,30,17),(22,11,15);
UNLOCK TABLES;

