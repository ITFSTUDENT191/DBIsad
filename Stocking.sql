-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.30.23
-- Generation Time: 06 พ.ค. 2019  18:49น.
-- Server version: 8.0.3-rc-log
-- PHP Version: 7.2.18-1+0~20190503103213.21+stretch~1.gbp101320

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Stocking`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- dump ตาราง `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_description`) VALUES
(1, 'ของใช้ในบ้าน', 'ของใช้ เช่น สบู่ ยาสีฟัน'),
(2, 'อุปกรณ์', 'อุปกรณ์ใช้สอย'),
(3, 'ยา', 'ยาสามัญต่างๆ'),
(4, 'อาหาร', 'อาหารทานได้'),
(5, 'ของเด็ก', 'ของเล่นหรือของเด็ก');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `check_out`
--

CREATE TABLE `check_out` (
  `co_id` int(11) NOT NULL,
  `co_date` datetime NOT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- dump ตาราง `check_out`
--

INSERT INTO `check_out` (`co_id`, `co_date`, `emp_id`) VALUES
(1, '2561-01-03 17:01:00', 2),
(2, '2561-01-21 11:32:00', 2),
(3, '2561-01-25 14:00:00', 3),
(4, '2561-04-21 12:00:00', 6),
(5, '2561-04-04 18:45:00', 23),
(6, '2561-05-19 12:05:00', 23),
(7, '2561-09-03 06:30:00', 10),
(8, '2561-10-05 09:30:00', 3),
(9, '2561-11-01 08:23:00', 3),
(10, '2561-11-11 15:40:00', 23);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `employeees`
--

CREATE TABLE `employeees` (
  `emp_id` int(10) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_pass` int(20) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- dump ตาราง `employeees`
--

INSERT INTO `employeees` (`emp_id`, `user_id`, `user_pass`, `emp_name`, `role`) VALUES
(1, 'user01', 9834694, 'Somchai', 'stocking'),
(2, 'user02', 8924629, 'Somying', 'retailer'),
(3, 'user03', 74380359, 'Somchawee', 'retailer'),
(4, 'user04', 46746745, 'Bussaba', 'stocking'),
(5, 'user05', 457868948, 'Yongyut', 'stocking'),
(6, 'user06', 5578425, 'Pilai', 'retailer'),
(7, 'user07', 745477, 'Phasuk', 'Transportation'),
(8, 'user08', 3468789, 'Boonmee', 'Transportation'),
(9, 'user09', 6767568, 'Bangorn', 'Transportation'),
(10, 'user10', 57878, 'Phiti', 'retailer'),
(11, 'user11', 468896, 'Thanawat', 'stocking'),
(20, 'user20', 587067, 'Manee', 'stocking'),
(21, 'user21', 4679468, 'Mana', 'stocking'),
(23, 'user23', 79567, 'Arunee', 'retailer');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `locations`
--

CREATE TABLE `locations` (
  `l_id` int(10) NOT NULL,
  `l_location` varchar(255) NOT NULL,
  `emp_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- dump ตาราง `locations`
--

INSERT INTO `locations` (`l_id`, `l_location`, `emp_id`) VALUES
(1, 'Zone1', 1),
(2, 'Zone2', 4),
(3, 'Zone3', 5),
(4, 'Zone4', 11),
(5, 'Zone5', 20),
(6, 'Zone6', 21);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `product`
--

CREATE TABLE `product` (
  `p_id` int(20) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_price` float(5,2) NOT NULL,
  `p_descript` varchar(255) NOT NULL,
  `p_code` int(15) NOT NULL,
  `l_id` int(10) NOT NULL,
  `p_min` int(5) NOT NULL,
  `p_quantity` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- dump ตาราง `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_price`, `p_descript`, `p_code`, `l_id`, `p_min`, `p_quantity`, `cat_id`) VALUES
