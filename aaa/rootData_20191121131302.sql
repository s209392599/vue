-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: vuemysql
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Current Database: `vuemysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `vuemysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `vuemysql`;

--
-- Table structure for table `ceshi`
--

DROP TABLE IF EXISTS `ceshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ceshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='测试的demo数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceshi`
--

LOCK TABLES `ceshi` WRITE;
/*!40000 ALTER TABLE `ceshi` DISABLE KEYS */;
INSERT INTO `ceshi` VALUES (1,'测试1'),(2,'测试2'),(5,'测试3');
/*!40000 ALTER TABLE `ceshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img`
--

DROP TABLE IF EXISTS `img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(50) DEFAULT NULL COMMENT '来源',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `address` varchar(1000) DEFAULT NULL COMMENT '地址',
  `describe` varchar(1000) DEFAULT NULL COMMENT '说明',
  `timecreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `timemodify` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存放图片地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
INSERT INTO `img` VALUES (1,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel1.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:18'),(2,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel2.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:20'),(3,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel3.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:21'),(4,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel4.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:22'),(5,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel5.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:23'),(6,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel6.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:24'),(7,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel7.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:25'),(8,'jd','carousel','https://raw.githubusercontent.com/s209392599/img/master/demo/carousel/carousel8.jpg','京东H5首页顶部的轮播图片','2019-11-21 05:06:24','2019-11-21 05:08:26'),(9,NULL,NULL,'1','1','2019-11-21 05:06:24','2019-11-21 05:08:34'),(10,NULL,NULL,'11221','111','2019-11-21 05:06:24','2019-11-21 05:07:05');
/*!40000 ALTER TABLE `img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yulu`
--

DROP TABLE IF EXISTS `yulu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yulu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(5000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `uuid` varchar(29) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `timecreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `timemodify` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='存放语录数据\r\ntype:0 是常规，1是放在前面';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yulu`
--

LOCK TABLES `yulu` WRITE;
/*!40000 ALTER TABLE `yulu` DISABLE KEYS */;
INSERT INTO `yulu` VALUES (80,'测试第一条数据','2019-11-17 23:25:44','e41175866d4d71361574004344651',0,'2019-11-21 05:10:56','2019-11-21 05:10:56'),(81,'测试第二条数据','2019-11-17 23:25:44','1f76eb774d0079b81574004344653',0,'2019-11-21 05:10:56','2019-11-21 05:10:56'),(86,'测试第一条数据','2019-11-17 23:42:52','b01713be1918c17d1574005372776',0,'2019-11-21 05:10:56','2019-11-21 05:10:56'),(87,'测试第二条数据','2019-11-17 23:42:52','47ba91c342b0a79c1574005372778',0,'2019-11-21 05:10:56','2019-11-21 05:10:56'),(88,'测试第三条数据','2019-11-17 23:42:52','fe94eac8037a140b1574005372779',0,'2019-11-21 05:10:56','2019-11-21 05:12:37');
/*!40000 ALTER TABLE `yulu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `demodata`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `demodata` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `demodata`;

--
-- Table structure for table `demodata`
--

DROP TABLE IF EXISTS `demodata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demodata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  KEY `uuid` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用于创建一些测试数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demodata`
--

LOCK TABLES `demodata` WRITE;
/*!40000 ALTER TABLE `demodata` DISABLE KEYS */;
INSERT INTO `demodata` VALUES (1,'测试的第一条数据'),(2,'测试的第二条数据'),(3,'测试的第三条数据');
/*!40000 ALTER TABLE `demodata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-21 13:13:03
