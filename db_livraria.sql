-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: db_livraria_2
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `tbl_autor`
--

DROP TABLE IF EXISTS `tbl_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_autor` (
  `codigo_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nome_autor` varchar(100) NOT NULL,
  `cidade_autor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_autor`
--

LOCK TABLES `tbl_autor` WRITE;
/*!40000 ALTER TABLE `tbl_autor` DISABLE KEYS */;
INSERT INTO `tbl_autor` VALUES (1,'Machado de Assis','Rio de Janeiro'),(2,'Cora Coralina','Recife'),(3,'Jorge Amado','Salvador'),(152,'José de Alencar','Lisboa'),(153,'Mauricio de Souza','São Paulo'),(154,'Tarsila do Amaral','Capivari'),(155,'Walt Disney','Miami'),(156,'Celso Furtado','Itapevi'),(157,'Guimarães Rosa','Cordisburgo'),(158,'Eça de Queiroz','Praça do Almada'),(159,'Luís de Camões','Lisboa - Portugal');
/*!40000 ALTER TABLE `tbl_autor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-13 19:46:19
