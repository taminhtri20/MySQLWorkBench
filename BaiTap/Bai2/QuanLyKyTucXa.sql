-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Quan_Ly_Ky_Tuc_Xa
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
-- Table structure for table `Lop`
--

DROP TABLE IF EXISTS `Lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lop` (
  `MaLop` varchar(10) NOT NULL,
  `TenLop` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lop`
--

LOCK TABLES `Lop` WRITE;
/*!40000 ALTER TABLE `Lop` DISABLE KEYS */;
INSERT INTO `Lop` VALUES ('1','Lop1'),('10','Lop10'),('2','Lop2'),('3','Lop3'),('4','Lop4'),('5','Lop5'),('6','Lop6'),('7','Lop7'),('8','Lop8'),('9','Lop9');
/*!40000 ALTER TABLE `Lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NhanVien`
--

DROP TABLE IF EXISTS `NhanVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NhanVien` (
  `MaNV` varchar(10) NOT NULL,
  `HoTen` varchar(10) DEFAULT NULL,
  `SoDienThoai` int DEFAULT NULL,
  `GhiChu` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NhanVien`
--

LOCK TABLES `NhanVien` WRITE;
/*!40000 ALTER TABLE `NhanVien` DISABLE KEYS */;
INSERT INTO `NhanVien` VALUES ('1','NhanVien1',987654321,'Ghichumoi'),('10','NhanVien10',987654321,'ghichu10'),('2','NhanVien2',987654321,'ghichu2'),('3','NhanVien3',987654321,'ghichu3'),('4','NhanVien4',987654321,'ghichu4'),('5','NhanVien5',987654321,'ghichu5'),('6','NhanVien6',987654321,'ghichu6'),('7','NhanVien7',987654321,'ghichu7'),('8','NhanVien8',987654321,'ghichu8'),('9','NhanVien9',987654321,'ghichu9');
/*!40000 ALTER TABLE `NhanVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phong`
--

DROP TABLE IF EXISTS `Phong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Phong` (
  `MaPhong` varchar(10) NOT NULL,
  `TenPhong` varchar(10) DEFAULT NULL,
  `DienTich` int DEFAULT NULL,
  `SoGiuong` int DEFAULT NULL,
  `GiaThue` int DEFAULT NULL,
  PRIMARY KEY (`MaPhong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phong`
--

LOCK TABLES `Phong` WRITE;
/*!40000 ALTER TABLE `Phong` DISABLE KEYS */;
INSERT INTO `Phong` VALUES ('1','Phong 1',20,2,1500000),('10','Phong 10',24,2,500000),('2','Phong 2',18,1,400000),('3','Phong 3',22,3,600000),('4','Phong 4',16,2,450000),('5','Phong 5',25,4,700000),('6','Phong 6',19,1,400000),('7','Phong 7',21,2,500000),('8','Phong 8',23,3,600000),('9','Phong 9',17,1,400000);
/*!40000 ALTER TABLE `Phong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SinhVien`
--

DROP TABLE IF EXISTS `SinhVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SinhVien` (
  `MaSV` varchar(10) NOT NULL,
  `HoTen` varchar(10) DEFAULT NULL,
  `SoDienThoai` int DEFAULT NULL,
  `MaLop` varchar(10) NOT NULL,
  PRIMARY KEY (`MaSV`),
  KEY `MaLop` (`MaLop`),
  CONSTRAINT `SinhVien_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `Lop` (`MaLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SinhVien`
--

LOCK TABLES `SinhVien` WRITE;
/*!40000 ALTER TABLE `SinhVien` DISABLE KEYS */;
INSERT INTO `SinhVien` VALUES ('1','SV 1',123123,'1'),('10','SV 10',987654321,'10'),('2','SV 2',987654321,'2'),('3','SV 3',987654321,'3'),('4','SV 4',987654321,'4'),('5','SV 5',987654321,'5'),('6','SV 6',987654321,'6'),('7','SV 7',987654321,'7'),('8','SV 8',987654321,'8'),('9','SV 9',987654321,'9');
/*!40000 ALTER TABLE `SinhVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TT_ThuePhong`
--

DROP TABLE IF EXISTS `TT_ThuePhong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TT_ThuePhong` (
  `MaHopDong` varchar(10) NOT NULL,
  `Thang_nam` date DEFAULT NULL,
  `So_Tien` int DEFAULT NULL,
  `Ngay_Thanh_Toan` date DEFAULT NULL,
  `MaNV` varchar(10) NOT NULL,
  PRIMARY KEY (`MaHopDong`,`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TT_ThuePhong`
--

LOCK TABLES `TT_ThuePhong` WRITE;
/*!40000 ALTER TABLE `TT_ThuePhong` DISABLE KEYS */;
INSERT INTO `TT_ThuePhong` VALUES ('1','2023-01-01',500000,'2023-01-05','1'),('1','2023-01-01',500000,'2023-01-05','2'),('1','2023-01-01',500000,'2023-01-05','3'),('2','2023-01-01',500000,'2023-01-05','4'),('2','2023-01-01',500000,'2023-01-05','5'),('2','2023-01-01',500000,'2023-01-05','6'),('3','2023-01-01',500000,'2023-01-05','7'),('3','2023-01-01',500000,'2023-01-05','8'),('3','2023-01-01',500000,'2023-01-05','9'),('4','2023-01-01',500000,'2023-01-05','10');
/*!40000 ALTER TABLE `TT_ThuePhong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThuePhong`
--

DROP TABLE IF EXISTS `ThuePhong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ThuePhong` (
  `MaHopDong` varchar(10) NOT NULL,
  `MaSV` varchar(10) NOT NULL,
  `MaPhong` varchar(10) NOT NULL,
  `BatDong` date DEFAULT NULL,
  `KetThuc` date DEFAULT NULL,
  `TienDatCoc` int DEFAULT NULL,
  `GiaThueThucTe` int DEFAULT NULL,
  PRIMARY KEY (`MaHopDong`),
  KEY `MaSV` (`MaSV`),
  KEY `MaPhong` (`MaPhong`),
  CONSTRAINT `ThuePhong_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `SinhVien` (`MaSV`),
  CONSTRAINT `ThuePhong_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `Phong` (`MaPhong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThuePhong`
--

LOCK TABLES `ThuePhong` WRITE;
/*!40000 ALTER TABLE `ThuePhong` DISABLE KEYS */;
INSERT INTO `ThuePhong` VALUES ('1','1','1','2023-01-01','2023-12-31',1000000,450000),('10','10','10','2023-01-01','2023-12-31',1000000,500000),('2','2','2','2023-01-01','2023-12-31',1000000,500000),('3','3','3','2023-01-01','2023-12-31',1000000,500000),('4','4','4','2023-01-01','2023-12-31',1000000,500000),('5','5','5','2023-01-01','2023-12-31',1000000,500000),('6','6','6','2023-01-01','2023-12-31',1000000,500000),('7','7','7','2023-01-01','2023-12-31',1000000,500000),('8','8','8','2023-01-01','2023-12-31',1000000,500000),('9','9','9','2023-01-01','2023-12-31',1000000,500000);
/*!40000 ALTER TABLE `ThuePhong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26 22:14:00
