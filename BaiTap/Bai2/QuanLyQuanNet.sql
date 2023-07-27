-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Quan_Ly_Quan_Net
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
-- Table structure for table `CTMayTinh`
--

DROP TABLE IF EXISTS `CTMayTinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CTMayTinh` (
  `MaMayTinh` varchar(20) NOT NULL,
  `MaThietBi` varchar(20) NOT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  PRIMARY KEY (`MaMayTinh`,`MaThietBi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CTMayTinh`
--

LOCK TABLES `CTMayTinh` WRITE;
/*!40000 ALTER TABLE `CTMayTinh` DISABLE KEYS */;
INSERT INTO `CTMayTinh` VALUES ('1','1','2023-01-01','2023-12-31'),('10','10','2023-01-01','2023-12-31'),('2','2','2023-01-01','2023-12-31'),('3','3','2023-01-01','2023-12-31'),('4','4','2023-01-01','2023-12-31'),('5','5','2023-01-01','2023-12-31'),('6','6','2023-01-01','2023-12-31'),('7','7','2023-01-01','2023-12-31'),('8','8','2023-01-01','2023-12-31'),('9','9','2023-01-01','2023-12-31');
/*!40000 ALTER TABLE `CTMayTinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KhachHang`
--

DROP TABLE IF EXISTS `KhachHang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KhachHang` (
  `MaKH` varchar(20) NOT NULL,
  `TenKH` varchar(20) DEFAULT NULL,
  `SoDienThoai` int DEFAULT NULL,
  `GhiChu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KhachHang`
--

LOCK TABLES `KhachHang` WRITE;
/*!40000 ALTER TABLE `KhachHang` DISABLE KEYS */;
INSERT INTO `KhachHang` VALUES ('1','Nguyen van x',123121232,'Vip'),('10','Nguyen van a',123129,'Vip'),('2','Nguyen van s',12312123,'Vip'),('3','Nguyen van w',12312123,'Vip'),('4','Nguyen van g',123121232,'Vip'),('5','Nguyen van h',123126,'Vip'),('6','Nguyen van v',123127,'Vip'),('7','Nguyen van c',123128,'Vip'),('8','Nguyen van x',123129,'Vip'),('9','Nguyen van z',123129,'Vip');
/*!40000 ALTER TABLE `KhachHang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MayTinh`
--

DROP TABLE IF EXISTS `MayTinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MayTinh` (
  `MaMayTinh` varchar(20) NOT NULL,
  `Ten` varchar(20) DEFAULT NULL,
  `MoTa` varchar(20) DEFAULT NULL,
  `NgayDuaVaoSuDung` date DEFAULT NULL,
  PRIMARY KEY (`MaMayTinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MayTinh`
--

LOCK TABLES `MayTinh` WRITE;
/*!40000 ALTER TABLE `MayTinh` DISABLE KEYS */;
INSERT INTO `MayTinh` VALUES ('1','Maytinh2','CPU Intel Core i5','2023-01-01'),('10','Maytinh2','CPU Intel Core i5','2023-01-01'),('2','Maytinh2','CPU Intel Core i5','2023-01-01'),('3','Maytinh2','CPU Intel Core i5','2023-01-01'),('4','Maytinh2','CPU Intel Core i5','2023-01-01'),('5','Maytinh2','CPU Intel Core i5','2023-01-01'),('6','Maytinh2','CPU Intel Core i5','2023-01-01'),('7','Maytinh2','CPU Intel Core i5','2023-01-01'),('8','Maytinh2','CPU Intel Core i5','2023-01-01'),('9','Maytinh2','CPU Intel Core i5','2023-01-01');
/*!40000 ALTER TABLE `MayTinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NhanVien`
--

DROP TABLE IF EXISTS `NhanVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NhanVien` (
  `MaNV` varchar(20) NOT NULL,
  `HoTen` varchar(20) DEFAULT NULL,
  `SoDienThoai` int DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NhanVien`
--

LOCK TABLES `NhanVien` WRITE;
/*!40000 ALTER TABLE `NhanVien` DISABLE KEYS */;
INSERT INTO `NhanVien` VALUES ('1','Nguyen van a',987654321,'a@gmail.com'),('2','Nguyen van b',25325235,'a@gmail.com'),('3','Nguyen van c',25325235,'a@gmail.com'),('4','Nguyen van d',25325235,'a@gmail.com'),('5','Nguyen van e',25325235,'a@gmail.com'),('6','Nguyen van f',25325235,'a@gmail.com'),('7','Nguyen van g',25325235,'a@gmail.com'),('8','Nguyen van h',25325235,'a@gmail.com'),('9','Nguyen van i',25325235,'a@gmail.com');
/*!40000 ALTER TABLE `NhanVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThanhToan`
--

DROP TABLE IF EXISTS `ThanhToan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ThanhToan` (
  `MaThue` varchar(20) NOT NULL,
  `SoTien` int DEFAULT NULL,
  `SoThanhToan` int DEFAULT NULL,
  `SoConNo` int DEFAULT NULL,
  `GhiChu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaThue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThanhToan`
--

LOCK TABLES `ThanhToan` WRITE;
/*!40000 ALTER TABLE `ThanhToan` DISABLE KEYS */;
INSERT INTO `ThanhToan` VALUES ('1',123,213123,213,'asd'),('10',123,213123,213,'asd'),('2',123,213123,213,'asd'),('3',123,213123,213,'asd'),('4',123,213123,213,'asd'),('5',123,213123,213,'asd'),('6',123,213123,213,'asd'),('7',123,213123,213,'asd'),('8',123,213123,213,'asd'),('9',123,213123,213,'asd');
/*!40000 ALTER TABLE `ThanhToan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThietBi`
--

DROP TABLE IF EXISTS `ThietBi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ThietBi` (
  `MaThietBi` varchar(20) NOT NULL,
  `TenThietBi` varchar(20) DEFAULT NULL,
  `DonGia` int DEFAULT NULL,
  `TinhTrang` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaThietBi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThietBi`
--

LOCK TABLES `ThietBi` WRITE;
/*!40000 ALTER TABLE `ThietBi` DISABLE KEYS */;
INSERT INTO `ThietBi` VALUES ('1','Chuot',50,'Hỏng hóc'),('10','Webcam',540,'moi'),('2','Ban phim',150,'moi'),('3','Man Hinh',250,'moi'),('4','CPU',350,'moi'),('5','Ram',350,'moi'),('7','Tai nghe',450,'moi'),('8','Loa',40,'moi'),('9','USB',50,'moi');
/*!40000 ALTER TABLE `ThietBi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Thue`
--

DROP TABLE IF EXISTS `Thue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Thue` (
  `MaThue` varchar(20) NOT NULL,
  `MaKH` varchar(20) NOT NULL,
  `MaMayTinh` varchar(20) NOT NULL,
  `ThoiGianBatDau` date DEFAULT NULL,
  `ThoiGianKetThuc` date DEFAULT NULL,
  PRIMARY KEY (`MaThue`),
  KEY `MaKH` (`MaKH`),
  KEY `MaMayTinh` (`MaMayTinh`),
  CONSTRAINT `Thue_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `KhachHang` (`MaKH`),
  CONSTRAINT `Thue_ibfk_2` FOREIGN KEY (`MaMayTinh`) REFERENCES `MayTinh` (`MaMayTinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Thue`
--

LOCK TABLES `Thue` WRITE;
/*!40000 ALTER TABLE `Thue` DISABLE KEYS */;
INSERT INTO `Thue` VALUES ('10','10','10','2023-01-01','2023-12-31'),('2','2','2','2023-01-01','2023-12-31'),('3','3','3','2023-01-01','2023-12-31'),('4','4','4','2023-01-01','2023-12-31'),('5','5','5','2023-01-01','2023-12-31'),('6','6','6','2023-01-01','2023-12-31'),('7','7','7','2023-01-01','2023-12-31'),('8','8','8','2023-01-01','2023-12-31'),('9','9','9','2023-01-01','2023-12-31');
/*!40000 ALTER TABLE `Thue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26 22:14:39
