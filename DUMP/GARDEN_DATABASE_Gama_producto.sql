CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;

DROP TABLE IF EXISTS `Gama_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gama_producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gama_producto`
--

LOCK TABLES `Gama_producto` WRITE;
/*!40000 ALTER TABLE `Gama_producto` DISABLE KEYS */;
INSERT INTO `Gama_producto` VALUES (1,'Herramientas básicas de jardinería','Conjunto de herramientas esenciales para el cuidado y mantenimiento de jardines, que incluye palas, rastrillos, tijeras de podar y guantes de jardinería.'),(2,'Fertilizantes y nutrientes','Productos químicos o orgánicos que se aplican al suelo o a las plantas para promover el crecimiento saludable y la floración.'),(3,'Sustratos y tierras de cultivo','Mezclas especiales de materiales que proporcionan un ambiente óptimo para el crecimiento de plantas en macetas o en el jardín.'),(4,'Frutales','Variedades de semillas y plantas de alta calidad, incluyendo flores, vegetales, hierbas y árboles para embellecer cualquier espacio verde.'),(5,'Control de plagas y enfermedades','Productos para prevenir y tratar problemas comunes de plagas y enfermedades que pueden afectar a las plantas en el jardín.'),(6,'Mobiliario de jardín','Conjunto de mesas, sillas, bancos y otros elementos de mobiliario diseñados para exteriores y fabricados con materiales resistentes a la intemperie.'),(7,'Ornamentales','Elementos decorativos como macetas, estatuas, fuentes y adornos que añaden belleza y personalidad a cualquier jardín o espacio verde.'),(8,'Iluminación exterior','Sistemas de iluminación diseñados para exteriores que realzan la belleza del jardín y mejoran la seguridad y la funcionalidad durante la noche.'),(9,'Riego y sistemas de irrigación','Productos y sistemas diseñados para facilitar el riego eficiente de plantas en jardines, macetas o huertos.'),(10,'Herramientas de corte y poda','Instrumentos especializados para realizar cortes precisos y podas adecuadas en árboles, arbustos y plantas.');
/*!40000 ALTER TABLE `Gama_producto` ENABLE KEYS */;
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
