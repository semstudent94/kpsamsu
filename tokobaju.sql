-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 03:16 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobaju`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `Id` int(11) NOT NULL,
  `Title` varchar(20) DEFAULT NULL,
  `Subtitle` varchar(20) DEFAULT NULL,
  `Image` varchar(400) DEFAULT NULL,
  `Line1` varchar(20) DEFAULT NULL,
  `Line2` varchar(20) DEFAULT NULL,
  `Line3` varchar(60) DEFAULT NULL,
  `Line4` varchar(50) DEFAULT NULL,
  `Line5` varchar(50) DEFAULT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`Id`, `Title`, `Subtitle`, `Image`, `Line1`, `Line2`, `Line3`, `Line4`, `Line5`, `Create_at`, `Update_at`) VALUES
(2, 'Aku', 'dfgdfgfdg', 'tupperware.jpg', 'fdgfdgfdg', 'dfgdfgdfg', 'dfgdfgdfgdfg', 'dfgdfgfdgfdgfdgdfgfdg', 'dfgfdg', '2019-02-28 04:42:50', NULL),
(3, 'Aku', 'sdwqerad', 'ss.jpg', 'xczxcxzc', 'asde3', 'rasdr4twe', 'frasd3e', 'r45twer4', '2019-02-28 07:02:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(10) NOT NULL,
  `Category_name` varchar(20) NOT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL,
  `Description` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Category_name`, `Create_at`, `Update_at`, `Description`) VALUES
(1, 'L', '2019-02-28 03:00:52', '2019-07-11 14:34:50', 'Large'),
(2, 'S', '2019-07-11 07:35:00', NULL, 'Small'),
(3, 'M', '2019-07-11 07:35:10', NULL, 'Medium'),
(4, 'XL', '2019-07-11 07:35:22', NULL, 'Extra Large'),
(5, 'XXL', '2019-07-12 04:24:12', NULL, 'Extra Extra Large');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `Id` int(10) NOT NULL,
  `Transaction_id` int(10) DEFAULT NULL,
  `Product_id` int(10) NOT NULL,
  `Price` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Qty` int(11) NOT NULL,
  `Member_id` int(10) NOT NULL,
  `Status` int(11) NOT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`Id`, `Transaction_id`, `Product_id`, `Price`, `Date`, `Qty`, `Member_id`, `Status`, `Create_at`, `Update_at`) VALUES
(11, 7, 19, 254000, '2019-07-12 06:28:46', 1, 8, 1, '2019-07-12 06:28:46', NULL),
(12, 7, 26, 123000, '2019-07-12 06:28:50', 1, 8, 1, '2019-07-12 06:28:50', NULL),
(13, 8, 15, 207000, '2019-07-12 06:43:26', 2, 9, 1, '2019-07-12 06:43:26', NULL),
(14, 8, 22, 105000, '2019-07-12 06:43:51', 1, 9, 1, '2019-07-12 06:43:51', NULL),
(15, 9, 13, 190000, '2019-07-12 07:01:50', 1, 10, 1, '2019-07-12 07:01:50', NULL),
(16, 9, 21, 200000, '2019-07-12 07:01:57', 1, 10, 1, '2019-07-12 07:01:57', NULL),
(22, 11, 20, 230000, '2019-07-13 03:44:54', 1, 8, 1, '2019-07-13 03:44:54', NULL),
(23, 11, 17, 252000, '2019-07-17 17:14:14', 1, 8, 1, '2019-07-17 17:14:14', NULL),
(25, 11, 18, 134000, '2019-07-18 02:56:54', 1, 8, 1, '2019-07-18 02:56:54', NULL),
(34, 12, 20, 230000, '2019-07-23 03:32:00', 1, 10, 1, '2019-07-23 03:32:00', NULL),
(35, 19, 19, 254000, '2019-07-23 03:53:35', 1, 8, 1, '2019-07-23 03:53:35', NULL),
(36, 13, 16, 147000, '2019-08-19 02:55:22', 2, 10, 1, '2019-08-19 02:55:22', NULL),
(39, 14, 32, 120000, '2019-08-20 15:27:43', 1, 11, 1, '2019-08-20 15:27:43', NULL),
(40, 14, 42, 8000, '2019-08-20 15:27:50', 1, 11, 1, '2019-08-20 15:27:50', NULL),
(41, 14, 40, 77000, '2019-08-20 15:27:59', 1, 11, 1, '2019-08-20 15:27:59', NULL),
(42, 15, 19, 254000, '2019-08-21 02:15:54', 1, 11, 1, '2019-08-21 02:15:54', NULL),
(43, 16, 32, 120000, '2019-08-21 02:49:55', 1, 11, 1, '2019-08-21 02:49:55', NULL),
(44, 17, 17, 252000, '2019-08-21 02:54:20', 1, 11, 1, '2019-08-21 02:54:20', NULL),
(45, 18, 17, 252000, '2019-08-21 02:57:58', 1, 11, 1, '2019-08-21 02:57:58', NULL),
(46, 19, 17, 252000, '2019-08-21 03:11:17', 1, 8, 1, '2019-08-21 03:11:17', NULL),
(47, 20, 17, 252000, '2019-08-21 03:54:05', 1, 8, 1, '2019-08-21 03:54:05', NULL);

--
-- Triggers `details`
--
DELIMITER $$
CREATE TRIGGER `kurangstok` AFTER UPDATE ON `details` FOR EACH ROW BEGIN
     update product SET Stok=Stok-new.Qty WHERE Id=new.Product_id and new.Status=1;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `imageproduct`
--

CREATE TABLE `imageproduct` (
  `Id` int(10) NOT NULL,
  `Product_id` int(10) NOT NULL,
  `Photo_name` text NOT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imageproduct`
