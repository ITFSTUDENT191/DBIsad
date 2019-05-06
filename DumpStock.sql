-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: database_proj
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_description` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'ของใช้ในบ้าน','ของใช้ เช่น สบู่ ยาสีฟัน'),(2,'อุปกรณ์','อุปกรณ์ใช้สอย'),(3,'ยา','ยาสามัญต่างๆ'),(4,'อาหาร','อาหารทานได้'),(5,'ของเด็ก','ของเล่นหรือของเด็ก');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_out`
--

DROP TABLE IF EXISTS `check_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `check_out` (
  `co_id` int(11) NOT NULL,
  `co_date` datetime NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`co_id`),
  KEY `FK_check_emp_idx` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_out`
--

LOCK TABLES `check_out` WRITE;
/*!40000 ALTER TABLE `check_out` DISABLE KEYS */;
INSERT INTO `check_out` VALUES (1,'2561-01-03 17:01:00',2),(2,'2561-01-21 11:32:00',2),(3,'2561-01-25 14:00:00',3),(4,'2561-04-21 12:00:00',6),(5,'2561-04-04 18:45:00',23),(6,'2561-05-19 12:05:00',23),(7,'2561-09-03 06:30:00',10),(8,'2561-10-05 09:30:00',3),(9,'2561-11-01 08:23:00',3),(10,'2561-11-11 15:40:00',23);
/*!40000 ALTER TABLE `check_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employees` (
  `emp_id` int(10) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_pass` int(20) NOT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'user01',9834694,'Somchai','stocking'),(2,'user02',8924629,'Somying','retailer'),(3,'user03',74380359,'Somchawee','retailer'),(4,'user04',46746745,'Bussaba','stocking'),(5,'user05',457868948,'Yongyut','stocking'),(6,'user06',5578425,'Pilai','retailer'),(7,'user07',745477,'Phasuk','Transportation'),(8,'user08',3468789,'Boonmee','Transportation'),(9,'user09',6767568,'Bangorn','Transportation'),(10,'user10',57878,'Phiti','retailer'),(11,'user11',468896,'Thanawat','stocking'),(20,'user20',587067,'Manee','stocking'),(21,'user21',4679468,'Mana','stocking'),(23,'user23',79567,'Arunee','retailer');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `locations` (
  `l_id` int(10) NOT NULL,
  `l_location` varchar(255) NOT NULL,
  `emp_id` int(10) NOT NULL,
  PRIMARY KEY (`l_id`),
  UNIQUE KEY `l_location_UNIQUE` (`l_location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Zone1',1),(2,'Zone2',4),(3,'Zone3',5),(4,'Zone4',11),(5,'Zone5',20),(6,'Zone6',21);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_price` float(5,2) NOT NULL,
  `p_descript` varchar(255) DEFAULT NULL,
  `p_code` int(15) NOT NULL,
  `w_id` int(10) NOT NULL,
  `p_min` int(5) NOT NULL,
  `p_quantity` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_code_UNIQUE` (`p_code`),
  KEY `FK_keep` (`w_id`),
  KEY `FK_type` (`cat_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`w_id`) REFERENCES `locations` (`l_id`) ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'ยาสระผม A',59.50,'สระได้สระดี สระจนหัวเปื่อย',1001,1,10,34,1),(2,'ยาสีฟันตราจระเข้',20.50,'แปรงสะอาดยันชาติหน้า',1002,1,10,25,1),(3,'สบู่ตรานกเค้าแมว',4.25,'อาบสะอาดจนย่าต้องขอใช้ด้วย',1003,1,10,45,1),(4,'น้ำยาล้างจานอัลไล',40.00,'จานสะอาดเหมือนได้จานใหม่',1004,1,10,16,1),(5,'อาหารสุนัขมีเอ',25.00,'ขนสวยถูกใจ ขับถ่ายเป็นก้อน',1005,2,10,23,2),(6,'ไม้เกาหลัง',2.50,'ย่าจะไม่ต้องใช้คุณเกาหลังอีกต่อไป',1006,3,10,12,3),(7,'ไม้ดูดส้วม',60.00,'ดูดลึกยันท่อบ้านข้างๆ',1007,3,10,11,3),(8,'แป้งเย็นตราไส้เดือน',29.00,'ทาแล้วเย็นเหมือนอยู่ในช่องฟรีซ',1008,1,10,35,1),(9,'ยาจุดกันยุงเป็ดฟ้า',210.00,'เป็ดดินกินหญ้า เป็ดฟ้าหนียุง',1009,1,10,24,1),(10,'ยาแก้ไอตราเสือสมิง',159.00,'ทานแล้วชุ่มคอพร้อมเม้ากับป้าบ้านข้างๆ',1010,4,10,12,4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taking`
--

DROP TABLE IF EXISTS `taking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taking` (
  `t_id` int(10) NOT NULL,
  `p_id` int(20) NOT NULL,
  `order_id` int(10) NOT NULL,
  `t_date` varchar(45) NOT NULL,
  `t_price` varchar(45) NOT NULL,
  PRIMARY KEY (`t_id`),
  KEY `FK_taking` (`order_id`),
  KEY `FK_taking_2` (`p_id`),
  CONSTRAINT `taking_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `check_out` (`co_id`) ON UPDATE CASCADE,
  CONSTRAINT `taking_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taking`
--

LOCK TABLES `taking` WRITE;
/*!40000 ALTER TABLE `taking` DISABLE KEYS */;
INSERT INTO `taking` VALUES (1,4,1,'2561-01-03','4.25'),(2,5,4,'2561-01-04','25'),(3,2,3,'2561-08-06','20'),(4,1,1,'2561-11-08','129'),(5,1,2,'2561-11-23','159'),(6,2,4,'2561-12-04','29');
/*!40000 ALTER TABLE `taking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transactions` (
  `ts_id` int(20) NOT NULL,
  `ts_price` float(5,2) NOT NULL,
  `ts_date` datetime NOT NULL,
  `p_id` int(20) NOT NULL,
  `ts_expired` date NOT NULL,
  `ts_quantity` int(5) NOT NULL,
  PRIMARY KEY (`ts_id`),
  KEY `FK_get_product` (`p_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,25.00,'2560-09-01 00:00:00',1,'2562-03-01',20),(2,110.00,'2560-09-08 00:00:00',3,'2562-03-09',24),(3,35.00,'2560-10-11 00:00:00',6,'2562-04-10',25),(4,40.00,'2560-11-25 00:00:00',3,'2562-06-03',30),(5,2.50,'2560-11-23 00:00:00',2,'2562-06-04',30),(6,15.00,'2560-11-30 00:00:00',6,'2562-05-11',25);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-06 14:59:53
