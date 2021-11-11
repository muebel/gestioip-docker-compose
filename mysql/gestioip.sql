USE gestioip;

-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: gestioip
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acl_connection_list`
--

DROP TABLE IF EXISTS `acl_connection_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_connection_list` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `acl_nr` mediumint DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `source` varchar(250) DEFAULT NULL,
  `src_vlan` varchar(10) DEFAULT NULL,
  `src` varchar(250) DEFAULT NULL,
  `src_mask` varchar(50) DEFAULT NULL,
  `src_port` varchar(500) DEFAULT NULL,
  `dst_vlan` varchar(10) DEFAULT NULL,
  `destination` varchar(250) DEFAULT NULL,
  `dst` varchar(250) DEFAULT NULL,
  `dst_mask` varchar(50) DEFAULT NULL,
  `application_protocol` varchar(100) DEFAULT NULL,
  `proto_id` varchar(20) DEFAULT NULL,
  `icmp_type` varchar(25) DEFAULT NULL,
  `bidirectional` varchar(1) DEFAULT NULL,
  `encrypted_base_proto` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  `no_acl` smallint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_connection_list`
--

LOCK TABLES `acl_connection_list` WRITE;
/*!40000 ALTER TABLE `acl_connection_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_connection_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_list`
--

DROP TABLE IF EXISTS `acl_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_list` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `src` varchar(15) DEFAULT NULL,
  `src_wmask` varchar(15) DEFAULT NULL,
  `src_port` varchar(75) DEFAULT NULL,
  `src_operator` varchar(5) DEFAULT NULL,
  `dst` varchar(15) DEFAULT NULL,
  `dst_wmask` varchar(15) DEFAULT NULL,
  `dst_port` varchar(75) DEFAULT NULL,
  `dst_operator` varchar(5) DEFAULT NULL,
  `proto_id` varchar(10) DEFAULT NULL,
  `action` varchar(6) DEFAULT NULL,
  `icmp_type` varchar(2) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  `con_exists` smallint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_list`
--

LOCK TABLES `acl_list` WRITE;
/*!40000 ALTER TABLE `acl_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allowed_macs`
--

DROP TABLE IF EXISTS `allowed_macs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allowed_macs` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `mac` varchar(17) NOT NULL,
  `duid` varchar(50) NOT NULL,
  `account` varchar(300) NOT NULL,
  `host` varchar(300) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowed_macs`
--

LOCK TABLES `allowed_macs` WRITE;
/*!40000 ALTER TABLE `allowed_macs` DISABLE KEYS */;
/*!40000 ALTER TABLE `allowed_macs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(10000) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `event_class` smallint DEFAULT NULL,
  `event_type` smallint DEFAULT NULL,
  `update_type_audit` smallint DEFAULT NULL,
  `date` bigint NOT NULL,
  `remote_host` varchar(42) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_auto`
--

DROP TABLE IF EXISTS `audit_auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_auto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(10000) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `event_class` smallint DEFAULT NULL,
  `event_type` smallint DEFAULT NULL,
  `update_type_audit` smallint DEFAULT NULL,
  `date` bigint NOT NULL,
  `remote_host` varchar(42) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_auto`
--

LOCK TABLES `audit_auto` WRITE;
/*!40000 ALTER TABLE `audit_auto` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autonomous_systems`
--

DROP TABLE IF EXISTS `autonomous_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autonomous_systems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `as_number` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `as_client_id` smallint DEFAULT '-1',
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autonomous_systems`
--

LOCK TABLES `autonomous_systems` WRITE;
/*!40000 ALTER TABLE `autonomous_systems` DISABLE KEYS */;
/*!40000 ALTER TABLE `autonomous_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autonomous_systems_clients`
--

DROP TABLE IF EXISTS `autonomous_systems_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autonomous_systems_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contact` varchar(500) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(30) DEFAULT NULL,
  `contact_cell` varchar(30) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autonomous_systems_clients`
--

LOCK TABLES `autonomous_systems_clients` WRITE;
/*!40000 ALTER TABLE `autonomous_systems_clients` DISABLE KEYS */;
INSERT INTO `autonomous_systems_clients` VALUES (-1,'_DEFAULT_',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9999);
/*!40000 ALTER TABLE `autonomous_systems_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` smallint NOT NULL,
  `cat` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat` (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (5,'DB'),(3,'FW'),(1,'L2 device'),(2,'L3 device'),(-1,'NULL'),(10,'other'),(7,'printer'),(4,'server'),(9,'VoIP'),(8,'wifi'),(6,'workst');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_net`
--

DROP TABLE IF EXISTS `categorias_net`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_net` (
  `id` smallint NOT NULL,
  `cat` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat` (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_net`
--

LOCK TABLES `categorias_net` WRITE;
/*!40000 ALTER TABLE `categorias_net` DISABLE KEYS */;
INSERT INTO `categorias_net` VALUES (6,'corp'),(4,'dev'),(5,'dev-test'),(-1,'NULL'),(2,'pre'),(1,'prod'),(3,'test');
/*!40000 ALTER TABLE `categorias_net` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_entries`
--

DROP TABLE IF EXISTS `client_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_entries` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `client_id` smallint NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `contact_name_1` varchar(200) DEFAULT NULL,
  `contact_phone_1` varchar(25) DEFAULT NULL,
  `contact_cell_1` varchar(25) DEFAULT NULL,
  `contact_email_1` varchar(50) DEFAULT NULL,
  `contact_comment_1` varchar(500) DEFAULT NULL,
  `contact_name_2` varchar(200) DEFAULT NULL,
  `contact_phone_2` varchar(25) DEFAULT NULL,
  `contact_cell_2` varchar(25) DEFAULT NULL,
  `contact_email_2` varchar(50) DEFAULT NULL,
  `contact_comment_2` varchar(500) DEFAULT NULL,
  `contact_name_3` varchar(200) DEFAULT NULL,
  `contact_phone_3` varchar(25) DEFAULT NULL,
  `contact_cell_3` varchar(25) DEFAULT NULL,
  `contact_email_3` varchar(50) DEFAULT NULL,
  `contact_comment_3` varchar(500) DEFAULT NULL,
  `default_resolver` varchar(3) DEFAULT 'yes',
  `dns_server_1` varchar(50) DEFAULT '',
  `dns_server_2` varchar(50) DEFAULT '',
  `dns_server_3` varchar(50) DEFAULT '',
  `dns_server_1_key_name` varchar(50) DEFAULT NULL,
  `dns_server_2_key_name` varchar(50) DEFAULT NULL,
  `dns_server_3_key_name` varchar(50) DEFAULT NULL,
  `dns_server_1_key` varchar(100) DEFAULT NULL,
  `dns_server_2_key` varchar(100) DEFAULT NULL,
  `dns_server_3_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_entries`
--

LOCK TABLES `client_entries` WRITE;
/*!40000 ALTER TABLE `client_entries` DISABLE KEYS */;
INSERT INTO `client_entries` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yes','','','',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `client_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` smallint NOT NULL DEFAULT '0',
  `client` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'DEFAULT');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_server`
--

DROP TABLE IF EXISTS `cm_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cm_server` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `server_root` varchar(500) NOT NULL,
  `cm_server_type` varchar(10) DEFAULT NULL,
  `cm_server_description` varchar(500) DEFAULT NULL,
  `cm_server_username` varchar(100) DEFAULT NULL,
  `cm_server_password` varchar(100) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_server`