--

INSERT INTO `imageproduct` (`Id`, `Product_id`, `Photo_name`, `Create_at`, `Update_at`) VALUES
(33, 10, 'IMG_20190711150720_Product.jpg', '2019-07-11 08:07:20', NULL),
(34, 11, 'IMG_20190711182332_Product.jpg', '2019-07-11 11:23:32', NULL),
(35, 12, 'IMG_20190711183943_Product.jpg', '2019-07-11 11:39:43', NULL),
(36, 13, 'IMG_20190711184450_Product.jpg', '2019-07-11 11:44:50', NULL),
(37, 14, 'IMG_20190711190137_Product.jpg', '2019-07-11 12:01:38', NULL),
(38, 15, 'IMG_20190711191706_Product.jpg', '2019-07-11 12:17:06', NULL),
(39, 16, 'IMG_20190711231751_Product.jpg', '2019-07-11 16:17:53', NULL),
(40, 17, 'IMG_20190711232239_Product.jpg', '2019-07-11 16:22:39', NULL),
(41, 18, 'IMG_20190711232808_Product.jpg', '2019-07-11 16:28:08', NULL),
(42, 19, 'IMG_20190711233225_Product.jpg', '2019-07-11 16:32:26', NULL),
(43, 20, 'IMG_20190711233849_Product.jpg', '2019-07-11 16:38:49', NULL),
(44, 21, 'IMG_20190711234438_Product.jpg', '2019-07-11 16:44:38', NULL),
(46, 23, 'IMG_20190711235408_Product.jpg', '2019-07-11 16:54:08', NULL),
(47, 24, 'IMG_20190712000138_Product.jpg', '2019-07-11 17:01:39', NULL),
(48, 25, 'IMG_20190712000531_Product.jpg', '2019-07-11 17:05:31', NULL),
(49, 26, 'IMG_20190712001443_Product.jpg', '2019-07-11 17:14:43', NULL),
(50, 27, 'IMG_20190712001742_Product.jpg', '2019-07-11 17:17:43', NULL),
(51, 22, 'IMG_20190717182845_Product.jpg', '2019-07-17 11:28:45', NULL),
(54, 30, 'IMG_20190819135618_Product.jpg', '2019-08-19 06:56:18', NULL),
(55, 31, 'IMG_20190819140358_Product.jpg', '2019-08-19 07:03:58', NULL),
(56, 32, 'IMG_20190819140726_Product.jpg', '2019-08-19 07:07:26', NULL),
(57, 33, 'IMG_20190819141128_Product.jpg', '2019-08-19 07:11:28', NULL),
(58, 34, 'IMG_20190820093125_Product.jpg', '2019-08-20 02:31:26', NULL),
(59, 35, 'IMG_20190820093810_Product.jpg', '2019-08-20 02:38:10', NULL),
(60, 36, 'IMG_20190820094506_Product.jpg', '2019-08-20 02:45:07', NULL),
(61, 37, 'IMG_20190820095456_Product.jpg', '2019-08-20 02:54:56', NULL),
(62, 38, 'IMG_20190820100132_Product.jpg', '2019-08-20 03:01:32', NULL),
(63, 39, 'IMG_20190820101158_Product.jpg', '2019-08-20 03:11:58', NULL),
(64, 40, 'IMG_20190820101520_Product.jpg', '2019-08-20 03:15:20', NULL),
(65, 41, 'IMG_20190820105102_Product.jpg', '2019-08-20 03:51:02', NULL),
(69, 42, 'IMG_20190820224945_Product.jpg', '2019-08-20 15:49:45', NULL),
(70, 44, 'IMG_20190820225407_Product.jpg', '2019-08-20 15:54:07', NULL),
(71, 45, 'IMG_20190820225704_Product.jpg', '2019-08-20 15:57:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(14) DEFAULT NULL,
  `Nama` varchar(30) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `No_hp` varchar(15) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL,
  `Jenis_kel` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Id`, `NIK`, `Nama`, `Alamat`, `No_hp`, `Email`, `Create_at`, `Update_at`, `Jenis_kel`) VALUES
(1, '123456789', 'Samsu', 'Yogyakarta', '081568767567', 'samsu@gmail.com', '2019-06-25 15:38:02', '2019-06-26 09:34:22', 'L'),
(5, '210892210892', 'Ndaru', 'Jl.umbul permai, RT2 ', '082219933332', 'ndarualbert21@gmail.com', '2019-06-26 08:19:21', '2019-07-11 14:53:51', 'L'),
(6, 'HYD88934', 'Hanang Yudistira', 'Jogja', '089923234455', 'hanang.YD@gmail.com', '2019-08-19 03:08:13', NULL, 'L'),
(7, 'VN99843', 'Vina', 'Jl.karangkajen MGIII No.980A', '087732899987', 'Vina898@gmail.com', '2019-08-19 03:14:30', NULL, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Id` int(10) NOT NULL,
  `Member_name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Question` varchar(40) NOT NULL,
  `Answer` varchar(20) NOT NULL,
  `isLogin` varchar(1) NOT NULL DEFAULT 'N',
  `FailedLogin` int(11) NOT NULL DEFAULT 0,
  `lastlogin` varchar(30) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `City` int(11) DEFAULT NULL,
  `Province` int(11) DEFAULT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Id`, `Member_name`, `Email`, `Password`, `Question`, `Answer`, `isLogin`, `FailedLogin`, `lastlogin`, `Address`, `City`, `Province`, `Create_at`, `Update_at`) VALUES
(6, 'Albertus Ndaru', 'ndarualbert21@gmail.com', '210892', 'aku', 'ndaru', 'N', 0, '0', 'Ngentak RT13', 1, 0, '2019-05-29 18:07:22', '2019-07-03 12:45:25'),
(8, 'Syamsu', 'syamsu94@gmail.com', 'syamsu123', 'inisiapa', 'inisyamsu', 'Y', 0, '1566357073', 'RT03, desa lubuk lawas, kecamatan batang asam', 460, 8, '2019-07-11 07:47:48', NULL),
(9, 'Syukron', 'syukron221@gmai.com', 'sukron123', 'siapadia', 'sayasyukron', 'N', 0, '0', 'jl. kalipancur, kecamatan bocong', 348, 10, '2019-07-12 06:42:18', NULL),
(10, 'Agung Ramadani', 'saikho421@gmail.com', 'agung123', 'siapadia', 'sayaagung', 'N', 0, '0', 'RT007, Jl.revolusi kasongan No 65, kecamatan kating hilir', 174, 14, '2019-07-12 07:00:54', NULL),
(11, 'Arief', 'arief94@gmail.com', 'arief09', 'nama ibu', 'siti', 'N', 0, '0', 'RT007, Jl.revolusi kasongan No 65, kecamatan kating hilir', 326, 14, '2019-08-20 12:56:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(7) NOT NULL,
  `Harga` int(12) DEFAULT NULL,
  `Estimasi` int(12) DEFAULT NULL,
  `id_kurir` int(2) DEFAULT NULL,
  `id_provinsi` int(6) DEFAULT NULL,
  `id_kabupaten` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `jumlah_beli` int(11) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `Supliyer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `id_product`, `price`, `jumlah_beli`, `create_at`, `Supliyer_id`) VALUES
