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

