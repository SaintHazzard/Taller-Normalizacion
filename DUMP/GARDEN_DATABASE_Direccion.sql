CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Direccion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(30) DEFAULT NULL,
  `calle_complemento` varchar(30) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `ciudad_id` int NOT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calle` (`calle`,`calle_complemento`,`numero`,`ciudad_id`),
  KEY `ciudad_id` (`ciudad_id`),
  CONSTRAINT `Direccion_ibfk_1` FOREIGN KEY (`ciudad_id`) REFERENCES `Ciudad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Direccion` WRITE;
/*!40000 ALTER TABLE `Direccion` DISABLE KEYS */;
INSERT INTO `Direccion` VALUES (1,'Calle del Jardín','Apartamento 3B',123,1,'28001'),(2,'Avenida de los Rosales','Piso 5',456,2,'41001'),(3,'Calle de las Flores','Casa 7',789,3,'46001'),(4,'Paseo de los Jardines',NULL,1011,4,'50001'),(5,'Calle del Parque','Piso 2',1213,5,'60001'),(6,'Calle del Sol','Puerta 8',1415,6,'70001'),(7,'Avenida de la Primavera','Piso 3',1617,7,'80001'),(8,'Calle de la Luna','Apartamento 10',1819,8,'90001'),(9,'Paseo de las Palmeras',NULL,2021,9,'10001'),(10,'Avenida del Paraiso','Piso 1',2223,10,'11001'),(11,'Calle de los Jazmines','Bloque A',2425,6,'12001'),(12,'Avenida de la Rosa','Piso 4',2627,7,'13001'),(13,'Calle de la Fuente','Casa 15',2829,8,'14001'),(14,'Paseo de las Flores',NULL,3031,9,'15001'),(15,'Avenida del Bosque','Piso 6',3233,10,'16001'),(16,'Avenida de Hollywood','Piso 8',3435,1,'90002'),(17,'Calle de Market','Suite 10',3637,2,'94103'),(18,'Calle Ocean Drive','Apartamento 20',3839,3,'33102'),(19,'Avenida International','Casa 25',4041,4,'32802'),(20,'Avenida Broadway',NULL,4243,5,'10002');
/*!40000 ALTER TABLE `Direccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  7:31:51
