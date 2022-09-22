-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 01:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vatas`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga`, `jumlah`) VALUES
('B0001', 'Mouse Logitech B100', 50000, 4),
('B0002', 'Monitor LG 21.5\" 22MK600M-B', 1500000, 23),
('B0003', 'Keyboard Logitech ', 520000, 50),
('B0004', 'Earphone ZSN Pro', 185000, 19),
('B0005', 'Mousepad DAXA', 200000, 7),
('B0006', 'Webcam Nemesis A95', 400000, 19),
('B0007', 'Monitor LG 23.8\" 24MP59 Gaming IPS', 1900000, 25),
('B0008', 'Keyboard Mini Havit KB367', 85000, 15),
('B0009', 'Keyboard Philips K234', 80000, 19),
('B0010', 'Keyboard Philips K224', 100000, 18),
('B0011', 'AMD Ryzen 3 - 3200G', 1510000, 10),
('B0012', 'AMD Ryzen 5 - 3400G', 2725000, 100),
('B0013', 'Mainboard Asrock H110M', 825000, 15),
('B0014', 'Mainboard Gigabyte H110M', 1050000, 12),
('B0015', 'Mainboard MSI H110M', 875000, 10),
('B0016', 'Mainboard Asus H110M', 890000, 10),
('B0017', 'Hardisk 1 TB WD Blue', 700000, 30),
('B0018', 'Hardisk 1 TB SEAGATE ', 725000, 25),
('B0019', 'Intel Processor core i5 6600 ', 2460000, 15),
('B0020', 'Intel Core i5-9400F', 2000000, 10),
('B0021', 'Processor Intel Pentium G2030', 480000, 20),
('B0022', 'Intel processor i7 6700K', 3350000, 10),
('B0023', 'Intel Pentium G4400', 880000, 12),
('B0024', 'Monitor LED Samsung CURVE 24\" CF390', 1500000, 8),
('B0025', 'Tinta Canon Pixma GI 790 Original Hitam', 73000, 30),
('B0026', '1 SET Tinta Canon PG745+CL746', 400000, 12),
('B0027', 'CARTRIDGE CANON CL 57 ORIGINAL', 185000, 10),
('B0028', 'AMD Kaveri A8-7650K', 795000, 15),
('B0029', 'AMD FX-8350 Black Edition', 1955000, 15),
('B0030', 'TV LED LG 43 Inch 43UK6500', 4595000, 15),
('B0031', 'SPEAKER EDIFIER R1280T', 1000000, 8),
('B0032', 'Speaker Duo-040 ', 48000, 25),
('B0033', 'SPEAKER Advance Duo 026', 60000, 15),
('B0034', 'mouse', 123, 123),
('B0035', 'Monitor ', 2000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `jumlah` int(11) NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `kode_pembelian` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`jumlah`, `kode_barang`, `kode_pembelian`) VALUES
(48, 'B0001', 'P0001'),
(23, 'B0002', 'P0002'),
(32, 'B0003', 'P0003'),
(30, 'B0004', 'P0004'),
(14, 'B0005', 'P0005'),
(20, 'B0006', 'P0006'),
(25, 'B0007', 'P0007'),
(20, 'B0008', 'P0008'),
(20, 'B0009', 'P0009'),
(20, 'B0010', 'P0010'),
(10, 'B0011', 'P0011'),
(8, 'B0012', 'P0012'),
(15, 'B0013', 'P0013'),
(12, 'B0014', 'P0014'),
(10, 'B0015', 'P0015'),
(10, 'B0016', 'P0016'),
(30, 'B0017', 'P0017'),
(25, 'B0018', 'P0018'),
(15, 'B0019', 'P0019'),
(10, 'B0020', 'P0020'),
(20, 'B0021', 'P0021'),
(10, 'B0022', 'P0022'),
(12, 'B0023', 'P0023'),
(8, 'B0024', 'P0024'),
(30, 'B0025', 'P0025'),
(12, 'B0026', 'P0026'),
(10, 'B0027', 'P0027'),
(15, 'B0028', 'P0028'),
(15, 'B0029', 'P0029'),
(15, 'B0030', 'P0030'),
(8, 'B0031', 'P0031'),
(25, 'B0032', 'P0032'),
(15, 'B0033', 'P0033'),
(123, 'B0034', 'P0034'),
(1, 'B0035', 'P0035');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `jumlah` int(11) NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `kode_penjualan` varchar(6) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`jumlah`, `kode_barang`, `kode_penjualan`, `harga`) VALUES
(2, 'B0001', 'J0001', 600000),
(3, 'B0004', 'J0001', 360000),
(2, 'B0001', 'J0002', 600000),
(1, 'B0005', 'J0002', 100000),
(2, 'B0001', 'J0003', 600000),
(1, 'B0004', 'J0003', 120000),
(1, 'B0001', 'J0004', 300000),
(3, 'B0005', 'J0004', 300000),
(2, 'B0001', 'J0005', 600000),
(1, 'B0003', 'J0005', 500000),
(3, 'B0003', 'J0006', 1500000),
(1, 'B0001', 'J0007', 300000),
(2, 'B0004', 'J0007', 240000),
(1, 'B0003', 'J0008', 500000),
(1, 'B0006', 'J0008', 350000),
(1, 'B0003', 'J0009', 500000),
(1, 'B0004', 'J0010', 120000),
(2, 'B0002', 'J0010', 3600000),
(1, 'B0001', 'J0011', 300000),
(2, 'B0001', 'J0012', 600000),
(1, 'B0003', 'J0012', 500000),
(1, 'B0003', 'J0013', 500000),
(1, 'B0001', 'J0014', 300000),
(2, 'B0002', 'J0014', 3600000),
(1, 'B0001', 'J0015', 300000),
(1, 'B0001', 'J0016', 200000),
(2, 'B0004', 'J0016', 240000),
(2, 'B0004', 'J0017', 370000),
(1, 'B0012', 'J0017', 2725000),
(1, 'B0005', 'J0018', 200000),
(1, 'B0001', 'J0019', 50000),
(1, 'B0005', 'J0020', 200000),
(1, 'B0001', 'J0021', 50000),
(1, 'B0001', 'J0022', 50000),
(2, 'B0010', 'J0022', 200000),
(1, 'B0001', 'J0023', 50000),
(1, 'B0005', 'J0024', 200000),
(1, 'B0009', 'J0025', 80000),
(1, 'B0001', 'J0026', 50000),
(1, 'B0001', 'J0027', 50000),
(1, 'B0001', 'J0028', 50000),
(1, 'B0001', 'J0029', 50000),
(1, 'B0001', 'J0030', 50000),
(1, 'B0001', 'J0031', 50000),
(1, 'B0001', 'J0032', 50000),
(1, 'B0001', 'J0033', 50000),
(1, 'B0001', 'J0034', 50000),
(1, 'B0001', 'J0035', 50000),
(1, 'B0001', 'J0036', 50000),
(1, 'B0001', 'J0037', 50000),
(1, 'B0001', 'J0038', 50000),
(1, 'B0001', 'J0039', 50000),
(1, 'B0001', 'J0040', 50000),
(1, 'B0001', 'J0041', 50000),
(1, 'B0001', 'J0042', 50000),
(1, 'B0001', 'J0043', 50000),
(1, 'B0001', 'J0044', 50000),
(1, 'B0001', 'J0045', 50000),
(1, 'B0001', 'J0046', 50000),
(1, 'B0001', 'J0047', 50000),
(1, 'B0001', 'J0048', 50000),
(1, 'B0001', 'J0049', 50000),
(1, 'B0001', 'J0050', 50000),
(1, 'B0001', 'J0051', 50000),
(1, 'B0001', 'J0052', 50000),
(1, 'B0001', 'J0053', 50000),
(1, 'B0001', 'J0054', 50000),
(1, 'B0001', 'J0055', 50000),
(1, 'B0001', 'J0056', 50000),
(1, 'B0001', 'J0057', 50000),
(1, 'B0001', 'J0058', 50000),
(1, 'B0001', 'J0059', 50000),
(1, 'B0001', 'J0060', 50000),
(1, 'B0001', 'J0061', 50000),
(1, 'B0001', 'J0062', 50000),
(2, 'B0002', 'J0062', 3000000);

