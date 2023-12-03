-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mapa_aplicaciones_dev
-- ------------------------------------------------------
-- Server version	8.0.34

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

-- Se realiza un export (dump) de todas las tablas del schema mapa_aplicaciones_dev
-- Tablas: logpresupuesto, logproyecto, presupuesto, proyecto, referentegcba, reparticion, tecnologia
-- Se incluyen las vistas
-- Vistas: vistapresupuestosministerio, vistaproyectosreferentegcba, vistaproyectostecnologias, vistaresumenpresupuestos, vistatecnoplogiashomologadas

--
-- Dumping data for table `logpresupuesto`
--

LOCK TABLES `logpresupuesto` WRITE;
/*!40000 ALTER TABLE `logpresupuesto` DISABLE KEYS */;
INSERT INTO `logpresupuesto` VALUES (1,'Pliego1','UPDATE','2023-11-20 17:22:42'),(2,'Pliego4','INSERT','2023-11-20 17:22:42');
/*!40000 ALTER TABLE `logpresupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logproyecto`
--

LOCK TABLES `logproyecto` WRITE;
/*!40000 ALTER TABLE `logproyecto` DISABLE KEYS */;
INSERT INTO `logproyecto` VALUES (1,'P1','UPDATE','2023-11-20 17:19:34'),(2,'P4','INSERT','2023-11-20 17:19:50');
/*!40000 ALTER TABLE `logproyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
INSERT INTO `presupuesto` VALUES ('Pliego1','P1','1000000.00','NuevaModalidad','2023-01-15','2023-02-20','2023-12-31','Presupuesto asignado en dólares para el proyecto P1','CyS'),('Pliego2','P2','1500000.00','Modalidad2','2023-02-01','2023-03-15','2023-12-31','Presupuesto asignado en dólares para el proyecto P2','Hexacta'),('Pliego3','P3','800000.00','Modalidad3','2023-03-10','2023-04-05','2023-12-31','Presupuesto asignado en dólares para el proyecto P3','Most'),('Pliego4','P2','2000000.00','Modalidad4','2023-04-01','2023-04-15','2023-12-31','Nuevo presupuesto asignado en dólares para el proyecto P2','NewProvider');
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES ('P1','MS','2023-01-15','2023-10-20','NuevoProveedor','20224457894',10),('P2','ME','2023-02-01','2023-09-15','Hexacta','20336698233',15),('P3','MT','2023-03-10','2023-12-05','Most','20393654987',8),('P4','MS','2023-04-01','2023-04-15','OtroProveedor','20224457894',20);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `referentegcba`
--

LOCK TABLES `referentegcba` WRITE;
/*!40000 ALTER TABLE `referentegcba` DISABLE KEYS */;
INSERT INTO `referentegcba` VALUES ('20224457894','María','Rodríguez','maria.rodriguez@ba.gcba.gob.ar','Gerente','0001-0001','MS',5),('20336698233','Carlos','López','carlos.lopez@ba.gcba.gob.ar','Director General','0002-0002','ME',7),('20393654987','Laura','García','laura.garcia@ba.gcba.gob.ar','Director General','0003-0003','MT',4);
/*!40000 ALTER TABLE `referentegcba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reparticion`
--

LOCK TABLES `reparticion` WRITE;
/*!40000 ALTER TABLE `reparticion` DISABLE KEYS */;
INSERT INTO `reparticion` VALUES ('ME','Ministerio de Economía','contacto_me@ba.gcba.gob.ar','Luis','Martínez','20336698233'),('MS','Ministerio de Salud','contacto_ms@ba.gcba.gob.ar','Juan','Gómez','20224457894'),('MS3','Ministerio de Educación','contacto_ms3@ba.gcba.gob.ar','Laura','Perez','20224452222'),('MT','Ministerio de Transporte','contacto_mt@ba.gcba.gob.ar','Ana','Fernández','20393654987');
/*!40000 ALTER TABLE `reparticion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tecnologia`
--

LOCK TABLES `tecnologia` WRITE;
/*!40000 ALTER TABLE `tecnologia` DISABLE KEYS */;
INSERT INTO `tecnologia` VALUES ('1','Java','17.0','2021-09-14','2026-09-14',1,'18.0',1,'rhel_image_1','https://www.example.com/image1','P1'),('2','PHP','8.0','2022-01-01','2023-12-31',1,'9.0',0,'rhel_image_2','https://www.example.com/image2','P2'),('3','ReactJs','18.0','2022-01-01','2023-12-31',1,'19.0',1,'rhel_image_3','https://www.example.com/image3','P3');
/*!40000 ALTER TABLE `tecnologia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 11:15:15
