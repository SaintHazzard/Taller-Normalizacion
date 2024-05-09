CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;

DROP TABLE IF EXISTS `Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedor` (
  `id_tercero` int NOT NULL,
  `tipo_servicio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tercero`),
  CONSTRAINT `Proveedor_ibfk_1` FOREIGN KEY (`id_tercero`) REFERENCES `Tercero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedor`
--

LOCK TABLES `Proveedor` WRITE;
/*!40000 ALTER TABLE `Proveedor` DISABLE KEYS */;
INSERT INTO `Proveedor` VALUES (15,'Fabricación de productos de jardinería'),(19,'Servicios de paisajismo y diseño de exteriores'),(32,'Suministro de herramientas de jardinería'),(33,'Venta de plantas y árboles ornamentales'),(38,'Diseño y mantenimiento de jardines');
/*!40000 ALTER TABLE `Proveedor` ENABLE KEYS */;
UNLOCK TABLES;

