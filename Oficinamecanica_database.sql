-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: oficinamecanica
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Documento` varchar(20) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Endereço` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Telefone_UNIQUE` (`Telefone`),
  UNIQUE KEY `Endereço_UNIQUE` (`Endereço`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_orçamento`
--

DROP TABLE IF EXISTS `itens_orçamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_orçamento` (
  `idOrçamento` int NOT NULL,
  `idServiço` int NOT NULL,
  `Quantidade` int NOT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `Data_Criação` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idOrçamento`,`idServiço`),
  KEY `fk_idOrçamento_idx` (`idOrçamento`),
  KEY `fk_idServiço_idx` (`idServiço`),
  CONSTRAINT `fk_idOrçamento` FOREIGN KEY (`idOrçamento`) REFERENCES `orçamentos` (`idOrçamento`),
  CONSTRAINT `fk_idserviço` FOREIGN KEY (`idServiço`) REFERENCES `serviços` (`idServiço`),
  CONSTRAINT `itens_orçamento_chk_1` CHECK ((`Quantidade` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_orçamento`
--

LOCK TABLES `itens_orçamento` WRITE;
/*!40000 ALTER TABLE `itens_orçamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `itens_orçamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordens_de_serviço`
--

DROP TABLE IF EXISTS `ordens_de_serviço`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordens_de_serviço` (
  `idOrdens_de_Serviço` int NOT NULL AUTO_INCREMENT,
  `idOrçamento` int NOT NULL,
  `Data_Inicio` date NOT NULL,
  `Data_Fim` date NOT NULL,
  `Status` enum('Pendente','Em Andamento','Concluida','Cancelada') NOT NULL,
  `Valor_Total` decimal(10,2) DEFAULT NULL,
  `Observações` text,
  `Data_Criação` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idOrdens_de_Serviço`),
  KEY `fk_idOrçamento_ordem` (`idOrçamento`),
  CONSTRAINT `fk_idOrçamento_ordem` FOREIGN KEY (`idOrçamento`) REFERENCES `orçamentos` (`idOrçamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordens_de_serviço`
--

LOCK TABLES `ordens_de_serviço` WRITE;
/*!40000 ALTER TABLE `ordens_de_serviço` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordens_de_serviço` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orçamentos`
--

DROP TABLE IF EXISTS `orçamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orçamentos` (
  `idOrçamento` int NOT NULL AUTO_INCREMENT,
  `idCliente` int NOT NULL,
  `Data` date NOT NULL,
  `Status` enum('Pendente','Aprovado','Rejeitado') NOT NULL,
  `Valor_Total` decimal(10,2) DEFAULT NULL,
  `Observações` text,
  `Data_Criação` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idOrçamento`),
  KEY `fk_idCliente_Orçamento_idx` (`idCliente`),
  CONSTRAINT `fk_idCliente_Orçamento_idx` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orçamentos`
--

LOCK TABLES `orçamentos` WRITE;
/*!40000 ALTER TABLE `orçamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `orçamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviços`
--

DROP TABLE IF EXISTS `serviços`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviços` (
  `idServiço` int NOT NULL AUTO_INCREMENT,
  `Descrição` varchar(500) NOT NULL,
  `Preço` decimal(10,2) NOT NULL,
  `Status` enum('ativo','inativo','concluído') DEFAULT 'ativo',
  `Categoria` varchar(50) DEFAULT NULL,
  `Data_Criação` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idServiço`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviços`
--

LOCK TABLES `serviços` WRITE;
/*!40000 ALTER TABLE `serviços` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviços` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculos` (
  `idVeiculo` int NOT NULL AUTO_INCREMENT,
  `idCliente` int DEFAULT NULL,
  `Marca` varchar(30) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Ano` int NOT NULL,
  `Placa` varchar(10) NOT NULL,
  `Chassi` varchar(17) NOT NULL,
  `Data_Cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idVeiculo`),
  UNIQUE KEY `Placa` (`Placa`),
  KEY `fk_idCliente_idx` (`idCliente`),
  CONSTRAINT `fk_idCliente_idx` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 10:35:40
