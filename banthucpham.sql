-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 05:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banthucpham`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `cate_name`) VALUES
(25, 'Đặc sản'),
(26, 'Hải sản'),
(27, 'Khai vị'),
(28, 'Món chính');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `hten` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `ngaycmt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `hten`, `email`, `noidung`, `ngaycmt`) VALUES
(1, 'Vinh Dac', 'dac@gmail.com', 'San pham rat tuyet voi!', '2023-12-29'),
(2, 'Phuc Hien', 'hien@gmail.com', 'Dich vu rat chuyen nghiep, hai long!', '2023-12-29'),
(3, 'Van Hao', 'vhao@gmail.com', 'Giao hang nhanh chong, san pham dung nhu mo ta.', '2023-12-29'),
(4, 'Nhat Hao', 'nhao@gmail.com', 'Thuc don da dang, am thuc ngon mieng.', '2023-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(200) NOT NULL,
  `code_product` varchar(100) NOT NULL,
  `regular_price` varchar(100) DEFAULT NULL,
  `mota` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `date_product` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `name_product`, `code_product`, `regular_price`, `mota`, `cate_id`, `thumbnail`, `date_product`) VALUES
(71, 'Chả giò', 'SP01', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(72, 'Mực nướng', 'SP02', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'fried-squid-with-garlic_1339-83500.png', '2023-12-29'),
(73, 'Xiên bẩn', 'SP03', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(74, 'Canh gà', 'SP04', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29'),
(75, 'Chả giò', 'SP05', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(76, 'Mực nướng', 'SP06', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'fried-squid-with-garlic_1339-83500.png', '2023-12-29'),
(77, 'Xiên bẩn', 'SP07', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(78, 'Canh gà', 'SP08', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29'),
(79, 'Chả giò', 'SP09', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(80, 'Mực nướng', 'SP10', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'fried-squid-with-garlic_1339-83500.png', '2023-12-29'),
(81, 'Xiên bẩn', 'SP11', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(82, 'Canh gà', 'SP12', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29'),
(83, 'Chả giò', 'SP13', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 25, 'fried-spring-rolls-cutting-board.jpg', '2023-12-29'),
(84, 'Mực nướng', 'SP14', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 26, 'fried-squid-with-garlic_1339-83500.png', '2023-12-29'),
(85, 'Xiên bẩn', 'SP15', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 27, 'pork-meatballs-dark-surface.jpg', '2023-12-29'),
(86, 'Canh gà', 'SP16', '59000', 'Món ăn tinh tế, hương vị độc đáo.', 28, 'stewed-chicken-feet-soup-served-with-spicy-fish-sauce_1150-27366.jpg', '2023-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lever` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `pwad`, `email`, `lever`) VALUES
(5, 'Admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', 0),
(9, 'Nhân viên', '2a2fa4fe2fa737f129ef2d127b861b7e', 'nv@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(20) NOT NULL,
  `id_product` int(20) NOT NULL,
  `tensp` varchar(30) NOT NULL,
  `soluong` int(20) NOT NULL,
  `dongia` int(20) NOT NULL,
  `hinhanhsp` varchar(30) NOT NULL,
  `userName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `tong` int(11) NOT NULL,
  `tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `ten`, `sdt`, `diachi`, `tong`, `tien`) VALUES
(10, 'Van Hao', '0909090909', 'KTX B, TP.Thu Duc', 2, 295000),
(11, 'Nhat Hao', '0808080808', 'KTX A, TP.Thu Duc', 2, 472000),
(12, 'Vinh Dac', '0707070707', 'Quan 8, TP.HCM', 1, 118000),
(13, 'Phuc Hien', '0606060606', 'Quan 7, TP.HCM', 4, 236000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `email_user`) VALUES
(14, 'Văn Hào', 'c73c06a56bcbe93d822b46baeb97d3a7', 'vhao@gmail.com'),
(15, 'Nhật Hào', '5fc9ecb856612f1a5440f0190c049023', 'nhao@gmail.com'),
(16, 'Vĩnh Đắc', 'f2740df07c3c9beeb7889d4b2293d14a', 'dac@gmail.com'),
(17, 'Phúc Hiển', '95c34378f8fec5fa8df1d645d30a4bde', 'hien@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
