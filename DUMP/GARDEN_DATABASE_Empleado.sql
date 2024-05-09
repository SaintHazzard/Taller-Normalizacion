CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tercero_id` int NOT NULL,
  `rol_id` int NOT NULL,
  `oficina_id` int NOT NULL,
  `jefe_id` int DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tercero_id` (`tercero_id`),
  KEY `rol_id` (`rol_id`),
  KEY `oficina_id` (`oficina_id`),
  KEY `jefe_id` (`jefe_id`),
  CONSTRAINT `Empleado_ibfk_1` FOREIGN KEY (`tercero_id`) REFERENCES `Tercero` (`id`),
  CONSTRAINT `Empleado_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `Rol` (`id`),
  CONSTRAINT `Empleado_ibfk_3` FOREIGN KEY (`oficina_id`) REFERENCES `Oficina` (`id`),
  CONSTRAINT `Empleado_ibfk_4` FOREIGN KEY (`jefe_id`) REFERENCES `Empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES (1,21,6,11,NULL,'Jefe de Área de Jardinería'),(2,22,6,12,NULL,'Jefe de Área de Ventas'),(3,23,6,13,NULL,'Jefe de Área de Diseño'),(4,24,6,14,NULL,'Jefe de Área de Operaciones'),(5,25,6,15,NULL,'Jefe de Área de Mantenimiento de Césped'),(6,1,1,11,5,'Jardinero'),(7,3,2,12,1,'Encargado de Ventas'),(8,4,3,13,1,'Diseñador de Paisajes'),(9,5,4,14,2,'Gerente de Operaciones'),(10,6,5,15,2,'Especialista en Mantenimiento de Césped'),(11,7,1,16,3,'Jardinero'),(12,8,2,17,3,'Encargado de Ventas'),(13,9,3,18,7,'Diseñador de Paisajes'),(14,10,4,19,7,'Gerente de Operaciones'),(15,11,5,20,7,'Especialista en Mantenimiento de Césped');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  7:31:50
