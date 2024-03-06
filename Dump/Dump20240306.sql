-- Active: 1709499360482@@127.0.0.1@3306@ramais_localhost
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ramais
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `ramais_localhost`
--

DROP TABLE IF EXISTS `ramais_localhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ramais_localhost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_username` varchar(50) DEFAULT NULL,
  `Host` varchar(100) DEFAULT NULL,
  `DYN` varchar(10) DEFAULT NULL,
  `NAT` varchar(10) DEFAULT NULL,
  `ACL` varchar(10) DEFAULT NULL,
  `PORT` varchar(100) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ramais_localhost`
--

LOCK TABLES `ramais_localhost` WRITE;
/*!40000 ALTER TABLE `ramais_localhost` DISABLE KEYS */;
INSERT INTO `ramais_localhost` VALUES (1,'7000/7000','181.219.125.7','D','N','','42367','Disponível','Chaves'),(2,'7001/7001','181.219.125.7','D','N','','42368','Disponível','Kiko'),(3,'7004/7002','(Unspecified)','D','N','','0','Offline','Chiquinha'),(4,'7003/7003','(Unspecified)','D','N','','0','Offline','Nhonho'),(5,'7002/7004','181.219.125.7','D','N','','42369','Disponível','Godines'),(11,'7003/7003','(Unspecified)','D','N','','0','Offline','Seu Madruga'),(12,'7002/7004','181.219.125.7','D','N','','42369','Disponível','Senhor Barriga'),(13,'7007/7008','181.219.125.7','D','N','','42377','Pausa','Dona Florinda'),(14,'7009/7010','181.219.125.7','D','N','','42378','Ocupado','Prof Girafales');
/*!40000 ALTER TABLE `ramais_localhost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06  1:24:25
