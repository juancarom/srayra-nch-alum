-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: asignacionesfamiliares
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.11.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$3ZsjR1WEGFFdUiHKsIygwum78LD388ZL9/iiEJKMR3OYb8aemr2x2',NULL,NULL,NULL,4,'2012-09-19 00:35:17','2012-09-18 11:53:14','127.0.0.1','127.0.0.1','2012-09-17 17:55:06','2012-09-19 00:35:17');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacion_por_hijos`
--

DROP TABLE IF EXISTS `asignacion_por_hijos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignacion_por_hijos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hijo_id` int(11) DEFAULT NULL,
  `discapacitado` tinyint(1) DEFAULT NULL,
  `escolarizado` tinyint(1) DEFAULT NULL,
  `escuela_id` int(11) DEFAULT NULL,
  `fecha_de_alta` date DEFAULT NULL,
  `fecha_de_renovacion` date DEFAULT NULL,
  `fecha_de_vencimiento` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `persona_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion_por_hijos`
--

LOCK TABLES `asignacion_por_hijos` WRITE;
/*!40000 ALTER TABLE `asignacion_por_hijos` DISABLE KEYS */;
INSERT INTO `asignacion_por_hijos` VALUES (1,1,0,1,1,NULL,NULL,NULL,'2012-09-18 13:04:48','2012-09-18 13:04:48',1);
/*!40000 ALTER TABLE `asignacion_por_hijos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escuelas`
--

DROP TABLE IF EXISTS `escuelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escuelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad_id` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuelas`
--

LOCK TABLES `escuelas` WRITE;
/*!40000 ALTER TABLE `escuelas` DISABLE KEYS */;
INSERT INTO `escuelas` VALUES (1,83,748,'Escuela Provincial de Educacion Provincial Numero 748','','2012-09-18 00:14:55','2012-09-18 00:16:22');
/*!40000 ALTER TABLE `escuelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civils`
--

DROP TABLE IF EXISTS `estado_civils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civils`
--

LOCK TABLES `estado_civils` WRITE;
/*!40000 ALTER TABLE `estado_civils` DISABLE KEYS */;
INSERT INTO `estado_civils` VALUES (1,'Soltero/a','2012-09-17 18:10:09','2012-09-17 18:10:09'),(2,'Casado/a','2012-09-17 18:10:20','2012-09-17 18:10:20'),(3,'Divorciado/a','2012-09-17 18:10:31','2012-09-17 18:10:31'),(4,'Viudo/a','2012-09-17 18:10:43','2012-09-17 18:10:43');
/*!40000 ALTER TABLE `estado_civils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hijo_de_padres`
--

DROP TABLE IF EXISTS `hijo_de_padres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hijo_de_padres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) DEFAULT NULL,
  `hijo_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hijo_de_padres`
--

LOCK TABLES `hijo_de_padres` WRITE;
/*!40000 ALTER TABLE `hijo_de_padres` DISABLE KEYS */;
/*!40000 ALTER TABLE `hijo_de_padres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hijos`
--

DROP TABLE IF EXISTS `hijos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hijos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_de_documento_id` int(11) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `escolarizado` tinyint(1) DEFAULT NULL,
  `observaciones` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `persona_id` int(11) DEFAULT NULL,
  `sexo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hijos`
--

LOCK TABLES `hijos` WRITE;
/*!40000 ALTER TABLE `hijos` DISABLE KEYS */;
INSERT INTO `hijos` VALUES (1,1,123456,'Romero','Pepe','2000-01-01',1,NULL,'2012-09-17 19:45:19','2012-09-17 19:45:19',1,2),(2,1,123457,'Romero','Pepa','2001-03-01',1,NULL,'2012-09-17 19:53:12','2012-09-17 19:54:33',1,1);
/*!40000 ALTER TABLE `hijos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidads`
--

DROP TABLE IF EXISTS `localidads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidads`
--

LOCK TABLES `localidads` WRITE;
/*!40000 ALTER TABLE `localidads` DISABLE KEYS */;
INSERT INTO `localidads` VALUES (1,'9107','28 DE JULIO','2012-09-17 23:57:06','2012-09-17 23:57:06'),(2,'9037','ALDEA BELEIRO','2012-09-17 23:57:59','2012-09-17 23:57:59'),(3,'9033','ALTO RIO SENGUER','2012-09-17 23:57:59','2012-09-17 23:57:59'),(4,'9201','BARRANCAS','2012-09-17 23:57:59','2012-09-17 23:57:59'),(5,'9105','BETHESDA','2012-09-17 23:57:59','2012-09-17 23:57:59'),(6,'9121','CHACAY OESTE','2012-09-17 23:57:59','2012-09-17 23:57:59'),(7,'9220','JOSE DE SAN MARTIN','2012-09-17 23:57:59','2012-09-17 23:57:59'),(8,'9225','LAGO NRO 3','2012-09-17 23:57:59','2012-09-17 23:57:59'),(9,'9201','TECKA','2012-09-17 23:57:59','2012-09-17 23:57:59'),(10,'9213','LAGO EPUYEN','2012-09-17 23:58:00','2012-09-17 23:58:00'),(11,'8430','EL BOLSON','2012-09-17 23:58:00','2012-09-17 23:58:00'),(12,'9019','CALETA OLIVIA','2012-09-17 23:58:00','2012-09-17 23:58:00'),(13,'9201','ALDEA EPULEF','2012-09-17 23:58:00','2012-09-17 23:58:00'),(14,'2000','ROSARIO','2012-09-17 23:58:00','2012-09-17 23:58:00'),(15,'5850','RIO TERCERO','2012-09-17 23:58:00','2012-09-17 23:58:00'),(16,'9001','KILOMETRO 5','2012-09-17 23:58:00','2012-09-17 23:58:00'),(17,'9003','KILOMETRO 8','2012-09-17 23:58:00','2012-09-17 23:58:00'),(18,'9005','KILOMETRO 4','2012-09-17 23:58:00','2012-09-17 23:58:00'),(19,'9000','KILOMETRO 11','2012-09-17 23:58:00','2012-09-17 23:58:00'),(20,'9001','KILOMETRO 17','2012-09-17 23:58:00','2012-09-17 23:58:00'),(21,'9009','KILOMETRO 27','2012-09-17 23:58:00','2012-09-17 23:58:00'),(22,'9009','KILOMETRO 96','2012-09-17 23:58:00','2012-09-17 23:58:00'),(23,'9020','KILOMETRO 191','2012-09-17 23:58:00','2012-09-17 23:58:00'),(24,'9201','LANGUINEO','2012-09-17 23:58:00','2012-09-17 23:58:00'),(25,'9003','CANADON SECO','2012-09-17 23:58:00','2012-09-17 23:58:00'),(26,'9111','BAHIA BUSTAMANTE','2012-09-17 23:58:01','2012-09-17 23:58:01'),(27,'9203','CERRO CENTINELA','2012-09-17 23:58:01','2012-09-17 23:58:01'),(28,'9207','CERRO CONDOR','2012-09-17 23:58:01','2012-09-17 23:58:01'),(29,'8430','CERRO RADAL','2012-09-17 23:58:01','2012-09-17 23:58:01'),(30,'9020','CHACRAS DE  SARMIENTO','2012-09-17 23:58:01','2012-09-17 23:58:01'),(31,'9213','COLONIA CUSHAMEN','2012-09-17 23:58:01','2012-09-17 23:58:01'),(32,'9201','CORCOVADO','2012-09-17 23:58:01','2012-09-17 23:58:01'),(33,'9201','COSTA DEL GUALJAINA','2012-09-17 23:58:01','2012-09-17 23:58:01'),(34,'9201','COSTA DEL LEPA','2012-09-17 23:58:01','2012-09-17 23:58:01'),(35,'8211','CUSHAMEN','2012-09-17 23:58:01','2012-09-17 23:58:01'),(36,'9036','DR. RICARDO ROJAS','2012-09-17 23:58:01','2012-09-17 23:58:01'),(37,'9217','EL COIHUE','2012-09-17 23:58:01','2012-09-17 23:58:01'),(38,'8431','EL HOYO','2012-09-17 23:58:01','2012-09-17 23:58:01'),(39,'9207','EL PAJARITO','2012-09-17 23:58:01','2012-09-17 23:58:01'),(40,'9101','FLORENTINO AMEGHINO','2012-09-17 23:58:01','2012-09-17 23:58:01'),(41,'9213','FOFO CAHUEL','2012-09-17 23:58:01','2012-09-17 23:58:01'),(42,'9105','GAIMAN','2012-09-17 23:58:01','2012-09-17 23:58:01'),(43,'9122','GAN GAN','2012-09-17 23:58:02','2012-09-17 23:58:02'),(44,'9201','GUALJAINA','2012-09-17 23:58:02','2012-09-17 23:58:02'),(45,'9200','NAHUEL PAN','2012-09-17 23:58:02','2012-09-17 23:58:02'),(46,'9120','PTO. MADRYN','2012-09-17 23:58:02','2012-09-17 23:58:02'),(47,'9121','PUERTO PIRAMIDES','2012-09-17 23:58:02','2012-09-17 23:58:02'),(48,'9001','RADA TILLY','2012-09-17 23:58:02','2012-09-17 23:58:02'),(49,'9103','RAWSON','2012-09-17 23:58:02','2012-09-17 23:58:02'),(50,'9020','SARMIENTO','2012-09-17 23:58:02','2012-09-17 23:58:02'),(51,'9121','SEPAUCAL','2012-09-17 23:58:02','2012-09-17 23:58:02'),(52,'9203','TREVELIN','2012-09-17 23:58:02','2012-09-17 23:58:02'),(53,'9200','VILLA FUTALAUFQUEN','2012-09-17 23:58:02','2012-09-17 23:58:02'),(54,'9103','PLAYA UNION','2012-09-17 23:58:02','2012-09-17 23:58:02'),(55,'9033','ALDEA APELEG','2012-09-17 23:58:02','2012-09-17 23:58:02'),(56,'9107','BOCA ZANJA NORTE','2012-09-17 23:58:02','2012-09-17 23:58:02'),(57,'9105','BRYN GWYN','2012-09-17 23:58:02','2012-09-17 23:58:02'),(58,'9003','CALETA CORDOVA','2012-09-17 23:58:02','2012-09-17 23:58:02'),(59,'9000','COMODORO RIVADAVIA','2012-09-17 23:58:03','2012-09-17 23:58:03'),(60,'9201','CORCOVADO SUR','2012-09-17 23:58:03','2012-09-17 23:58:03'),(61,'9210','COSTA DEL CHUBUT','2012-09-17 23:58:03','2012-09-17 23:58:03'),(62,'9009','DIADEMA ARGENTINA','2012-09-17 23:58:03','2012-09-17 23:58:03'),(63,'9107','DOLAVON','2012-09-17 23:58:03','2012-09-17 23:58:03'),(64,'9107','EBENECER','2012-09-17 23:58:03','2012-09-17 23:58:03'),(65,'9217','EL BLANCO','2012-09-17 23:58:03','2012-09-17 23:58:03'),(66,'9217','EL CAJON','2012-09-17 23:58:03','2012-09-17 23:58:03'),(67,'9101','EL MIRASOL','2012-09-17 23:58:03','2012-09-17 23:58:03'),(68,'8217','EL RINCON','2012-09-17 23:58:03','2012-09-17 23:58:03'),(69,'9211','EL TURBIO','2012-09-17 23:58:03','2012-09-17 23:58:03'),(70,'9031','FACUNDO','2012-09-17 23:58:03','2012-09-17 23:58:03'),(71,'9203','LAGO ROSARIO','2012-09-17 23:58:03','2012-09-17 23:58:03'),(72,'9121','LAGUNA DE VACA','2012-09-17 23:58:03','2012-09-17 23:58:03'),(73,'9121','LAGUNITA SALADA','2012-09-17 23:58:03','2012-09-17 23:58:03'),(74,'9203','LOS RAPIDOS','2012-09-17 23:58:03','2012-09-17 23:58:03'),(75,'9105','MINAPARANA','2012-09-17 23:58:03','2012-09-17 23:58:03'),(76,'9207','PASO DE INDIOS','2012-09-17 23:58:03','2012-09-17 23:58:03'),(77,'9105','PIEDRA GRANDE','2012-09-17 23:58:03','2012-09-17 23:58:03'),(78,'9020','PIO PIO','2012-09-17 23:58:04','2012-09-17 23:58:04'),(79,'9203','RIO CORINTOS','2012-09-17 23:58:04','2012-09-17 23:58:04'),(80,'9033','SENGUER','2012-09-17 23:58:04','2012-09-17 23:58:04'),(81,'9007','SIERRA COLORADA','2012-09-17 23:58:04','2012-09-17 23:58:04'),(82,'9107','TIERRA SALADA','2012-09-17 23:58:04','2012-09-17 23:58:04'),(83,'9100','TRELEW','2012-09-17 23:58:04','2012-09-17 23:58:04'),(84,'8415','NORQUINO SUR','2012-09-17 23:58:04','2012-09-17 23:58:04'),(85,'0','NS','2012-09-17 23:58:04','2012-09-17 23:58:04'),(86,'9001','ASTRA','2012-09-17 23:58:04','2012-09-17 23:58:04'),(87,'9121','BLANCUNTRE','2012-09-17 23:58:04','2012-09-17 23:58:04'),(88,'9210','BS.AS. CHICO','2012-09-17 23:58:04','2012-09-17 23:58:04'),(89,'9023','BUEN PASTO','2012-09-17 23:58:04','2012-09-17 23:58:04'),(90,'9111','CAMARONES','2012-09-17 23:58:04','2012-09-17 23:58:04'),(91,'9201','CARRENLEUFU','2012-09-17 23:58:04','2012-09-17 23:58:04'),(92,'9217','CHOLILA','2012-09-17 23:58:04','2012-09-17 23:58:04'),(93,'9201','COLAN CONHUE','2012-09-17 23:58:04','2012-09-17 23:58:04'),(94,'9121','EL ESCORIAL','2012-09-17 23:58:04','2012-09-17 23:58:04'),(95,'9210','EL MAITEN','2012-09-17 23:58:05','2012-09-17 23:58:05'),(96,'9121','EL RIACHO','2012-09-17 23:58:05','2012-09-17 23:58:05'),(97,'9211','EPUYEN','2012-09-17 23:58:05','2012-09-17 23:58:05'),(98,'9200','ESQUEL','2012-09-17 23:58:05','2012-09-17 23:58:05'),(99,'9225','FRONT. RIO PICO','2012-09-17 23:58:05','2012-09-17 23:58:05'),(100,'9121','GASTRE','2012-09-17 23:58:05','2012-09-17 23:58:05'),(101,'9223','GOB. COSTA','2012-09-17 23:58:33','2012-09-17 23:58:33'),(102,'9105','LA ANGOSTURA','2012-09-17 23:58:33','2012-09-17 23:58:33'),(103,'9039','LAGO BLANCO','2012-09-17 23:58:33','2012-09-17 23:58:33'),(104,'9431','LAGO PUELO','2012-09-17 23:58:33','2012-09-17 23:58:33'),(105,'9217','LAGO RIVADAVIA','2012-09-17 23:58:33','2012-09-17 23:58:33'),(106,'8430','LAS GOLONDRINAS','2012-09-17 23:58:33','2012-09-17 23:58:33'),(107,'9101','LAS PLUMAS','2012-09-17 23:58:33','2012-09-17 23:58:33'),(108,'9213','LELEQUE','2012-09-17 23:58:33','2012-09-17 23:58:33'),(109,'9207','LOS ALTARES','2012-09-17 23:58:33','2012-09-17 23:58:33'),(110,'9203','LOS CIPRESES','2012-09-17 23:58:33','2012-09-17 23:58:33'),(111,'9121','MINA ANGELA','2012-09-17 23:58:33','2012-09-17 23:58:33'),(112,'9201','PASO DEL SAPO','2012-09-17 23:58:33','2012-09-17 23:58:33'),(113,'9201','PIEDRA PARADA','2012-09-17 23:58:33','2012-09-17 23:58:33'),(114,'9213','RANQUIL HUA','2012-09-17 23:58:33','2012-09-17 23:58:33'),(115,'9030','RIO MAYO','2012-09-17 23:58:33','2012-09-17 23:58:33'),(116,'9203','RIO PERCY','2012-09-17 23:58:33','2012-09-17 23:58:33'),(117,'9225','RIO PICO','2012-09-17 23:58:33','2012-09-17 23:58:33'),(118,'9121','TELSEN','2012-09-17 23:58:33','2012-09-17 23:58:33'),(119,'9105','TREORCKY','2012-09-17 23:58:34','2012-09-17 23:58:34'),(120,'9121','YALA LAUBAT','2012-09-17 23:58:39','2012-09-17 23:58:39');
/*!40000 ALTER TABLE `localidads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_de_documento_id` int(11) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo_id` int(11) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `casado_con` int(11) DEFAULT NULL,
  `cuil` int(11) DEFAULT NULL,
  `es_agente` tinyint(1) DEFAULT NULL,
  `fecha_de_alta` date DEFAULT NULL,
  `antiguedad` int(11) DEFAULT NULL,
  `observaciones` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `estado_civil_id` int(11) DEFAULT NULL,
  `nro_de_legajo` int(11) DEFAULT NULL,
  `fecha_ultima_ddjj` date DEFAULT NULL,
  `numero_de_legajo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,1,30284359,'Romero Francia','Juan Carlos',2,'1983-08-19',NULL,NULL,1,'2006-10-02',6,NULL,'2012-09-17 18:26:35','2012-09-18 12:25:45',1,NULL,'2009-06-20',1);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renovacion_asignacion_por_hijos`
--

DROP TABLE IF EXISTS `renovacion_asignacion_por_hijos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renovacion_asignacion_por_hijos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asignacion_por_hijo_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `fecha_de_vencimiento` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renovacion_asignacion_por_hijos`
--

LOCK TABLES `renovacion_asignacion_por_hijos` WRITE;
/*!40000 ALTER TABLE `renovacion_asignacion_por_hijos` DISABLE KEYS */;
INSERT INTO `renovacion_asignacion_por_hijos` VALUES (1,1,'2007-02-01','2008-02-19','2012-09-18 14:25:54','2012-09-18 14:25:54'),(2,1,'2009-02-20','2012-09-22','2012-09-18 14:36:04','2012-09-19 03:03:46');
/*!40000 ALTER TABLE `renovacion_asignacion_por_hijos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120917160047'),('20120917160102'),('20120917160117'),('20120917160210'),('20120917160722'),('20120917161120'),('20120917161123'),('20120917161124'),('20120917163507'),('20120917180232'),('20120917181358'),('20120917184608'),('20120917185846'),('20120917185952'),('20120917192520'),('20120917192715'),('20120917230328'),('20120917233300'),('20120917233412'),('20120918002731'),('20120918003031'),('20120918012424'),('20120918142333');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
INSERT INTO `sexos` VALUES (1,'Femenino','2012-09-17 18:08:38','2012-09-17 18:08:38'),(2,'Masculino','2012-09-17 18:08:49','2012-09-17 18:08:49');
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_asignacions`
--

DROP TABLE IF EXISTS `tipo_de_asignacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_de_asignacions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_asignacions`
--

LOCK TABLES `tipo_de_asignacions` WRITE;
/*!40000 ALTER TABLE `tipo_de_asignacions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_de_asignacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_documentos`
--

DROP TABLE IF EXISTS `tipo_de_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_de_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_documentos`
--

LOCK TABLES `tipo_de_documentos` WRITE;
/*!40000 ALTER TABLE `tipo_de_documentos` DISABLE KEYS */;
INSERT INTO `tipo_de_documentos` VALUES (1,'DNI','2012-09-17 18:09:15','2012-09-17 18:09:15'),(2,'LC','2012-09-17 18:09:22','2012-09-17 18:09:22'),(3,'LE','2012-09-17 18:09:28','2012-09-17 18:09:28'),(4,'PASAPORTE','2012-09-17 18:09:37','2012-09-17 18:09:37'),(5,'CEDULA','2012-09-17 18:09:47','2012-09-17 18:09:47');
/*!40000 ALTER TABLE `tipo_de_documentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-20 18:49:31
