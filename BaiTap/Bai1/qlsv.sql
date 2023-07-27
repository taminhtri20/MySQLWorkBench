-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: qlsv
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
-- Table structure for table `ChuongTrinh`
--

DROP TABLE IF EXISTS `ChuongTrinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChuongTrinh` (
  `maCT` varchar(10) NOT NULL,
  `tenCT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`maCT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChuongTrinh`
--

LOCK TABLES `ChuongTrinh` WRITE;
/*!40000 ALTER TABLE `ChuongTrinh` DISABLE KEYS */;
INSERT INTO `ChuongTrinh` VALUES ('CQ','Chinh Quy');
/*!40000 ALTER TABLE `ChuongTrinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GiangKhoa`
--

DROP TABLE IF EXISTS `GiangKhoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GiangKhoa` (
  `maCT` varchar(10) NOT NULL,
  `maKhoa` varchar(10) NOT NULL,
  `maMH` varchar(10) NOT NULL,
  `namHoc` int DEFAULT NULL,
  `hocKy` int DEFAULT NULL,
  `soTietLyThuyet` int DEFAULT NULL,
  `soTietThucHanh` int DEFAULT NULL,
  `soTinChi` int DEFAULT NULL,
  PRIMARY KEY (`maCT`,`maKhoa`,`maMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GiangKhoa`
--

LOCK TABLES `GiangKhoa` WRITE;
/*!40000 ALTER TABLE `GiangKhoa` DISABLE KEYS */;
INSERT INTO `GiangKhoa` VALUES ('CQ','CNTT','THCS01',2004,1,45,30,4),('CQ','CNTT','THT01',2003,1,60,30,5),('CQ','CNTT','THT02',2003,2,45,30,4);
/*!40000 ALTER TABLE `GiangKhoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KetQua`
--

DROP TABLE IF EXISTS `KetQua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KetQua` (
  `maSV` varchar(10) NOT NULL,
  `maMH` varchar(10) NOT NULL,
  `lanThi` int NOT NULL,
  `diem` float DEFAULT NULL,
  PRIMARY KEY (`maSV`,`maMH`,`lanThi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KetQua`
--

LOCK TABLES `KetQua` WRITE;
/*!40000 ALTER TABLE `KetQua` DISABLE KEYS */;
INSERT INTO `KetQua` VALUES ('0212001','THCS01',1,6),('0212001','THT01',1,4),('0212001','THT01',2,7),('0212001','THT02',1,8),('0212002','THCS01',1,7),('0212002','THT01',1,8),('0212002','THT02',1,5),('0212003','THT01',1,6),('0212003','THT02',1,4),('0212003','THT02',2,6),('0212004','THT01',1,9);
/*!40000 ALTER TABLE `KetQua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Khoa`
--

DROP TABLE IF EXISTS `Khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Khoa` (
  `maKhoa` varchar(10) NOT NULL,
  `tenKhoa` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `namThanhLap` int DEFAULT NULL,
  PRIMARY KEY (`maKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Khoa`
--

LOCK TABLES `Khoa` WRITE;
/*!40000 ALTER TABLE `Khoa` DISABLE KEYS */;
INSERT INTO `Khoa` VALUES ('CNTT','Cong nghe thong tin',1995),('VL','Vat Ly',1970);
/*!40000 ALTER TABLE `Khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KhoaHoc`
--

DROP TABLE IF EXISTS `KhoaHoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KhoaHoc` (
  `maKhoaHoc` varchar(10) NOT NULL,
  `namBatDau` int DEFAULT NULL,
  `namKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`maKhoaHoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KhoaHoc`
--

LOCK TABLES `KhoaHoc` WRITE;
/*!40000 ALTER TABLE `KhoaHoc` DISABLE KEYS */;
INSERT INTO `KhoaHoc` VALUES ('K2002',2002,2006),('K2003',2003,2007),('K2004',2004,2008);
/*!40000 ALTER TABLE `KhoaHoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lop`
--

DROP TABLE IF EXISTS `Lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lop` (
  `maLop` varchar(10) NOT NULL,
  `maKhoaHoc` varchar(10) DEFAULT NULL,
  `maKhoa` varchar(10) DEFAULT NULL,
  `maCT` varchar(10) DEFAULT NULL,
  `soThuTu` int DEFAULT NULL,
  PRIMARY KEY (`maLop`),
  KEY `maKhoaHoc` (`maKhoaHoc`),
  KEY `maKhoa` (`maKhoa`),
  KEY `maCT` (`maCT`),
  CONSTRAINT `Lop_ibfk_1` FOREIGN KEY (`maKhoaHoc`) REFERENCES `KhoaHoc` (`maKhoaHoc`),
  CONSTRAINT `Lop_ibfk_2` FOREIGN KEY (`maKhoa`) REFERENCES `Khoa` (`maKhoa`),
  CONSTRAINT `Lop_ibfk_3` FOREIGN KEY (`maCT`) REFERENCES `ChuongTrinh` (`maCT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lop`
--

LOCK TABLES `Lop` WRITE;
/*!40000 ALTER TABLE `Lop` DISABLE KEYS */;
INSERT INTO `Lop` VALUES ('TH2002/01','K2002','CNTT','CQ',1),('TH2002/02','K2002','CNTT','CQ',2),('VL2003/01','K2003','VL','CQ',1);
/*!40000 ALTER TABLE `Lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonHoc`
--

DROP TABLE IF EXISTS `MonHoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MonHoc` (
  `maMH` varchar(10) NOT NULL,
  `tenMH` varchar(100) DEFAULT NULL,
  `maKhoa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`maMH`),
  KEY `maKhoa` (`maKhoa`),
  CONSTRAINT `MonHoc_ibfk_1` FOREIGN KEY (`maKhoa`) REFERENCES `Khoa` (`maKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonHoc`
--

LOCK TABLES `MonHoc` WRITE;
/*!40000 ALTER TABLE `MonHoc` DISABLE KEYS */;
INSERT INTO `MonHoc` VALUES ('THCS01','Cau truc du lieu 1','CNTT'),('THCS02','He dieu hanh','CNTT'),('THT01','Toan cao cap A1','CNTT'),('THT02','Toan roi rac','CNTT'),('VLT01','Toan cao cap A1','VL');
/*!40000 ALTER TABLE `MonHoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SinhVien`
--

DROP TABLE IF EXISTS `SinhVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SinhVien` (
  `maSV` varchar(10) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `namSinh` int DEFAULT NULL,
  `danToc` varchar(20) DEFAULT NULL,
  `maLop` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`maSV`),
  KEY `maLop` (`maLop`),
  CONSTRAINT `SinhVien_ibfk_1` FOREIGN KEY (`maLop`) REFERENCES `Lop` (`maLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SinhVien`
--

LOCK TABLES `SinhVien` WRITE;
/*!40000 ALTER TABLE `SinhVien` DISABLE KEYS */;
INSERT INTO `SinhVien` VALUES ('0212001','Nguyen Vinh An',1984,'Kinh','TH2002/01'),('0212002','Nguyen Thanh Binh',1984,'Kinh','TH2002/01'),('0212003','Nguyen Thanh Cuong',1984,'Kinh','TH2002/02'),('0212004','Nguyen Quoc Duy',1983,'Kinh','TH2002/02'),('0311001','Phan Tuan Anh',1985,'Kinh','VL2003/01'),('0311002','Huynh Thanh Sang',1985,'Kinh','VL2003/01');
/*!40000 ALTER TABLE `SinhVien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-19 10:35:20