(9, 10, 50000, 10, '2019-07-11 08:07:38', 1),
(10, 11, 80000, 10, '2019-07-11 11:23:45', 1),
(11, 12, 73000, 10, '2019-07-11 11:39:55', 1),
(12, 13, 71000, 10, '2019-07-11 11:45:02', 1),
(13, 14, 75000, 10, '2019-07-11 12:01:58', 1),
(14, 15, 180000, 10, '2019-07-11 12:17:20', 1),
(15, 16, 100000, 10, '2019-07-11 16:18:04', 1),
(16, 17, 200000, 10, '2019-07-11 16:22:59', 1),
(17, 18, 90000, 10, '2019-07-11 16:28:21', 3),
(18, 19, 195000, 10, '2019-07-11 16:32:39', 3),
(19, 20, 187000, 10, '2019-07-11 16:39:03', 3),
(20, 21, 135000, 10, '2019-07-11 16:44:51', 1),
(21, 22, 67000, 10, '2019-07-11 16:49:18', 3),
(22, 23, 159000, 10, '2019-07-11 16:54:28', 3),
(23, 24, 150000, 10, '2019-07-11 17:01:56', 3),
(24, 25, 76000, 10, '2019-07-11 17:05:48', 1),
(25, 26, 63000, 10, '2019-07-11 17:15:02', 4),
(26, 27, 69000, 10, '2019-07-11 17:18:01', 4),
(27, 28, 0, 2, '2019-08-19 03:01:41', 1),
(28, 29, 50000, 2, '2019-08-19 03:03:38', 1),
(29, 30, 90000, 10, '2019-08-19 06:56:38', 5),
(30, 31, 9000, 10, '2019-08-19 07:04:15', 6),
(31, 32, 85000, 10, '2019-08-19 07:07:45', 6),
(32, 33, 79000, 10, '2019-08-19 07:12:00', 5),
(33, 34, 24000, 10, '2019-08-20 02:31:45', 3),
(34, 35, 22000, 10, '2019-08-20 02:38:28', 1),
(35, 36, 40000, 10, '2019-08-20 02:45:25', 4),
(36, 37, 45000, 10, '2019-08-20 02:55:15', 3),
(37, 38, 50000, 10, '2019-08-20 03:01:51', 3),
(38, 39, 45000, 10, '2019-08-20 03:12:30', 5),
(39, 40, 45000, 10, '2019-08-20 03:15:35', 5),
(40, 41, 130000, 130000, '2019-08-20 03:51:20', 5),
(41, 42, 7000, 10, '2019-08-20 15:24:59', 4),
(42, 43, 0, 1, '2019-08-20 15:46:13', 1),
(43, 44, 780000, 10, '2019-08-20 15:54:29', 7),
(44, 45, 590000, 10, '2019-08-20 15:57:25', 7);

