-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 05:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kodebarang` varchar(10) NOT NULL,
  `namabarang` varchar(30) DEFAULT NULL,
  `hargabelibarang` int(11) DEFAULT NULL,
  `hargajualbarang` int(11) DEFAULT NULL,
  `stokbarang` int(11) DEFAULT NULL,
  `stokminbarang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dpembelian`
--

CREATE TABLE `dpembelian` (
  `kodepembelian` varchar(10) NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `hargabelibarang` int(11) NOT NULL,
  `jmlbelibarang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dpenjualan`
--

CREATE TABLE `dpenjualan` (
  `kodepenjualan` varchar(10) NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `hargajualbarang` int(11) NOT NULL,
  `jmljualbarang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dretur_pembelian`
--

CREATE TABLE `dretur_pembelian` (
  `kodereturpembelian` varchar(10) NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `hargabelibarang` int(11) NOT NULL,
  `jmlreturbeli_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dretur_penjualan`
--

CREATE TABLE `dretur_penjualan` (
  `kodereturpenjualan` varchar(10) NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `hargajualbarang` int(11) NOT NULL,
  `jmlreturjualpenjualan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `kodekonsumen` varchar(10) NOT NULL,
  `namakonsumen` varchar(30) DEFAULT NULL,
  `alamatkonsumen` varchar(50) DEFAULT NULL,
  `kotakonsumen` varchar(20) DEFAULT NULL,
  `telpkonsumen` varchar(15) DEFAULT NULL,
  `hpkonsumen` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`kodekonsumen`, `namakonsumen`, `alamatkonsumen`, `kotakonsumen`, `telpkonsumen`, `hpkonsumen`) VALUES
('1', 'alif', 'lamper', '1', '0878', '0895');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `kodepembelian` varchar(10) NOT NULL,
  `kodesupplier` varchar(10) NOT NULL,
  `tglpembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kodepenjualan` varchar(10) NOT NULL,
  `kodekonsumen` varchar(10) NOT NULL,
  `tglpenjualan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `retur_pembelian`
--

CREATE TABLE `retur_pembelian` (
  `kodereturpembelian` varchar(10) NOT NULL,
  `kodepembelian` varchar(10) NOT NULL,
  `tglreturpembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `retur_penjualan`
--

CREATE TABLE `retur_penjualan` (
  `kodereturpenjualan` varchar(10) NOT NULL,
  `kodepenjualan` varchar(10) NOT NULL,
  `tglreturpenjualan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kodesupplier` varchar(10) NOT NULL,
  `namasupplier` varchar(30) NOT NULL,
  `alamatsupplier` varchar(50) NOT NULL,
  `kotasupplier` varchar(20) NOT NULL,
  `telpsupplier` varchar(15) NOT NULL,
  `hpsupplier` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kodekonsumen`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`kodepembelian`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kodepenjualan`);

--
-- Indexes for table `retur_pembelian`
--
ALTER TABLE `retur_pembelian`
  ADD PRIMARY KEY (`kodereturpembelian`);

--
-- Indexes for table `retur_penjualan`
--
ALTER TABLE `retur_penjualan`
  ADD PRIMARY KEY (`kodereturpenjualan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kodesupplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
