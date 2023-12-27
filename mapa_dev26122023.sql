CREATE DATABASE  IF NOT EXISTS `mapa_aplicaciones_dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mapa_aplicaciones_dev`;
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

--
-- Table structure for table `datosequipo`
--

DROP TABLE IF EXISTS `datosequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosequipo` (
  `id_equipo` varchar(100) NOT NULL,
  `proveedor_desarrollo` varchar(100) NOT NULL,
  `cantidad_miembros` int NOT NULL,
  `id_proyecto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `datosequipo_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosequipo`
--

LOCK TABLES `datosequipo` WRITE;
/*!40000 ALTER TABLE `datosequipo` DISABLE KEYS */;
INSERT INTO `datosequipo` VALUES ('HASHEQUIPO1','Cys',6,'P1'),('HASHEQUIPO10','MindTech',6,'P10'),('HASHEQUIPO2','Hexacta',6,'P2'),('HASHEQUIPO3','Most',6,'P3'),('HASHEQUIPO4','TecnoSoft',6,'P4'),('HASHEQUIPO5','DevTech',6,'P5'),('HASHEQUIPO6','CyS',6,'P6'),('HASHEQUIPO7','QuickSolutions',6,'P7'),('HASHEQUIPO8','Hexacta',6,'P8'),('HASHEQUIPO9','SoftSys',6,'P9');
/*!40000 ALTER TABLE `datosequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logpresupuesto`
--

DROP TABLE IF EXISTS `logpresupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logpresupuesto` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `id_pliego` varchar(50) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logpresupuesto`
--

LOCK TABLES `logpresupuesto` WRITE;
/*!40000 ALTER TABLE `logpresupuesto` DISABLE KEYS */;
INSERT INTO `logpresupuesto` VALUES (1,'Pliego1','UPDATE','2023-12-27 02:57:29'),(2,'Pliego11','INSERT','2023-12-27 02:57:29');
/*!40000 ALTER TABLE `logpresupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logproyecto`
--

DROP TABLE IF EXISTS `logproyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logproyecto` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` varchar(50) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logproyecto`
--

LOCK TABLES `logproyecto` WRITE;
/*!40000 ALTER TABLE `logproyecto` DISABLE KEYS */;
INSERT INTO `logproyecto` VALUES (1,'P1','UPDATE','2023-12-27 02:57:29'),(2,'P11','INSERT','2023-12-27 02:57:29');
/*!40000 ALTER TABLE `logproyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembrosequipodesarrollo`
--

DROP TABLE IF EXISTS `miembrosequipodesarrollo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembrosequipodesarrollo` (
  `id_miembro` varchar(100) NOT NULL,
  `proveedor_desarrollo` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `correo` varchar(100) NOT NULL,
  `rol` varchar(100) NOT NULL,
  `id_equipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_miembro`),
  KEY `id_equipo` (`id_equipo`),
  CONSTRAINT `miembrosequipodesarrollo_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `datosequipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembrosequipodesarrollo`
--

LOCK TABLES `miembrosequipodesarrollo` WRITE;
/*!40000 ALTER TABLE `miembrosequipodesarrollo` DISABLE KEYS */;
INSERT INTO `miembrosequipodesarrollo` VALUES ('20056728999','Hexacta','Mark','Lutero',47,'mlutero@hexacta.com.ar','Lider Desarrollo','HASHEQUIPO8'),('20182222654','SoftSys','Enrique','Pinti',44,'epinti@softsys.com.ar','Lider Desarrollo','HASHEQUIPO9'),('20182222655','SoftSys','Joaquin','Gonzalez',27,'jgonzalez@softsys.com.ar','Developer','HASHEQUIPO9'),('20182222656','SoftSys','Ana','Rodriguez',30,'arodriguez@softsys.com.ar','Developer','HASHEQUIPO9'),('20182222657','SoftSys','Gisela','Lopez',33,'glopez@softsys.com.ar','Scrum Master','HASHEQUIPO9'),('20182222658','Hexacta','Marcela','Diaz',42,'mdiaz@hexacta.com.ar','SRE','HASHEQUIPO2'),('20182222659','SoftSys','Rocio','Fernandez',32,'rfernandez@softsys.com.ar','Product Owner','HASHEQUIPO9'),('20182226681','Hexacta','Micaela','Garrin',32,'mgarrin@hexacta.com.ar','SRE','HASHEQUIPO8'),('20211157559','Most','Santiago','Rojas',35,'srojas@most.com.ar','Product Owner','HASHEQUIPO3'),('20262344454','DevTech','Belen','Mitre',37,'bmitre@dtech.com.ar','Lider Desarrollo','HASHEQUIPO5'),('20262344455','DevTech','Andres','Diaz',30,'adiaz@dtech.com.ar','Developer','HASHEQUIPO5'),('20262344456','DevTech','Valeria','Rodriguez',28,'vrodriguez@dtech.com.ar','Developer','HASHEQUIPO5'),('20262344457','Most','Luis','Perez',33,'lperez@most.com.ar','Scrum Master','HASHEQUIPO3'),('20262344458','DevTech','Gabriela','Perez',39,'gperez@dtech.com.ar','SRE','HASHEQUIPO5'),('20262344459','DevTech','Matias','Fernandez',36,'mfernandez@dtech.com.ar','Product Owner','HASHEQUIPO5'),('20272859654','Most','Julio','Cesar',26,'jcesar@most.com.ar','Lider Desarrollo','HASHEQUIPO3'),('20272859655','Most','Gustavo','Fernandez',27,'gfernandez@most.com.ar','Developer','HASHEQUIPO3'),('20273374654','CyS','Roberto','Patiño',30,'rpatiño@cys.com.ar','Lider Desarrollo','HASHEQUIPO6'),('20280007656','Hexacta','Lucas','Hernandez',31,'lhernandez@hexacta.com.ar','Developer','HASHEQUIPO2'),('20282222658','SoftSys','Martin','Martinez',35,'mmartinez@softsys.com.ar','SRE','HASHEQUIPO9'),('20300015799','MindTech','Fausto','Ponzio',39,'fponsio@mtech.com.ar','Lider Desarrollo','HASHEQUIPO10'),('20300015800','MindTech','Lionel','Sanchez',28,'lsanchez@mtech.com.ar','Developer','HASHEQUIPO10'),('20300015801','MindTech','Natalia','Gomez',31,'ngomez@mtech.com.ar','Developer','HASHEQUIPO10'),('20300015802','MindTech','Diego','Perez',34,'dperez@mtech.com.ar','Scrum Master','HASHEQUIPO10'),('20300015803','MindTech','Carolina','Fernandez',37,'cfernandez@mtech.com.ar','SRE','HASHEQUIPO10'),('20300015804','MindTech','Marcelo','Lopez',36,'mlopez@mtech.com.ar','Product Owner','HASHEQUIPO10'),('20311157557','CyS','Fernanda','Sanchez',32,'fsanchez@cys.com.ar','Scrum Master','HASHEQUIPO1'),('20357754557','TecnoSoft','Mariana','Lopez',35,'mlopez@tsoft.com.ar','Scrum Master','HASHEQUIPO4'),('20357754558','TecnoSoft','Javier','Martinez',40,'jmartinez@tsoft.com.ar','SRE','HASHEQUIPO4'),('20369748310','CyS','Laureano','Garcin',40,'lgarcin@cys.com.ar','SRE','HASHEQUIPO6'),('20377775759','CyS','Juan','Hansen',33,'prod@cys.com.ar','Product Owner','HASHEQUIPO6'),('20381305704','QuickSolutions','Mariano','Closs',38,'mcloss@qs.com.ar','Lider Desarrollo','HASHEQUIPO7'),('20381305705','QuickSolutions','Florencia','Gutierrez',29,'fgutierrez@qs.com.ar','Developer','HASHEQUIPO7'),('20381305706','QuickSolutions','Sebastian','Lopez',31,'slopez@qs.com.ar','Developer','HASHEQUIPO7'),('20381305707','QuickSolutions','Valeria','Martinez',34,'vmartinez@qs.com.ar','Scrum Master','HASHEQUIPO7'),('20381305708','QuickSolutions','Luciano','Perez',36,'lperez@qs.com.ar','SRE','HASHEQUIPO7'),('20381305709','QuickSolutions','Camila','Fernandez',33,'cfernandez@qs.com.ar','Product Owner','HASHEQUIPO7'),('20381305756','Most','Carla','Mendez',30,'cmendez@most.com.ar','Developer','HASHEQUIPO3'),('20383315759','CyS','Pablo','Rodriguez',33,'prod@cys.com.ar','Product Owner','HASHEQUIPO1'),('20383334654','CyS','Roberto','Gomez',30,'rgomez@cys.com.ar','Lider Desarrollo','HASHEQUIPO1'),('20383334655','CyS','Carolina','Lopez',28,'clopez@cys.com.ar','Developer','HASHEQUIPO1'),('20457732226','CyS','Pedro','Porro',35,'pporro@cys.com.ar','Developer','HASHEQUIPO6'),('20457754550','TecnoSoft','Pablo','Sanchez',29,'psanchez@tsoft.com.ar','Developer','HASHEQUIPO4'),('20457754554','TecnoSoft','Johanna','Keneddy',31,'jkeneddy@tsoft.com.ar','Lider Desarrollo','HASHEQUIPO4'),('20457754555','TecnoSoft','Camila','Gutierrez',32,'cgutierrez@tsoft.com.ar','Developer','HASHEQUIPO4'),('20457754556','CyS','Diego','Martinez',35,'dmartinez@cys.com.ar','Developer','HASHEQUIPO1'),('20457754559','TecnoSoft','Lorena','Fernandez',36,'lfernandez@tsoft.com.ar','Product Owner','HASHEQUIPO4'),('20462344457','DevTech','Federico','Gomez',34,'fgomez@dtech.com.ar','Scrum Master','HASHEQUIPO5'),('20480015009','Hexacta','Jose','Mugica',34,'jmugica@hexacta.com.ar','Product Owner','HASHEQUIPO8'),('20480015759','Hexacta','Eduardo','Lopez',34,'elopez@hexacta.com.ar','Product Owner','HASHEQUIPO2'),('20484446655','Hexacta','Sandro','Valencia',23,'svalencia@hexacta.com.ar','Developer','HASHEQUIPO8'),('20488856654','Hexacta','Marcos','Aurelio',47,'maurelio@hexacta.com.ar','Lider Desarrollo','HASHEQUIPO2'),('20488856655','Hexacta','Valentina','Perez',29,'vperez@hexacta.com.ar','Developer','HASHEQUIPO2'),('20488857444','Hexacta','Francisco','Turo',36,'fturo@hexacta.com.ar','Scrum Master','HASHEQUIPO8'),('20488857657','Hexacta','Ana','Gomez',36,'agomez@hexacta.com.ar','Scrum Master','HASHEQUIPO2'),('20490015758','CyS','Laura','Garcia',40,'lgarcia@cys.com.ar','SRE','HASHEQUIPO1'),('20580015758','Most','Natalia','Garcia',38,'ngarcia@most.com.ar','SRE','HASHEQUIPO3'),('21111157557','CyS','Federico','Sancho',32,'fsancho@cys.com.ar','Scrum Master','HASHEQUIPO6'),('21111334655','CyS','Juanita','Jik',28,'jjik@cys.com.ar','Developer','HASHEQUIPO6'),('24567891267','Hexacta','Leandro','Inigo',31,'linigo@hexacta.com.ar','Developer','HASHEQUIPO8');
/*!40000 ALTER TABLE `miembrosequipodesarrollo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagoproveedores`
--

DROP TABLE IF EXISTS `pagoproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagoproveedores` (
  `id_pago` varchar(50) NOT NULL,
  `proveedor_desarrollo` varchar(50) NOT NULL,
  `ultimo_pago` varchar(100) NOT NULL,
  `proximo_pago` varchar(100) NOT NULL,
  `vencimiento_ultimo_pago` date NOT NULL,
  `fecha_ultimo_pago` date NOT NULL,
  `vencimiento_proximo_pago` date NOT NULL,
  `adeuda` tinyint(1) NOT NULL,
  `observaciones_pagos` varchar(300) NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `proveedor_desarrollo` (`proveedor_desarrollo`),
  CONSTRAINT `pagoproveedores_ibfk_1` FOREIGN KEY (`proveedor_desarrollo`) REFERENCES `proyecto` (`proveedor_desarrollo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagoproveedores`
--

LOCK TABLES `pagoproveedores` WRITE;
/*!40000 ALTER TABLE `pagoproveedores` DISABLE KEYS */;
INSERT INTO `pagoproveedores` VALUES ('HASH001','CyS','20040.00','22040.00','2023-11-15','2023-11-12','2023-12-15',0,'En regla con los pagos'),('HASH0010','MindTech','10890.00','17290.00','2023-11-15','2023-11-13','2023-12-15',0,'En regla con los pago'),('HASH002','Hexacta','37800.00','37450.00','2023-11-01','2023-11-01','2023-12-01',0,'En regla con los pagos'),('HASH003','Most','15140.00','13140.00','2023-11-10','2023-11-08','2023-12-10',0,'En regla con los pagos'),('HASH004','TecnoSoft','10300.00','20300.00','2023-11-15','2023-11-16','2023-12-15',1,'Esta en deuda por falta de pago total de Noviembre y atraso en el pago'),('HASH005','DevTech','15689.00','18659.00','2023-11-01','2023-11-01','2023-12-01',0,'En regla con los pago'),('HASH006','CyS','90000.00','95060.00','2023-11-10','2023-11-08','2023-12-10',0,'En regla con los pago'),('HASH007','QuickSolutions','66403.00','57403.00','2023-11-15','2023-11-14','2023-12-15',0,'En regla con los pago'),('HASH008','Hexacta','14067.00','12068.00','2023-11-01','2023-11-01','2023-12-01',0,'En regla con los pago'),('HASH009','SoftSys','50670.00','60670.00','2023-11-10','2023-11-11','2023-12-10',1,'Esta en deuda por falta de pago total de Noviembre y atraso en el pago');
/*!40000 ALTER TABLE `pagoproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuesto`
--

DROP TABLE IF EXISTS `presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presupuesto` (
  `id_pliego` varchar(50) NOT NULL,
  `id_proyecto` varchar(50) NOT NULL,
  `presupuesto_asignado_2023` varchar(100) NOT NULL,
  `modalidad_contratacion` varchar(100) NOT NULL,
  `fecha_inicio_contrato` date NOT NULL,
  `fecha_actualizacion_contrato` date NOT NULL,
  `fecha_fin_contrato` date NOT NULL,
  `observaciones` varchar(300) NOT NULL,
  `proveedor_desarrollo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pliego`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `presupuesto_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
INSERT INTO `presupuesto` VALUES ('Pliego1','P1','1000000.00','NuevaModalidad','2023-01-15','2023-02-20','2023-12-31','Presupuesto asignado en dólares para el proyecto P1','CyS'),('Pliego10','P10','500000.00','Monotributo','2023-10-15','2023-11-20','2023-12-31','Presupuesto asignado en dólares para el proyecto P10','MindTech'),('Pliego11','P11','2000000.00','Contratacion Directa','2023-04-01','2023-04-15','2023-12-31','Nuevo presupuesto asignado en dólares para el proyecto P2','NewProvider'),('Pliego2','P2','1500000.00','Orden De Compra Abierta','2023-02-01','2023-03-15','2023-12-31','Presupuesto asignado en dólares para el proyecto P2','Hexacta'),('Pliego3','P3','800000.00','Monotributo','2023-03-10','2023-04-05','2023-12-31','Presupuesto asignado en dólares para el proyecto P3','Most'),('Pliego4','P4','1200000.00','Orden De Compra Abierta','2023-04-15','2023-05-20','2023-12-31','Presupuesto asignado en dólares para el proyecto P4','TecnoSoft'),('Pliego5','P5','1700000.00','Orden De Compra Abierta','2023-05-01','2023-06-15','2023-12-31','Presupuesto asignado en dólares para el proyecto P5','DevTech'),('Pliego6','P6','900000.00','Contrato Directo','2023-06-10','2023-07-05','2023-12-31','Presupuesto asignado en dólares para el proyecto P6','CyS'),('Pliego7','P7','600000.00','Orden de Compra Cerrada','2023-07-15','2023-08-20','2023-12-31','Presupuesto asignado en dólares para el proyecto P7','QuickSolutions'),('Pliego8','P8','1100000.00','Orden De Compra Abierta','2023-08-01','2023-09-15','2023-12-31','Presupuesto asignado en dólares para el proyecto P8','Hexacta'),('Pliego9','P9','800000.00','Monotributo','2023-09-10','2023-10-05','2023-12-31','Presupuesto asignado en dólares para el proyecto P9','SoftSys');
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Presupuesto_After_Insert` AFTER INSERT ON `presupuesto` FOR EACH ROW BEGIN
    INSERT INTO LogPresupuesto (id_pliego, accion)
    VALUES (NEW.id_pliego, 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Presupuesto_Before_Update` BEFORE UPDATE ON `presupuesto` FOR EACH ROW BEGIN
    INSERT INTO LogPresupuesto (id_pliego, accion)
    VALUES (OLD.id_pliego, 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id_proyecto` varchar(50) NOT NULL,
  `id_reparticion` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_actualizacion` date NOT NULL,
  `proveedor_desarrollo` varchar(50) NOT NULL,
  `id_referente` varchar(50) NOT NULL,
  `componentes` int DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`),
  KEY `id_reparticion` (`id_reparticion`),
  KEY `id_referente` (`id_referente`),
  KEY `idx_proveedor_desarrollo` (`proveedor_desarrollo`),
  CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`id_reparticion`) REFERENCES `reparticion` (`id_reparticion`),
  CONSTRAINT `proyecto_ibfk_2` FOREIGN KEY (`id_referente`) REFERENCES `referentegcba` (`id_referente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES ('P1','MS','2023-01-15','2023-10-20','NuevoProveedor','20224457894',10),('P10','MTR','2023-10-15','2023-12-20','MindTech','20407654982',5),('P11','MS','2023-04-01','2023-04-15','OtroProveedor','20224457894',20),('P2','ME','2023-02-01','2023-09-15','Hexacta','20336698233',15),('P3','MT','2023-03-10','2023-12-05','Most','20393654987',8),('P4','MEXT','2023-04-15','2023-11-20','TecnoSoft','20224457897',12),('P5','MJ','2023-05-01','2023-10-15','DevTech','20437697233',18),('P6','MEDU','2023-06-10','2023-12-05','CyS','20352254357',9),('P7','MD','2023-07-15','2023-09-20','QuickSolutions','20274557214',6),('P8','MTCH','2023-08-01','2023-11-15','Hexacta','20314678293',10),('P9','MINT','2023-09-10','2023-12-05','SoftSys','20396244987',8);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Proyecto_After_Insert` AFTER INSERT ON `proyecto` FOR EACH ROW BEGIN
    INSERT INTO LogProyecto (id_proyecto, accion)
    VALUES (NEW.id_proyecto, 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Proyecto_Before_Update` BEFORE UPDATE ON `proyecto` FOR EACH ROW BEGIN
    INSERT INTO LogProyecto (id_proyecto, accion)
    VALUES (OLD.id_proyecto, 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `referentegcba`
--

DROP TABLE IF EXISTS `referentegcba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referentegcba` (
  `id_referente` varchar(30) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo_oficial` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `numero_contacto` varchar(10) NOT NULL,
  `id_reparticion` varchar(50) NOT NULL,
  `cantidad_proyectos` int DEFAULT NULL,
  PRIMARY KEY (`id_referente`),
  KEY `id_reparticion` (`id_reparticion`),
  CONSTRAINT `referentegcba_ibfk_1` FOREIGN KEY (`id_reparticion`) REFERENCES `reparticion` (`id_reparticion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referentegcba`
--

LOCK TABLES `referentegcba` WRITE;
/*!40000 ALTER TABLE `referentegcba` DISABLE KEYS */;
INSERT INTO `referentegcba` VALUES ('20224457894','María','Rodríguez','maria.rodriguez@ba.gcba.gob.ar','Gerente','0001-0001','MS',5),('20224457897','Fernando','Sánchez','fernando.sanchez@ba.gcba.gob.ar','Director','0007-0007','MEXT',5),('20274557214','Ana','Gutiérrez','ana.gutierrez@ba.gcba.gob.ar','Subgerente','0010-0010','MD',3),('20314678293','Luciano','Rodríguez','luciano.rodriguez@ba.gcba.gob.ar','Gerente','0011-0011','MTCH',6),('20336698233','Carlos','López','carlos.lopez@ba.gcba.gob.ar','Director General','0002-0002','ME',7),('20352254357','Jorge','Fernández','jorge.fernandez@ba.gcba.gob.ar','Gerente de Proyectos','0009-0009','MEDU',5),('20393654987','Laura','García','laura.garcia@ba.gcba.gob.ar','Director General','0003-0003','MT',4),('20396244987','Julia','Hernández','julia.hernandez@ba.gcba.gob.ar','Director','0012-0012','MINT',4),('20407654982','Santiago','Fernández','santiago.fernandez@ba.gcba.gob.ar','Subgerente','0013-0013','MTR',5),('20437697233','Camila','López','camila.lopez@ba.gcba.gob.ar','Director General','0008-0008','MJ',7);
/*!40000 ALTER TABLE `referentegcba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparticion`
--

DROP TABLE IF EXISTS `reparticion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparticion` (
  `id_reparticion` varchar(30) NOT NULL,
  `ministerio` varchar(100) NOT NULL,
  `contacto` varchar(50) NOT NULL,
  `nombre_funcionario` varchar(50) NOT NULL,
  `apellido_funcionario` varchar(50) NOT NULL,
  `id_referente` varchar(50) NOT NULL,
  PRIMARY KEY (`id_reparticion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparticion`
--

LOCK TABLES `reparticion` WRITE;
/*!40000 ALTER TABLE `reparticion` DISABLE KEYS */;
INSERT INTO `reparticion` VALUES ('MD','Ministerio de Modernizacion','contacto_md@ba.gcba.gob.ar','Bautista','Pral','20274557214'),('ME','Ministerio de Economía','contacto_me@ba.gcba.gob.ar','Luis','Martínez','20336698233'),('MEDU','Ministerio de Educacion','contacto_medu@ba.gcba.gob.ar','Camila','Migret','20352254357'),('MEXT','Ministerio de Relaciones Exteriores','contacto_mrext@ba.gcba.gob.ar','Pilar','Peña','20224457897'),('MINT','Ministerio de Interior','contacto_mint@ba.gcba.gob.ar','Martina','Perez','20396244987'),('MJ','Ministerio de Justicia','contacto_mj@ba.gcba.gob.ar','Marcos','Cigali','20437697233'),('MS','Ministerio de Salud','contacto_ms@ba.gcba.gob.ar','Juan','Gómez','20224457894'),('MS3','Ministerio de Educación','contacto_ms3@ba.gcba.gob.ar','Laura','Perez','20224452222'),('MT','Ministerio de Transporte','contacto_mt@ba.gcba.gob.ar','Ana','Fernández','20393654987'),('MTCH','Ministerio de Tecnologia','contacto_mtch@ba.gcba.gob.ar','Pedro','Pino','20314678293'),('MTR','Ministerio de Trabajo','contacto_mtr@ba.gcba.gob.ar','Carlos','Sereno','20407654982');
/*!40000 ALTER TABLE `reparticion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnologia`
--

DROP TABLE IF EXISTS `tecnologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnologia` (
  `id_tecnologia` varchar(30) NOT NULL,
  `nombre_tecnologia` varchar(50) NOT NULL,
  `version` varchar(50) NOT NULL,
  `fecha_inicio_soporte` date NOT NULL,
  `fecha_fin_soporte` date NOT NULL,
  `homologada` tinyint(1) NOT NULL,
  `proxima_version` varchar(50) NOT NULL,
  `pipeline` tinyint(1) NOT NULL,
  `imagen_rhel` varchar(50) NOT NULL,
  `url_imagen_rhel` varchar(255) DEFAULT NULL,
  `id_proyecto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tecnologia`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `tecnologia_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnologia`
--

LOCK TABLES `tecnologia` WRITE;
/*!40000 ALTER TABLE `tecnologia` DISABLE KEYS */;
INSERT INTO `tecnologia` VALUES ('1','Java','17.0','2021-09-14','2026-09-14',1,'18.0',1,'rhel_image_1','https://www.example.com/image1','P1'),('10','PHP','7.4','2020-06-01','2022-12-31',1,'5.6',1,'rhel_image_10','https://www.example.com/image10','P10'),('2','PHP','8.0','2022-01-01','2023-12-31',1,'9.0',0,'rhel_image_2','https://www.example.com/image2','P2'),('3','ReactJs','18.0','2022-01-01','2023-12-31',1,'19.0',1,'rhel_image_3','https://www.example.com/image3','P3'),('4','Python','3.9','2020-10-20','2025-10-20',1,'3.10',1,'rhel_image_4','https://www.example.com/image4','P4'),('5','Ruby','3.0','2021-01-01','2024-12-31',1,'3.1',0,'rhel_image_5','https://www.example.com/image5','P5'),('6','Angular','13.0','2021-02-01','2024-12-31',1,'14.0',1,'rhel_image_6','https://www.example.com/image6','P6'),('7','Node.js','16.0','2021-03-01','2024-12-31',1,'17.0',0,'rhel_image_7','https://www.example.com/image7','P7'),('8','Java','11.0','2021-04-01','2024-12-31',1,'11.0',1,'rhel_image_8','https://www.example.com/image8','P8'),('9','Go','1.18','2021-05-01','2024-12-31',1,'1.19',0,'rhel_image_9','https://www.example.com/image9','P9');
/*!40000 ALTER TABLE `tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistapresupuestosministerio`
--

DROP TABLE IF EXISTS `vistapresupuestosministerio`;
/*!50001 DROP VIEW IF EXISTS `vistapresupuestosministerio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistapresupuestosministerio` AS SELECT 
 1 AS `ministerio`,
 1 AS `id_pliego`,
 1 AS `presupuesto_asignado_2023`,
 1 AS `modalidad_contratacion`,
 1 AS `fecha_inicio_contrato`,
 1 AS `fecha_fin_contrato`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaproyectosreferentegcba`
--

DROP TABLE IF EXISTS `vistaproyectosreferentegcba`;
/*!50001 DROP VIEW IF EXISTS `vistaproyectosreferentegcba`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaproyectosreferentegcba` AS SELECT 
 1 AS `id_referente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `id_proyecto`,
 1 AS `fecha_inicio`,
 1 AS `fecha_actualizacion`,
 1 AS `proveedor_desarrollo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaproyectostecnologias`
--

DROP TABLE IF EXISTS `vistaproyectostecnologias`;
/*!50001 DROP VIEW IF EXISTS `vistaproyectostecnologias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaproyectostecnologias` AS SELECT 
 1 AS `id_proyecto`,
 1 AS `fecha_inicio`,
 1 AS `fecha_actualizacion`,
 1 AS `proveedor_desarrollo`,
 1 AS `nombre_tecnologia`,
 1 AS `version`,
 1 AS `fecha_inicio_soporte`,
 1 AS `fecha_fin_soporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaresumenpresupuestos`
--

DROP TABLE IF EXISTS `vistaresumenpresupuestos`;
/*!50001 DROP VIEW IF EXISTS `vistaresumenpresupuestos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaresumenpresupuestos` AS SELECT 
 1 AS `id_proyecto`,
 1 AS `presupuesto_asignado_2023`,
 1 AS `modalidad_contratacion`,
 1 AS `fecha_inicio_contrato`,
 1 AS `fecha_fin_contrato`,
 1 AS `ministerio`,
 1 AS `nombre_referente`,
 1 AS `nombre_referente_gcba`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistatecnologiashomologadas`
--

DROP TABLE IF EXISTS `vistatecnologiashomologadas`;
/*!50001 DROP VIEW IF EXISTS `vistatecnologiashomologadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistatecnologiashomologadas` AS SELECT 
 1 AS `id_tecnologia`,
 1 AS `nombre_tecnologia`,
 1 AS `version`,
 1 AS `fecha_inicio_soporte`,
 1 AS `fecha_fin_soporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'mapa_aplicaciones_dev'
--
/*!50003 DROP FUNCTION IF EXISTS `DetallePresupuestoProyecto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DetallePresupuestoProyecto`(proyecto_id VARCHAR(50)) RETURNS text CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE resultado TEXT;
    
    SELECT CONCAT(presupuesto_asignado_2023, ', ', modalidad_contratacion, ', ', fecha_inicio_contrato, ', ', fecha_fin_contrato, ', ', observaciones, ', ', proveedor_desarrollo, '\n')
    INTO resultado
    FROM Presupuesto
    WHERE id_proyecto = proyecto_id;
    
    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ProyectosPorMinisterio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ProyectosPorMinisterio`(ministerio_nombre VARCHAR(100)) RETURNS text CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE resultado TEXT;
    
    SELECT CONCAT(id_proyecto, ', ', fecha_inicio, ', ', proveedor_desarrollo, ', ', componentes, '\n')
    INTO resultado
    FROM Proyecto AS P
    JOIN Reparticion AS R ON P.id_reparticion = R.id_reparticion
    WHERE R.ministerio = ministerio_nombre;
    
    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarEnReparticion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEnReparticion`(
    IN id_reparticion_param VARCHAR(30),
    IN ministerio_param VARCHAR(100),
    IN contacto_param VARCHAR(50),
    IN nombre_funcionario_param VARCHAR(50),
    IN apellido_funcionario_param VARCHAR(50),
    IN id_referente_param VARCHAR(50),
    OUT detalle_nueva_fila VARCHAR(255)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET detalle_nueva_fila = 'Error al insertar la fila';
    END;

    INSERT INTO Reparticion (
        id_reparticion, ministerio, contacto, nombre_funcionario, apellido_funcionario, id_referente
    ) VALUES (
        id_reparticion_param, ministerio_param, contacto_param, nombre_funcionario_param, apellido_funcionario_param, id_referente_param
    );

    SELECT CONCAT('Nueva fila insertada: id_reparticion=', id_reparticion_param, ', ministerio=', ministerio_param, ', contacto=', contacto_param, ', nombre_funcionario=', nombre_funcionario_param, ', apellido_funcionario=', apellido_funcionario_param, ', id_referente=', id_referente_param) INTO detalle_nueva_fila;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrdenarTabla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenarTabla`(
    IN campo_ordenamiento VARCHAR(50),
    IN tipo_orden VARCHAR(10)
)
BEGIN
    DECLARE orden VARCHAR(10);

    IF tipo_orden = 'asc' THEN
        SET orden = 'ASC';
    ELSE
        SET orden = 'DESC';
    END IF;

    IF campo_ordenamiento = 'id_reparticion' OR campo_ordenamiento = 'ministerio' OR campo_ordenamiento = 'contacto' OR campo_ordenamiento = 'nombre_funcionario' OR campo_ordenamiento = 'apellido_funcionario' OR campo_ordenamiento = 'id_referente' THEN
        SET @query = CONCAT('SELECT * FROM Reparticion ORDER BY ', campo_ordenamiento, ' ', orden, ';');
        PREPARE stmt FROM @query;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSE
        SELECT 'Campo de ordenamiento inválido' AS Resultado;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vistapresupuestosministerio`
--

/*!50001 DROP VIEW IF EXISTS `vistapresupuestosministerio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistapresupuestosministerio` AS select `r`.`ministerio` AS `ministerio`,`p`.`id_pliego` AS `id_pliego`,`p`.`presupuesto_asignado_2023` AS `presupuesto_asignado_2023`,`p`.`modalidad_contratacion` AS `modalidad_contratacion`,`p`.`fecha_inicio_contrato` AS `fecha_inicio_contrato`,`p`.`fecha_fin_contrato` AS `fecha_fin_contrato` from ((`presupuesto` `p` join `proyecto` `pr` on((`p`.`id_proyecto` = `pr`.`id_proyecto`))) join `reparticion` `r` on((`pr`.`id_reparticion` = `r`.`id_reparticion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaproyectosreferentegcba`
--

/*!50001 DROP VIEW IF EXISTS `vistaproyectosreferentegcba`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaproyectosreferentegcba` AS select `rg`.`id_referente` AS `id_referente`,`rg`.`nombre` AS `nombre`,`rg`.`apellido` AS `apellido`,`p`.`id_proyecto` AS `id_proyecto`,`p`.`fecha_inicio` AS `fecha_inicio`,`p`.`fecha_actualizacion` AS `fecha_actualizacion`,`p`.`proveedor_desarrollo` AS `proveedor_desarrollo` from (`referentegcba` `rg` join `proyecto` `p` on((`rg`.`id_referente` = `p`.`id_referente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaproyectostecnologias`
--

/*!50001 DROP VIEW IF EXISTS `vistaproyectostecnologias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaproyectostecnologias` AS select `p`.`id_proyecto` AS `id_proyecto`,`p`.`fecha_inicio` AS `fecha_inicio`,`p`.`fecha_actualizacion` AS `fecha_actualizacion`,`p`.`proveedor_desarrollo` AS `proveedor_desarrollo`,`t`.`nombre_tecnologia` AS `nombre_tecnologia`,`t`.`version` AS `version`,`t`.`fecha_inicio_soporte` AS `fecha_inicio_soporte`,`t`.`fecha_fin_soporte` AS `fecha_fin_soporte` from (`proyecto` `p` join `tecnologia` `t` on((`p`.`id_proyecto` = `t`.`id_proyecto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaresumenpresupuestos`
--

/*!50001 DROP VIEW IF EXISTS `vistaresumenpresupuestos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaresumenpresupuestos` AS select `p`.`id_proyecto` AS `id_proyecto`,`p`.`presupuesto_asignado_2023` AS `presupuesto_asignado_2023`,`p`.`modalidad_contratacion` AS `modalidad_contratacion`,`p`.`fecha_inicio_contrato` AS `fecha_inicio_contrato`,`p`.`fecha_fin_contrato` AS `fecha_fin_contrato`,`r`.`ministerio` AS `ministerio`,`r`.`nombre_funcionario` AS `nombre_referente`,`rg`.`nombre` AS `nombre_referente_gcba` from (((`presupuesto` `p` join `proyecto` `pr` on((`p`.`id_proyecto` = `pr`.`id_proyecto`))) join `reparticion` `r` on((`pr`.`id_reparticion` = `r`.`id_reparticion`))) join `referentegcba` `rg` on((`pr`.`id_referente` = `rg`.`id_referente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistatecnologiashomologadas`
--

/*!50001 DROP VIEW IF EXISTS `vistatecnologiashomologadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistatecnologiashomologadas` AS select `tecnologia`.`id_tecnologia` AS `id_tecnologia`,`tecnologia`.`nombre_tecnologia` AS `nombre_tecnologia`,`tecnologia`.`version` AS `version`,`tecnologia`.`fecha_inicio_soporte` AS `fecha_inicio_soporte`,`tecnologia`.`fecha_fin_soporte` AS `fecha_fin_soporte` from `tecnologia` where (`tecnologia`.`homologada` = true) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27  0:00:12