--
-- Triggers `pembelian`
--
DELIMITER $$
CREATE TRIGGER `tambahstok` AFTER INSERT ON `pembelian` FOR EACH ROW BEGIN 
UPDATE product set Stok=Stok+new.jumlah_beli where Id=new.id_product;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Product_name` varchar(20) NOT NULL,
  `Category_id` int(10) NOT NULL,
  `Merk` varchar(20) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Photo_name` varchar(200) DEFAULT NULL,
  `Status_item` varchar(20) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Product_type_id` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT 0,
  `Harga_supliyer` int(11) DEFAULT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Product_name`, `Category_id`, `Merk`, `Price`, `Photo_name`, `Status_item`, `Description`, `Product_type_id`, `Stok`, `Harga_supliyer`, `Create_at`, `Update_at`) VALUES
(10, 'Muthi Khimar', 4, 'meccanism', 70000, 'IMG_20190711150720_Product.jpg', 'New', 'Size XL, estimasi dewasa\r\n\r\nLingkar Muka 52 cm\r\nPanjang depan 85 cm\r\nPanjang belakang 100 cm\r\nBerat 240 gram\r\nHarga 55.000', 3, 10, 50000, '2019-07-11 08:07:08', '2019-07-11 11:27:29'),
(11, 'Tunik Melda', 1, 'grilscollections-hij', 120000, 'IMG_20190711182332_Product.jpg', 'New', 'Warna : pink\r\nmaterial mostcrefe mix katun\r\npanjang 110', 2, 10, 80000, '2019-07-11 11:23:01', '2019-07-11 11:27:18'),
(12, 'Tamara Combi', 3, 'Girlcollection', 150000, 'IMG_20190711183943_Product.jpg', 'New', 'Warna : Navy Blue, \r\nBahan Moscrepe,\r\nHanya Satu Ukuran,\r\nNyaman Dipakai,\r\nCocok Untuk Segala Aktivitas,\r\nTrendy,\r\nModel Elegan,\r\nVarian Terbaru', 2, 10, 73000, '2019-07-11 11:39:24', '2019-07-11 11:39:43'),
(13, 'Wolfice Blouse', 1, 'Wolfice', 190000, 'IMG_20190711184450_Product.jpg', 'New', '• Bahan Matt Wolfice\r\n• Nyaman Dipakai\r\n• Cocok Untuk Segala Aktivitas\r\n• Trendy\r\n• Model Elegan', 2, 9, 71000, '2019-07-11 11:43:19', '2019-07-11 11:45:41'),
(14, 'Tunik Wolfice', 1, 'Girlcollection', 150000, 'IMG_20190711190137_Product.jpg', 'New', 'Warna : Maroon,\r\nBahan Wolfice,\r\nNyaman Dipakai,\'\r\nCocok Untuk Segala Aktifitas,\r\nTrendy,\r\nModel Elegan', 2, 10, 75000, '2019-07-11 12:00:47', '2019-07-11 12:01:37'),
(15, 'Nobby Fadela', 3, 'Girlcollection', 207000, 'IMG_20190711191706_Product.jpg', 'New', 'Fadela Tunik terbuat dari bahan 100% Polyester Berkualitas, Lebih tahan Lama ‘shrinkage’ (tidak susut dan melar) meskipun sudah dicuci berulang-ulang, utk produk fadela tunik,berbahan poly yang mirip dengan twiiscone. twiscone itu  bahannya ringan dan jatuh, sama dengan fadela yang bahannya ringan dan jatuh, ditambah fadela tunik ini bahnnya tidak nerawangdan dengan design nya yang elegan, modern dan trendy sangat cocok dikenakan ketika cuaca dingin maupun panas dan dalam acara apapun.', 2, 8, 180000, '2019-07-11 12:16:45', '2019-07-11 12:18:18'),
(16, 'Gamis Syar\'i', 2, 'Girlcollection', 147000, 'IMG_20190711231751_Product.jpg', 'New', 'Warna : maroon hanum, \r\n\r\nBahan : Balotelly\r\n\r\n- Lingkar Dada : 100 cm ', 1, 8, 100000, '2019-07-11 16:17:34', '2019-07-11 16:17:51'),
(17, 'Vizia Maxi', 3, 'Girlcollection', 252000, 'IMG_20190711232239_Product.jpg', 'New', 'Bahan : Mosscrepe stretch\r\nKancing Depan\r\nAda saku depan kiri & kanan\r\n\r\nUkuran : Free Size \r\n- Lingkar Dada : 102 cm\r\n- Panjang : 140 cm\r\n- Lingkar Lengan : 46 cm\r\n- Panjang Lengan : 57 cm\r\n- Lingkar Bawah Dress : 214 cm', 1, 4, 200000, '2019-07-11 16:22:24', '2019-07-11 16:22:39'),
(18, 'Gamis Modis', 4, 'Advance', 134000, 'IMG_20190711232808_Product.jpg', 'New', 'DETAIL UKURAN : TANPA JILBAB!!! (JILBAB TIDAK TERMASUK) \r\nukuran all size xl\r\nlingkar dada 105-110\r\nbisa dipakai untuk bb 60-65kg\r\ntinggi 140cm\r\nbisa dipakai untuk tinggi 160-165cm \r\nlingkar bawah 180 cm sekeliling ', 1, 9, 90000, '2019-07-11 16:27:56', '2019-07-11 16:28:08'),
(19, 'Alana Maxi', 1, 'Advance', 254000, 'IMG_20190711233225_Product.jpg', 'New', 'warna : mustard\r\nBahan : Balotelly\r\nKancing Depan\r\nUkuran : Free Size\r\n- Lingkar Dada : 100 cm\r\n- Panjang : 137 cm\r\n- Panjang Lengan : 55 cm\r\n- Lingkar Lengan : 50 cm\r\n- Lingkar Bawah Dress : 204 cm\r\n\r\nNOTE : Tinggi Model di foto 170 cm', 1, 7, 195000, '2019-07-11 16:32:05', '2019-07-11 16:32:25'),
(20, 'gamis jeans', 4, 'Zizara', 230000, 'IMG_20190711233849_Product.jpg', 'New', 'Lavina Jumbo Maxi bhn jeans, warna sesuai degan di gambar.', 1, 8, 187000, '2019-07-11 16:38:33', '2019-07-11 16:38:49'),
(21, 'Sunny Heart', 3, 'Girlcollection', 200000, 'IMG_20190711234438_Product.jpg', 'New', 'Product Description :\r\nSize : 120 x 120 cm / 140 x 140 cm \r\nMaterial : Superfine Voal Water Splash\r\nFinishing : Lasercut ', 3, 9, 135000, '2019-07-11 16:44:10', '2019-07-11 16:44:38'),
(22, 'Kerudung ORI', 3, 'Rabbani', 105000, 'IMG_20190717182845_Product.jpg', 'New', 'Kerudung instan dengan renda serut di bagian kepala seperti headband sebagai aksen. \r\nKerudung ini mempunyai karakteristik kain menyerap keringat, kesan dingin dan tidak menerawang. \r\n\r\nDetail ukuran:\r\nM ; panjang depan = 45cm, Panjang belakang = 80cm', 3, 9, 67000, '2019-07-11 16:48:38', '2019-07-17 11:28:45'),
(23, 'Rabbani Syelika', 4, 'Rabbani', 214000, 'IMG_20190711235408_Product.jpg', 'New', 'Kerudung Khimar dengan detail double layer dan cutting V bagian bawah sebagai aksen. Bisa dipadupadankan dengan dresslim motif maupun polos. Kerudung ini cocok dipakai untuk usia 18-60th.\r\nStyle : \r\nFormal maupun Semiformal\r\nKarakteristik kain :\r\nMenyerap keringat , kesan dingin saat digunakan & tidak mudah kusut.\r\nPenyetrikaan :\r\nDengan menggunakan suhu rendah-sedang.\r\n\r\nDetail size :\r\nXL ; Panjang depan = 93 cm , Panjang belakang = 100 cm', 3, 10, 159000, '2019-07-11 16:53:42', '2019-07-11 16:54:08'),
(24, 'Kerudung Aiza', 3, 'deenay', 225000, 'IMG_20190712000138_Product.jpg', 'New', 'With Shiny Material ??\r\n????Aiza GREY ???? idr 225K\r\n???? material : Voal Ultra Fine\r\n?? Finishing : Laser Cutting\r\n???? It\'s designed specially and so limited for you ladies who really in love with our products...', 3, 10, 150000, '2019-07-11 17:01:18', '2019-07-11 17:01:38'),
(25, 'Jilbab Walimah', 3, 'Heaven Light', 123000, 'IMG_20190712000531_Product.jpg', 'New', 'Brand: Heaven Light\r\nmaterial: Light Crepe\r\nsize: 200 x 75\r\n+bahan lembut, mudah dibentuk, lemes jadi enak dipake, terasa ringan. ', 3, 10, 76000, '2019-07-11 17:05:07', '2019-07-11 17:05:31'),
(26, 'Elzatta Kaila', 3, 'Elzatta', 123000, 'IMG_20190712001443_Product.jpg', 'New', 'Cara Perawatan :\r\n1. Cuci dengan menggunakan air dingin\r\n2. Hindari penggunaan pemutih\r\n3. Aman dicuci menggunakan mesin cuci\r\n4. Gunakan setrika dengan suhu sedang', 3, 9, 63000, '2019-07-11 17:14:21', '2019-07-11 17:14:43'),
(27, 'Keisha Sadiha', 3, 'Elzatta', 135000, 'IMG_20190712001742_Product.jpg', 'New', 'Kerudung Segi Empat Elzatta\r\nKeisha Sadiha\r\n120x120cm\r\n\r\nBahan Polysilk\r\nMudah di bentuk, dan nyaman dipakai', 3, 10, 69000, '2019-07-11 17:16:51', '2019-07-11 17:17:42'),
(30, 'Najibah Gamis', 1, '-', 115000, 'IMG_20190819135618_Product.jpg', 'New', 'READY STOK selagi bisa d klik !!! \r\n\r\nBahan  : moscrepe\r\nWarna  army, dusty, maroon, \r\nUkuran : all size fit to L\r\nKualitas: high qualitybu\r\n\r\nHAPPY SHOPING????', 1, 10, 90000, '2019-08-19 06:54:36', '2019-08-19 06:58:50'),
(31, 'Mamiza Dress', 3, '-', 120000, 'IMG_20190819140358_Product.jpg', 'New', '? BAHAN : mosscrepe HQ\r\n? WARNA : < Mocca > < Late > < Navy > < Black > \r\nUkuran : \r\n?  < M >	: ( LD 98 cm ) ( PB 135 cm ) ( PT 54 cm ) ( LB 90 cm ) ', 1, 10, 9000, '2019-08-19 07:03:26', '2019-08-19 07:03:58'),
(32, 'Sera Maxi', 1, '-', 120000, 'IMG_20190819140726_Product.jpg', 'New', '????DETAIL SIZE ????\r\n\r\nLingkar Dada: 100cm - 110cm\r\nPanjang Baju:  138cm\r\n???????\r\n????Material :   \r\nBahan moscrepe premium (Bahan terbagus saat ini) \r\n????Detail Material :  Bahannya nyaman,  menyerap keringat,  lembut,  tidak menerawang dan tidak luntur????\r\n????ada resleting depan yaa guys memudahkan untuk ibu yang sedang menyusui\r\n ????dan ada tali yang bisa digunakan dua model yaitu tali di ikat di luar cardy dan tali di ikat didalam cardy\r\n\r\nmodel dress yg sudah satu set menyatu dengan c', 1, 8, 85000, '2019-08-19 07:07:11', '2019-08-19 07:07:26'),
(33, 'Kena Maxi', 3, '-', 102000, 'IMG_20190819141128_Product.jpg', 'New', 'Kain Moscreepe \r\nLengan whudu friendly ( Rempel cantik )\r\nLD 100cm - 110cm \r\nPanjang gamis 140cm \r\nAksen Rempel Plisket dan mutiara\r\nLebar bawak - + 320cm', 1, 10, 79000, '2019-08-19 07:11:04', '2019-08-19 07:11:28'),
(34, 'Hanna Square', 3, '-', 35000, 'IMG_20190820093125_Product.jpg', 'New', 'Material : Pollycotton\r\nSize : 110x110 cm\r\n- Tegap di dahi\r\n- Pinggiran di jahit Tepi\r\n- Tidak Kaku\r\n- Mudah diatur\r\n- Adem dan tidak panas', 3, 10, 24000, '2019-08-20 02:30:51', '2019-08-20 02:31:25'),
(35, 'HIJAB SYARI', 3, '-', 34000, 'IMG_20190820093810_Product.jpg', 'New', 'Bahan   : wolfis grade A\r\nBerat     : 300 gram / item\r\nUkuran  : 130x130\r\nModel :   segiempat', 3, 10, 22000, '2019-08-20 02:36:23', '2019-08-20 02:38:10'),
(36, 'Kerudung Elzatta', 3, 'Elzatta', 55000, 'IMG_20190820094506_Product.jpg', 'New', '- Nama Produk KAILA LAFESNI\r\n- Tipe Segi empat\r\n- Ukuran 115cm x 115cm\r\n- Bahan VOAL', 3, 10, 40000, '2019-08-20 02:44:44', '2019-08-20 02:46:21'),
(37, 'Tetra Rabbani', 3, 'Rabbani', 59000, 'IMG_20190820095456_Product.jpg', 'New', '- Bermotif\r\n- Size 110 X 110 cm', 3, 10, 45000, '2019-08-20 02:54:35', '2019-08-20 02:54:56'),
(38, 'Kaila Lasymi', 3, 'Elzatta', 68000, 'IMG_20190820100132_Product.jpg', 'New', 'Kaila Lasymi dengan ukuran 120x120cm.\r\n', 3, 10, 50000, '2019-08-20 03:00:29', '2019-08-20 03:01:32'),
(39, 'Martha Tunik', 1, '-', 80000, 'IMG_20190820101158_Product.jpg', 'New', 'Bahan : Moscrepe\r\nUkuran : all size fit L\r\nPB : 115\r\nLD : 100', 2, 10, 45000, '2019-08-20 03:11:36', '2019-08-20 03:11:58'),
(40, 'Aline Tunik', 1, '-', 77000, 'IMG_20190820101520_Product.jpg', 'New', 'Warna : moca, dusty, maroon, army, navi, and blue', 2, 9, 45000, '2019-08-20 03:15:03', '2019-08-20 03:15:20'),
(41, 'Hava Tunik', 3, 'Heaven Light', 160000, 'IMG_20190820105102_Product.jpg', 'New', 'Material 100% Cotton\r\nHava Tunik Right (motif kotak besar di sebelah kanan)\r\nDetail size :\r\n- M [LD 98 cm]\r\nPanjang baju 98 cm', 2, 130000, 130000, '2019-08-20 03:50:46', '2019-08-20 03:51:02'),
(42, 'Arsen Kaftan', 1, 'Ria Miranda', 400000, 'IMG_20190820224945_Product.jpg', 'New', 'hanya tersedia satu warna seperti gambar yang ada', 6, 9, 500000, '2019-08-20 15:24:28', '2019-08-20 15:51:13'),
(44, 'Dulati Kaftan', 3, 'Ria Miranda', 800000, 'IMG_20190820225407_Product.jpg', 'New', 'menggunakan bahan terbaik, lembut tidak mudah lusuh', 6, 10, 780000, '2019-08-20 15:53:43', '2019-08-20 15:54:07'),
(45, 'Nagari Kaftan', 3, 'Ria Miranda', 700000, 'IMG_20190820225704_Product.jpg', 'New', 'VVGC Preloved Nagari kaftan by Ria Miranda', 6, 10, 590000, '2019-08-20 15:56:40', '2019-08-20 15:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `Id` int(11) NOT NULL,
  `Type_name` varchar(40) DEFAULT NULL,
  `Size_type` varchar(10) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`Id`, `Type_name`, `Size_type`, `Description`, `Create_at`, `Update_at`) VALUES
