-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 47.106.66.89    Database: C0-S2-Ply-demo
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `qnzf_district`
--

DROP TABLE IF EXISTS `qnzf_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qnzf_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号: 自增列',
  `name` varchar(50) NOT NULL COMMENT '地区名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8 COMMENT='青鸟租房-地区表-1006';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnzf_district`
--

LOCK TABLES `qnzf_district` WRITE;
/*!40000 ALTER TABLE `qnzf_district` DISABLE KEYS */;
INSERT INTO `qnzf_district` VALUES (1000,'丰台'),(1001,'东城'),(1002,'西城'),(1003,'石景山'),(1004,'海淀'),(1006,'朝阳');
/*!40000 ALTER TABLE `qnzf_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qnzf_house`
--

DROP TABLE IF EXISTS `qnzf_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qnzf_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '发布人: 关联 qnzf_users.id',
  `tid` int(11) NOT NULL COMMENT '类别编号: 关联 qnzf_type.id',
  `sid` int(11) NOT NULL COMMENT '街道编号: 关联 qnzf_street.id',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `intro` varchar(2000) DEFAULT NULL COMMENT '介绍',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `pubdate` date DEFAULT NULL COMMENT '发布日期',
  `floorage` int(11) DEFAULT NULL COMMENT '房屋面积',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `imgs` varchar(500) DEFAULT NULL COMMENT '图片: 图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='青鸟租房-房屋表-2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnzf_house`
--

LOCK TABLES `qnzf_house` WRITE;
/*!40000 ALTER TABLE `qnzf_house` DISABLE KEYS */;
INSERT INTO `qnzf_house` VALUES (1,1,1000,1000,'一套好房','交通方便, 生活方便...',2000,'2022-08-25',50,'13812345678 王女士','https://img1.baidu.com/it/u=1353374910,4002709712&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333'),(2,2,1001,1002,'单身狗窝 ','东城区朝阳门',2500,'2022-08-01',20,'13876768989','images/thumb_house.gif');
/*!40000 ALTER TABLE `qnzf_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qnzf_street`
--

DROP TABLE IF EXISTS `qnzf_street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qnzf_street` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号: 自增列',
  `name` varchar(50) DEFAULT NULL COMMENT '街道名',
  `did` int(11) DEFAULT NULL COMMENT '地区编号: 关联 qnzf_district.id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='青鸟租房-街道表-1003';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnzf_street`
--

LOCK TABLES `qnzf_street` WRITE;
/*!40000 ALTER TABLE `qnzf_street` DISABLE KEYS */;
INSERT INTO `qnzf_street` VALUES (1000,'知春路',1004),(1001,'中关村大街',1004),(1002,'学院路',1004),(1003,'朝阳路',1006);
/*!40000 ALTER TABLE `qnzf_street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qnzf_type`
--

DROP TABLE IF EXISTS `qnzf_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qnzf_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号: 自增列',
  `name` varchar(10) NOT NULL COMMENT '类别名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8 COMMENT='青鸟租房-类别表-1008';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnzf_type`
--

LOCK TABLES `qnzf_type` WRITE;
/*!40000 ALTER TABLE `qnzf_type` DISABLE KEYS */;
INSERT INTO `qnzf_type` VALUES (1000,'一室一厅'),(1001,'一室两厅'),(1002,'两室一厅'),(1003,'两室两厅'),(1004,'三室一厅'),(1005,'三室两厅'),(1006,'四室一厅'),(1007,'四室两厅'),(1008,'四十三厅');
/*!40000 ALTER TABLE `qnzf_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qnzf_users`
--

DROP TABLE IF EXISTS `qnzf_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qnzf_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号: 自增列',
  `username` varchar(50) DEFAULT NULL COMMENT '账号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `phone` varchar(15) DEFAULT NULL COMMENT '电话',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `isadmin` tinyint(1) DEFAULT NULL COMMENT '管理员: 1 管理员, 0 普通用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='青鸟租房-用户表-1003';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnzf_users`
--

LOCK TABLES `qnzf_users` WRITE;
/*!40000 ALTER TABLE `qnzf_users` DISABLE KEYS */;
INSERT INTO `qnzf_users` VALUES (60,'zy1','123','13800001111','悟空',0),(77,'zy2','234','13900001111','悟净',0),(1000,'admin','345','15322224444','悟能',1),(1001,'yc','456','18044445555','哪吒',1),(1002,'zy','567','19122225555','木吒',0),(1003,'zf','123456','138456789742','张飞',1);
/*!40000 ALTER TABLE `qnzf_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-03 13:50:01
