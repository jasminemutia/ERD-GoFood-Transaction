-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 09:31 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gojek_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `mscustomer`
--

CREATE TABLE `mscustomer` (
  `CustomerID` char(12) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustomerAddress` varchar(255) NOT NULL,
  `CustomerUrbanVillageID` char(5) NOT NULL,
  `CustomerSubDistrictID` char(5) NOT NULL,
  `CustomerDistrictID` char(5) NOT NULL,
  `CustomerProvinceID` char(5) NOT NULL,
  `CustomerPostalCodeID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mscustomer`
--

INSERT INTO `mscustomer` (`CustomerID`, `CustomerName`, `CustomerAddress`, `CustomerUrbanVillageID`, `CustomerSubDistrictID`, `CustomerDistrictID`, `CustomerProvinceID`, `CustomerPostalCodeID`) VALUES
('CU2529474198', 'Nurul Putri', 'Jl Tulip Blok B No. 1', 'KL004', 'KC005', 'KK005', 'PV003', 'PC002'),
('CU3872338300', 'Novita Dyah', 'Jl Mawar 3 Blok C3 No. 6', 'KL002', 'KC001', 'KK001', 'PV001', 'PC002'),
('CU5361522657', 'Arif Muhammad', 'Jl Tulip Blok D No.15', 'KL004', 'KC005', 'KK005', 'PV003', 'PC002'),
('CU5839418311', 'Puspita Ayu', 'Jl Mawar 2 Blok A4 No.5', 'KL002', 'KC001', 'KK001', 'PV001', 'PC002'),
('CU6018155509', 'Budi Adi', 'Jl Melati 1 Blok A No.10', 'KL009', 'KC010', 'KK010', 'PV003', 'PC010'),
('CU6182349271', 'Fepri Putra', 'Jl Mawar 3 Blok C3 No. 1', 'KL002', 'KC001', 'KK001', 'PV001', 'PC002'),
('CU6226426715', 'I Ketut', 'Jl Melati Kav. 97', 'KL009', 'KC010', 'KK010', 'PV003', 'PC010'),
('CU6951981065', 'Maria Pratiwi', 'Jl Mawar 5 Blok D4 No. 15', 'KL002', 'KC001', 'KK001', 'PV001', 'PC002'),
('CU8200800827', 'Ahmad Kurniawan', 'Jl Melati 1 Blok A No. 10', 'KL009', 'KC010', 'KK010', 'PV003', 'PC010'),
('CU9720788482', 'Kartika Wulandari', 'Jl Bugenville Blok D No.25', 'KL007', 'KC008', 'KK008', 'PV002', 'PC005');

-- --------------------------------------------------------

--
-- Table structure for table `msdistrict`
--

CREATE TABLE `msdistrict` (
  `DistrictID` char(5) NOT NULL,
  `DistrictName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msdistrict`
--

INSERT INTO `msdistrict` (`DistrictID`, `DistrictName`) VALUES
('KK001', 'Tangerang Selatan'),
('KK002', 'Jakarta Selatan'),
('KK003', 'Jakarta Timur'),
('KK004', 'Jakarta Pusat'),
('KK005', 'Jakarta Barat'),
('KK006', 'Cibadak'),
('KK007', 'Bandung'),
('KK008', 'Bekasi'),
('KK009', 'Bogor'),
('KK010', 'Karawang');

-- --------------------------------------------------------

--
-- Table structure for table `msdriver`
--

CREATE TABLE `msdriver` (
  `DriverID` char(12) NOT NULL,
  `DriverName` varchar(255) NOT NULL,
  `DriverLicensePlate` varchar(10) NOT NULL,
  `DriverVehicleType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msdriver`
--

INSERT INTO `msdriver` (`DriverID`, `DriverName`, `DriverLicensePlate`, `DriverVehicleType`) VALUES
('DR1234854718', 'Agam Maulana', 'B6394WUF', 'Honda Beat'),
('DR3109658692', 'Aditya Nugroho', 'B4560PRG', 'Suzuki Nex'),
('DR4116616002', 'Rina Maya', 'B5259JKJ', 'Yamaha Byson'),
('DR4918388904', 'Bagus Ade', 'B7128PQR', 'Honda MegaPro FI'),
('DR5497501521', 'Yunita Rina', 'B6488AAV', 'Honda Beat'),
('DR6056883237', 'Putri Rahayu', 'B2208MLO', 'Honda Beat'),
('DR6841368364', 'Arief Kurniawan', 'B7789HLW', 'Honda Revo Fit'),
('DR7006973912', 'Arief Handayano', 'B6009ACM', 'Yamaha Mio S'),
('DR7024063722', 'Citra Munaroh', 'B6086BQN', 'Honda Revo Fit'),
('DR9005452865', 'Puji Devi', 'B1608WAE', 'Honda Beat');

-- --------------------------------------------------------

--
-- Table structure for table `msitem`
--

CREATE TABLE `msitem` (
  `ItemID` char(12) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `ItemPrice` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msitem`
--

INSERT INTO `msitem` (`ItemID`, `ItemName`, `ItemPrice`) VALUES
('IE1189800805', 'Brownie Bites (Large)', 40000),
('IE4044153406', 'Baby Crab Ukuran XL', 30000),
('IE5824821466', 'Martabak Tipker Coklat Kacang', 45000),
('IE7866181968', 'Coffee Milk Brown Sugar', 20500),
('IE7986136188', 'Martabak Upside Down Ovomaltine Keju', 145000),
('IE8401724890', 'Cold Fudgy Brownies 20x20', 160000),
('IE8416792438', 'Pure Cocoa', 26000),
('IE9041559670', 'Milk Brown Sugar', 18500),
('IE9456721830', 'Trio Hotdakk Mozarella', 67000),
('IE9846391717', 'Martabak Tipker Keju', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `mspostalcode`
--

CREATE TABLE `mspostalcode` (
  `PostalCodeID` char(5) NOT NULL,
  `PostalCodeNumber` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mspostalcode`
--

INSERT INTO `mspostalcode` (`PostalCodeID`, `PostalCodeNumber`) VALUES
('PC001', 15417),
('PC002', 15415),
('PC003', 15418),
('PC004', 15419),
('PC005', 15420),
('PC006', 15421),
('PC007', 15422),
('PC008', 62801),
('PC009', 26375),
('PC010', 46257);

-- --------------------------------------------------------

--
-- Table structure for table `msprovince`
--

CREATE TABLE `msprovince` (
  `ProvinceID` char(5) NOT NULL,
  `ProvinceName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msprovince`
--

INSERT INTO `msprovince` (`ProvinceID`, `ProvinceName`) VALUES
('PV001', 'Banten'),
('PV002', 'DKI Jakarta'),
('PV003', 'Jawa Barat'),
('PV004', 'Jawa Tengah'),
('PV005', 'Daerah Istimewa Yogyakarta'),
('PV006', 'Jawa Timur'),
('PV007', 'Bali'),
('PV008', 'Nusa Tenggara Timur'),
('PV009', 'Nusa Tenggara Barat'),
('PV010', 'Kepulauan Riau');

-- --------------------------------------------------------

--
-- Table structure for table `msstore`
--

CREATE TABLE `msstore` (
  `StoreID` char(12) NOT NULL,
  `StoreName` varchar(255) NOT NULL,
  `StoreAddress` varchar(255) NOT NULL,
  `StoreUrbanVillageID` char(5) NOT NULL,
  `StoreSubDistrictID` char(5) NOT NULL,
  `StoreDistrictID` char(5) NOT NULL,
  `StoreProvinceID` char(5) NOT NULL,
  `StorePostalCodeID` char(5) NOT NULL,
  `ServiceAndOtherFee` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msstore`
--

INSERT INTO `msstore` (`StoreID`, `StoreName`, `StoreAddress`, `StoreUrbanVillageID`, `StoreSubDistrictID`, `StoreDistrictID`, `StoreProvinceID`, `StorePostalCodeID`, `ServiceAndOtherFee`) VALUES
('ST1197623553', 'Fuko Fuko Cheese Tea', 'Komplek Podomoro City, Jl. Letjen S. Parman Kavling 28', 'KL006', 'KC010', 'KK005', 'PV002', 'PC003', 13000),
('ST2241853257', 'Cold Brownies Caja', 'Komplek Podomoro City, Jl. Letjen S. Parman Kavling 28', 'KL006', 'KC010', 'KK005', 'PV002', 'PC003', 15000),
('ST3300670796', 'Istana Bubur Ketan', 'Jalan Kebayoran Lama Raya Nomor 7', 'KL008', 'KC009', 'KK002', 'PV009', 'PC007', 10000),
('ST3365348135', 'Rujak & Asinan Buah Aa', 'Jalan Sulaiman, Gang Amal 4 Nomor 16', 'KL002', 'KC005', 'KK010', 'PV003', 'PC009', 9000),
('ST4241021513', 'Jakarta Cheese Factory', 'Komplek Podomoro City, Jl. Letjen S. Parman Kavling 28', 'KL006', 'KC010', 'KK005', 'PV002', 'PC003', 15000),
('ST6370240598', 'Martabak Pecenongan 78', 'Jalan Entong Gendut Nomor 94', 'KL003', 'KC005', 'KK003', 'PV005', 'PC002', 12000),
('ST6848506081', 'Choipan Dan Kaloci PHo-PHo', 'Jalan Tanjung Duren Selatan Gang 8 Nomor 7', 'Kl009', 'KC003', 'KK009', 'PV006', 'PC002', 10000),
('ST7102815101', 'Lekker Story', 'Komplek Podomoro City, Jl. Letjen S. Parman Kavling 28', 'KL006', 'KC010', 'KK005', 'PV002', 'PC003', 9000),
('ST7262235209', 'Sweet Truth', 'Komplek Podomoro City, Jl. Letjen S. Parman Kavling 28', 'KL006', 'KC010', 'KK005', 'PV002', 'PC003', 12000),
('ST8945173962', 'Chatime X Cupbop, LP Pamulang', 'Komplek Pamulang Permai, Jalan Pamulang Permai 1', 'KL001', 'KC001', 'KK001', 'PV001', 'PC001', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `mssubdistrict`
--

CREATE TABLE `mssubdistrict` (
  `SubDistrictID` char(5) NOT NULL,
  `SubDistrictName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mssubdistrict`
--

INSERT INTO `mssubdistrict` (`SubDistrictID`, `SubDistrictName`) VALUES
('KC001', 'Pamulang'),
('KC002', 'Cilandak'),
('KC003', 'Duren Sawit'),
('KC004', 'Menteng'),
('KC005', 'Palmerah'),
('KC006', 'Buahbatu'),
('KC007', 'Batuceper'),
('KC008', 'Tangerang'),
('KC009', 'Periuk'),
('KC010', 'Palmerah');

-- --------------------------------------------------------

--
-- Table structure for table `msurbanvillage`
--

CREATE TABLE `msurbanvillage` (
  `UrbanVillageID` char(5) NOT NULL,
  `UrbanVillageName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msurbanvillage`
--

INSERT INTO `msurbanvillage` (`UrbanVillageID`, `UrbanVillageName`) VALUES
('KL001', 'Pamulang Barat'),
('KL002', 'Kedaung'),
('KL003', 'Cipete Selatan'),
('KL004', 'Duren Sawit'),
('KL005', 'Cikini'),
('KL006', 'Slipi'),
('KL007', 'Margasari'),
('KL008', 'Kelapa Indah'),
('KL009', 'Periuk Jaya'),
('KL010', 'Kebon Besar');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `OrderID` char(12) NOT NULL,
  `ItemID` char(12) NOT NULL,
  `Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`OrderID`, `ItemID`, `Quantity`) VALUES
('F-1064343062', 'IE7986136188', 1),
('F-1064343062', 'IE9846391717', 1),
('F-1612031013', 'IE7866181968', 1),
('F-1942805643', 'IE8416792438', 1),
('F-1942805643', 'IE9456721830', 1),
('F-2536533461', 'IE1189800805', 1),
('F-6475451635', 'IE1189800805', 2),
('F-6475451635', 'IE8401724890', 1),
('F-7093055252', 'IE7866181968', 3),
('F-7093055252', 'IE9041559670', 2);

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `OrderID` char(12) NOT NULL,
  `CustomerID` char(12) NOT NULL,
  `StoreID` char(12) NOT NULL,
  `DriverID` char(12) NOT NULL,
  `Distance` float NOT NULL,
  `DeliveryFee` int(10) NOT NULL,
  `PaymentType` varchar(50) NOT NULL,
  `DelivereAt` time NOT NULL,
  `ReceiveAt` time NOT NULL,
  `OrderDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`OrderID`, `CustomerID`, `StoreID`, `DriverID`, `Distance`, `DeliveryFee`, `PaymentType`, `DelivereAt`, `ReceiveAt`, `OrderDate`) VALUES
('F-1064343062', 'CU6226426715', 'ST6370240598', 'DR6056883237', 1.5, 10000, 'Gopay', '19:00:00', '19:55:00', '2022-12-08'),
('F-1612031013', 'CU2529474198', 'ST4241021513', 'DR5497501521', 0.8, 10000, 'Gopay', '20:00:00', '20:25:00', '2022-12-08'),
('F-1942805643', 'CU6182349271', 'ST8945173962', 'DR1234854718', 3.4, 13000, 'Gopay', '17:43:00', '18:06:00', '2022-12-08'),
('F-2536533461', 'CU5839418311', 'ST2241853257', 'DR9005452865', 1.6, 10000, 'Gopay Coins', '13:15:00', '13:40:00', '2022-12-08'),
('F-3697529370', 'CU8200800827', 'ST2241853257', 'DR4918388904', 1.9, 10000, 'Gopay', '09:00:00', '09:40:00', '2022-12-08'),
('F-5443526038', 'CU9720788482', 'ST6370240598', 'DR4116616002', 4.5, 15000, 'Gopay', '09:00:00', '09:45:00', '2022-12-08'),
('F-6475451635', 'CU6018155509', 'ST2241853257', 'DR6841368364', 1.3, 10000, 'Tunai', '10:12:00', '11:15:00', '2022-12-08'),
('F-6655195396', 'CU6951981065', 'ST1197623553', 'DR7006973912', 3.6, 13000, 'Gopay', '10:34:00', '11:15:00', '2022-12-08'),
('F-7093055252', 'CU3872338300', 'ST4241021513', 'DR7024063722', 2.3, 1500, 'Gopay', '09:00:00', '09:34:00', '2022-12-08'),
('F-9401563756', 'CU5361522657', 'ST6848506081', 'DR3109658692', 0.3, 10000, 'Gopay', '11:00:00', '11:30:00', '2022-12-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mscustomer`
--
ALTER TABLE `mscustomer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `CustomerUrbanVillageID` (`CustomerUrbanVillageID`),
  ADD KEY `CustomerSubDistrictID` (`CustomerSubDistrictID`),
  ADD KEY `CustomerDistrictID` (`CustomerDistrictID`),
  ADD KEY `CustomerProvinceID` (`CustomerProvinceID`),
  ADD KEY `CustomerPostalCodeID` (`CustomerPostalCodeID`);

--
-- Indexes for table `msdistrict`
--
ALTER TABLE `msdistrict`
  ADD PRIMARY KEY (`DistrictID`);

--
-- Indexes for table `msdriver`
--
ALTER TABLE `msdriver`
  ADD PRIMARY KEY (`DriverID`);

--
-- Indexes for table `msitem`
--
ALTER TABLE `msitem`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `mspostalcode`
--
ALTER TABLE `mspostalcode`
  ADD PRIMARY KEY (`PostalCodeID`);

--
-- Indexes for table `msprovince`
--
ALTER TABLE `msprovince`
  ADD PRIMARY KEY (`ProvinceID`);

--
-- Indexes for table `msstore`
--
ALTER TABLE `msstore`
  ADD PRIMARY KEY (`StoreID`),
  ADD KEY `StoreUrbanVillageID` (`StoreUrbanVillageID`),
  ADD KEY `StoreSubDistrictID` (`StoreSubDistrictID`),
  ADD KEY `StoreDistrictID` (`StoreDistrictID`),
  ADD KEY `StoreProvinceID` (`StoreProvinceID`),
  ADD KEY `StorePostalCodeID` (`StorePostalCodeID`);

--
-- Indexes for table `mssubdistrict`
--
ALTER TABLE `mssubdistrict`
  ADD PRIMARY KEY (`SubDistrictID`);

--
-- Indexes for table `msurbanvillage`
--
ALTER TABLE `msurbanvillage`
  ADD PRIMARY KEY (`UrbanVillageID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`OrderID`,`ItemID`),
  ADD KEY `ItemID` (`ItemID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `StoreID` (`StoreID`),
  ADD KEY `DriverID` (`DriverID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mscustomer`
--
ALTER TABLE `mscustomer`
  ADD CONSTRAINT `mscustomer_ibfk_1` FOREIGN KEY (`CustomerUrbanVillageID`) REFERENCES `msurbanvillage` (`UrbanVillageID`),
  ADD CONSTRAINT `mscustomer_ibfk_2` FOREIGN KEY (`CustomerSubDistrictID`) REFERENCES `mssubdistrict` (`SubDistrictID`),
  ADD CONSTRAINT `mscustomer_ibfk_3` FOREIGN KEY (`CustomerDistrictID`) REFERENCES `msdistrict` (`DistrictID`),
  ADD CONSTRAINT `mscustomer_ibfk_4` FOREIGN KEY (`CustomerProvinceID`) REFERENCES `msprovince` (`ProvinceID`),
  ADD CONSTRAINT `mscustomer_ibfk_5` FOREIGN KEY (`CustomerPostalCodeID`) REFERENCES `mspostalcode` (`PostalCodeID`);

--
-- Constraints for table `msstore`
--
ALTER TABLE `msstore`
  ADD CONSTRAINT `msstore_ibfk_1` FOREIGN KEY (`StoreUrbanVillageID`) REFERENCES `msurbanvillage` (`UrbanVillageID`),
  ADD CONSTRAINT `msstore_ibfk_2` FOREIGN KEY (`StoreSubDistrictID`) REFERENCES `mssubdistrict` (`SubDistrictID`),
  ADD CONSTRAINT `msstore_ibfk_3` FOREIGN KEY (`StoreDistrictID`) REFERENCES `msdistrict` (`DistrictID`),
  ADD CONSTRAINT `msstore_ibfk_4` FOREIGN KEY (`StoreProvinceID`) REFERENCES `msprovince` (`ProvinceID`),
  ADD CONSTRAINT `msstore_ibfk_5` FOREIGN KEY (`StorePostalCodeID`) REFERENCES `mspostalcode` (`PostalCodeID`);

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `transactionheader` (`OrderID`),
  ADD CONSTRAINT `transactiondetail_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `msitem` (`ItemID`);

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `mscustomer` (`CustomerID`),
  ADD CONSTRAINT `transactionheader_ibfk_2` FOREIGN KEY (`StoreID`) REFERENCES `msstore` (`StoreID`),
  ADD CONSTRAINT `transactionheader_ibfk_3` FOREIGN KEY (`DriverID`) REFERENCES `msdriver` (`DriverID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