(1, 'ยาสระผม A', 59.50, 'สระได้สระดี สระจนหัวเปื่อย', 1001, 1, 10, 34, 1),
(2, 'ยาสีฟันตราจระเข้', 20.50, 'แปรงสะอาดยันชาติหน้า', 1002, 1, 10, 25, 1),
(3, 'สบู่ตรานกเค้าแมว', 4.25, 'อาบสะอาดจนย่าต้องขอใช้ด้วย', 1003, 1, 10, 45, 1),
(4, 'น้ำยาล้างจานอัลไล', 40.00, 'จานสะอาดเหมือนได้จานใหม่', 1004, 1, 10, 16, 1),
(5, 'อาหารสุนัขมีเอ', 25.00, 'ขนสวยถูกใจ ขับถ่ายเป็นก้อน', 1005, 2, 10, 23, 2),
(6, 'ไม้เกาหลัง', 2.50, 'ย่าจะไม่ต้องใช้คุณเกาหลังอีกต่อไป', 1006, 3, 10, 12, 3),
(7, 'ไม้ดูดส้วม', 60.00, 'ดูดลึกยันท่อบ้านข้างๆ', 1007, 3, 10, 11, 3),
(8, 'แป้งเย็นตราไส้เดือน', 29.00, 'ทาแล้วเย็นเหมือนอยู่ในช่องฟรีซ', 1008, 1, 10, 35, 1),
(9, 'ยาจุดกันยุงเป็ดฟ้า', 210.00, 'เป็ดดินกินหญ้า เป็ดฟ้าหนียุง', 1009, 1, 10, 24, 1),
(10, 'ยาแก้ไอตราเสือสมิง', 159.00, 'ทานแล้วชุ่มคอพร้อมเม้ากับป้าบ้านข้างๆ', 1010, 4, 10, 12, 4);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `taking`
--

CREATE TABLE `taking` (
  `t_id` int(10) NOT NULL,
  `p_id` int(20) NOT NULL,
  `order_id` int(10) NOT NULL,
  `t_date` datetime NOT NULL,
  `t_price` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- dump ตาราง `taking`
--

INSERT INTO `taking` (`t_id`, `p_id`, `order_id`, `t_date`, `t_price`) VALUES
(1, 4, 1, '2561-01-03 00:00:00', 4.25),
(2, 5, 4, '2561-01-04 00:00:00', 25.00),
(3, 2, 3, '2561-08-06 00:00:00', 20.00),
(4, 1, 1, '2561-11-08 00:00:00', 129.00),
(5, 1, 2, '2561-11-23 00:00:00', 159.00),
(6, 2, 4, '2561-12-04 00:00:00', 29.00);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `transaction`
--

CREATE TABLE `transaction` (
  `ts_id` int(20) NOT NULL,
  `ts_price` float(5,2) NOT NULL,
  `ts_date` datetime NOT NULL,
  `p_id` int(20) NOT NULL,
  `ts_expired` date NOT NULL,
  `ts_quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- dump ตาราง `transaction`
--

INSERT INTO `transaction` (`ts_id`, `ts_price`, `ts_date`, `p_id`, `ts_expired`, `ts_quantity`) VALUES
(1, 25.00, '2560-09-01 00:00:00', 1, '2562-03-01', 20),
(2, 110.00, '2560-09-08 00:00:00', 3, '2562-03-09', 24),
(3, 35.00, '2560-10-11 00:00:00', 6, '2562-04-10', 25),
(4, 40.00, '2560-11-25 00:00:00', 3, '2562-06-03', 30),
(5, 2.50, '2560-11-23 00:00:00', 2, '2562-06-04', 30),
(6, 15.00, '2560-11-30 00:00:00', 6, '2562-05-11', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `check_out`
--
ALTER TABLE `check_out`
  ADD PRIMARY KEY (`co_id`),
  ADD KEY `FK_checking` (`emp_id`);

--
-- Indexes for table `employeees`
--
ALTER TABLE `employeees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `FK_loca_emp` (`emp_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_code` (`p_code`),
  ADD KEY `FK_pro_lo` (`l_id`),
  ADD KEY `FK_pro_cat` (`cat_id`);

--
-- Indexes for table `taking`
--
ALTER TABLE `taking`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `FK_taking` (`order_id`),
  ADD KEY `FK_get_product` (`p_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`ts_id`),
  ADD KEY `FK_trans_pro` (`p_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `check_out`
--
ALTER TABLE `check_out`
  ADD CONSTRAINT `FK_checking` FOREIGN KEY (`emp_id`) REFERENCES `employeees` (`emp_id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `FK_loca_emp` FOREIGN KEY (`emp_id`) REFERENCES `employeees` (`emp_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_pro_cat` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `FK_pro_lo` FOREIGN KEY (`l_id`) REFERENCES `locations` (`l_id`);

--
-- Constraints for table `taking`
--
ALTER TABLE `taking`
  ADD CONSTRAINT `FK_get_product` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`),
  ADD CONSTRAINT `FK_taking` FOREIGN KEY (`order_id`) REFERENCES `check_out` (`co_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK_trans_pro` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

