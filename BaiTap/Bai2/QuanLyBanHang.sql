-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Quan_Ly_Ban_Hang
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
-- Table structure for table `ChiTietHoaDon`
--

DROP TABLE IF EXISTS `ChiTietHoaDon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChiTietHoaDon` (
  `MaHD` bigint NOT NULL,
  `MaSP` varchar(6) NOT NULL,
  `SoLuong` int DEFAULT NULL,
  PRIMARY KEY (`MaHD`,`MaSP`),
  CONSTRAINT `ChiTietHoaDon_chk_1` CHECK ((`SoLuong` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChiTietHoaDon`
--

LOCK TABLES `ChiTietHoaDon` WRITE;
/*!40000 ALTER TABLE `ChiTietHoaDon` DISABLE KEYS */;
INSERT INTO `ChiTietHoaDon` VALUES (1,'BO1',48),(1,'RO1',10),(2,'BO1',25),(2,'BO2',90),(2,'BO3',25),(2,'RO2',20),(3,'BO1',10),(4,'BO1',15),(4,'RO1',20),(4,'RO2',15),(5,'BO1',10),(6,'RO2',15);
/*!40000 ALTER TABLE `ChiTietHoaDon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hoa_Don`
--

DROP TABLE IF EXISTS `Hoa_Don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hoa_Don` (
  `MaHD` bigint NOT NULL,
  `MaKH` varchar(6) NOT NULL,
  `MaNV` varchar(6) NOT NULL,
  `NgayLapHD` date DEFAULT NULL,
  `NgayNhanHang` date DEFAULT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `MaKH` (`MaKH`),
  KEY `MaNV` (`MaNV`),
  CONSTRAINT `Hoa_Don_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `Khach_Hang` (`MaKH`),
  CONSTRAINT `Hoa_Don_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `Nhan_Vien` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hoa_Don`
--

LOCK TABLES `Hoa_Don` WRITE;
/*!40000 ALTER TABLE `Hoa_Don` DISABLE KEYS */;
INSERT INTO `Hoa_Don` VALUES (1,'S001','1','1999-06-28','1999-07-10'),(2,'L010','2','1999-06-29','1999-07-12'),(3,'S002','1','1999-07-04','1999-07-12'),(4,'B145','4','1999-07-05','1999-07-10'),(5,'D100','2','1999-07-06','1999-07-20'),(6,'S001','3','1999-07-07','1999-07-21');
/*!40000 ALTER TABLE `Hoa_Don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Khach_Hang`
--

DROP TABLE IF EXISTS `Khach_Hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Khach_Hang` (
  `MaKH` varchar(6) NOT NULL,
  `HoTenKH` varchar(40) NOT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `DienThoai` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Khach_Hang`
--

LOCK TABLES `Khach_Hang` WRITE;
/*!40000 ALTER TABLE `Khach_Hang` DISABLE KEYS */;
INSERT INTO `Khach_Hang` VALUES ('B145','Cua hang so 2 quan 4','20 tran phu quan 2','8657493'),('D100','Cong ty co phan dau tu','22 ngo quyen q5','86123564'),('L010','Cua hang bach khoa quan 1','155 tran hun dao','85456123'),('S001','Cong ty XNK hoa hong','123 tran phu','8356423'),('S002','Cong ty VHP tan binh','10 Ly Thuong Kiet','8554545');
/*!40000 ALTER TABLE `Khach_Hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nhan_Vien`
--

DROP TABLE IF EXISTS `Nhan_Vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nhan_Vien` (
  `MaNV` varchar(6) NOT NULL,
  `HoNV` varchar(30) NOT NULL,
  `TenNV` varchar(12) NOT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `DienThoai` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nhan_Vien`
--

LOCK TABLES `Nhan_Vien` WRITE;
/*!40000 ALTER TABLE `Nhan_Vien` DISABLE KEYS */;
INSERT INTO `Nhan_Vien` VALUES ('1','Le Van','Tam',1,'1965-10-12','45 tran phu','86452345'),('2','Tran Thi','Lan',0,'1970-10-20','25 ngo quyen q5','8612356'),('3','Ta Thanh','Tam',1,'1965-12-10','155 tran hung dao','85456123'),('4','Ngo Thanh','Son',1,'1950-12-20','123 tran phu','8356423'),('5','Le Thi','Thuy',0,'1970-10-10','10 ly thuong kiet','8554545');
/*!40000 ALTER TABLE `Nhan_Vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `San_Pham`
--

DROP TABLE IF EXISTS `San_Pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `San_Pham` (
  `MaSP` varchar(6) NOT NULL,
  `TenSp` varchar(50) NOT NULL,
  `DonViTinh` varchar(10) DEFAULT NULL,
  `DonGia` double DEFAULT NULL,
  PRIMARY KEY (`MaSP`),
  CONSTRAINT `San_Pham_chk_1` CHECK ((`DonGia` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `San_Pham`
--

LOCK TABLES `San_Pham` WRITE;
/*!40000 ALTER TABLE `San_Pham` DISABLE KEYS */;
INSERT INTO `San_Pham` VALUES ('B01','Bia 33','Lon',4000),('B02','Bia Tiger','Lon',5000),('B03','Bia Heineken','Lon',6000),('R01','Ruou binh tay','chai',20000);
/*!40000 ALTER TABLE `San_Pham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26 22:13:25