(1, 'Gamis', 'Atasan', 'yakni Qhamis yang artinya baju/ pakaian. Namun diserap ke dalam bahasa Indonesia menjadi ‘gamis’ yak', '2019-02-28 03:00:19', '2019-07-11 14:37:31'),
(2, 'Tunik', 'Atasan', 'yakni pakaian longgar yang menutupi dada, bahu, dan punggung. ', '2019-07-11 07:38:05', NULL),
(3, 'Hijab', 'Atasan', 'alat tutup kepala wanita sebagai perintah agama dengan sebutan ‘jilbab’. ', '2019-07-11 07:38:32', NULL),
(4, 'Sarung', 'Bawahan', 'Sarung merupakan sepotong kain lebar yang dijahit pada kedua ujungnya sehingga berbentuk seperti pip', '2019-07-11 07:39:04', NULL),
(5, 'Abaya', 'Atasan', 'Abaya merupakan pakaian khas wanita dari Timur Tengah dengan design mirip seperti jubah dengan ukura', '2019-07-11 07:39:34', NULL),
(6, 'Kaftan', 'Atasan', 'kaftan sering disebut sebagai gamis kelelawar karena designnya. Umumnya kaftan adalah bermodel kotak', '2019-07-11 07:40:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supliyer`
--

CREATE TABLE `supliyer` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(30) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Kontak` varchar(14) DEFAULT NULL,
  `Create` timestamp NOT NULL DEFAULT current_timestamp(),
  `Update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliyer`
--

INSERT INTO `supliyer` (`Id`, `Nama`, `Alamat`, `Kontak`, `Create`, `Update`) VALUES
(1, 'Hijab Ansania', 'Unnamed Road, Manukan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '08123487690', '2019-06-05 14:32:58', '2019-07-12 00:07:52'),
(3, 'Hijab Alila Jogja', 'Jl. Affandi No.24B, Santren, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '081904186793', '2019-06-05 14:35:16', '2019-07-12 00:08:45'),
(4, 'Jilbab Afra Jogja', 'Patukan Rt 04 Rw 21, Mejing Kidul, Ambarketawang, Kec. Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55294', '0896-6961-9737', '2019-07-11 17:11:00', NULL),
(5, 'Baju Muslimah Luvia', 'Gambiran UH 5 RT 39 RW 10, Jl. Margo Tirto No.178, Pandeyan, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161', '0815-4008-0808', '2019-07-12 05:03:31', NULL),
(6, 'Gamis Syar\'i DNA Jogja', 'Jl. Cungkuk Raya Barat makam Kuncen No.Rt 06, Cobongan, Ngestiharjo, Kec. Kasihan, Bantul, Daerah Istimewa Yogyakarta 55253', '0853-2931-9192', '2019-07-12 05:04:21', NULL),
(7, 'Clothing Manufacturing', ' Jl. Untung Suropati No.134, Kedung Lumbu, Kec. Ps. Kliwon, Kota Surakarta, Jawa Tengah 57118', ' 0812-2684-147', '2019-08-20 03:53:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Id` int(10) NOT NULL,
  `Transaction_bill` varchar(500) DEFAULT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Stats` enum('Pending','Success','Sending','Verified') NOT NULL DEFAULT 'Success',
  `Ongkir` int(11) DEFAULT NULL,
  `Payment` int(11) NOT NULL,
  `Bukti_transaksi` text DEFAULT NULL,
  `Resi` varchar(40) DEFAULT NULL,
  `Kurir` varchar(5) DEFAULT NULL,
  `Alamat_kirim` varchar(30) DEFAULT NULL,
  `Provinsi` int(11) DEFAULT NULL,
  `Kota` int(11) DEFAULT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Id`, `Transaction_bill`, `Date`, `Stats`, `Ongkir`, `Payment`, `Bukti_transaksi`, `Resi`, `Kurir`, `Alamat_kirim`, `Provinsi`, `Kota`, `Create_at`, `Update_at`) VALUES
