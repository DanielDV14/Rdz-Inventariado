-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rdz
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `canal_venta`
--

DROP TABLE IF EXISTS `canal_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canal_venta` (
  `idCanal_venta` int(11) NOT NULL AUTO_INCREMENT,
  `Canal_venta` varchar(15) NOT NULL,
  PRIMARY KEY (`idCanal_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal_venta`
--

LOCK TABLES `canal_venta` WRITE;
/*!40000 ALTER TABLE `canal_venta` DISABLE KEYS */;
INSERT INTO `canal_venta` VALUES (1,'Whatsapp'),(2,'Instagram'),(3,'Facebook'),(4,'En persona'),(5,'Whatsapp'),(6,'Instagram'),(7,'Facebook'),(8,'En persona');
/*!40000 ALTER TABLE `canal_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Descripcion_cate` varchar(60) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Accesorios','Complementos esenciales para tu bicicleta y seguridad.'),(2,'Repuestos','Piezas de recambio y componentes para mantenimiento técnico.'),(3,'Ropa','Vestimenta técnica y cómoda diseñada para pedalear.'),(4,'Gadgets','Tecnología inteligente para monitorear y mejorar tu ruta.'),(5,'Accesorios','Complementos esenciales para tu bicicleta y seguridad.'),(6,'Repuestos','Piezas de recambio y componentes para mantenimiento técnico.'),(7,'Ropa','Vestimenta técnica y cómoda diseñada para pedalear.'),(8,'Gadgets','Tecnología inteligente para monitorear y mejorar tu ruta.');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `DPI` varchar(15) DEFAULT NULL,
  `Telefono` varchar(16) DEFAULT NULL,
  `Direc` varchar(60) NOT NULL,
  `NIT` varchar(15) DEFAULT NULL,
  `Municipio_idMunicipio` int(11) NOT NULL,
  `Estado` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Roberto','Danilo','Gomez','2034556670101','55443322','12 Calle 4-55 Zona 10','1234567-8',70,1),(2,'Maria','Isabel','Castillo','3001229980301','78320011','Calle del Arco No. 5','8877665-4',165,1),(3,'Juan','Jose','Mendez','1988223340901','77614455','Diagonal 3 10-20 Zona 1','CF',133,1),(4,'Lourdes','Elena','Paz','2566778890501','50102030','Km 55 Ruta al Pacifico','5544332-1',57,1),(5,'Fernando','Luis','Reyes','2211334451601','79521100','Barrio San Marcos','CF',1,0),(6,'German Daniel','Díaz Vásquez','Reyes','000000000','47799763','aaaa','12345678',16,1),(7,'Roberto','Danilo','Gomez','2034556670101','55443322','12 Calle 4-55 Zona 10','1234567-8',70,1),(8,'Maria','Isabel','Castillo','3001229980301','78320011','Calle del Arco No. 5','8877665-4',165,1),(9,'Juan','Jose','Mendez','1988223340901','77614455','Diagonal 3 10-20 Zona 1','CF',133,1),(10,'Lourdes','Elena','Paz','2566778890501','50102030','Km 55 Ruta al Pacifico','5544332-1',57,1),(11,'Fernando','Luis','Reyes','2211334451601','79521100','Barrio San Marcos','CF',1,0);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_proveedor`
--

DROP TABLE IF EXISTS `comprobante_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobante_proveedor` (
  `idComprobante_Proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Pedido` date NOT NULL,
  `Fecha_Envio` date DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `Proveedor_idProveedor` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idComprobante_Proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_proveedor`
--

LOCK TABLES `comprobante_proveedor` WRITE;
/*!40000 ALTER TABLE `comprobante_proveedor` DISABLE KEYS */;
INSERT INTO `comprobante_proveedor` VALUES (1,'2026-03-01','2026-06-03',6200,4,4),(2,'2026-05-13','2026-05-13',1080,2,4),(3,'2026-05-13','2026-05-28',1300,2,3);
/*!40000 ALTER TABLE `comprobante_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credito`
--

DROP TABLE IF EXISTS `credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credito` (
  `idCredito` int(11) NOT NULL AUTO_INCREMENT,
  `Estado_Credito_idEstado_Credito` int(11) NOT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `Enganche` decimal(10,2) DEFAULT NULL,
  `N_cuotas` int(11) DEFAULT NULL,
  `Total_credito` decimal(10,2) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCredito`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credito`
--

LOCK TABLES `credito` WRITE;
/*!40000 ALTER TABLE `credito` DISABLE KEYS */;
INSERT INTO `credito` VALUES (1,1,'2026-05-13',90.00,3,235.00,3,3),(2,2,'2026-05-13',80.00,9,10.00,3,2),(3,1,'2026-05-20',200.00,12,2000.00,4,3),(4,1,'2026-05-20',20.00,3,510.00,4,3),(5,1,'2026-05-20',90.00,8,200.00,4,2),(6,1,'2026-05-21',150.00,3,740.00,4,3);
/*!40000 ALTER TABLE `credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `Departamento` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Alta Verapaz'),(2,'Baja Verapaz'),(3,'Chimaltenango'),(4,'Chiquimula'),(5,'El progreso'),(6,'Escuintla'),(7,'Guatemala'),(8,'Huehuetenango'),(9,'Izabal'),(10,'Jalapa'),(11,'Jutiapa'),(12,'Petén'),(13,'Quetzaltenango'),(14,'Quiché'),(15,'Retalhuleu'),(16,'Sacatepequez'),(17,'San Marcos'),(18,'Santa Rosa'),(19,'Sololá'),(20,'Suchitepéquez'),(21,'Totonicapán'),(22,'Zacapa'),(23,'Alta Verapaz'),(24,'Baja Verapaz'),(25,'Chimaltenango'),(26,'Chiquimula'),(27,'El progreso'),(28,'Escuintla'),(29,'Guatemala'),(30,'Huehuetenango'),(31,'Izabal'),(32,'Jalapa'),(33,'Jutiapa'),(34,'Petén'),(35,'Quetzaltenango'),(36,'Quiché'),(37,'Retalhuleu'),(38,'Sacatepequez'),(39,'San Marcos'),(40,'Santa Rosa'),(41,'Sololá'),(42,'Suchitepéquez'),(43,'Totonicapán'),(44,'Zacapa');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_comprobante`
--

DROP TABLE IF EXISTS `detalle_comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_comprobante` (
  `idDetalle_comprobante` int(11) NOT NULL AUTO_INCREMENT,
  `Comprobante_Proveedor_idComprobante_Proveedor` int(11) NOT NULL,
  `Producto_idProducto` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `P_compra` decimal(10,2) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDetalle_comprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_comprobante`
--

LOCK TABLES `detalle_comprobante` WRITE;
/*!40000 ALTER TABLE `detalle_comprobante` DISABLE KEYS */;
INSERT INTO `detalle_comprobante` VALUES (1,1,11,10,500.00,5000.00),(2,1,1,1,350.00,350.00),(3,1,5,1,65.00,65.00),(4,1,9,1,580.00,580.00),(5,1,10,1,180.00,180.00),(6,1,6,1,25.00,25.00),(7,2,9,1,580.00,580.00),(8,2,11,1,500.00,500.00),(9,3,9,1,580.00,580.00),(10,3,11,1,500.00,500.00),(11,3,4,1,220.00,220.00);
/*!40000 ALTER TABLE `detalle_comprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_credito`
--

DROP TABLE IF EXISTS `detalle_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_credito` (
  `idDetalle_credito` int(11) NOT NULL AUTO_INCREMENT,
  `Credito_idCredito` int(11) NOT NULL,
  `Producto_idProducto` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `P_venta` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDetalle_credito`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_credito`
--

LOCK TABLES `detalle_credito` WRITE;
/*!40000 ALTER TABLE `detalle_credito` DISABLE KEYS */;
INSERT INTO `detalle_credito` VALUES (1,1,4,1,325.00),(2,2,8,1,110.00),(3,3,9,2,1800.00),(4,3,7,1,400.00),(5,4,4,2,640.00),(6,5,5,2,390.00),(7,6,4,3,1125.00),(8,6,6,1,65.00);
/*!40000 ALTER TABLE `detalle_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pago`
--

DROP TABLE IF EXISTS `detalle_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pago` (
  `idDetalle_pago` int(11) NOT NULL AUTO_INCREMENT,
  `Credito_idCredito` int(11) NOT NULL,
  `Pago_cuota_idPago_cuota` int(11) NOT NULL,
  `N_cuota` int(11) DEFAULT NULL,
  `Monto_cuota` decimal(10,2) DEFAULT NULL,
  `Estado_cuota_idEstado_cuota` int(11) NOT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDetalle_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pago`
--

LOCK TABLES `detalle_pago` WRITE;
/*!40000 ALTER TABLE `detalle_pago` DISABLE KEYS */;
INSERT INTO `detalle_pago` VALUES (1,2,2,1,20.00,1,10.00),(2,4,3,2,110.00,1,510.00),(3,5,4,1,100.00,1,200.00),(4,6,5,1,300.00,1,740.00);
/*!40000 ALTER TABLE `detalle_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `Detalle_venta` int(11) NOT NULL AUTO_INCREMENT,
  `Producto_idProducto` int(11) NOT NULL,
  `Regis_venta_idRegistro_venta` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Detalle_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,9,1,1,850.00,850.00),(2,7,1,1,350.00,350.00),(3,11,1,1,900.00,900.00),(4,2,2,1,125.00,125.00),(5,1,2,3,450.00,1350.00),(6,10,3,1,275.00,275.00),(7,11,3,1,900.00,900.00),(8,11,4,1,900.00,900.00),(9,7,5,10,350.00,3500.00);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_credito`
--

DROP TABLE IF EXISTS `estado_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_credito` (
  `idEstado_Credito` int(11) NOT NULL AUTO_INCREMENT,
  `Estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idEstado_Credito`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_credito`
--

LOCK TABLES `estado_credito` WRITE;
/*!40000 ALTER TABLE `estado_credito` DISABLE KEYS */;
INSERT INTO `estado_credito` VALUES (1,'Vigente'),(2,'Finalizado'),(3,'En Mora'),(4,'Pendiente'),(5,'Vigente'),(6,'Finalizado'),(7,'En Mora'),(8,'Pendiente');
/*!40000 ALTER TABLE `estado_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_cuota`
--

DROP TABLE IF EXISTS `estado_cuota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_cuota` (
  `idEstado_cuota` int(11) NOT NULL AUTO_INCREMENT,
  `Estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idEstado_cuota`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_cuota`
--

LOCK TABLES `estado_cuota` WRITE;
/*!40000 ALTER TABLE `estado_cuota` DISABLE KEYS */;
INSERT INTO `estado_cuota` VALUES (1,'Pagado'),(2,'Pendiente'),(3,'Atrasado'),(4,'Anulado'),(5,'Pagado'),(6,'Pendiente'),(7,'Atrasado'),(8,'Anulado');
/*!40000 ALTER TABLE `estado_cuota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_envio`
--

DROP TABLE IF EXISTS `estado_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_envio` (
  `idEstado_Envio` int(11) NOT NULL AUTO_INCREMENT,
  `Estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idEstado_Envio`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_envio`
--

LOCK TABLES `estado_envio` WRITE;
/*!40000 ALTER TABLE `estado_envio` DISABLE KEYS */;
INSERT INTO `estado_envio` VALUES (1,'Entregado'),(2,'En proceso'),(3,'Devuelto'),(4,'Entregado'),(5,'En proceso'),(6,'Devuelto');
/*!40000 ALTER TABLE `estado_envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `idMunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `Municipio` varchar(30) DEFAULT NULL,
  `Departamento_idDepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idMunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=665 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Cobán',1),(2,'Santa Cruz Verapaz',1),(3,'San Cristóbal Verapaz',1),(4,'Tactic',1),(5,'Tamahú',1),(6,'Tucurú',1),(7,'Panzós',1),(8,'Senahú',1),(9,'San Pedro Carchá',1),(10,'San Juan Chamelco',1),(11,'Lanquín',1),(12,'Cahabón',1),(13,'Chisec',1),(14,'Chahal',1),(15,'Fray Bartolomé de las Casas',1),(16,'Santa Catalina La Tinta',1),(17,'Raxruhá',1),(18,'Salamá',2),(19,'San Miguel Chicaj',2),(20,'Rabinal',2),(21,'Cubulco',2),(22,'Granados',2),(23,'El Chol',2),(24,'San Jerónimo',2),(25,'Purulhá',2),(26,'Chimaltenango',3),(27,'San José Poaquil',3),(28,'San Martín Jilotepeque',3),(29,'Comalapa',3),(30,'Santa Apolonia',3),(31,'Tecpán Guatemala',3),(32,'Patzún',3),(33,'Pochuta',3),(34,'Patzicía',3),(35,'Santa Cruz Balanyá',3),(36,'Acatenango',3),(37,'Yepocapa',3),(38,'San Andrés Itzapa',3),(39,'Parramos',3),(40,'Zaragoza',3),(41,'El Tejar',3),(42,'Chiquimula',4),(43,'San José La Arada',4),(44,'San Juan Ermita',4),(45,'Jocotán',4),(46,'Camotán',4),(47,'Olopa',4),(48,'Esquipulas',4),(49,'Concepción Las Minas',4),(50,'Quetzaltepeque',4),(51,'San Jacinto',4),(52,'Ipala',4),(53,'Guastatoya',5),(54,'Morazán',5),(55,'San Agustín Acasaguastlán',5),(56,'San Cristóbal Acasaguastlán',5),(57,'El Jícaro',5),(58,'Sansare',5),(59,'Sanarate',5),(60,'San Antonio La Paz',5),(61,'Escuintla',6),(62,'Santa Lucía Cotzumalguapa',6),(63,'La Democracia',6),(64,'Siquinalá',6),(65,'Masagua',6),(66,'Tiquisate',6),(67,'La Gomera',6),(68,'Guanagazapa',6),(69,'San José',6),(70,'Iztapa',6),(71,'Palín',6),(72,'San Vicente Pacaya',6),(73,'Nueva Concepción',6),(74,'Guatemala',7),(75,'Santa Catarina Pinula',7),(76,'San José Pinula',7),(77,'San José del Golfo',7),(78,'Palencia',7),(79,'Chinautla',7),(80,'San Pedro Ayampuc',7),(81,'Mixco',7),(82,'San Pedro Sacatepéquez',7),(83,'San Juan Sacatepéquez',7),(84,'San Raymundo',7),(85,'Chuarrancho',7),(86,'Fraijanes',7),(87,'Amatitlán',7),(88,'Villa Nueva',7),(89,'Villa Canales',7),(90,'San Miguel Petapa',7),(91,'Huehuetenango',8),(92,'Chiantla',8),(93,'Malacatancito',8),(94,'Cuilco',8),(95,'Nentón',8),(96,'San Pedro Necta',8),(97,'Jacaltenango',8),(98,'Soloma',8),(99,'Ixtahuacán',8),(100,'Libertad',8),(101,'San Miguel Acatán',8),(102,'San Rafael La Independencia',8),(103,'Todos Santos Cuchumatán',8),(104,'San Juan Atitán',8),(105,'Santa Eulalia',8),(106,'San Mateo Ixtatán',8),(107,'Colotenango',8),(108,'San Sebastián Huehuetenango',8),(109,'Tectitán',8),(110,'Concepción Huista',8),(111,'San Juan Ixcoy',8),(112,'San Antonio Huista',8),(113,'San Sebastián Coatán',8),(114,'Barillas',8),(115,'Aguacatán',8),(116,'San Rafael Petzal',8),(117,'San Gaspar Ixchil',8),(118,'Santiago Chimaltenango',8),(119,'Santa Ana Huista',8),(120,'Unión Cantinil',8),(121,'Petatán',8),(122,'Puerto Barrios',9),(123,'Livingston',9),(124,'El Estor',9),(125,'Morales',9),(126,'Los Amates',9),(127,'Jalapa',10),(128,'San Pedro Pinula',10),(129,'San Luis Jilotepeque',10),(130,'San Manuel Chaparrón',10),(131,'San Carlos Alzatate',10),(132,'Monjas',10),(133,'Mataquescuintla',10),(134,'Jutiapa',11),(135,'El Progreso',11),(136,'Santa Catarina Mita',11),(137,'Agua Blanca',11),(138,'Asunción Mita',11),(139,'Yupiltepeque',11),(140,'Atescatempa',11),(141,'Jerez',11),(142,'El Adelanto',11),(143,'Zapotitlán',11),(144,'Comapa',11),(145,'Jalpatagua',11),(146,'Conguaco',11),(147,'Moyuta',11),(148,'Pasaco',11),(149,'San José Acatempa',11),(150,'Quesada',11),(151,'Flores',12),(152,'San José',12),(153,'San Benito',12),(154,'San Andrés',12),(155,'La Libertad',12),(156,'San Francisco',12),(157,'Santa Ana',12),(158,'Dolores',12),(159,'San Luis',12),(160,'Sayaxché',12),(161,'Melchor de Mencos',12),(162,'Poptún',12),(163,'Las Cruces',12),(164,'El Chal',12),(165,'Quetzaltenango',13),(166,'Salcajá',13),(167,'Olintepeque',13),(168,'San Carlos Sija',13),(169,'Sibilia',13),(170,'Cabricán',13),(171,'Cajolá',13),(172,'San Miguel Sigüilá',13),(173,'Ostuncalco',13),(174,'San Mateo',13),(175,'Concepción Chiquirichapa',13),(176,'San Martín Sacatepéquez',13),(177,'Almolonga',13),(178,'Cantel',13),(179,'Huitán',13),(180,'Zunil',13),(181,'Colomba',13),(182,'San Francisco La Unión',13),(183,'El Palmar',13),(184,'Coatepeque',13),(185,'Génova',13),(186,'Flores Costa Cuca',13),(187,'La Esperanza',13),(188,'Palestina de Los Altos',13),(189,'Santa Cruz del Quiché',14),(190,'Chiché',14),(191,'Chinique',14),(192,'Zacualpa',14),(193,'Chajul',14),(194,'Chichicastenango',14),(195,'Patzité',14),(196,'San Antonio Ilotenango',14),(197,'San Pedro Jocopilas',14),(198,'Cunén',14),(199,'San Juan Cotzal',14),(200,'Joyabaj',14),(201,'Nebaj',14),(202,'San Andrés Sajcabajá',14),(203,'Uspantán',14),(204,'Sacapulas',14),(205,'San Bartolomé Jocotenango',14),(206,'Canillá',14),(207,'Chicamán',14),(208,'Ixcán',14),(209,'Pachalum',14),(210,'Retalhuleu',15),(211,'San Sebastián',15),(212,'Santa Cruz Muluá',15),(213,'San Martín Zapotitlán',15),(214,'San Felipe',15),(215,'San Andrés Villa Seca',15),(216,'Champerico',15),(217,'Nuevo San Carlos',15),(218,'El Asintal',15),(219,'Antigua Guatemala',16),(220,'Jocotenango',16),(221,'Pastores',16),(222,'Sumpango',16),(223,'Santo Domingo Xenacoj',16),(224,'Santiago Sacatepéquez',16),(225,'San Bartolomé Milpas Altas',16),(226,'San Lucas Sacatepéquez',16),(227,'Santa Lucía Milpas Altas',16),(228,'Magdalena Milpas Altas',16),(229,'Santa María de Jesús',16),(230,'Ciudad Vieja',16),(231,'San Miguel Dueñas',16),(232,'Alotenango',16),(233,'San Antonio Aguas Calientes',16),(234,'Santa Catarina Barahona',16),(235,'San Marcos',17),(236,'San Pedro Sacatepéquez',17),(237,'San Antonio Sacatepéquez',17),(238,'Comitancillo',17),(239,'San Miguel Ixtahuacán',17),(240,'Concepción Tutuapa',17),(241,'Tacaná',17),(242,'Sibinal',17),(243,'San José Ojetenam',17),(244,'San Cristóbal Cucho',17),(245,'Esquipulas Palo Gordo',17),(246,'San Lorenzo',17),(247,'Tejutla',17),(248,'San Rafael Pie de La Cuesta',17),(249,'Nuevo Progreso',17),(250,'El Tumbador',17),(251,'El Rodeo',17),(252,'Malacatán',17),(253,'Catarina',17),(254,'Ayutla',17),(255,'Ocós',17),(256,'San Pablo',17),(257,'El Quetzal',17),(258,'La Reforma',17),(259,'Pajapita',17),(260,'Ixchiguán',17),(261,'Sipacapa',17),(262,'Río Blanco',17),(263,'La Blanca',17),(264,'Cuilapa',18),(265,'Barberena',18),(266,'Santa Rosa de Lima',18),(267,'Casillas',18),(268,'San Rafael Las Flores',18),(269,'Oratorio',18),(270,'San Juan Tecuaco',18),(271,'Chiquimulilla',18),(272,'Taxisco',18),(273,'Santa María Ixhuatán',18),(274,'Guazacapán',18),(275,'Santa Cruz Naranjo',18),(276,'Pueblo Nuevo Viñas',18),(277,'Nueva Santa Rosa',18),(278,'Sololá',19),(279,'San José Chacayá',19),(280,'Santa María Visitación',19),(281,'Santa Lucía Utatlán',19),(282,'Nahualá',19),(283,'Santa Catarina Ixtahuacán',19),(284,'Santa Clara La Laguna',19),(285,'Concepción',19),(286,'San Andrés Semetabaj',19),(287,'Panajachel',19),(288,'Santa Catarina Palopó',19),(289,'San Antonio Palopó',19),(290,'San Lucas Tolimán',19),(291,'Santa Cruz La Laguna',19),(292,'San Pablo La Laguna',19),(293,'San Marcos La Laguna',19),(294,'San Juan La Laguna',19),(295,'San Pedro La Laguna',19),(296,'Santiago Atitlán',19),(297,'Mazatenango',20),(298,'Cuyotenango',20),(299,'San Francisco Zapotitlán',20),(300,'San Bernardino',20),(301,'San José El Idolo',20),(302,'Santo Domingo Suchitepéquez',20),(303,'San Lorenzo',20),(304,'Samayac',20),(305,'San Pablo Jocopilas',20),(306,'San Antonio Suchitepéquez',20),(307,'San Miguel Panán',20),(308,'San Gabriel',20),(309,'Chicacao',20),(310,'Patulul',20),(311,'Santa Bárbara',20),(312,'Juan Bautista',20),(313,'Río Bravo',20),(314,'San José La Máquina',20),(315,'Totonicapán',21),(316,'San Cristóbal Totonicapán',21),(317,'San Francisco El Alto',21),(318,'Santa Lucía La Reforma',21),(319,'San Andrés Xecul',21),(320,'Momostenango',21),(321,'Santa María Chiquimula',21),(322,'San Bartolo',21),(323,'Zacapa',22),(324,'Estanzuela',22),(325,'Río Hondo',22),(326,'Gualán',22),(327,'Teculután',22),(328,'Usumatlán',22),(329,'Cabañas',22),(330,'San Diego',22),(331,'La Unión',22),(332,'Huité',22),(333,'Cobán',1),(334,'Santa Cruz Verapaz',1),(335,'San Cristóbal Verapaz',1),(336,'Tactic',1),(337,'Tamahú',1),(338,'Tucurú',1),(339,'Panzós',1),(340,'Senahú',1),(341,'San Pedro Carchá',1),(342,'San Juan Chamelco',1),(343,'Lanquín',1),(344,'Cahabón',1),(345,'Chisec',1),(346,'Chahal',1),(347,'Fray Bartolomé de las Casas',1),(348,'Santa Catalina La Tinta',1),(349,'Raxruhá',1),(350,'Salamá',2),(351,'San Miguel Chicaj',2),(352,'Rabinal',2),(353,'Cubulco',2),(354,'Granados',2),(355,'El Chol',2),(356,'San Jerónimo',2),(357,'Purulhá',2),(358,'Chimaltenango',3),(359,'San José Poaquil',3),(360,'San Martín Jilotepeque',3),(361,'Comalapa',3),(362,'Santa Apolonia',3),(363,'Tecpán Guatemala',3),(364,'Patzún',3),(365,'Pochuta',3),(366,'Patzicía',3),(367,'Santa Cruz Balanyá',3),(368,'Acatenango',3),(369,'Yepocapa',3),(370,'San Andrés Itzapa',3),(371,'Parramos',3),(372,'Zaragoza',3),(373,'El Tejar',3),(374,'Chiquimula',4),(375,'San José La Arada',4),(376,'San Juan Ermita',4),(377,'Jocotán',4),(378,'Camotán',4),(379,'Olopa',4),(380,'Esquipulas',4),(381,'Concepción Las Minas',4),(382,'Quetzaltepeque',4),(383,'San Jacinto',4),(384,'Ipala',4),(385,'Guastatoya',5),(386,'Morazán',5),(387,'San Agustín Acasaguastlán',5),(388,'San Cristóbal Acasaguastlán',5),(389,'El Jícaro',5),(390,'Sansare',5),(391,'Sanarate',5),(392,'San Antonio La Paz',5),(393,'Escuintla',6),(394,'Santa Lucía Cotzumalguapa',6),(395,'La Democracia',6),(396,'Siquinalá',6),(397,'Masagua',6),(398,'Tiquisate',6),(399,'La Gomera',6),(400,'Guanagazapa',6),(401,'San José',6),(402,'Iztapa',6),(403,'Palín',6),(404,'San Vicente Pacaya',6),(405,'Nueva Concepción',6),(406,'Guatemala',7),(407,'Santa Catarina Pinula',7),(408,'San José Pinula',7),(409,'San José del Golfo',7),(410,'Palencia',7),(411,'Chinautla',7),(412,'San Pedro Ayampuc',7),(413,'Mixco',7),(414,'San Pedro Sacatepéquez',7),(415,'San Juan Sacatepéquez',7),(416,'San Raymundo',7),(417,'Chuarrancho',7),(418,'Fraijanes',7),(419,'Amatitlán',7),(420,'Villa Nueva',7),(421,'Villa Canales',7),(422,'San Miguel Petapa',7),(423,'Huehuetenango',8),(424,'Chiantla',8),(425,'Malacatancito',8),(426,'Cuilco',8),(427,'Nentón',8),(428,'San Pedro Necta',8),(429,'Jacaltenango',8),(430,'Soloma',8),(431,'Ixtahuacán',8),(432,'Libertad',8),(433,'San Miguel Acatán',8),(434,'San Rafael La Independencia',8),(435,'Todos Santos Cuchumatán',8),(436,'San Juan Atitán',8),(437,'Santa Eulalia',8),(438,'San Mateo Ixtatán',8),(439,'Colotenango',8),(440,'San Sebastián Huehuetenango',8),(441,'Tectitán',8),(442,'Concepción Huista',8),(443,'San Juan Ixcoy',8),(444,'San Antonio Huista',8),(445,'San Sebastián Coatán',8),(446,'Barillas',8),(447,'Aguacatán',8),(448,'San Rafael Petzal',8),(449,'San Gaspar Ixchil',8),(450,'Santiago Chimaltenango',8),(451,'Santa Ana Huista',8),(452,'Unión Cantinil',8),(453,'Petatán',8),(454,'Puerto Barrios',9),(455,'Livingston',9),(456,'El Estor',9),(457,'Morales',9),(458,'Los Amates',9),(459,'Jalapa',10),(460,'San Pedro Pinula',10),(461,'San Luis Jilotepeque',10),(462,'San Manuel Chaparrón',10),(463,'San Carlos Alzatate',10),(464,'Monjas',10),(465,'Mataquescuintla',10),(466,'Jutiapa',11),(467,'El Progreso',11),(468,'Santa Catarina Mita',11),(469,'Agua Blanca',11),(470,'Asunción Mita',11),(471,'Yupiltepeque',11),(472,'Atescatempa',11),(473,'Jerez',11),(474,'El Adelanto',11),(475,'Zapotitlán',11),(476,'Comapa',11),(477,'Jalpatagua',11),(478,'Conguaco',11),(479,'Moyuta',11),(480,'Pasaco',11),(481,'San José Acatempa',11),(482,'Quesada',11),(483,'Flores',12),(484,'San José',12),(485,'San Benito',12),(486,'San Andrés',12),(487,'La Libertad',12),(488,'San Francisco',12),(489,'Santa Ana',12),(490,'Dolores',12),(491,'San Luis',12),(492,'Sayaxché',12),(493,'Melchor de Mencos',12),(494,'Poptún',12),(495,'Las Cruces',12),(496,'El Chal',12),(497,'Quetzaltenango',13),(498,'Salcajá',13),(499,'Olintepeque',13),(500,'San Carlos Sija',13),(501,'Sibilia',13),(502,'Cabricán',13),(503,'Cajolá',13),(504,'San Miguel Sigüilá',13),(505,'Ostuncalco',13),(506,'San Mateo',13),(507,'Concepción Chiquirichapa',13),(508,'San Martín Sacatepéquez',13),(509,'Almolonga',13),(510,'Cantel',13),(511,'Huitán',13),(512,'Zunil',13),(513,'Colomba',13),(514,'San Francisco La Unión',13),(515,'El Palmar',13),(516,'Coatepeque',13),(517,'Génova',13),(518,'Flores Costa Cuca',13),(519,'La Esperanza',13),(520,'Palestina de Los Altos',13),(521,'Santa Cruz del Quiché',14),(522,'Chiché',14),(523,'Chinique',14),(524,'Zacualpa',14),(525,'Chajul',14),(526,'Chichicastenango',14),(527,'Patzité',14),(528,'San Antonio Ilotenango',14),(529,'San Pedro Jocopilas',14),(530,'Cunén',14),(531,'San Juan Cotzal',14),(532,'Joyabaj',14),(533,'Nebaj',14),(534,'San Andrés Sajcabajá',14),(535,'Uspantán',14),(536,'Sacapulas',14),(537,'San Bartolomé Jocotenango',14),(538,'Canillá',14),(539,'Chicamán',14),(540,'Ixcán',14),(541,'Pachalum',14),(542,'Retalhuleu',15),(543,'San Sebastián',15),(544,'Santa Cruz Muluá',15),(545,'San Martín Zapotitlán',15),(546,'San Felipe',15),(547,'San Andrés Villa Seca',15),(548,'Champerico',15),(549,'Nuevo San Carlos',15),(550,'El Asintal',15),(551,'Antigua Guatemala',16),(552,'Jocotenango',16),(553,'Pastores',16),(554,'Sumpango',16),(555,'Santo Domingo Xenacoj',16),(556,'Santiago Sacatepéquez',16),(557,'San Bartolomé Milpas Altas',16),(558,'San Lucas Sacatepéquez',16),(559,'Santa Lucía Milpas Altas',16),(560,'Magdalena Milpas Altas',16),(561,'Santa María de Jesús',16),(562,'Ciudad Vieja',16),(563,'San Miguel Dueñas',16),(564,'Alotenango',16),(565,'San Antonio Aguas Calientes',16),(566,'Santa Catarina Barahona',16),(567,'San Marcos',17),(568,'San Pedro Sacatepéquez',17),(569,'San Antonio Sacatepéquez',17),(570,'Comitancillo',17),(571,'San Miguel Ixtahuacán',17),(572,'Concepción Tutuapa',17),(573,'Tacaná',17),(574,'Sibinal',17),(575,'San José Ojetenam',17),(576,'San Cristóbal Cucho',17),(577,'Esquipulas Palo Gordo',17),(578,'San Lorenzo',17),(579,'Tejutla',17),(580,'San Rafael Pie de La Cuesta',17),(581,'Nuevo Progreso',17),(582,'El Tumbador',17),(583,'El Rodeo',17),(584,'Malacatán',17),(585,'Catarina',17),(586,'Ayutla',17),(587,'Ocós',17),(588,'San Pablo',17),(589,'El Quetzal',17),(590,'La Reforma',17),(591,'Pajapita',17),(592,'Ixchiguán',17),(593,'Sipacapa',17),(594,'Río Blanco',17),(595,'La Blanca',17),(596,'Cuilapa',18),(597,'Barberena',18),(598,'Santa Rosa de Lima',18),(599,'Casillas',18),(600,'San Rafael Las Flores',18),(601,'Oratorio',18),(602,'San Juan Tecuaco',18),(603,'Chiquimulilla',18),(604,'Taxisco',18),(605,'Santa María Ixhuatán',18),(606,'Guazacapán',18),(607,'Santa Cruz Naranjo',18),(608,'Pueblo Nuevo Viñas',18),(609,'Nueva Santa Rosa',18),(610,'Sololá',19),(611,'San José Chacayá',19),(612,'Santa María Visitación',19),(613,'Santa Lucía Utatlán',19),(614,'Nahualá',19),(615,'Santa Catarina Ixtahuacán',19),(616,'Santa Clara La Laguna',19),(617,'Concepción',19),(618,'San Andrés Semetabaj',19),(619,'Panajachel',19),(620,'Santa Catarina Palopó',19),(621,'San Antonio Palopó',19),(622,'San Lucas Tolimán',19),(623,'Santa Cruz La Laguna',19),(624,'San Pablo La Laguna',19),(625,'San Marcos La Laguna',19),(626,'San Juan La Laguna',19),(627,'San Pedro La Laguna',19),(628,'Santiago Atitlán',19),(629,'Mazatenango',20),(630,'Cuyotenango',20),(631,'San Francisco Zapotitlán',20),(632,'San Bernardino',20),(633,'San José El Idolo',20),(634,'Santo Domingo Suchitepéquez',20),(635,'San Lorenzo',20),(636,'Samayac',20),(637,'San Pablo Jocopilas',20),(638,'San Antonio Suchitepéquez',20),(639,'San Miguel Panán',20),(640,'San Gabriel',20),(641,'Chicacao',20),(642,'Patulul',20),(643,'Santa Bárbara',20),(644,'Juan Bautista',20),(645,'Río Bravo',20),(646,'San José La Máquina',20),(647,'Totonicapán',21),(648,'San Cristóbal Totonicapán',21),(649,'San Francisco El Alto',21),(650,'Santa Lucía La Reforma',21),(651,'San Andrés Xecul',21),(652,'Momostenango',21),(653,'Santa María Chiquimula',21),(654,'San Bartolo',21),(655,'Zacapa',22),(656,'Estanzuela',22),(657,'Río Hondo',22),(658,'Gualán',22),(659,'Teculután',22),(660,'Usumatlán',22),(661,'Cabañas',22),(662,'San Diego',22),(663,'La Unión',22),(664,'Huité',22);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cuota`
--

DROP TABLE IF EXISTS `pago_cuota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_cuota` (
  `idPago_cuota` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_pago` date DEFAULT NULL,
  `Total_pago` decimal(10,2) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPago_cuota`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cuota`
--

LOCK TABLES `pago_cuota` WRITE;
/*!40000 ALTER TABLE `pago_cuota` DISABLE KEYS */;
INSERT INTO `pago_cuota` VALUES (2,'2026-02-13',20.00,3),(3,'2026-05-20',110.00,4),(4,'2026-05-20',100.00,4),(5,'2026-05-21',300.00,4);
/*!40000 ALTER TABLE `pago_cuota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paqueteria`
--

DROP TABLE IF EXISTS `paqueteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paqueteria` (
  `idPaqueteria` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePaque` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idPaqueteria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paqueteria`
--

LOCK TABLES `paqueteria` WRITE;
/*!40000 ALTER TABLE `paqueteria` DISABLE KEYS */;
INSERT INTO `paqueteria` VALUES (1,'Forza'),(2,'Guatex'),(3,'Cargo Express'),(4,'Forza'),(5,'Guatex'),(6,'Cargo Expres');
/*!40000 ALTER TABLE `paqueteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `N_producto` varchar(30) NOT NULL,
  `Imagen` varchar(20) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `P_venta` int(11) NOT NULL,
  `P_compra` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Categoria_idCategoria` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `Estado` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Casco Trail Pro','casco_tp.jpg','Casco con proteccion MIPS para montaña',450,350,13,1,1,1),(2,'Luces LED USB','luces_rgb.png','Set de luces delantera y trasera 400lm',125,75,24,1,1,1),(3,'Inflador Giyo','bomb_giyo.jpg','Inflador portatil de alta presion',85,50,20,1,1,1),(4,'Cadena Shimano 11v','cad_sh11.jpg','Cadena de 11 velocidades serie 105',325,220,15,2,1,1),(5,'Pastillas Freno','past_fr.png','Pastillas de resina para frenos disco',95,65,39,2,1,1),(6,'Tubo 29x2.10','tubo29.jpg','Tubo de hule valvula francesa 48mm',45,25,100,2,1,1),(7,'Jersey Pro Fit','jersey_bl.jpg','Jersey transpirable corte aerodinamico',350,210,0,3,1,1),(8,'Guantes Gel','guante_g.png','Guantes con almohadillas de gel antishock',110,65,29,3,1,1),(9,'Ciclocomputador GPS','gps_v3.jpg','Pantalla 2.2 pulg con conexion ANT+',850,580,8,4,1,1),(10,'Sensor Cadencia','sens_cad.png','Sensor inalambrico compatible Bluetooth',275,180,10,4,1,1),(11,'bielas shimano','6a048c2858ef4.jpg','pokemon',900,500,9,2,4,0),(12,'Casco Trail Pro','casco_tp.jpg','Casco con proteccion MIPS para montaña',450,300,15,1,1,1),(13,'Luces LED USB','luces_rgb.png','Set de luces delantera y trasera 400lm',125,75,25,1,1,1),(14,'Inflador Giyo','bomb_giyo.jpg','Inflador portatil de alta presion',85,50,20,1,1,1),(15,'Cadena Shimano 11v','cad_sh11.jpg','Cadena de 11 velocidades serie 105',325,220,20,2,1,1),(16,'Pastillas Freno','past_fr.png','Pastillas de resina para frenos disco',95,60,40,2,1,1),(17,'Tubo 29x2.10','tubo29.jpg','Tubo de hule valvula francesa 48mm',45,25,100,2,1,1),(18,'Jersey Pro Fit','jersey_bl.jpg','Jersey transpirable corte aerodinamico',350,210,12,3,1,1),(19,'Guantes Gel','guante_g.png','Guantes con almohadillas de gel antishock',110,65,30,3,1,1),(20,'Ciclocomputador GPS','gps_v3.jpg','Pantalla 2.2 pulg con conexion ANT+',850,580,8,4,1,1),(21,'Sensor Cadencia','sens_cad.png','Sensor inalambrico compatible Bluetooth',275,180,10,4,1,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `Apellido2` varchar(15) DEFAULT NULL,
  `Tel` varchar(15) NOT NULL,
  `Direc` varchar(50) NOT NULL,
  `Correo` varchar(25) NOT NULL,
  `Estado` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Marcos','Vinicio','Estrada','Luna','50222334455','Calzada Roosevelt 5-10','m.estrada@suministros.com',1),(2,'Claudia','Maria','Sosa','Mendez','50277889900','7ma Avenida Zona 9, Cap','c.sosa@vetmed.com',1),(3,'Jorge','Luis','Pineda','Guerra','50244556677','Ruta 6, 3-22 Zona 4','jpineda@distribuidora.com',0),(4,'German Daniel','Díaz Vásquez','Reyes','lio','47799763','aaaa','dangergoku23@gmail.com',1),(5,'Marcos','Vinicio','Estrada','Luna','50222334455','Calzada Roosevelt 5-10','m.estrada@suministros.com',1),(6,'Claudia','Maria','Sosa','Mendez','50277889900','7ma Avenida Zona 9, Cap','c.sosa@vetmed.com',1),(7,'Jorge','Luis','Pineda','Guerra','50244556677','Ruta 6, 3-22 Zona 4','jpineda@distribuidora.com',0);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_venta`
--

DROP TABLE IF EXISTS `registro_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_venta` (
  `idRegistro_venta` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_registro` date NOT NULL,
  `Detalles` varchar(60) DEFAULT NULL,
  `Tipo_E_idTipo_E` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `Canal_venta_idC_venta` int(11) NOT NULL,
  `Paqueteria_idPaqueteria` int(11) NOT NULL,
  `Tipo_venta_idTi_venta` int(11) NOT NULL,
  `Nreferencia` varchar(20) DEFAULT NULL,
  `Total_P` varchar(10) NOT NULL,
  PRIMARY KEY (`idRegistro_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_venta`
--

LOCK TABLES `registro_venta` WRITE;
/*!40000 ALTER TABLE `registro_venta` DISABLE KEYS */;
INSERT INTO `registro_venta` VALUES (1,'2026-05-13','asd',2,3,3,2,3,2,'0','2100.00'),(2,'2026-05-09','ads',2,3,3,2,3,1,'0','1475.00'),(3,'2026-01-13','dasd',2,5,3,3,2,2,'0','1175.00'),(4,'2026-05-19','A',1,2,4,3,2,1,'2231','900.00'),(5,'2026-05-19','pou',3,1,4,2,3,2,'99000','3500.00');
/*!40000 ALTER TABLE `registro_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_pago` (
  `idTipo_pago` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_pago` varchar(20) NOT NULL,
  PRIMARY KEY (`idTipo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
INSERT INTO `tipo_pago` VALUES (1,'Efectivo'),(2,'Tarjeta'),(3,'Transferencia'),(4,'Efectivo'),(5,'Tarjeta'),(6,'Transferencia');
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) NOT NULL,
  `Pasword` varchar(255) NOT NULL,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Tel` varchar(12) NOT NULL,
  `Estado` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'dr_mora','$2y$10$ioG6IBnLNhcqL/EKoSsQ0.rEO0X/suwMD7lWm6MPM3jxr5Uym8emS','Carlos','Alberto','Mora','c.mora@email.com','50244332211',1),(2,'ana_rdz','$2y$10$Yti2/4aG1eeZbXB/MIsJzuhKuY06HqWoovhopU5F5Q/suqptGbEYq','Ana','Lucia','Rodriguez','ana.l@email.com','50255667788',1),(3,'rdz','$2y$10$THnuFd556eSY4W6tafx1KONgXf8spAs3d.a7I3mpCHRw.nK1lCV2S','Mario','Jose','Perez','m.perez@email.com','50299887766',1),(4,'Molly','$2y$10$7TatedcNWrTpVXBjn1Ts5eIoQ.5Ea6CPinnqa.vpYAf.pZZsX4AkO','Mora','Gordis','De las Nieves','moragordis@gmail.com','90989099',1),(5,'dr_mora','Vet2026!','Carlos','Alberto','Mora','c.mora@email.com','50244332211',1),(6,'ana_rdz','Cycling99','Ana','Lucia','Rodriguez','ana.l@email.com','50255667788',1),(7,'rdz','123','Mario','Jose','Perez','m.perez@email.com','50299887766',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-26 14:06:44
