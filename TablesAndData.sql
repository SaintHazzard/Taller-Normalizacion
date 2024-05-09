CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ciudad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `codigo_ciudad` varchar(10) DEFAULT NULL,
  `region_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `Ciudad_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `Region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci PACK_KEYS=1;

LOCK TABLES `Ciudad` WRITE;
/*!40000 ALTER TABLE `Ciudad` DISABLE KEYS */;
INSERT INTO `Ciudad` VALUES (1,'Los Angeles','90001','LA',1),(2,'San Francisco','94102','SF',1),(3,'Miami','33101','MI',2),(4,'Orlando','32801','ORL',2),(5,'Nueva York','10001','NYC',3),(6,'Madrid','28001','MAD',4),(7,'Barcelona','08001','BCN',5),(8,'Girona','17001','GIR',5),(9,'Tarragona','43001','TGN',5),(10,'Fuenlabrada','25001','LLE',5);
/*!40000 ALTER TABLE `Ciudad` ENABLE KEYS */;
UNLOCK TABLES;

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

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Detalle_pedido`;

CREATE TABLE `Detalle_pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `Detalle_pedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `Pedido` (`id`),
  CONSTRAINT `Detalle_pedido_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Detalle_pedido` WRITE;
INSERT INTO `Detalle_pedido` VALUES (1,1,1,2,11),(2,1,3,1,8),(3,2,5,3,16),(4,2,8,1,6),(5,3,10,2,20),(6,3,15,1,13),(7,4,18,1,9),(8,4,21,2,19),(9,5,24,1,7),(10,5,27,3,22),(11,6,2,2,11),(12,6,4,1,9),(13,7,7,1,7),(14,7,9,2,19),(15,8,12,3,24),(16,8,14,1,9),(17,9,17,2,15),(18,9,20,1,11),(19,10,23,1,8),(20,10,25,2,17),(21,11,28,3,28),(22,11,1,1,5),(23,12,3,2,17),(24,12,5,1,8),(25,13,8,1,6),(26,13,10,2,20),(27,14,13,3,29),(28,14,15,1,13),(29,15,18,2,19),(30,15,20,1,11),(31,16,23,1,8),(32,16,25,2,17),(33,17,28,3,28),(34,17,1,1,5),(35,18,3,2,17),(36,18,5,1,8),(37,19,8,1,6),(38,19,10,2,20),(39,20,13,3,29),(40,20,15,1,13),(41,31,18,2,19),(42,31,20,1,11),(43,13,23,1,8),(44,13,25,2,17),(45,15,28,3,28),(46,15,1,1,5),(47,18,16,2,17),(48,18,5,1,8),(49,34,8,1,6),(50,34,10,2,20),(51,11,13,3,29),(52,11,15,1,13),(53,9,18,2,19),(54,9,20,1,11),(55,16,23,1,8),(56,16,25,2,17),(57,13,28,3,28),(58,13,1,1,5),(59,2,3,2,17),(60,2,5,1,8),(61,31,8,1,6),(62,31,10,2,20),(63,32,13,3,29),(64,32,15,1,13),(65,33,18,2,19),(66,33,20,1,11),(67,34,23,1,8),(68,34,25,2,17),(69,35,28,3,28),(70,35,1,1,5),(71,36,3,2,17),(72,36,5,1,8),(73,37,8,1,6),(74,37,10,2,20),(75,38,13,3,29),(76,38,15,1,13),(77,39,18,2,19),(78,39,20,1,11),(79,40,23,1,8),(80,40,25,2,17),(81,41,28,3,28),(82,41,6,1,5),(83,42,3,2,17),(84,42,5,1,8),(85,43,8,1,6),(86,43,10,2,20),(87,44,13,3,29),(88,44,15,1,13),(89,45,18,2,19),(90,45,20,1,11),(91,46,23,1,8),(92,46,25,2,17),(93,47,28,3,28),(94,47,1,1,5),(95,48,16,2,17),(96,48,5,1,8),(97,49,8,1,6),(98,49,10,2,20),(99,50,13,3,29),(100,50,15,1,13),(101,1,18,2,19),(102,1,20,1,11),(103,2,23,1,8),(104,2,25,2,17),(105,3,28,3,28),(106,3,6,1,5),(107,4,3,2,17),(108,4,5,1,8),(109,5,8,1,6),(110,5,10,2,20),(111,6,13,3,29),(112,6,15,1,13),(113,7,18,2,19),(114,7,20,1,11),(115,8,23,1,8),(116,8,25,2,17),(117,9,28,3,28),(118,9,1,1,5),(119,10,3,2,17),(120,10,5,1,8),(121,11,8,1,6),(122,11,10,2,20),(123,12,13,3,29),(124,12,15,1,13),(125,13,18,2,19),(126,13,20,1,11),(127,14,23,1,8),(128,14,25,2,17),(129,15,28,3,28),(130,15,6,1,5),(131,16,16,2,17),(132,16,5,1,8),(133,17,8,1,6),(134,17,10,2,20),(135,18,13,3,29),(136,18,15,1,13),(137,19,18,2,19),(138,19,20,1,11),(139,20,23,1,8),(140,20,25,2,17);
/*!40000 ALTER TABLE `Detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

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

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 172.18.16.146    Database: GARDEN_DATABASE
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empresa` (
  `id_tercero` int NOT NULL,
  `numero_registro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tercero`),
  CONSTRAINT `Empresa_ibfk_1` FOREIGN KEY (`id_tercero`) REFERENCES `Tercero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (32,'1234567890'),(33,'0987654321');
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
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
CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 172.18.16.146    Database: GARDEN_DATABASE
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Estado_pedido`
--

DROP TABLE IF EXISTS `Estado_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estado_pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estado_pedido`
--

LOCK TABLES `Estado_pedido` WRITE;
/*!40000 ALTER TABLE `Estado_pedido` DISABLE KEYS */;
INSERT INTO `Estado_pedido` VALUES (1,'Pendiente'),(2,'En proceso'),(3,'Completado'),(4,'Cancelado'),(5,'Rechazado');
/*!40000 ALTER TABLE `Estado_pedido` ENABLE KEYS */;
UNLOCK TABLES;

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

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Oficina` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion_id` int NOT NULL,
  `telefono_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `direccion_id` (`direccion_id`),
  KEY `telefono_id` (`telefono_id`),
  CONSTRAINT `Oficina_ibfk_1` FOREIGN KEY (`direccion_id`) REFERENCES `Direccion` (`id`),
  CONSTRAINT `Oficina_ibfk_3` FOREIGN KEY (`telefono_id`) REFERENCES `Telefono` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Oficina`