(7, 'Syamsu-20190712132955', '2019-07-12 13:29:55', 'Sending', 51000, 377000, '.jpg', '5221kw', 'jne', 'RT03, desa lubuk lawas, kecama', 8, 460, '2019-07-12 06:29:55', '2019-07-12 13:39:27'),
(8, 'Syukron-20190712134427', '2019-07-12 13:44:27', 'Sending', 24000, 519000, '.jpg', 'AKN28821', 'tiki', 'jl. kalipancur, kecamatan boco', 10, 348, '2019-07-12 06:44:27', '2019-07-12 13:46:01'),
(9, 'Agung Ramadani-20190712140300', '2019-07-12 14:03:00', 'Sending', 37000, 390000, 'Ramadani-20190712140300.jpg', 'AKB86542', 'pos', 'RT007, Jl.revolusi kasongan No', 14, 326, '2019-07-12 07:03:00', '2019-07-12 19:17:04'),
(11, 'Syamsu-20190718095707', '2019-07-18 09:57:07', 'Sending', 51000, 134000, '.jpg', '778OP', 'jne', 'RT03, desa lubuk lawas, kecama', 8, 460, '2019-07-18 02:57:07', '2019-08-19 09:58:24'),
(12, 'Agung Ramadani-20190723103218', '2019-07-23 10:32:18', 'Sending', 53000, 230000, 'Ramadani-20190723103218.jpg', 'BQA77892', 'jne', 'RT007, Jl.revolusi kasongan No', 14, 174, '2019-07-23 03:32:18', '2019-07-23 10:35:08'),
(13, 'Agung Ramadani-20190819095600', '2019-08-19 09:56:00', 'Sending', 53000, 294000, 'Ramadani-20190819095600.jpg', '532DDA', 'jne', 'RT007, Jl.revolusi kasongan No', 14, 174, '2019-08-19 02:56:00', '2019-08-19 09:58:11'),
(14, 'Arief-20190820222815', '2019-08-20 22:28:15', 'Sending', 57000, 205000, '.jpg', '587AAB', 'jne', 'RT007, Jl.revolusi kasongan No', 14, 326, '2019-08-20 15:28:15', '2019-08-20 22:30:17'),
(15, 'Arief-20190821091730', '2019-08-21 09:17:30', 'Sending', 57000, 254000, '.jpg', '988KM0', 'jne', 'RT007, Jl.revolusi kasongan No', 14, 326, '2019-08-21 02:17:30', '2019-08-21 09:19:13'),
(16, 'Arief-20190821095005', '2019-08-21 09:50:05', 'Sending', 54000, 120000, '.jpg', '78MNO0', 'tiki', 'RT007, Jl.revolusi kasongan No', 14, 326, '2019-08-21 02:50:05', '2019-08-21 09:59:40'),
(17, 'Arief-20190821095429', '2019-08-21 09:54:29', 'Sending', 57000, 252000, '.jpg', '890MNO', 'jne', 'RT007, Jl.revolusi kasongan No', 14, 326, '2019-08-21 02:54:29', '2019-08-21 10:03:16'),
(18, 'Arief-20190821095811', '2019-08-21 09:58:11', 'Sending', 57000, 252000, '.jpg', 'MN990M', 'jne', 'RT007, Jl.revolusi kasongan No', 14, 326, '2019-08-21 02:58:11', '2019-08-21 10:14:53'),
(19, 'Syamsu-20190821101137', '2019-08-21 10:11:37', 'Sending', 51000, 252000, '.jpg', '8890MN', 'jne', 'RT03, desa lubuk lawas, kecama', 8, 460, '2019-08-21 03:11:37', '2019-08-21 10:14:39'),
(20, 'Syamsu-20190821105415', '2019-08-21 10:54:15', 'Success', 51000, 252000, NULL, NULL, 'jne', 'RT03, desa lubuk lawas, kecama', 8, 460, '2019-08-21 03:54:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Usergrup_id` int(11) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `IsLogin` int(11) NOT NULL DEFAULT 0,
  `LastLogin` varchar(40) DEFAULT '0',
  `pertanyaan` varchar(30) DEFAULT NULL,
  `jawaban` varchar(40) DEFAULT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL,
  `Karyawan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Usergrup_id`, `Username`, `Password`, `IsLogin`, `LastLogin`, `pertanyaan`, `jawaban`, `Create_at`, `Update_at`, `Karyawan_id`) VALUES