--
-- Triggers `detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `brngmsk` AFTER INSERT ON `detail_penjualan` FOR EACH ROW BEGIN
	UPDATE barang SET jumlah = jumlah-new.jumlah WHERE kode_barang = new.kode_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nama_pegawai` varchar(45) NOT NULL,
  `kode_pegawai` varchar(7) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `profesi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nama_pegawai`, `kode_pegawai`, `alamat`, `username`, `password`, `profesi`) VALUES
('Abdullah Ali', 'K0001', 'Surabaya', 'aab', '123', 'Kasir'),
('abdullah', 'K0002', 'Surabaya', 'ali', '12345', 'kasir'),
('Syarafina', 'K0003', 'Jember', 'fina', '123', 'Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `kode_pembelian` varchar(6) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pegawai` varchar(6) NOT NULL,
  `kode_supplier` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`kode_pembelian`, `tanggal`, `kode_pegawai`, `kode_supplier`) VALUES
('P0001', '2021-11-30', 'K0001', 'S0001'),
('P0002', '2021-11-30', 'K0001', 'S0001'),
('P0003', '2021-11-30', 'K0001', 'S0001'),
('P0004', '2021-11-30', 'K0001', 'S0001'),
('P0005', '2021-11-30', 'K0001', 'S0001'),
('P0006', '2021-12-02', 'K0001', 'S0002'),
('P0007', '2021-12-07', 'K0001', 'S0002'),
('P0008', '2021-12-07', 'K0001', 'S0002'),
('P0009', '2021-12-07', 'K0001', 'S0001'),
('P0010', '2021-12-07', 'K0001', 'S0001'),
('P0011', '2021-12-07', 'K0001', 'S0003'),
('P0012', '2021-12-07', 'K0001', 'S0003'),
('P0013', '2021-12-07', 'K0001', 'S0003'),
('P0014', '2021-12-07', 'K0001', 'S0001'),
('P0015', '2021-12-07', 'K0001', 'S0003'),
('P0016', '2021-12-07', 'K0001', 'S0001'),
('P0017', '2021-12-07', 'K0001', 'S0002'),
('P0018', '2021-12-07', 'K0001', 'S0002'),
('P0019', '2021-12-15', 'K0001', 'S0001'),
('P0020', '2021-12-15', 'K0001', 'S0001'),
('P0021', '2021-12-15', 'K0001', 'S0002'),
('P0022', '2021-12-15', 'K0001', 'S0002'),
('P0023', '2021-12-15', 'K0001', 'S0002'),
('P0024', '2021-12-15', 'K0001', 'S0002'),
('P0025', '2021-12-15', 'K0001', 'S0002'),
('P0026', '2021-12-15', 'K0001', 'S0002'),
('P0027', '2021-12-15', 'K0001', 'S0002'),
('P0028', '2021-12-15', 'K0001', 'S0002'),
('P0029', '2021-12-15', 'K0001', 'S0001'),
('P0030', '2021-12-15', 'K0001', 'S0001'),
('P0031', '2021-12-15', 'K0001', 'S0001'),
('P0032', '2021-12-15', 'K0001', 'S0001'),
('P0033', '2021-12-15', 'K0001', 'S0001'),
('P0034', '2021-12-16', 'K0001', 'S0004'),
('P0035', '2021-12-16', 'K0003', 'S0001');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode_penjualan` varchar(6) NOT NULL,
  `tanggal` date NOT NULL,
  `totalharga` int(10) DEFAULT 0,
  `kode_pegawai` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kode_penjualan`, `tanggal`, `totalharga`, `kode_pegawai`) VALUES