--

LOCK TABLES `Oficina` WRITE;
/*!40000 ALTER TABLE `Oficina` DISABLE KEYS */;
INSERT INTO `Oficina` VALUES (11,'Oficina del Norte',11,6),(12,'Oficina del Sur',12,7),(13,'Oficina del Este',13,8),(14,'Oficina del Oeste',14,9),(15,'Oficina Central I',10,10),(16,'Oficina Central II',15,11),(17,'Oficina Principal II',17,12),(18,'Oficina de Diseño II',18,13),(19,'Oficina de Ventas II',19,14),(20,'Oficina de Servicios',20,15);
/*!40000 ALTER TABLE `Oficina` ENABLE KEYS */;
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
INSERT INTO `Pais` VALUES (1,'Estados Unidos','USA'),(2,'España','ESP'),(3,'Francia','FRA'),(4,'Australia','AUS'),(5,'Reino Unido','UK'),(6,'Italia','ITA'),(7,'Canadá','CAN'),(8,'Alemania','DEU'),(9,'Japón','JPN'),(10,'México','MEX');
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Pedido`;

CREATE TABLE `Pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `estado_pedido` int NOT NULL,
  `Tercero_forma_pago_id` int NOT NULL DEFAULT '1',
  `fecha_pago` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Tercero_forma_pago_id` (`Tercero_forma_pago_id`),
  KEY `estado_pedido` (`estado_pedido`),
  CONSTRAINT `Pedido_ibfk_1` FOREIGN KEY (`Tercero_forma_pago_id`) REFERENCES `Tercero_forma_pago` (`id`),
  CONSTRAINT `Pedido_ibfk_2` FOREIGN KEY (`estado_pedido`) REFERENCES `Estado_pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Pedido` WRITE;
/*!40000 ALTER TABLE `Pedido` DISABLE KEYS */;
INSERT INTO `Pedido` VALUES (1,'2024-05-15','2024-05-20','2024-01-22',151.10,1,1,'2024-05-22'),(2,'2024-05-16','2024-05-21','2024-05-17',201.20,2,2,'2024-05-23'),(3,'2024-05-17','2024-05-22','2024-05-24',175.00,3,3,'2024-05-24'),(4,'2024-05-18','2024-05-23','2024-05-20',220.00,4,4,'2008-05-25'),(5,'2024-05-19','2024-05-24',NULL,181.00,5,5,NULL),(6,'2024-05-20','2024-05-25','2024-05-27',211.00,1,6,'2024-05-27'),(7,'2024-05-21','2024-05-26','2024-05-28',190.00,2,7,'2024-05-28'),(8,'2024-05-22','2024-05-27','2024-05-29',226.00,3,8,'2024-05-29'),(9,'2024-05-23','2024-05-28','2024-05-24',206.00,4,9,'2024-05-30'),(10,'2024-05-24','2024-05-29',NULL,240.00,5,10,NULL),(11,'2024-05-25','2024-05-30','2024-06-01',221.00,1,11,'2024-06-01'),(12,'2024-05-26','2024-05-31','2024-01-02',256.00,2,12,'2008-06-02'),(13,'2024-05-27','2024-06-01','2024-06-03',235.00,3,13,'2024-06-03'),(14,'2024-05-28','2024-06-02','2024-06-01',271.00,4,14,'2024-06-04'),(15,'2024-05-29','2024-06-03',NULL,250.00,5,15,NULL),(16,'2024-05-30','2024-06-04','2024-06-06',286.00,1,16,'2024-06-06'),(17,'2024-05-31','2024-06-05','2024-01-07',266.00,2,17,'2024-06-07'),(18,'2024-06-01','2024-06-06','2024-06-01',300.00,3,18,'2024-06-08'),(19,'2024-06-02','2024-06-07','2024-06-09',280.00,4,19,'2024-06-09'),(20,'2024-06-03','2024-06-08',NULL,316.00,5,20,NULL),(31,'2010-03-15','2010-03-20','2010-03-22',150.50,1,3,'2010-03-22'),(32,'2012-07-21','2012-07-26','2012-07-28',200.75,2,2,'2012-07-28'),(33,'2015-10-04','2015-10-09','2015-10-11',175.25,3,3,'2015-10-11'),(34,'2018-05-18','2018-05-23','2018-05-25',220.00,4,4,'2018-05-25'),(35,'2020-12-29','2020-01-03',NULL,180.90,5,5,NULL),(36,'2008-08-10','2008-08-15','2008-08-17',210.75,1,6,'2008-08-17'),(37,'2013-04-25','2013-04-30','2013-05-02',190.30,2,7,'2013-05-02'),(38,'2016-11-19','2016-11-24','2016-11-26',225.50,3,8,'2016-11-26'),(39,'2019-06-08','2019-06-13','2019-06-15',205.80,4,9,'2019-06-15'),(40,'2007-01-02','2007-01-07',NULL,240.25,5,10,NULL),(41,'2011-09-03','2011-09-08','2011-09-10',185.60,1,11,'2011-09-10'),(42,'2014-02-14','2014-02-19','2014-02-21',195.75,2,12,'2014-02-21'),(43,'2017-06-27','2017-07-02','2017-07-04',215.30,3,13,'2017-07-04'),(44,'2022-03-08','2022-03-13','2022-03-15',230.50,4,14,'2022-03-15'),(45,'2006-11-11','2006-11-16',NULL,205.90,5,15,NULL),(46,'2010-05-25','2010-05-30','2010-01-01',220.25,1,16,'2010-06-01'),(47,'2013-12-07','2013-12-12','2013-12-07',190.80,2,17,'2013-12-14'),(48,'2016-04-20','2016-04-25','2016-04-20',235.40,3,18,'2016-04-27'),(49,'2019-09-15','2019-09-20','2019-09-22',200.20,4,19,'2019-09-22'),(50,'2023-01-30','2023-02-04',NULL,245.75,5,20,NULL);
/*!40000 ALTER TABLE `Pedido` ENABLE KEYS */;
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ean` varchar(13) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `tipo_gama_id` int NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `width` decimal(10,2) NOT NULL,
  `height` decimal(10,2) NOT NULL,
  `length` decimal(10,2) NOT NULL,
  `proveedor_id` int NOT NULL,
  `precio_proveedor` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ean` (`ean`),
  KEY `tipo_gama_id` (`tipo_gama_id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `Producto_ibfk_1` FOREIGN KEY (`tipo_gama_id`) REFERENCES `Gama_producto` (`id`),
  CONSTRAINT `Producto_ibfk_2` FOREIGN KEY (`proveedor_id`) REFERENCES `Proveedor` (`id_tercero`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (1,'1234567890123','Pala de jardín',20.00,1,'Pala resistente con mango ergonómico para excavar y mover tierra en el jardín.',15.00,5.00,30.00,32,12.50),(2,'2345678901234','Silla de jardín plegable',30.00,6,'Silla plegable de metal y tela resistente para relajarse en el jardín.',50.00,80.00,50.00,33,20.00),(3,'3456789012345','Fertilizante líquido para plantas',10.00,2,'Fertilizante líquido de liberación lenta para promover un crecimiento saludable de las plantas.',8.00,15.00,8.00,38,6.75),(4,'4567890123456','Conjunto de macetas de cerámica',25.00,7,'Conjunto de tres macetas de cerámica decorativas para plantas de interior.',20.00,20.00,20.00,15,18.50),(5,'5678901234567','Cortacésped eléctrico',150.00,8,'Cortacésped eléctrico con motor potente y cuchilla ajustable para un corte preciso del césped.',70.00,40.00,100.00,19,120.00),(6,'6789012345678','Semillas de tomate cherry',2.99,4,'Paquete de semillas de tomate cherry orgánicas para cultivar en el jardín o en macetas.',5.00,5.00,1.00,32,1.50),(7,'7890123456789','Manguera de riego extensible',39.99,9,'Manguera de riego flexible y extensible de 50 pies con boquilla ajustable.',10.00,10.00,20.00,33,28.50),(8,'8901234567890','Tijeras de podar profesionales',34.99,10,'Tijeras de podar con hojas de acero inoxidable y mango antideslizante para cortes precisos en el jardín.',5.00,20.00,2.00,38,25.00),(9,'9012345678901','Abono orgánico para huerto',12.99,3,'Abono orgánico de origen natural para mejorar la calidad del suelo en huertos y jardines.',12.00,8.00,8.00,15,8.50),(10,'0123456789012','Farol solar de jardín',19.99,8,'Farol solar de jardín con panel solar integrado y luz LED para iluminar espacios exteriores.',15.00,30.00,15.00,19,15.50),(11,'1234567890124','Rastrillo de jardín',14.99,1,'Rastrillo de jardín con dientes de acero y mango de madera para limpiar hojas y escombros.',8.00,25.00,3.00,32,10.00),(12,'2345678901235','Maceta colgante de mimbre',9.99,7,'Maceta colgante de mimbre trenzado con gancho de metal para plantas de interior.',20.00,20.00,20.00,33,6.75),(13,'3456789012346','Césped artificial',29.99,8,'Rollo de césped artificial de alta calidad para cubrir áreas pequeñas en jardines y terrazas.',50.00,2.00,100.00,38,22.50),(14,'121339898','Nombre del Producto',25.50,2,'Descripción del Producto',10.00,15.00,20.00,15,20.00),(15,'5678901234568','Pulverizador de presión para jardín',24.99,9,'Pulverizador de presión con capacidad de 2 litros para aplicar fertilizantes y pesticidas en el jardín.',10.00,30.00,10.00,19,18.50),(16,'6789012345679','Semillas de lavanda',3.99,4,'Paquete de semillas de lavanda para añadir color y aroma al jardín o balcón.',5.00,5.00,1.00,32,2.50),(17,'7890123456780','Compostador de jardín',49.99,3,'Compostador de plástico resistente para reciclar residuos orgánicos y obtener abono natural para el jardín.',30.00,30.00,30.00,33,40.00),(18,'8901234567891','Saco de tierra para macetas',7.99,3,'Saco de tierra orgánica y nutrientes para rellenar macetas y jardineras.',20.00,40.00,10.00,38,5.50),(19,'9012345678902','Cortasetos eléctrico',89.99,10,'Cortasetos eléctrico con cuchillas de doble acción para recortar setos y arbustos en el jardín.',20.00,10.00,120.00,15,70.00),(20,'0123456789013','Insecticida natural',12.99,5,'Insecticida natural a base de aceites esenciales para controlar plagas en plantas de interior y exterior.',10.00,15.00,5.00,19,9.00),(21,'1234567890125','Sombrilla de jardín',39.99,6,'Sombrilla de tela resistente con estructura de metal para proporcionar sombra en el jardín o terraza.',100.00,100.00,200.00,32,30.00),(22,'2345678901236','Bordura de jardín de madera',14.99,7,'Bordura de madera tratada para delimitar caminos y áreas de jardín con estilo.',5.00,20.00,100.00,33,10.50),(23,'3456789012347','Fungicida para plantas',8.99,5,'Fungicida en aerosol para prevenir y tratar enfermedades fúngicas en plantas ornamentales y hortalizas.',5.00,15.00,5.00,38,6.00),(24,'4567890123458','Kit de herramientas para bonsái',19.99,1,'Kit completo de herramientas especializadas para cuidar y dar forma a bonsáis.',15.00,5.00,30.00,15,12.50),(25,'5678901234569','Escalera de aluminio plegable',69.99,6,'Escalera plegable de aluminio con plataforma y barandilla para trabajos de poda y mantenimiento en altura.',50.00,80.00,50.00,19,50.00),(26,'6789012345670','Cultivador de suelos',24.99,1,'Cultivador de suelos con tres dientes para airear y\njardines de forma uniforme.',20.00,20.00,20.00,38,15.50),(27,'4567890123457','Rociador de mano para jardín',7.99,9,'Rociador de mano con boquilla ajustable para regar plantas de interior y exterior.',5.00,15.00,5.00,15,5.50),(28,'0123456789014','Toldo para pérgola',29.99,6,'Toldo de tela impermeable para pérgolas y estructuras de jardín, disponible en diferentes tamaños y colores.',10.00,30.00,10.00,19,20.00),(29,'9012345678903','Guantes de jardinería',6.99,1,'Guantes resistentes y cómodos de látex para proteger las manos durante las tareas de jardinería.',5.00,15.00,5.00,15,4.50);
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

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

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Region`;


CREATE TABLE `Region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `Region_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `Pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;


LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1,'California',1),(2,'Florida',1),(3,'Nueva York',1),(4,'Madrid',2),(5,'Cataluña',2);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
INSERT INTO `Rol` VALUES (1,'Jardinero'),(2,'Representante de ventas'),(3,'Diseñador de paisajes'),(4,'Gerente de operaciones'),(5,'Especialista en mantenimiento de césped'),(6,'Jefe');
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Telefono` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `tipo_telefono` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_telefono` (`tipo_telefono`),
  CONSTRAINT `Telefono_ibfk_1` FOREIGN KEY (`tipo_telefono`) REFERENCES `Tipo_telefono` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Telefono`
--

LOCK TABLES `Telefono` WRITE;
/*!40000 ALTER TABLE `Telefono` DISABLE KEYS */;
INSERT INTO `Telefono` VALUES (6,1122334455,1),(7,1555666777,2),(8,1888999000,3),(9,1444333222,4),(10,1777888999,5),(11,1999888777,1),(12,1888777666,2),(13,1222111444,3),(14,1333444555,4),(15,1666777888,5),(16,1777444222,1),(17,1888333555,2),(18,1999222666,3),(19,1222333777,4),(20,1444666888,5),(21,1555999111,1),(22,1888222444,2),(23,1999111333,3),(24,1222444666,4),(25,1333777999,5);
/*!40000 ALTER TABLE `Telefono` ENABLE KEYS */;
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;
DROP TABLE IF EXISTS `Tercero_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tercero_contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tercero` int DEFAULT NULL,
  `id_telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tercero` (`id_tercero`),
  CONSTRAINT `Tercero_contacto_ibfk_1` FOREIGN KEY (`id_tercero`) REFERENCES `Tercero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Tercero_contacto` WRITE;

INSERT INTO `Tercero_contacto` VALUES (1,3,'8'),(2,5,'9'),(3,13,'7'),(4,20,'10'),(5,3,'20'),(6,19,'24'),(7,27,'11'),(8,1,'13'),(9,8,'15'),(10,7,'14');

UNLOCK TABLES;

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

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Tercero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tercero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` enum('cliente','empresa','proveedor','otro') NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Tercero` WRITE;
INSERT INTO `Tercero` VALUES (1,'cliente','Daniel','Brrrrr','GoldFish@example.com'),(3,'cliente','Anne','Wright','GardeningAssociates@example.com'),(4,'cliente','Link','Flaute','GerudoValley@example.com'),(5,'cliente','Akane','Tendo','TendoGarden@example.com'),(6,'cliente','Antonio','Lasas','Lasas@example.com'),(7,'cliente','Jose','Bermejo','Beragua@example.com'),(8,'cliente','Paco','Lopez','ClubGolfPuertadelhierro@example.com'),(9,'cliente','Guillermo','Rengifo','Naturagua@example.com'),(10,'cliente','David','Serrano','DaraDistribuciones@example.com'),(11,'cliente','Jose','Tacaño','Madrilenaderiegos@example.com'),(13,'cliente','Pedro','Camunas','CamunasJardinesSL@example.com'),(14,'cliente','Juan','Rodriguez','DardenaSA@example.com'),(15,'cliente','Javier','Villar','JardindeFlores@example.com'),(16,'cliente','Maria','Rodriguez','FloresMarivi@example.com'),(17,'cliente','Beatriz','Fernandez','FlowersSA@example.com'),(18,'cliente','Victoria','Cruz','Naturajardin@example.com'),(19,'cliente','Luis','Martinez','GolfSA@example.com'),(20,'cliente','Mario','Suarez','AmerichGolfManagementSL@example.com'),(21,'cliente','Cristian','Rodrigez','Aloha@example.com'),(22,'cliente','Francisco','Camacho','ElPrat@example.com'),(23,'cliente','Maria','Santillana','Sotogrande@example.com'),(24,'cliente','Federico','Gomez','ViveroHumanes@example.com'),(25,'cliente','Tony','Muñoz Mena','FuenlaCity@example.com'),(26,'cliente','Eva María','Sánchez','JardinesyMansionesCactusSL@example.com'),(27,'cliente','Matías','San Martín','JardineríasMatíasSL@example.com'),(28,'cliente','Benito','Lopez','Agrojardin@example.com'),(29,'cliente','Joseluis','Sanchez','TopCampo@example.com'),(30,'cliente','Sara','Marquez','JardineriaSara@example.com'),(31,'cliente','Luis','Jimenez','Campohermoso@example.com'),(32,'empresa','FraÃ§ois','Toulou','france telecom@example.com'),(33,'empresa','Pierre','Delacroux','Musée du Louvre@example.com'),(35,'cliente','Jacob','Jones','TutifrutiSA@example.com'),(36,'cliente','Antonio','Romero','FloresSL@example.com'),(37,'cliente','Richard','Mcain','TheMagicGarden@example.com'),(38,'cliente','Justin','Smith','ElJardinVivienteSL@example.com');
/*!40000 ALTER TABLE `Tercero` ENABLE KEYS */;
UNLOCK TABLES;

CREATE DATABASE  IF NOT EXISTS `GARDEN_DATABASE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `GARDEN_DATABASE`;


DROP TABLE IF EXISTS `Tipo_telefono`;

CREATE TABLE `Tipo_telefono` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Tipo_telefono` WRITE;
/*!40000 ALTER TABLE `Tipo_telefono` DISABLE KEYS */;
INSERT INTO `Tipo_telefono` VALUES (1,'Móvil'),(2,'Casa'),(3,'Trabajo'),(4,'Fax'),(5,'Oficina');
/*!40000 ALTER TABLE `Tipo_telefono` ENABLE KEYS */;
UNLOCK TABLES;