--

LOCK TABLES `cm_server` WRITE;
/*!40000 ALTER TABLE `cm_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `smallest_bm` smallint DEFAULT NULL,
  `max_sinc_procs` smallint DEFAULT NULL,
  `ignorar` varchar(250) DEFAULT NULL,
  `ignore_generic_auto` varchar(3) DEFAULT NULL,
  `generic_dyn_host_name` varchar(250) DEFAULT NULL,
  `set_sync_flag` varchar(3) DEFAULT NULL,
  `dyn_ranges_only` varchar(1) DEFAULT 'n',
  `ping_timeout` tinyint DEFAULT '2',
  `confirmation` varchar(3) DEFAULT 'no',
  `client_id` smallint DEFAULT NULL,
  `smallest_bm6` varchar(3) DEFAULT NULL,
  `ocs_enabled` varchar(3) DEFAULT 'no',
  `ocs_database_user` varchar(30) DEFAULT NULL,
  `ocs_database_name` varchar(30) DEFAULT NULL,
  `ocs_database_pass` varchar(30) DEFAULT NULL,
  `ocs_database_ip` varchar(42) DEFAULT NULL,
  `ocs_database_port` varchar(30) DEFAULT NULL,
  `ignore_dns` tinyint(1) DEFAULT '0',
  `confirm_dns_delete` varchar(3) DEFAULT 'no',
  `delete_down_hosts` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,16,254,NULL,'yes',NULL,'no','n',2,'yes',1,'64','no','ocs','ocsweb',NULL,NULL,'3306',0,'no','no');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_column_select`
--

DROP TABLE IF EXISTS `custom_column_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_column_select` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `type` varchar(1) DEFAULT NULL,
  `items` varchar(1000) DEFAULT NULL,
  `cc_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_column_select`
--

LOCK TABLES `custom_column_select` WRITE;
/*!40000 ALTER TABLE `custom_column_select` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_column_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_host_column_entries`
--

DROP TABLE IF EXISTS `custom_host_column_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_host_column_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cc_id` smallint NOT NULL DEFAULT '0',
  `pc_id` smallint NOT NULL,
  `host_id` int NOT NULL DEFAULT '0',
  `entry` varchar(10000) NOT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `host_id_index` (`host_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_host_column_entries`
--

LOCK TABLES `custom_host_column_entries` WRITE;
/*!40000 ALTER TABLE `custom_host_column_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_host_column_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_host_column_select`
--

DROP TABLE IF EXISTS `custom_host_column_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_host_column_select` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `type` varchar(1) DEFAULT NULL,
  `items` varchar(1000) DEFAULT NULL,
  `cc_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_host_column_select`
--

LOCK TABLES `custom_host_column_select` WRITE;
/*!40000 ALTER TABLE `custom_host_column_select` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_host_column_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_host_columns`
--

DROP TABLE IF EXISTS `custom_host_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_host_columns` (
  `id` smallint NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL,
  `column_type_id` tinyint DEFAULT '-1',
  `client_id` smallint NOT NULL,
  `mandatory` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_host_columns`
--

LOCK TABLES `custom_host_columns` WRITE;
/*!40000 ALTER TABLE `custom_host_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_host_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_line_column_entries`
--

DROP TABLE IF EXISTS `custom_line_column_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_line_column_entries` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `column_id` smallint NOT NULL,
  `line_id` smallint NOT NULL,
  `entry` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_line_column_entries`
--

LOCK TABLES `custom_line_column_entries` WRITE;
/*!40000 ALTER TABLE `custom_line_column_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_line_column_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_line_column_select`
--

DROP TABLE IF EXISTS `custom_line_column_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_line_column_select` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `type` varchar(1) DEFAULT NULL,
  `items` varchar(1000) DEFAULT NULL,
  `cc_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_line_column_select`
--

LOCK TABLES `custom_line_column_select` WRITE;
/*!40000 ALTER TABLE `custom_line_column_select` DISABLE KEYS */;
INSERT INTO `custom_line_column_select` VALUES (1,'s','leased,dial-up',9998),(2,'s','T1,T2,T3,T4,ISDN,DSL,ADSL',9999);
/*!40000 ALTER TABLE `custom_line_column_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_line_columns`
--

DROP TABLE IF EXISTS `custom_line_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_line_columns` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mandatory` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_line_columns`
--

LOCK TABLES `custom_line_columns` WRITE;
/*!40000 ALTER TABLE `custom_line_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_line_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_net_column_entries`
--

DROP TABLE IF EXISTS `custom_net_column_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_net_column_entries` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `cc_id` smallint NOT NULL DEFAULT '0',
  `net_id` mediumint NOT NULL DEFAULT '0',
  `entry` varchar(150) NOT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_net_column_entries`
--

LOCK TABLES `custom_net_column_entries` WRITE;
/*!40000 ALTER TABLE `custom_net_column_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_net_column_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_net_columns`
--

DROP TABLE IF EXISTS `custom_net_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_net_columns` (
  `id` smallint NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL,
  `column_type_id` tinyint DEFAULT '-1',
  `client_id` smallint NOT NULL,
  `mandatory` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_net_columns`
--

LOCK TABLES `custom_net_columns` WRITE;
/*!40000 ALTER TABLE `custom_net_columns` DISABLE KEYS */;
INSERT INTO `custom_net_columns` VALUES (1,'usage',9,9999,0);
/*!40000 ALTER TABLE `custom_net_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_site_column_entries`
--

DROP TABLE IF EXISTS `custom_site_column_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_site_column_entries` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `column_id` smallint NOT NULL,
  `site_id` mediumint NOT NULL,
  `entry` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_site_column_entries`
--

LOCK TABLES `custom_site_column_entries` WRITE;
/*!40000 ALTER TABLE `custom_site_column_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_site_column_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_site_column_select`
--

DROP TABLE IF EXISTS `custom_site_column_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_site_column_select` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `type` varchar(1) DEFAULT NULL,
  `items` varchar(1000) DEFAULT NULL,
  `cc_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_site_column_select`
--

LOCK TABLES `custom_site_column_select` WRITE;
/*!40000 ALTER TABLE `custom_site_column_select` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_site_column_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_site_columns`
--

DROP TABLE IF EXISTS `custom_site_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_site_columns` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mandatory` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_site_columns`
--

LOCK TABLES `custom_site_columns` WRITE;
/*!40000 ALTER TABLE `custom_site_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_site_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_cm_config`
--

DROP TABLE IF EXISTS `device_cm_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_cm_config` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `host_id` int NOT NULL,
  `device_type_group_id` smallint NOT NULL,
  `device_user_group_id` smallint DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `login_pass` varchar(100) DEFAULT NULL,
  `enable_pass` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `connection_proto` varchar(20) DEFAULT NULL,
  `connection_proto_args` varchar(20) DEFAULT NULL,
  `cm_server_id` varchar(20) DEFAULT NULL,
  `save_config_changes` smallint DEFAULT '0',
  `last_backup_date` datetime DEFAULT NULL,
  `last_backup_status` smallint DEFAULT '-1',
  `last_backup_log` varchar(40) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_cm_config`
--

LOCK TABLES `device_cm_config` WRITE;
/*!40000 ALTER TABLE `device_cm_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_cm_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_job_groups`
--

DROP TABLE IF EXISTS `device_job_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_job_groups` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_job_groups`
--

LOCK TABLES `device_job_groups` WRITE;
/*!40000 ALTER TABLE `device_job_groups` DISABLE KEYS */;
INSERT INTO `device_job_groups` VALUES (1,'backup_daily','example group',1);
/*!40000 ALTER TABLE `device_job_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_jobs`
--

DROP TABLE IF EXISTS `device_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_jobs` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `host_id` int NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `job_group_id` smallint DEFAULT NULL,
  `job_descr` varchar(500) DEFAULT NULL,
  `job_type_id` smallint DEFAULT NULL,
  `last_execution_date` datetime DEFAULT NULL,
  `last_execution_status` smallint DEFAULT '-1',
  `last_execution_log` varchar(40) DEFAULT NULL,
  `enabled` smallint DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_jobs`
--

LOCK TABLES `device_jobs` WRITE;
/*!40000 ALTER TABLE `device_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_keys`
--

DROP TABLE IF EXISTS `device_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_keys` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL,
  `host_id` int DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_keys`
--

LOCK TABLES `device_keys` WRITE;
/*!40000 ALTER TABLE `device_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_user_groups`
--

DROP TABLE IF EXISTS `device_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_user_groups` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `login_pass` varchar(100) NOT NULL,
  `enable_pass` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `rsa_identity_file` varchar(300) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_user_groups`
--

LOCK TABLES `device_user_groups` WRITE;
/*!40000 ALTER TABLE `device_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_keys`
--

DROP TABLE IF EXISTS `dns_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dns_keys` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `tsig_key` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_keys`
--

LOCK TABLES `dns_keys` WRITE;
/*!40000 ALTER TABLE `dns_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_server_group`
--

DROP TABLE IF EXISTS `dns_server_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dns_server_group` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dns_server1` varchar(50) DEFAULT NULL,
  `dns_server2` varchar(50) DEFAULT NULL,
  `dns_server3` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_server_group`
--

LOCK TABLES `dns_server_group` WRITE;
/*!40000 ALTER TABLE `dns_server_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_server_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_user`
--

DROP TABLE IF EXISTS `dns_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dns_user` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `realm` varchar(60) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_user`
--

LOCK TABLES `dns_user` WRITE;
/*!40000 ALTER TABLE `dns_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_zone`
--

DROP TABLE IF EXISTS `dns_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dns_zone` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dyn_dns_server` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `type` varchar(4) DEFAULT NULL,
  `dns_user_id` smallint DEFAULT NULL,
  `ttl` int DEFAULT NULL,
  `server_type` varchar(12) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_zone`
--

LOCK TABLES `dns_zone` WRITE;
/*!40000 ALTER TABLE `dns_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_classes`
--

DROP TABLE IF EXISTS `event_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_classes` (
  `id` smallint NOT NULL,
  `event_class` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_classes`
--

LOCK TABLES `event_classes` WRITE;
/*!40000 ALTER TABLE `event_classes` DISABLE KEYS */;
INSERT INTO `event_classes` VALUES (1,'host'),(2,'net'),(3,'security'),(4,'dns'),(5,'admin'),(6,'conf'),(7,'vlan_man'),(8,'vlan_auto'),(9,'ini_man'),(10,'ini_auto'),(11,'AS'),(12,'AS client'),(13,'line'),(14,'line client'),(20,'conf mgnt'),(21,'user mgnt'),(22,'arin mgnt'),(23,'sites'),(24,'password mgnt'),(25,'DNS update'),(26,'ACL'),(27,'ACL connection'),(28,'MAC'),(29,'Tag'),(30,'SNMP Group'),(31,'DNS Server Group'),(33,'scheduled job'),(34,'smtp server'),(35,'LDAP server'),(36,'dhcp sync');
/*!40000 ALTER TABLE `event_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_types` (
  `id` smallint NOT NULL,
  `event_type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types`
--

LOCK TABLES `event_types` WRITE;
/*!40000 ALTER TABLE `event_types` DISABLE KEYS */;
INSERT INTO `event_types` VALUES (1,'host edited'),(2,'net edited'),(3,'range changed'),(4,'man synch'),(5,'red split'),(6,'red joined'),(7,'red cleared'),(8,'cat host added'),(9,'cat net added'),(10,'loc added'),(11,'cat host deleted'),(12,'cat net deleted'),(13,'loc deleted'),(14,'host deleted'),(15,'host added'),(16,'net deleted'),(17,'net added'),(18,'range deleted'),(19,'range added'),(20,'loc renamed'),(21,'cat host renamed'),(22,'cat net renamed'),(23,'auto synch dns'),(24,'auto synch ocs'),(25,'config edited'),(26,'auto audit deleted'),(27,'man audit deleted'),(28,'host reserved'),(29,'net list exported'),(30,'host list exported'),(31,'net column added'),(32,'net column deleted'),(33,'client added'),(34,'client deleted'),(35,'client edited'),(36,'vlan added'),(37,'vlan deleted'),(38,'vlan edited'),(39,'vlan prov added'),(40,'vlan prov deleted'),(41,'vlan prov edited'),(42,'host column added'),(43,'host column deleted'),(44,'auto synch snmp'),(45,'man ini'),(46,'auto auto ini'),(47,'all networks deleted'),(48,'AS added'),(49,'AS edited'),(50,'AS deleted'),(51,'AS client added'),(52,'AS client edited'),(53,'AS client deleted'),(54,'line added'),(55,'line edited'),(56,'line deleted'),(57,'line client added'),(58,'line client edited'),(59,'line client deleted'),(100,'ping status changed'),(101,'device user group added'),(102,'device user group edited'),(103,'device user group deleted'),(104,'device type group added'),(105,'device type group edited'),(106,'device type group deleted'),(107,'device conf mgnt edited'),(108,'fetch_config executed'),(110,'cm server added'),(111,'cm server edited'),(112,'cm server deleted'),(113,'job group added'),(114,'job group edited'),(115,'job group deleted'),(116,'user added'),(117,'user edited'),(118,'user deleted'),(119,'user group added'),(120,'user group edited'),(121,'user group deleted'),(125,'site column added'),(126,'site column deleted'),(127,'site edited'),(128,'Master key changed'),(129,'Master key deleted'),(130,'User password changed'),(131,'Device password added'),(132,'Device password changed'),(133,'Device password deleted'),(134,'Master key added'),(135,'DNS update user added'),(136,'DNS update user modified'),(137,'DNS update user deleted'),(138,'DNS zone added'),(139,'DNS zone modified'),(140,'DNS zone deleted'),(141,'ACLs imported'),(142,'ACLs deleted'),(143,'ACLs connections import'),(144,'ACLs connection added'),(145,'ACLs connection modified'),(146,'ACLs connection deleted'),(147,'net column edited'),(148,'host column edited'),(149,'site column edited'),(150,'line column edited'),(151,'line column added'),(152,'line column deleted'),(153,'mac deleted'),(154,'mac added'),(155,'mac edited'),(156,'log edited'),(157,'tag added'),(158,'tag deleted'),(159,'tag edited'),(160,'DNS key added'),(161,'DNS key deleted'),(162,'DNS key edited'),(163,'SNMP group added'),(164,'SNMP group deleted'),(165,'SNMP group edited'),(166,'User password reset'),(167,'User master key updated'),(168,'DNS server group added'),(169,'DNS server group deleted'),(170,'DNS server group edited'),(171,'Audit access'),(172,'Login failure'),(173,'job added'),(174,'job edited'),(175,'job deleted'),(176,'job executed'),(177,'SMTP server added'),(178,'SMTP server edited'),(179,'SMTP server deleted'),(180,'LDAP server added'),(181,'LDAP server edited'),(182,'LDAP server deleted'),(183,'User login password changed');
/*!40000 ALTER TABLE `event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gip_user_group_perms`
--

DROP TABLE IF EXISTS `gip_user_group_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gip_user_group_perms` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `group_id` smallint DEFAULT NULL,
  `manage_gestioip_perm` tinyint(1) NOT NULL,
  `manage_user_perm` tinyint(1) NOT NULL,
  `manage_sites_and_cats_perm` tinyint(1) NOT NULL,
  `manage_custom_columns_perm` tinyint(1) NOT NULL,
  `read_audit_perm` tinyint(1) NOT NULL,
  `clients_perm` varchar(100) NOT NULL,
  `cat_perm` varchar(200) NOT NULL,
  `loc_perm` varchar(200) NOT NULL,
  `create_net_perm` tinyint(1) NOT NULL,
  `read_net_perm` tinyint(1) NOT NULL,
  `update_net_perm` tinyint(1) NOT NULL,
  `delete_net_perm` tinyint(1) NOT NULL,
  `read_host_perm` tinyint(1) NOT NULL,
  `create_host_perm` tinyint(1) NOT NULL,
  `update_host_perm` tinyint(1) NOT NULL,
  `delete_host_perm` tinyint(1) NOT NULL,
  `read_vlan_perm` tinyint(1) NOT NULL,
  `create_vlan_perm` tinyint(1) NOT NULL,
  `update_vlan_perm` tinyint(1) NOT NULL,
  `delete_vlan_perm` tinyint(1) NOT NULL,
  `read_device_config_perm` tinyint(1) NOT NULL,
  `write_device_config_perm` tinyint(1) NOT NULL,
  `administrate_cm_perm` tinyint(1) NOT NULL,
  `read_as_perm` tinyint(1) NOT NULL,
  `create_as_perm` tinyint(1) NOT NULL,
  `update_as_perm` tinyint(1) NOT NULL,
  `delete_as_perm` tinyint(1) NOT NULL,
  `read_line_perm` tinyint(1) NOT NULL,
  `create_line_perm` tinyint(1) NOT NULL,
  `update_line_perm` tinyint(1) NOT NULL,
  `delete_line_perm` tinyint(1) NOT NULL,
  `execute_update_dns_perm` tinyint(1) NOT NULL,
  `execute_update_snmp_perm` tinyint(1) NOT NULL,
  `execute_update_ping_perm` tinyint(1) NOT NULL,
  `password_management_perm` tinyint(1) NOT NULL,
  `manage_tags_perm` tinyint(1) NOT NULL,
  `manage_snmp_group_perm` tinyint(1) NOT NULL,
  `manage_dns_server_group_perm` tinyint(1) NOT NULL,
  `manage_dyn_dns_perm` tinyint(1) NOT NULL,
  `manage_macs_perm` tinyint(1) NOT NULL,
  `locs_ro_perm` varchar(300) NOT NULL DEFAULT '9999',
  `locs_rw_perm` varchar(300) NOT NULL DEFAULT '9999',
  `manage_scheduled_jobs_perm` tinyint(1) NOT NULL,
  `smtp_server_management_perm` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gip_user_group_perms`
--

LOCK TABLES `gip_user_group_perms` WRITE;
/*!40000 ALTER TABLE `gip_user_group_perms` DISABLE KEYS */;
INSERT INTO `gip_user_group_perms` VALUES (1,1,1,1,1,1,1,'9999','','',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'9999','9999',1,1),(2,2,0,0,1,1,1,'9999','','',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'9999','9999',1,1),(3,3,0,0,0,0,1,'9999','','',0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,'9999','0',0,0);
/*!40000 ALTER TABLE `gip_user_group_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gip_user_groups`
--

DROP TABLE IF EXISTS `gip_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gip_user_groups` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gip_user_groups`
--

LOCK TABLES `gip_user_groups` WRITE;
/*!40000 ALTER TABLE `gip_user_groups` DISABLE KEYS */;
INSERT INTO `gip_user_groups` VALUES (1,'GestioIP Admin','Default group with all rights including rights to create, update and delete Users, clients and the GestioIP configuration'),(2,'Admin','Default group with rights to create, update, delete GestioIP objects like networks, hosts and VLANs'),(3,'Read Only','Default group with rights to show GestioIP objects like networks, hosts and VLANs');
/*!40000 ALTER TABLE `gip_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gip_users`
--

DROP TABLE IF EXISTS `gip_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gip_users` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `group_id` smallint DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gip_users`
--

LOCK TABLES `gip_users` WRITE;
/*!40000 ALTER TABLE `gip_users` DISABLE KEYS */;
INSERT INTO `gip_users` VALUES (1,'gipadmin',1,NULL,NULL,'Default admin user','local');
/*!40000 ALTER TABLE `gip_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_config`
--

DROP TABLE IF EXISTS `global_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_config` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `version` varchar(10) NOT NULL,
  `default_client_id` varchar(150) NOT NULL,
  `confirmation` varchar(4) NOT NULL,
  `mib_dir` varchar(100) DEFAULT NULL,
  `vendor_mib_dirs` varchar(500) DEFAULT NULL,
  `ipv4_only` varchar(3) DEFAULT NULL,
  `as_enabled` varchar(3) DEFAULT NULL,
  `leased_line_enabled` varchar(3) DEFAULT NULL,
  `configuration_management_enabled` varchar(3) DEFAULT NULL,
  `cm_backup_dir` varchar(500) DEFAULT NULL,
  `cm_licence_key` varchar(500) DEFAULT NULL,
  `cm_log_dir` varchar(500) DEFAULT NULL,
  `cm_xml_dir` varchar(500) DEFAULT NULL,
  `auth_enabled` varchar(3) DEFAULT 'no',
  `freerange_ignore_non_root` tinyint(1) NOT NULL DEFAULT '0',
  `arin_enabled` varchar(3) DEFAULT 'no',
  `local_filter_enabled` varchar(3) NOT NULL DEFAULT 'no',
  `site_management_enabled` varchar(3) NOT NULL DEFAULT 'no',
  `password_management_enabled` varchar(3) DEFAULT 'no',
  `dyn_dns_updates_enabled` varchar(3) DEFAULT 'no',
  `acl_management_enabled` varchar(3) DEFAULT 'no',
  `mac_management_enabled` varchar(3) DEFAULT 'no',
  `site_search_main_menu` tinyint(1) NOT NULL DEFAULT '0',
  `line_search_main_menu` tinyint(1) NOT NULL DEFAULT '0',
  `limit_cc_output_enabled` varchar(3) NOT NULL DEFAULT 'yes',
  `debug_enabled` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_config`
--

LOCK TABLES `global_config` WRITE;
/*!40000 ALTER TABLE `global_config` DISABLE KEYS */;
INSERT INTO `global_config` VALUES (1,'3.5.5','1','yes','/usr/share/gestioip/mibs','3com,aerohive,alcatel,allied,apc,arista,aruba,asante,avaya,bluecoat,bluesocket,cabletron,checkpoint,cisco,citrix,colubris,cyclades,dell,d-link,enterasys,extreme,extricom,f5,force10,fortinet,foundry,h3c,hp,huawei,ibm,juniper,lantronix,mikrotik,netapp,netgear,netscreen,net-snmp,nortel,packetfront,paloalto,pica8,rad,rfc,riverbed,ruckus,sonicwall,trapeze,xirrus','yes','no','no','no','/usr/share/gestioip/conf',NULL,'/usr/share/gestioip/var/log','/usr/share/gestioip/var/devices','no',0,'no','no','no','no','no','no','no',0,0,'yes','no');
/*!40000 ALTER TABLE `global_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) DEFAULT NULL,
  `hostname` varchar(100) DEFAULT NULL,
  `host_descr` varchar(500) DEFAULT NULL,
  `loc` smallint DEFAULT NULL,
  `red_num` mediumint NOT NULL,
  `categoria` smallint DEFAULT NULL,
  `int_admin` varchar(1) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `update_type` varchar(5) DEFAULT NULL,
  `last_update` bigint DEFAULT NULL,
  `alive` tinyint(1) DEFAULT '-1',
  `last_response` bigint DEFAULT NULL,
  `range_id` smallint DEFAULT '-1',
  `ip_version` varchar(2) DEFAULT NULL,
  `dyn_dns_updates` smallint DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_group`
--

DROP TABLE IF EXISTS `ldap_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ldap_group` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dn` varchar(100) DEFAULT NULL,
  `user_group_id` smallint DEFAULT NULL,
  `ldap_server_id` smallint DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `group_attrib_is_dn` smallint DEFAULT NULL,
  `enabled` smallint DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_group`
--

LOCK TABLES `ldap_group` WRITE;
/*!40000 ALTER TABLE `ldap_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ldap_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_server`
--

DROP TABLE IF EXISTS `ldap_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ldap_server` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `server` varchar(100) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `protocol` varchar(5) DEFAULT NULL,
  `port` smallint DEFAULT NULL,
  `bind_dn` varchar(150) DEFAULT NULL,
  `bind_password` varchar(150) DEFAULT NULL,
  `base_dn` varchar(150) DEFAULT NULL,
  `user_attribute` varchar(150) DEFAULT NULL,
  `user_filter` varchar(150) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `enabled` smallint DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_server`
--

LOCK TABLES `ldap_server` WRITE;
/*!40000 ALTER TABLE `ldap_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `ldap_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_user_groups`
--

DROP TABLE IF EXISTS `ldap_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ldap_user_groups` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `user_group_id` varchar(100) DEFAULT NULL,
  `last_change` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_user_groups`
--

LOCK TABLES `ldap_user_groups` WRITE;
/*!40000 ALTER TABLE `ldap_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ldap_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llines`
--

DROP TABLE IF EXISTS `llines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `loc` smallint DEFAULT '-1',
  `ll_client_id` smallint DEFAULT '-1',
  `type` varchar(100) DEFAULT NULL,
  `service` varchar(100) DEFAULT NULL,
  `device` varchar(500) DEFAULT NULL,
  `room` varchar(500) DEFAULT NULL,
  `ad_number` varchar(100) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llines`
--

LOCK TABLES `llines` WRITE;
/*!40000 ALTER TABLE `llines` DISABLE KEYS */;
/*!40000 ALTER TABLE `llines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llines_clients`
--

DROP TABLE IF EXISTS `llines_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llines_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contact` varchar(500) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(30) DEFAULT NULL,
  `contact_cell` varchar(30) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llines_clients`
--

LOCK TABLES `llines_clients` WRITE;
/*!40000 ALTER TABLE `llines_clients` DISABLE KEYS */;
INSERT INTO `llines_clients` VALUES (-1,'_DEFAULT_',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9999);
/*!40000 ALTER TABLE `llines_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` smallint NOT NULL,
  `loc` varchar(60) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (-1,'NULL',9999),(1,'Lon',1),(2,'NY',1),(3,'Sydney',1);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_keys`
--

DROP TABLE IF EXISTS `master_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_keys` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `user_id` smallint DEFAULT NULL,
  `master_key` varchar(100) NOT NULL,
  `client_id` smallint DEFAULT NULL,
  `changed` smallint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_keys`
--

LOCK TABLES `master_keys` WRITE;
/*!40000 ALTER TABLE `master_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `net`
--

DROP TABLE IF EXISTS `net`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `net` (
  `red` varchar(40) DEFAULT NULL,
  `BM` varchar(3) NOT NULL,
  `descr` varchar(500) DEFAULT NULL,
  `red_num` mediumint NOT NULL AUTO_INCREMENT,
  `loc` smallint NOT NULL,
  `vigilada` varchar(1) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `categoria` smallint DEFAULT NULL,
  `ip_version` varchar(2) DEFAULT NULL,
  `rootnet` smallint DEFAULT '0',
  `dyn_dns_updates` smallint DEFAULT '1',
  `parent_network_id` varchar(7) DEFAULT '',
  `discover_device` varchar(40) DEFAULT '',
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`red_num`),
  KEY `red` (`red`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `net`
--

LOCK TABLES `net` WRITE;
/*!40000 ALTER TABLE `net` DISABLE KEYS */;
/*!40000 ALTER TABLE `net` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ports`
--

DROP TABLE IF EXISTS `ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ports` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `port_nr` mediumint NOT NULL,
  `port_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ports`
--

LOCK TABLES `ports` WRITE;
/*!40000 ALTER TABLE `ports` DISABLE KEYS */;
INSERT INTO `ports` VALUES (1,1,'tcpmux'),(2,7,'echo'),(3,9,'discard'),(4,11,'systat'),(5,13,'daytime'),(6,15,'netstat'),(7,17,'qotd'),(8,18,'msp'),(9,19,'chargen'),(10,20,'ftp-data'),(11,21,'ftp'),(12,21,'fsp'),(13,22,'ssh'),(14,23,'telnet'),(15,25,'smtp'),(16,37,'time'),(17,39,'rlp'),(18,42,'nameserver'),(19,43,'whois'),(20,49,'tacacs'),(21,50,'re-mail-ck'),(22,53,'domain'),(23,57,'mtp'),(24,65,'tacacs-ds'),(25,67,'bootps'),(26,68,'bootpc'),(27,69,'tftp'),(28,70,'gopher'),(29,77,'rje'),(30,79,'finger'),(31,80,'http'),(32,87,'link'),(33,88,'kerberos'),(34,95,'supdup'),(35,101,'hostnames'),(36,102,'iso-tsap'),(37,104,'acr-nema'),(38,105,'csnet-ns'),(39,107,'rtelnet'),(40,109,'pop2'),(41,110,'pop3'),(42,111,'sunrpc'),(43,113,'auth'),(44,115,'sftp'),(45,117,'uucp-path'),(46,119,'nntp'),(47,123,'ntp'),(48,129,'pwdgen'),(49,135,'loc-srv'),(50,137,'netbios-ns'),(51,138,'netbios-dgm'),(52,139,'netbios-ssn'),(53,143,'imap2'),(54,161,'snmp'),(55,162,'snmp-trap'),(56,163,'cmip-man'),(57,164,'cmip-agent'),(58,174,'mailq'),(59,177,'xdmcp'),(60,178,'nextstep'),(61,179,'bgp'),(62,191,'prospero'),(63,194,'irc'),(64,199,'smux'),(65,201,'at-rtmp'),(66,202,'at-nbp'),(67,204,'at-echo'),(68,206,'at-zis'),(69,209,'qmtp'),(70,210,'z3950'),(71,213,'ipx'),(72,220,'imap3'),(73,345,'pawserv'),(74,346,'zserv'),(75,347,'fatserv'),(76,369,'rpc2portmap'),(77,370,'codaauth2'),(78,371,'clearcase'),(79,372,'ulistserv'),(80,389,'ldap'),(81,406,'imsp'),(82,427,'svrloc'),(83,443,'https'),(84,444,'snpp'),(85,445,'microsoft-ds'),(86,464,'kpasswd'),(87,465,'urd'),(88,487,'saft'),(89,500,'isakmp'),(90,554,'rtsp'),(91,607,'nqs'),(92,610,'npmp-local'),(93,611,'npmp-gui'),(94,612,'hmmp-ind'),(95,623,'asf-rmcp'),(96,628,'qmqp'),(97,631,'ipp'),(98,512,'biff'),(99,513,'login'),(100,513,'who'),(101,514,'syslog'),(102,515,'printer'),(103,517,'talk'),(104,518,'ntalk'),(105,520,'route'),(106,525,'timed'),(107,526,'tempo'),(108,530,'courier'),(109,531,'conference'),(110,532,'netnews'),(111,533,'netwall'),(112,538,'gdomap'),(113,540,'uucp'),(114,543,'klogin'),(115,544,'kshell'),(116,546,'dhcpv6-client'),(117,547,'dhcpv6-server'),(118,548,'afpovertcp'),(119,549,'idfp'),(120,556,'remotefs'),(121,563,'nntps'),(122,587,'submission'),(123,636,'ldaps'),(124,655,'tinc'),(125,706,'silc'),(126,749,'kerberos-adm'),(127,765,'webster'),(128,873,'rsync'),(129,989,'ftps-data'),(130,990,'ftps'),(131,992,'telnets'),(132,993,'imaps'),(133,994,'ircs'),(134,995,'pop3s'),(135,1080,'socks'),(136,1093,'proofd'),(137,1094,'rootd'),(138,1194,'openvpn'),(139,1099,'rmiregistry'),(140,1214,'kazaa'),(141,1241,'nessus'),(142,1352,'lotusnote'),(143,1433,'ms-sql-s'),(144,1434,'ms-sql-m'),(145,1524,'ingreslock'),(146,1525,'prospero-np'),(147,1645,'datametrics'),(148,1646,'sa-msg-port'),(149,1649,'kermit'),(150,1677,'groupwise'),(151,1701,'l2f'),(152,1812,'radius'),(153,1813,'radius-acct'),(154,1863,'msnp'),(155,1957,'unix-status'),(156,1958,'log-server'),(157,1959,'remoteping'),(158,2000,'cisco-sccp'),(159,2010,'search'),(160,2010,'pipe-server'),(161,2049,'nfs'),(162,2086,'gnunet'),(163,2101,'rtcm-sc104'),(164,2119,'gsigatekeeper'),(165,2135,'gris'),(166,2401,'cvspserver'),(167,2430,'venus'),(168,2431,'venus-se'),(169,2432,'codasrv'),(170,2433,'codasrv-se'),(171,2583,'mon'),(172,2628,'dict'),(173,2792,'f5-globalsite'),(174,2811,'gsiftp'),(175,2947,'gpsd'),(176,3050,'gds-db'),(177,3130,'icpv2'),(178,3260,'iscsi-target'),(179,3306,'mysql'),(180,3493,'nut'),(181,3632,'distcc'),(182,3689,'daap'),(183,3690,'svn'),(184,4031,'suucp'),(185,4094,'sysrqd'),(186,4190,'sieve'),(187,4369,'epmd'),(188,4373,'remctl'),(189,4353,'f5-iquery'),(190,4500,'ipsec-nat-t'),(191,4569,'iax'),(192,4691,'mtn'),(193,4899,'radmin-port'),(194,5002,'rfe'),(195,5050,'mmcc'),(196,5060,'sip'),(197,5061,'sip-tls'),(198,5190,'aol'),(199,5222,'xmpp-client'),(200,5269,'xmpp-server'),(201,5308,'cfengine'),(202,5353,'mdns'),(203,5432,'postgresql'),(204,5556,'freeciv'),(205,5671,'amqps'),(206,5672,'amqp'),(207,5688,'ggz'),(208,6000,'x11'),(209,6001,'x11-1'),(210,6002,'x11-2'),(211,6003,'x11-3'),(212,6004,'x11-4'),(213,6005,'x11-5'),(214,6006,'x11-6'),(215,6007,'x11-7'),(216,6346,'gnutella-svc'),(217,6347,'gnutella-rtr'),(218,6444,'sge-qmaster'),(219,6445,'sge-execd'),(220,6446,'mysql-proxy'),(221,7000,'afs3-fileserver'),(222,7001,'afs3-callback'),(223,7002,'afs3-prserver'),(224,7003,'afs3-vlserver'),(225,7004,'afs3-kaserver'),(226,7005,'afs3-volser'),(227,7006,'afs3-errors'),(228,7007,'afs3-bos'),(229,7008,'afs3-update'),(230,7009,'afs3-rmtsys'),(231,7100,'font-service'),(232,8080,'http-alt'),(233,9101,'bacula-dir'),(234,9102,'bacula-fd'),(235,9103,'bacula-sd'),(236,9667,'xmms2'),(237,10809,'nbd'),(238,10050,'zabbix-agent'),(239,10051,'zabbix-trapper'),(240,10080,'amanda'),(241,11112,'dicom'),(242,11371,'hkp'),(243,13720,'bprd'),(244,13721,'bpdbm'),(245,13722,'bpjava-msvc'),(246,13724,'vnetd'),(247,13782,'bpcd'),(248,13783,'vopied'),(249,17500,'db-lsp'),(250,22125,'dcap'),(251,22128,'gsidcap'),(252,22273,'wnn6'),(253,2,'nbp'),(254,750,'kerberos4'),(255,751,'kerberos-master'),(256,752,'passwd-server'),(257,754,'krb-prop'),(258,760,'krbupdate'),(259,901,'swat'),(260,1109,'kpop'),(261,2053,'knetd'),(262,2102,'zephyr-srv'),(263,2103,'zephyr-clt'),(264,2104,'zephyr-hm'),(265,2105,'eklogin'),(266,2111,'kx'),(267,2121,'iprop'),(268,871,'supfilesrv'),(269,1127,'supfiledbg'),(270,98,'linuxconf'),(271,106,'poppassd'),(272,775,'moira-db'),(273,777,'moira-update'),(274,779,'moira-ureg'),(275,783,'spamd'),(276,808,'omirr'),(277,1001,'customs'),(278,1178,'skkserv'),(279,1210,'predict'),(280,1236,'rmtcfg'),(281,1300,'wipld'),(282,1313,'xtel'),(283,1314,'xtelw'),(284,1529,'support'),(285,2003,'cfinger'),(286,2121,'frox'),(287,2150,'ninstall'),(288,2600,'zebrasrv'),(289,2601,'zebra'),(290,2602,'ripd'),(291,2603,'ripngd'),(292,2604,'ospfd'),(293,2605,'bgpd'),(294,2606,'ospf6d'),(295,2607,'ospfapi'),(296,2608,'isisd'),(297,2988,'afbackup'),(298,2989,'afmbackup'),(299,4224,'xtell'),(300,4557,'fax'),(301,4559,'hylafax'),(302,4600,'distmp3'),(303,4949,'munin'),(304,5051,'enbd-cstatd'),(305,5052,'enbd-sstatd'),(306,5151,'pcrd'),(307,5354,'noclog'),(308,5355,'hostmon'),(309,5555,'rplay'),(310,5666,'nrpe'),(311,5667,'nsca'),(312,5674,'mrtd'),(313,5675,'bgpsim'),(314,5680,'canna'),(315,6514,'syslog-tls'),(316,6566,'sane-port'),(317,6667,'ircd'),(318,8021,'zope-ftp'),(319,8081,'tproxy'),(320,8088,'omniorb'),(321,8990,'clc-build-daemon'),(322,9098,'xinetd'),(323,9359,'mandelspawn'),(324,9418,'git'),(325,9673,'zope'),(326,10000,'webmin'),(327,10081,'kamanda'),(328,10082,'amandaidx'),(329,10083,'amidxtape'),(330,11201,'smsqp'),(331,15345,'xpilot'),(332,17001,'sgi-cmsd'),(333,17002,'sgi-crsd'),(334,17003,'sgi-gcd'),(335,17004,'sgi-cad'),(336,20011,'isdnlog'),(337,20012,'vboxd'),(338,24554,'binkp'),(339,27374,'asp'),(340,30865,'csync2'),(341,57000,'dircproxy'),(342,60177,'tfido'),(343,60179,'fido');
/*!40000 ALTER TABLE `ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predef_host_columns`
--

DROP TABLE IF EXISTS `predef_host_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predef_host_columns` (
  `id` smallint NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predef_host_columns`
--

LOCK TABLES `predef_host_columns` WRITE;
/*!40000 ALTER TABLE `predef_host_columns` DISABLE KEYS */;
INSERT INTO `predef_host_columns` VALUES (-1,'NOTYPE'),(1,'vendor'),(2,'model'),(3,'contact'),(4,'serial'),(5,'MAC'),(6,'OS'),(7,'device_descr'),(8,'device_name'),(9,'device_loc'),(10,'URL'),(11,'rack'),(12,'RU'),(13,'switch'),(14,'port'),(15,'linkedIP'),(16,'CM'),(17,'ifDescr'),(18,'ifAlias'),(19,'Line'),(20,'Tag'),(21,'SNMPGroup'),(22,'VLAN'),(23,'Sec_Zone'),(24,'Instance');
/*!40000 ALTER TABLE `predef_host_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predef_net_columns`
--

DROP TABLE IF EXISTS `predef_net_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predef_net_columns` (
  `id` smallint NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predef_net_columns`
--

LOCK TABLES `predef_net_columns` WRITE;
/*!40000 ALTER TABLE `predef_net_columns` DISABLE KEYS */;
INSERT INTO `predef_net_columns` VALUES (-1,'NOTYPE'),(1,'vlan'),(2,'Fav'),(3,'VRF'),(4,'ifDescr'),(5,'ifAlias'),(6,'local'),(7,'DNSZone'),(8,'DNSPTRZone'),(9,'usage'),(10,'SNMPGroup'),(11,'Tag'),(13,'DNSSG'),(14,'ScanAZone'),(15,'ScanPTRZone');
/*!40000 ALTER TABLE `predef_net_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocols`
--

DROP TABLE IF EXISTS `protocols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protocols` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `protocol_nr` mediumint NOT NULL,
  `protocol_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocols`
--

LOCK TABLES `protocols` WRITE;
/*!40000 ALTER TABLE `protocols` DISABLE KEYS */;
INSERT INTO `protocols` VALUES (1,0,'HOPOPT'),(2,1,'ICMP'),(3,2,'IGMP'),(4,3,'GGP'),(5,4,'IP'),(6,5,'ST'),(7,6,'TCP'),(8,7,'CBT'),(9,8,'EGP'),(10,9,'IGP'),(11,10,'BBN-RCC-MON'),(12,11,'NVP-II'),(13,12,'PUP'),(14,14,'EMCON'),(15,15,'XNET'),(16,16,'CHAOS'),(17,17,'UDP'),(18,18,'MUX'),(19,19,'DCN-MEAS'),(20,20,'HMP'),(21,21,'PRM'),(22,22,'XNS-IDP'),(23,23,'TRUNK-1'),(24,24,'TRUNK-2'),(25,25,'LEAF-1'),(26,26,'LEAF-2'),(27,27,'RDP'),(28,28,'IRTP'),(29,29,'ISO-TP4'),(30,30,'NETBLT'),(31,31,'MFE-NSP'),(32,32,'MERIT-INP'),(33,33,'DCCP'),(34,34,'3PC'),(35,35,'IDPR'),(36,36,'XTP'),(37,37,'DDP'),(38,38,'IDPR-CMTP'),(39,39,'TP++'),(40,40,'IL'),(41,41,'IPv6'),(42,42,'SDRP'),(43,43,'IPv6-Route'),(44,44,'IPv6-Frag'),(45,45,'IDRP'),(46,46,'RSVP'),(47,47,'GRE'),(48,48,'DSR'),(49,49,'BNA'),(50,50,'ESP'),(51,51,'AH'),(52,52,'I-NLSP'),(53,54,'NARP'),(54,55,'MOBILE'),(55,56,'TLSP'),(56,57,'SKIP'),(57,58,'IPv6-ICMP'),(58,59,'IPv6-NoNxt'),(59,60,'IPv6-Opts'),(60,62,'CFTP'),(61,64,'SAT-EXPAK'),(62,65,'KRYPTOLAN'),(63,66,'RVD'),(64,67,'IPPC'),(65,69,'SAT-MON'),(66,70,'VISA'),(67,71,'IPCV'),(68,72,'CPNX'),(69,73,'CPHB'),(70,74,'WSN'),(71,75,'PVP'),(72,76,'BR-SAT-MON'),(73,77,'SUN-ND'),(74,78,'WB-MON'),(75,79,'WB-EXPAK'),(76,80,'ISO-IP'),(77,81,'VMTP'),(78,82,'SECURE-VMTP'),(79,83,'VINES'),(80,84,'TTP'),(81,84,'IPTM'),(82,85,'NSFNET-IGP'),(83,86,'DGP'),(84,87,'TCF'),(85,88,'EIGRP'),(86,89,'OSPFIGP'),(87,90,'Sprite-RPC'),(88,91,'LARP'),(89,92,'MTP'),(90,93,'AX.25'),(91,94,'IPIP'),(92,95,'MICP'),(93,96,'SCC-SP'),(94,97,'ETHERIP'),(95,98,'ENCAP'),(96,100,'GMTP'),(97,101,'IFMP'),(98,102,'PNNI'),(99,103,'PIM'),(100,104,'ARIS'),(101,105,'SCPS'),(102,106,'QNX'),(103,107,'A/N'),(104,108,'IPComp'),(105,109,'SNP'),(106,110,'Compaq-Peer'),(107,111,'IPX-in-IP'),(108,112,'VRRP'),(109,113,'PGM'),(110,115,'L2TP'),(111,116,'DDX'),(112,117,'IATP'),(113,118,'STP'),(114,119,'SRP'),(115,120,'UTI'),(116,121,'SMP'),(117,123,'PTP'),(118,124,'ISIS over IPv4'),(119,125,'FIRE'),(120,126,'CRTP'),(121,127,'CRUDP'),(122,128,'SSCOPMCE'),(123,129,'IPLT'),(124,130,'SPS'),(125,131,'PIPE'),(126,132,'SCTP'),(127,133,'FC'),(128,134,'RSVP-E2E-IGNORE'),(129,135,'Mobility Header'),(130,136,'UDPLite'),(131,137,'MPLS-in-IP'),(132,138,'manet'),(133,139,'HIP'),(134,140,'Shim6'),(135,141,'WESP'),(136,142,'ROHC');
/*!40000 ALTER TABLE `protocols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `range_type`
--

DROP TABLE IF EXISTS `range_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `range_type` (
  `id` smallint NOT NULL DEFAULT '0',
  `range_type` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `range_type`
--

LOCK TABLES `range_type` WRITE;
/*!40000 ALTER TABLE `range_type` DISABLE KEYS */;
INSERT INTO `range_type` VALUES (1,'workst (DHCP)'),(2,'wifi (DHCP)'),(3,'VoIP (DHCP)'),(4,'other (DHCP)'),(5,'other');
/*!40000 ALTER TABLE `range_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranges`
--

DROP TABLE IF EXISTS `ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranges` (
  `id` smallint NOT NULL DEFAULT '0',
  `start_ip` varchar(40) NOT NULL DEFAULT '0',
  `end_ip` varchar(40) NOT NULL DEFAULT '0',
  `comentario` varchar(50) DEFAULT NULL,
  `range_type` varchar(2) DEFAULT '-1',
  `red_num` varchar(5) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranges`
--

LOCK TABLES `ranges` WRITE;
/*!40000 ALTER TABLE `ranges` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scan_zone_entries_network`
--

DROP TABLE IF EXISTS `scan_zone_entries_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scan_zone_entries_network` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `zone_id` mediumint DEFAULT NULL,
  `net_id` mediumint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scan_zone_entries_network`
--

LOCK TABLES `scan_zone_entries_network` WRITE;
/*!40000 ALTER TABLE `scan_zone_entries_network` DISABLE KEYS */;
/*!40000 ALTER TABLE `scan_zone_entries_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_job_status`
--

DROP TABLE IF EXISTS `scheduled_job_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_job_status` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `job_id` mediumint DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `start_time` bigint DEFAULT NULL,
  `end_time` bigint DEFAULT NULL,
  `exit_message` varchar(1500) DEFAULT NULL,
  `log_file` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_job_status`
--

LOCK TABLES `scheduled_job_status` WRITE;
/*!40000 ALTER TABLE `scheduled_job_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_job_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_jobs`
--

DROP TABLE IF EXISTS `scheduled_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_jobs` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `start_date` varchar(20) DEFAULT NULL,
  `end_date` varchar(20) DEFAULT NULL,
  `run_once` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `arguments` varchar(700) DEFAULT NULL,
  `cron_time` varchar(50) DEFAULT NULL,
  `next_run` varchar(20) DEFAULT NULL,
  `repeat_interval` varchar(500) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_jobs`
--

LOCK TABLES `scheduled_jobs` WRITE;
/*!40000 ALTER TABLE `scheduled_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smtp_server`
--

DROP TABLE IF EXISTS `smtp_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smtp_server` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `default_from` varchar(100) DEFAULT NULL,
  `security` varchar(10) DEFAULT NULL,
  `port` smallint DEFAULT NULL,
  `timeout` smallint DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smtp_server`
--

LOCK TABLES `smtp_server` WRITE;
/*!40000 ALTER TABLE `smtp_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `smtp_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_group`
--

DROP TABLE IF EXISTS `snmp_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snmp_group` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `snmp_version` varchar(1) DEFAULT NULL,
  `port` mediumint DEFAULT NULL,
  `community` varchar(250) DEFAULT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `sec_level` varchar(10) DEFAULT NULL,
  `auth_algorithm` varchar(4) DEFAULT NULL,
  `auth_password` varchar(250) DEFAULT NULL,
  `priv_algorithm` varchar(4) DEFAULT NULL,
  `priv_password` varchar(250) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_group`
--

LOCK TABLES `snmp_group` WRITE;
/*!40000 ALTER TABLE `snmp_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmp_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `color` varchar(8) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `client_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_entries_host`
--

DROP TABLE IF EXISTS `tag_entries_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_entries_host` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `tag_id` mediumint DEFAULT NULL,
  `host_id` mediumint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_entries_host`
--

LOCK TABLES `tag_entries_host` WRITE;
/*!40000 ALTER TABLE `tag_entries_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_entries_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_entries_network`
--

DROP TABLE IF EXISTS `tag_entries_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_entries_network` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `tag_id` mediumint DEFAULT NULL,
  `net_id` mediumint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_entries_network`
--

LOCK TABLES `tag_entries_network` WRITE;
/*!40000 ALTER TABLE `tag_entries_network` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_entries_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_type`
--

DROP TABLE IF EXISTS `update_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `update_type` (
  `id` smallint NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_type`
--

LOCK TABLES `update_type` WRITE;
/*!40000 ALTER TABLE `update_type` DISABLE KEYS */;
INSERT INTO `update_type` VALUES (2,'dns'),(1,'man'),(-1,'NULL'),(3,'ocs');
/*!40000 ALTER TABLE `update_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_types_audit`
--

DROP TABLE IF EXISTS `update_types_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `update_types_audit` (
  `id` smallint NOT NULL,
  `update_types_audit` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_types_audit`
--

LOCK TABLES `update_types_audit` WRITE;
/*!40000 ALTER TABLE `update_types_audit` DISABLE KEYS */;
INSERT INTO `update_types_audit` VALUES (1,'man'),(2,'auto'),(3,'auto snmp'),(4,'auto dns'),(5,'auto ocs'),(6,'man dns'),(7,'man snmp'),(8,'man net sheet'),(9,'man range'),(10,'man host sheet'),(11,'red cleared'),(12,'vlan sheet'),(13,'api'),(14,'auto prtg'),(15,'dhcp sync'),(17,'sheet'),(18,'dhcp sync'),(19,'auto cloud');
/*!40000 ALTER TABLE `update_types_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_passwords`
--

DROP TABLE IF EXISTS `user_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_passwords` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `user_id` smallint NOT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_passwords`
--

LOCK TABLES `user_passwords` WRITE;
/*!40000 ALTER TABLE `user_passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vlan_providers`
--

DROP TABLE IF EXISTS `vlan_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vlan_providers` (
  `id` smallint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlan_providers`
--

LOCK TABLES `vlan_providers` WRITE;
/*!40000 ALTER TABLE `vlan_providers` DISABLE KEYS */;
INSERT INTO `vlan_providers` VALUES (-1,'','',9999);
/*!40000 ALTER TABLE `vlan_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vlans`
--

DROP TABLE IF EXISTS `vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vlans` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `vlan_num` varchar(10) DEFAULT NULL,
  `vlan_name` varchar(250) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `provider_id` smallint DEFAULT NULL,
  `bg_color` varchar(20) DEFAULT NULL,
  `font_color` varchar(20) DEFAULT NULL,
  `switches` varchar(10000) DEFAULT NULL,
  `asso_vlan` smallint DEFAULT NULL,
  `client_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlans`
--

LOCK TABLES `vlans` WRITE;
/*!40000 ALTER TABLE `vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `vlans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 13:19:06
