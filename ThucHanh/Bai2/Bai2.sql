-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Quan_Ly_Sinh_Vien
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `Chuong_Trinh_Hoc`
--

DROP TABLE IF EXISTS `Chuong_Trinh_Hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Chuong_Trinh_Hoc` (
  `Ma_CT` varchar(10) NOT NULL,
  `Ten_CT` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Ma_CT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chuong_Trinh_Hoc`
--

LOCK TABLES `Chuong_Trinh_Hoc` WRITE;
/*!40000 ALTER TABLE `Chuong_Trinh_Hoc` DISABLE KEYS */;
INSERT INTO `Chuong_Trinh_Hoc` VALUES ('CTH1','Chương trình học 1'),('CTH10','Chương trình học 10'),('CTH2','Chương trình học 2'),('CTH3','Chương trình học 3'),('CTH4','Chương trình học 4'),('CTH5','Chương trình học 5'),('CTH6','Chương trình học 6'),('CTH7','Chương trình học 7'),('CTH8','Chương trình học 8'),('CTH9','Chương trình học 9');
/*!40000 ALTER TABLE `Chuong_Trinh_Hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Giang_Khoa`
--

DROP TABLE IF EXISTS `Giang_Khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Giang_Khoa` (
  `Ma_CT` varchar(10) NOT NULL,
  `Ma_Khoa` varchar(10) NOT NULL,
  `Ma_MH` varchar(10) NOT NULL,
  `Nam_Hoc` int NOT NULL,
  `Hoc_Ky` int DEFAULT NULL,
  `SLLT` int DEFAULT NULL,
  `STTH` int DEFAULT NULL,
  `So_Tin_Chi` int DEFAULT NULL,
  PRIMARY KEY (`Ma_CT`,`Ma_Khoa`,`Ma_MH`,`Nam_Hoc`),
  KEY `Ma_Khoa` (`Ma_Khoa`),
  KEY `Ma_MH` (`Ma_MH`),
  CONSTRAINT `Giang_Khoa_ibfk_1` FOREIGN KEY (`Ma_CT`) REFERENCES `Chuong_Trinh_Hoc` (`Ma_CT`),
  CONSTRAINT `Giang_Khoa_ibfk_2` FOREIGN KEY (`Ma_Khoa`) REFERENCES `Khoa` (`Ma_Khoa`),
  CONSTRAINT `Giang_Khoa_ibfk_3` FOREIGN KEY (`Ma_MH`) REFERENCES `Mon_Hoc` (`Ma_MH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Giang_Khoa`
--

LOCK TABLES `Giang_Khoa` WRITE;
/*!40000 ALTER TABLE `Giang_Khoa` DISABLE KEYS */;
INSERT INTO `Giang_Khoa` VALUES ('CTH1','K1','MH1',2020,1,30,60,3),('CTH2','K2','MH2',2020,1,45,90,4),('CTH3','K3','MH3',2020,1,60,120,5),('CTH4','K4','MH4',2020,1,30,60,3),('CTH5','K5','MH5',2020,1,45,90,4),('CTH6','K6','MH6',2020,1,60,120,5),('CTH7','K7','MH7',2020,1,30,60,3),('CTH8','K8','MH8',2020,1,45,90,4),('CTH9','K9','MH9',2020,1,60,120,5);
/*!40000 ALTER TABLE `Giang_Khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ket_Qua`
--

DROP TABLE IF EXISTS `Ket_Qua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ket_Qua` (
  `Ma_SV` varchar(10) NOT NULL,
  `Ma_MH` varchar(10) NOT NULL,
  `Lan_Thi` int NOT NULL,
  `Diem_Thi` float DEFAULT NULL,
  PRIMARY KEY (`Ma_SV`,`Ma_MH`,`Lan_Thi`),
  KEY `Ma_MH` (`Ma_MH`),
  CONSTRAINT `Ket_Qua_ibfk_1` FOREIGN KEY (`Ma_SV`) REFERENCES `Sinh_Vien` (`Ma_SV`),
  CONSTRAINT `Ket_Qua_ibfk_2` FOREIGN KEY (`Ma_MH`) REFERENCES `Mon_Hoc` (`Ma_MH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ket_Qua`
--

LOCK TABLES `Ket_Qua` WRITE;
/*!40000 ALTER TABLE `Ket_Qua` DISABLE KEYS */;
INSERT INTO `Ket_Qua` VALUES ('SV1','MH1',1,8.5),('SV10','MH10',1,7.9),('SV2','MH2',1,7.2),('SV3','MH3',1,9),('SV4','MH4',1,6.8),('SV5','MH5',1,8),('SV6','MH6',1,7.5),('SV7','MH7',1,9.5),('SV8','MH8',1,6),('SV9','MH9',1,8.2);
/*!40000 ALTER TABLE `Ket_Qua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Khoa`
--

DROP TABLE IF EXISTS `Khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Khoa` (
  `Ma_Khoa` varchar(10) NOT NULL,
  `Ten_Khoa` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Nam_Thanh_Lap` int DEFAULT NULL,
  PRIMARY KEY (`Ma_Khoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Khoa`
--

LOCK TABLES `Khoa` WRITE;
/*!40000 ALTER TABLE `Khoa` DISABLE KEYS */;
INSERT INTO `Khoa` VALUES ('K1','Khoa cntt moi',1998),('K10','Khoa Y học',1975),('K2','Khoa Kinh tế',1995),('K3','Khoa Ngôn ngữ học',2002),('K4','Khoa Luật',1990),('K5','Khoa Ngoại ngữ',1985),('K6','Khoa Quản trị kinh doanh',2000),('K7','Khoa Khoa học xã hội',1997),('K8','Khoa Mỹ thuật',1988),('K9','Khoa Kỹ thuật công trình',1993);
/*!40000 ALTER TABLE `Khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Khoa_Hoc`
--

DROP TABLE IF EXISTS `Khoa_Hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Khoa_Hoc` (
  `Ma_Khoa_Hoc` varchar(10) NOT NULL,
  `Nam_Bat_Dau` int DEFAULT NULL,
  `Nam_Ket_Thuc` int DEFAULT NULL,
  PRIMARY KEY (`Ma_Khoa_Hoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Khoa_Hoc`
--

LOCK TABLES `Khoa_Hoc` WRITE;
/*!40000 ALTER TABLE `Khoa_Hoc` DISABLE KEYS */;
INSERT INTO `Khoa_Hoc` VALUES ('KH1',2010,2014),('KH10',1975,1979),('KH2',2015,2019),('KH3',2020,2024),('KH4',2005,2009),('KH5',2000,2004),('KH6',1995,1999),('KH7',1990,1994),('KH8',1985,1989),('KH9',1980,1984);
/*!40000 ALTER TABLE `Khoa_Hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lop`
--

DROP TABLE IF EXISTS `Lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lop` (
  `Ma_Lop` varchar(10) NOT NULL,
  `Ma_Khoa` varchar(10) NOT NULL,
  `Ma_Khoa_Hoc` varchar(10) NOT NULL,
  `Ma_CT` varchar(10) NOT NULL,
  `STT` int DEFAULT NULL,
  PRIMARY KEY (`Ma_Lop`),
  KEY `Ma_Khoa` (`Ma_Khoa`),
  KEY `Ma_Khoa_Hoc` (`Ma_Khoa_Hoc`),
  KEY `Ma_CT` (`Ma_CT`),
  CONSTRAINT `Lop_ibfk_1` FOREIGN KEY (`Ma_Khoa`) REFERENCES `Khoa` (`Ma_Khoa`),
  CONSTRAINT `Lop_ibfk_2` FOREIGN KEY (`Ma_Khoa_Hoc`) REFERENCES `Khoa_Hoc` (`Ma_Khoa_Hoc`),
  CONSTRAINT `Lop_ibfk_3` FOREIGN KEY (`Ma_CT`) REFERENCES `Chuong_Trinh_Hoc` (`Ma_CT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lop`
--

LOCK TABLES `Lop` WRITE;
/*!40000 ALTER TABLE `Lop` DISABLE KEYS */;
INSERT INTO `Lop` VALUES ('L1','K1','KH1','CTH1',1),('L10','K10','KH10','CTH10',10),('L2','K2','KH2','CTH2',2),('L3','K3','KH3','CTH3',3),('L4','K4','KH4','CTH4',4),('L5','K5','KH5','CTH5',5),('L6','K6','KH6','CTH6',6),('L7','K7','KH7','CTH7',7),('L8','K8','KH8','CTH8',8),('L9','K9','KH9','CTH9',9);
/*!40000 ALTER TABLE `Lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mon_Hoc`
--

DROP TABLE IF EXISTS `Mon_Hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mon_Hoc` (
  `Ma_MH` varchar(10) NOT NULL,
  `Ma_Khoa` varchar(10) NOT NULL,
  `Ten_MH` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Ma_MH`),
  KEY `Ma_Khoa` (`Ma_Khoa`),
  CONSTRAINT `Mon_Hoc_ibfk_1` FOREIGN KEY (`Ma_Khoa`) REFERENCES `Khoa` (`Ma_Khoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mon_Hoc`
--

LOCK TABLES `Mon_Hoc` WRITE;
/*!40000 ALTER TABLE `Mon_Hoc` DISABLE KEYS */;
INSERT INTO `Mon_Hoc` VALUES ('MH1','K1','Môn học 1'),('MH10','K10','Môn học 10'),('MH2','K2','Môn học 2'),('MH3','K3','Môn học 3'),('MH4','K4','Môn học 4'),('MH5','K5','Môn học 5'),('MH6','K6','Môn học 6'),('MH7','K7','Môn học 7'),('MH8','K8','Môn học 8'),('MH9','K9','Môn học 9');
/*!40000 ALTER TABLE `Mon_Hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sinh_Vien`
--

DROP TABLE IF EXISTS `Sinh_Vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sinh_Vien` (
  `Ma_SV` varchar(10) NOT NULL,
  `Ho_Ten` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Nam_Sinh` int DEFAULT NULL,
  `Dan_Toc` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Ma_Lop` varchar(10) NOT NULL,
  PRIMARY KEY (`Ma_SV`),
  KEY `Ma_Lop` (`Ma_Lop`),
  CONSTRAINT `Sinh_Vien_ibfk_1` FOREIGN KEY (`Ma_Lop`) REFERENCES `Lop` (`Ma_Lop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sinh_Vien`
--

LOCK TABLES `Sinh_Vien` WRITE;
/*!40000 ALTER TABLE `Sinh_Vien` DISABLE KEYS */;
INSERT INTO `Sinh_Vien` VALUES ('SV1','Nguyễn Văn A',1995,'Kinh','L1'),('SV10','Lê Thị K',1997,'Mường','L10'),('SV2','Trần Thị B',1996,'Tày','L2'),('SV3','Lê Văn C',1997,'Mường','L3'),('SV4','Phạm Thị D',1998,'Hoa','L4'),('SV5','Hoàng Văn E',1999,'Kinh','L5'),('SV6','Vũ Thị F',2000,'Chăm','L6'),('SV7','Đặng Văn G',2001,'Tày','L7'),('SV8','Nguyễn Thị H',2002,'Hoa','L8'),('SV9','Trần Văn I',2003,'Kinh','L9');
/*!40000 ALTER TABLE `Sinh_Vien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26 14:25:13
