CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Cliente`;

CREATE TABLE `Cliente` (
  `id_tercero` int NOT NULL,
  `preferencias` varchar(150) DEFAULT NULL,
  `representante_ventas_id` int DEFAULT NULL,
  `limite_credito` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_tercero`),
  KEY `Foranea_repre_id` (`representante_ventas_id`),
  CONSTRAINT `Cliente_ibfk_1` FOREIGN KEY (`id_tercero`) REFERENCES `Tercero` (`id`),
  CONSTRAINT `Foranea_repre_id` FOREIGN KEY (`representante_ventas_id`) REFERENCES `Empleado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Compra regular de productos para GoldFish',11,5000.00),(3,'Cliente frecuente de Gardening Associates',8,10000.00),(4,'Compra ocasional en Gerudo Valley',11,20000.00),(5,'Adquiere productos de jardinería en TendoGarden',8,1000.00),(6,'Compra principalmente en Lasas',11,2000.00),(7,'Frecuenta Beragua para sus compras',11,3000.00),(8,'Socio activo en ClubGolfPuertadelhierro',8,5000.00),(9,'Compra regular de productos Naturagua',11,6000.00),(10,'Cliente fiel de DaraDistribuciones',NULL,3000.00),(11,'Adquiere productos en Madrilenaderiegos',12,6000.00),(13,'Cliente habitual de CamunasJardinesSL',NULL,7000.00),(14,'Compra productos en DardenaSA',8,8000.00),(15,'Frecuenta JardindeFlores para sus compras',NULL,9000.00),(16,'Compra regularmente en FloresMarivi',11,1000.00),(17,'Adquiere productos en FlowersSA',8,2000.00),(18,'Compra principalmente en Naturajardin',2,3000.00),(19,'Cliente frecuente de GolfSA',8,5500.00),(20,'Compra productos en AmerichGolfManagementSL',12,6500.00),(21,'Cliente fiel de Aloha',8,7000.00),(22,'Compra en ElPrat para sus necesidades de jardinería',NULL,NULL),(23,'Adquiere productos en Sotogrande',NULL,NULL),(24,'Cliente habitual de ViveroHumanes',11,NULL),(25,'Compra en FuenlaCity para sus proyectos de jardinería',NULL,NULL),(26,'Frecuenta JardinesyMansionesCactusSL para sus compras',2,NULL),(27,'Compra productos en JardineríasMatíasSL',NULL,NULL),(28,'Cliente fiel de Agrojardin',2,NULL),(29,'Compra regularmente en TopCampo',12,NULL),(30,'Cliente frecuente de JardineriaSara',NULL,1000.00),(31,'Adquiere productos en Campohermoso',12,3000.00),(35,'Compra en TutifrutiSA para sus necesidades de jardinería',8,4000.00),(36,'Frecuenta FloresSL para sus compras',NULL,5000.00),(37,'Cliente habitual de TheMagicGarden',8,NULL),(38,'Compra principalmente en ElJardinVivienteSL',2,NULL);
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
