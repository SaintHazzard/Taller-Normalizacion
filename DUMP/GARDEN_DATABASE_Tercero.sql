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

