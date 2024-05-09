CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Oficina_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Oficina_stock` (
  `oficina_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`oficina_id`,`producto_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `Oficina_stock_ibfk_1` FOREIGN KEY (`oficina_id`) REFERENCES `Oficina` (`id`),
  CONSTRAINT `Oficina_stock_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Oficina_stock`
--

LOCK TABLES `Oficina_stock` WRITE;
/*!40000 ALTER TABLE `Oficina_stock` DISABLE KEYS */;
INSERT INTO `Oficina_stock` VALUES (11,3,25),(12,15,18),(13,8,30),(14,27,12),(15,20,22),(16,10,8),(17,1,16),(18,5,29),(19,28,14),(20,19,21);
/*!40000 ALTER TABLE `Oficina_stock` ENABLE KEYS */;
UNLOCK TABLES;