('J0001', '2021-12-01', 960000, 'K0001'),
('J0002', '2021-12-03', 700000, 'K0001'),
('J0003', '2021-12-03', 720000, 'K0001'),
('J0004', '2021-12-03', 600000, 'K0001'),
('J0005', '2021-12-03', 1100000, 'K0001'),
('J0006', '2021-12-03', 1500000, 'K0001'),
('J0007', '2021-12-03', 540000, 'K0001'),
('J0008', '2021-12-03', 850000, 'K0001'),
('J0009', '2021-12-03', 500000, 'K0001'),
('J0010', '2021-12-03', 3720000, 'K0001'),
('J0011', '2021-12-04', 300000, 'K0001'),
('J0012', '2021-12-04', 1100000, 'K0001'),
('J0013', '2021-12-05', 500000, 'K0001'),
('J0014', '2021-12-05', 3900000, 'K0001'),
('J0015', '2021-12-06', 300000, 'K0001'),
('J0016', '2021-12-06', 500000, 'K0001'),
('J0017', '2021-12-14', 4000000, 'K0002'),
('J0018', '2021-12-15', 300000, 'K0002'),
('J0019', '2021-12-15', 50000, 'K0001'),
('J0020', '2021-12-15', 200000, 'K0001'),
('J0021', '2021-12-15', 50000, 'K0001'),
('J0022', '2021-12-15', 250000, 'K0001'),
('J0023', '2021-12-15', 50000, 'K0001'),
('J0024', '2021-12-15', 200000, 'K0001'),
('J0025', '2021-12-15', 80000, 'K0001'),
('J0026', '2021-12-15', 50000, 'K0001'),
('J0027', '2021-12-15', 50000, 'K0001'),
('J0028', '2021-12-15', 50000, 'K0001'),
('J0029', '2021-12-15', 50000, 'K0001'),
('J0030', '2021-12-15', 50000, 'K0001'),
('J0031', '2021-12-15', 50000, 'K0001'),
('J0032', '2021-12-15', 50000, 'K0001'),
('J0033', '2021-12-15', 50000, 'K0001'),
('J0034', '2021-12-15', 50000, 'K0001'),
('J0035', '2021-12-15', 50000, 'K0001'),
('J0036', '2021-12-15', 50000, 'K0001'),
('J0037', '2021-12-15', 50000, 'K0001'),
('J0038', '2021-12-15', 50000, 'K0001'),
('J0039', '2021-12-15', 50000, 'K0001'),
('J0040', '2021-12-15', 50000, 'K0001'),
('J0041', '2021-12-15', 50000, 'K0001'),
('J0042', '2021-12-15', 50000, 'K0001'),
('J0043', '2021-12-15', 50000, 'K0001'),
('J0044', '2021-12-15', 50000, 'K0001'),
('J0045', '2021-12-15', 50000, 'K0001'),
('J0046', '2021-12-15', 50000, 'K0001'),
('J0047', '2021-12-15', 50000, 'K0001'),
('J0048', '2021-12-16', 50000, 'K0001'),
('J0049', '2021-12-16', 50000, 'K0001'),
('J0050', '2021-12-16', 50000, 'K0001'),
('J0051', '2021-12-16', 50000, 'K0001'),
('J0052', '2021-12-16', 50000, 'K0001'),
('J0053', '2021-12-16', 50000, 'K0001'),
('J0054', '2021-12-16', 50000, 'K0001'),
('J0055', '2021-12-16', 50000, 'K0001'),
('J0056', '2021-12-16', 50000, 'K0001'),
('J0057', '2021-12-16', 50000, 'K0001'),
('J0058', '2021-12-16', 50000, 'K0001'),
('J0059', '2021-12-16', 50000, 'K0001'),
('J0060', '2021-12-16', 50000, 'K0001'),
('J0061', '2021-12-16', 50000, 'K0001'),
('J0062', '2021-12-16', 3050000, 'K0003');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kode_supplier` varchar(6) NOT NULL,
  `nama_supplier` varchar(45) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `NoTlpn` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode_supplier`, `nama_supplier`, `alamat`, `NoTlpn`) VALUES
('S0001', 'aab', 'Jember', '081233326540'),
('S0002', 'ali', 'Jakarta', '08123332485'),
('S0003', 'Fathur', 'Malang', '081239865329'),
('S0004', 'Tegar', 'Situbondo', '08123456789'),
('S0005', 'Syarafina', 'Kediri', '081223216540');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `kode_pembelian` (`kode_pembelian`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `kode_penjualan` (`kode_penjualan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kode_pegawai`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`kode_pembelian`),
  ADD KEY `kode_pegawai` (`kode_pegawai`),
  ADD KEY `kode_supplier` (`kode_supplier`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode_penjualan`),
  ADD KEY `kode_pegawai` (`kode_pegawai`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD CONSTRAINT `detail_pembelian_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_pembelian_ibfk_2` FOREIGN KEY (`kode_pembelian`) REFERENCES `pembelian` (`kode_pembelian`) ON DELETE CASCADE;

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`kode_penjualan`) REFERENCES `penjualan` (`kode_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`kode_pegawai`) REFERENCES `pegawai` (`kode_pegawai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`kode_supplier`) REFERENCES `supplier` (`kode_supplier`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`kode_pegawai`) REFERENCES `pegawai` (`kode_pegawai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
