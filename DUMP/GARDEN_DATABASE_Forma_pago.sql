CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Forma_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Forma_pago` WRITE;
/*!40000 ALTER TABLE `Forma_pago` DISABLE KEYS */;
INSERT INTO `Forma_pago` VALUES (1,'Efectivo'),(5,'Paypal'),(2,'Tarjeta de crédito'),(3,'Tarjeta de débito'),(4,'Transferencia bancaria');
/*!40000 ALTER TABLE `Forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

