-- MySQL dump 10.13  Distrib 5.5.32, for Win32 (x86)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.32

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cno` int(11) NOT NULL AUTO_INCREMENT,
  `proid` int(11) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `propic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,'Khushboo Sharma',NULL),(2,10,'Khushboo Sharma',NULL),(3,2,'Divya Diwakar',NULL),(4,5,'Divya Diwakar',NULL),(5,2,'anil kumar',NULL),(6,1,'Sudheer Kumar',NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cart_pro_view`
--

DROP TABLE IF EXISTS `cart_pro_view`;
/*!50001 DROP VIEW IF EXISTS `cart_pro_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cart_pro_view` (
  `proid` tinyint NOT NULL,
  `catid` tinyint NOT NULL,
  `proname` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `qt` tinyint NOT NULL,
  `propic` tinyint NOT NULL,
  `cno` tinyint NOT NULL,
  `uname` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cartprice`
--

DROP TABLE IF EXISTS `cartprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartprice` (
  `proid` int(11) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `qt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartprice`
--

LOCK TABLES `cartprice` WRITE;
/*!40000 ALTER TABLE `cartprice` DISABLE KEYS */;
INSERT INTO `cartprice` VALUES (1,'Khushboo Sharma',150.00,1),(10,'Khushboo Sharma',250.00,1),(2,'Divya Diwakar',600.00,2),(5,'Divya Diwakar',500.00,1),(2,'anil kumar',600.00,2),(1,'Sudheer Kumar',300.00,2);
/*!40000 ALTER TABLE `cartprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cat_pro_view`
--

DROP TABLE IF EXISTS `cat_pro_view`;
/*!50001 DROP VIEW IF EXISTS `cat_pro_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cat_pro_view` (
  `proid` tinyint NOT NULL,
  `catid` tinyint NOT NULL,
  `catname` tinyint NOT NULL,
  `catpic` tinyint NOT NULL,
  `proname` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `qt` tinyint NOT NULL,
  `propic` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) DEFAULT NULL,
  `catpic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Vegetables','images/vegi.jpg'),(2,'Fruits','images/fruit.jpg'),(3,'Biscuits & Cookies','images/biscuits.jpg'),(4,'Chocolates & sweets','images/chocolate.jpg'),(5,'Dry Fruits','images/dryfruits.jpg'),(6,'Flour','images/flour.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cust_pro_view`
--

DROP TABLE IF EXISTS `cust_pro_view`;
/*!50001 DROP VIEW IF EXISTS `cust_pro_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cust_pro_view` (
  `proname` tinyint NOT NULL,
  `propic` tinyint NOT NULL,
  `proid` tinyint NOT NULL,
  `bill` tinyint NOT NULL,
  `qt` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `uname` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `odid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) DEFAULT NULL,
  `bill` decimal(18,2) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  PRIMARY KEY (`odid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,'Khushboo Sharma',150.00,1),(2,'Khushboo Sharma',400.00,10),(3,'Khushboo Sharma',400.00,10),(4,'Divya Diwakar',1100.00,3),(5,'anil kumar',600.00,2),(6,'Sudheer Kumar',300.00,1);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `pro_count_view`
--

DROP TABLE IF EXISTS `pro_count_view`;
/*!50001 DROP VIEW IF EXISTS `pro_count_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pro_count_view` (
  `count` tinyint NOT NULL,
  `catid` tinyint NOT NULL,
  `catname` tinyint NOT NULL,
  `catpic` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `proid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `proname` varchar(30) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `qt` int(11) DEFAULT NULL,
  `propic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Potato',150.00,1,'images/potato.jpg'),(2,1,'onion',300.00,1,'images/oninon.jpg'),(3,2,'Apple',300.00,1,'images/apple.jpg'),(4,3,'Dark Fantasy',250.00,1,'images/darkfantasy.jpg'),(5,5,'Cashew',500.00,1,'images/cashew.jpg'),(6,3,'Digestive Biscuits',200.00,2,'images/digestive.jpg'),(7,4,'Dairy Milk',300.00,1,'images/dairymilk.jpg'),(8,1,'Tomato',350.00,2,'images/tomato.jpg'),(10,4,'Kit-Kat',250.00,1,'images/kitkat.jpg'),(11,5,'Almonds',1050.00,1,'images/almond.jpg'),(12,5,'Walnut',700.00,1,'images/Walnut.jpg'),(13,6,'Wheat Flour',150.00,1,'images/wheat.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uname` varchar(30) DEFAULT NULL,
  `uid` varchar(30) NOT NULL,
  `mbno` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pwd` varchar(15) DEFAULT NULL,
  `role` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Anil Kumar','anil@gmail.com','8578457989','Gomti nagar,Lucknow','anil','customer'),('Divya Diwakar','divya@gmail.com','8674938382','Indira Nagar,Lucknow','divya','customer'),('Khushboo Sharma','khushboo@gmail.com','7054685698','aliganj lko','123456','customer'),('Srishti Sharma','srishti@gmail.com','7317267417','sector-A,lucknow','admin','admin'),('Sudheer Kumar','sudheer@gmail.com','5758685','lko','abcd','customer'),('Sunil Kumar','suil@gmail.com','6767665563','Indira Nagar','sunil','customer');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_cart_view`
--

DROP TABLE IF EXISTS `user_cart_view`;
/*!50001 DROP VIEW IF EXISTS `user_cart_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_cart_view` (
  `cno` tinyint NOT NULL,
  `uname` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `mbno` tinyint NOT NULL,
  `address` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `cart_pro_view`
--

/*!50001 DROP TABLE IF EXISTS `cart_pro_view`*/;
/*!50001 DROP VIEW IF EXISTS `cart_pro_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cart_pro_view` AS select `cart`.`proid` AS `proid`,`product`.`catid` AS `catid`,`product`.`proname` AS `proname`,`product`.`price` AS `price`,`product`.`qt` AS `qt`,`product`.`propic` AS `propic`,`cart`.`cno` AS `cno`,`cart`.`uname` AS `uname` from (`product` join `cart` on((`cart`.`proid` = `product`.`proid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cat_pro_view`
--

/*!50001 DROP TABLE IF EXISTS `cat_pro_view`*/;
/*!50001 DROP VIEW IF EXISTS `cat_pro_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cat_pro_view` AS select `product`.`proid` AS `proid`,`category`.`catid` AS `catid`,`category`.`catname` AS `catname`,`category`.`catpic` AS `catpic`,`product`.`proname` AS `proname`,`product`.`price` AS `price`,`product`.`qt` AS `qt`,`product`.`propic` AS `propic` from (`product` join `category` on((`category`.`catid` = `product`.`catid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cust_pro_view`
--

/*!50001 DROP TABLE IF EXISTS `cust_pro_view`*/;
/*!50001 DROP VIEW IF EXISTS `cust_pro_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cust_pro_view` AS select `product`.`proname` AS `proname`,`product`.`propic` AS `propic`,`orderdetails`.`proid` AS `proid`,`orderdetails`.`bill` AS `bill`,`product`.`qt` AS `qt`,`product`.`price` AS `price`,`orderdetails`.`uname` AS `uname` from (`product` join `orderdetails` on((`orderdetails`.`proid` = `product`.`proid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pro_count_view`
--

/*!50001 DROP TABLE IF EXISTS `pro_count_view`*/;
/*!50001 DROP VIEW IF EXISTS `pro_count_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pro_count_view` AS select count(`cat_pro_view`.`proid`) AS `count`,`cat_pro_view`.`catid` AS `catid`,`cat_pro_view`.`catname` AS `catname`,`cat_pro_view`.`catpic` AS `catpic` from `cat_pro_view` group by `cat_pro_view`.`catid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_cart_view`
--

/*!50001 DROP TABLE IF EXISTS `user_cart_view`*/;
/*!50001 DROP VIEW IF EXISTS `user_cart_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_cart_view` AS select `cart`.`cno` AS `cno`,`user`.`uname` AS `uname`,`user`.`uid` AS `uid`,`user`.`mbno` AS `mbno`,`user`.`address` AS `address` from (`cart` join `user` on((`user`.`uname` = `cart`.`uname`))) */;
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

-- Dump completed on 2020-07-27 16:59:36
