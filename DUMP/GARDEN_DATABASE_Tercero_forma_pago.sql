CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;

DROP TABLE IF EXISTS `Tercero_forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tercero_forma_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tercero_id` int NOT NULL,
  `forma_pago_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tercero_id` (`tercero_id`),
  KEY `forma_pago_id` (`forma_pago_id`),
  CONSTRAINT `Tercero_forma_pago_ibfk_1` FOREIGN KEY (`tercero_id`) REFERENCES `Tercero` (`id`),
  CONSTRAINT `Tercero_forma_pago_ibfk_2` FOREIGN KEY (`forma_pago_id`) REFERENCES `Forma_pago` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Tercero_forma_pago` WRITE;
/*!40000 ALTER TABLE `Tercero_forma_pago` DISABLE KEYS */;
INSERT INTO `Tercero_forma_pago` VALUES (1,11,1),(2,19,2),(3,11,3),(4,14,4),(5,15,5),(6,16,1),(7,17,2),(8,18,3),(9,19,4),(10,20,5),(11,21,1),(12,22,2),(13,23,3),(14,24,4),(15,25,5),(16,26,1),(17,27,2),(18,28,3),(19,29,4),(20,30,5),(21,1,1),(22,3,3),(23,4,4),(24,5,5),(25,6,1),(26,7,2),(27,8,3),(28,9,4),(29,10,5);
/*!40000 ALTER TABLE `Tercero_forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