(2, 1, 'Samsu', 'pass@word5', 1, '1566355835', 'Apa', 'Aja', '2019-06-25 15:38:34', NULL, 1),
(3, 2, 'Ndaru', '210892', 1, '1562989250', 'Ndaruuu', 'Alberttt', '2019-06-26 08:20:51', '2019-06-26 21:36:38', 5),
(5, 1, 'SupAdmin', 'sadmin', 1, '1566353620', 'pemilik', 'hanang', '2019-08-19 03:12:36', NULL, 6),
(6, 2, 'Admin', 'aadmin', 1, '1566220819', 'admin1', 'vina12', '2019-08-19 03:15:41', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `usergrup`
--

CREATE TABLE `usergrup` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(40) NOT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergrup`
--

INSERT INTO `usergrup` (`Id`, `Name`, `Description`, `Create_at`, `Update_at`) VALUES
(1, 'Superadmin', 'Admin', '2019-02-28 02:55:24', NULL),
(2, 'Admin', 'Admin', '2019-07-05 04:58:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Nama_kategori` (`Category_name`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_barang1` (`Product_id`),
  ADD KEY `fk_transaksi1` (`Transaction_id`),
  ADD KEY `id_member` (`Member_id`);

--
-- Indexes for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_barang` (`Product_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `NIK` (`NIK`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `pembelian_ibfk_1` (`Supliyer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_barang3` (`Category_id`),
  ADD KEY `product_ibfk_2` (`Product_type_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `supliyer`
--
ALTER TABLE `supliyer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Usergrup_id` (`Usergrup_id`),
  ADD KEY `Karyawan_id` (`Karyawan_id`);

--
-- Indexes for table `usergrup`
--
ALTER TABLE `usergrup`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `supliyer`
--
ALTER TABLE `supliyer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usergrup`
--
ALTER TABLE `usergrup`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`Transaction_id`) REFERENCES `transaction` (`Id`),
  ADD CONSTRAINT `details_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`),
  ADD CONSTRAINT `details_ibfk_3` FOREIGN KEY (`Member_id`) REFERENCES `member` (`Id`);

--
-- Constraints for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD CONSTRAINT `imageproduct_ibfk_1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`Supliyer_id`) REFERENCES `supliyer` (`Id`) ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Category_id`) REFERENCES `category` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Product_type_id`) REFERENCES `product_type` (`Id`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`Usergrup_id`) REFERENCES `usergrup` (`Id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`Karyawan_id`) REFERENCES `karyawan` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
