-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2018 at 02:27 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `th`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ad_type` varchar(30) NOT NULL,
  `ad_pass` varchar(30) NOT NULL,
  `ad_id` varchar(30) NOT NULL,
  `role_id` varchar(30) NOT NULL,
  PRIMARY KEY (`ad_id`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_type`, `ad_pass`, `ad_id`, `role_id`) VALUES
('Master Admin', '123', '0087', '01');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `app_id` varchar(30) NOT NULL,
  `app_type` varchar(30) NOT NULL,
  `app_desc` varchar(30) NOT NULL,
  `app_date` date NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_type` varchar(30) NOT NULL,
  `bill_id` int(30) NOT NULL AUTO_INCREMENT,
  `bill_stdid` varchar(30) NOT NULL,
  `bill_sts` varchar(30) DEFAULT 'Not Paid',
  `bill_info` varchar(30) DEFAULT NULL,
  `bill_duedate` date NOT NULL,
  `bill_amt` int(30) NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_type`, `bill_id`, `bill_stdid`, `bill_sts`, `bill_info`, `bill_duedate`, `bill_amt`) VALUES
('Tution', 1, '87', 'Not Paid', 'L-4,T-2', '2018-07-05', 30000),
('Hall', 2, '74', 'Not Paid', 'July/18', '2018-05-31', 1000),
('Tution', 3, '87', 'Paid', 'L-4,T-2', '2018-11-16', 15000),
('Fine', 4, '73', 'Not Paid', 'July/18', '2018-10-02', 500),
('Hall Bill', 5, '74', 'Not Paid', 'July/18', '2018-08-03', 5000),
('Mess Bill', 6, '74', 'Paid', 'July/18', '2018-06-30', 2500),
('Fine', 7, '87', 'Not Paid', 'July/18', '2018-06-15', 500),
('Hall Bill', 8, '75', 'Not Paid', 'July/18', '2018-06-21', 5000),
('Tution', 9, '87', 'Not Paid', 'L-4,T-2', '2018-08-15', 15600),
('Fine', 10, '87', 'Paid', 'July/18 (Hall Bill)', '2018-07-31', 250),
('Fine', 11, '73', 'Not Paid', 'July/18 (Hall Bill)', '2018-07-31', 250),
('Mess Bill', 12, '87', 'Not Paid', 'July/18 (Hall Bill)', '2018-07-31', 100),
('Tution', 13, '75', 'Not Paid', 'July/18 (Hall Bill)', '2018-09-14', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `std_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bill_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_num` bigint(20) NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `card_exp_month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `card_exp_year` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'usd',
  `paid_amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `std_id`, `bill_id`, `email`, `card_num`, `card_cvc`, `card_exp_month`, `card_exp_year`, `item_name`, `item_number`, `item_price`, `item_price_currency`, `paid_amount`, `paid_amount_currency`, `txn_id`, `payment_status`, `created`, `modified`) VALUES
(36, 'Saqlain Khan', '87', '5', 'abc@gmail.com', 6011111111111117, 123, '02', '2020', 'Hall Bill', 'PS123456', 5000.00, 'usd', '5000', 'usd', 'txn_1CsUu1CZq9tsPUdkrTa0OXzo', 'succeeded', '2018-07-27 12:18:15', '2018-07-27 12:18:15'),
(37, 'Saqlain Khan', '87', '1', 'abc@gmail.com', 6011111111111117, 123, '02', '2020', 'Tution', 'PS123456', 30000.00, 'usd', '30000', 'usd', 'txn_1CsUvrCZq9tsPUdkyNC2NqfW', 'succeeded', '2018-07-27 12:20:08', '2018-07-27 12:20:08'),
(38, 'Saqlain Khan', '87', '9', 'sqlnmhmdkhanemon@gmail.com', 6011111111111117, 123, '02', '2030', 'Tution', 'L-4,T-2', 15600.00, 'usd', '15600', 'usd', 'txn_1CsmJVCZq9tsPUdkshoeUFJf', 'succeeded', '2018-07-28 06:53:41', '2018-07-28 06:53:41'),
(39, 'Saqlain Khan', '87', '10', 'abc@gmail.com', 4242424242424242, 123, '02', '2020', 'Fine', 'July/18 (Hall Bill)', 250.00, 'usd', '250', 'usd', 'txn_1CsoC4CZq9tsPUdk2drVgh0S', 'succeeded', '2018-07-28 08:54:08', '2018-07-28 08:54:08'),
(40, 'Saqlain Khan', '87', '3', 'abc@gmail.com', 4242424242424242, 123, '02', '2020', 'Tution', 'L-4,T-2', 15000.00, 'usd', '15000', 'usd', 'txn_1CtErVCZq9tsPUdk3b86Eznu', 'succeeded', '2018-07-29 13:22:39', '2018-07-29 13:22:39'),
(41, 'Rezwan Ahmed', '74', '6', 'abc@gmail.com', 4242424242424242, 123, '02', '2020', 'Mess Bill', 'July/18', 2500.00, 'usd', '2500', 'usd', 'txn_1CtFAjCZq9tsPUdk0Z8a1BA6', 'succeeded', '2018-07-29 13:42:32', '2018-07-29 13:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_amt` int(30) NOT NULL,
  `pay_desc` varchar(30) NOT NULL,
  `pay_cusid` varchar(30) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_id` int(30) NOT NULL AUTO_INCREMENT,
  `rec_id` varchar(30) NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `rec_id` (`rec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pay_txn`
--

DROP TABLE IF EXISTS `pay_txn`;
CREATE TABLE IF NOT EXISTS `pay_txn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_amount` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
CREATE TABLE IF NOT EXISTS `receipt` (
  `rec_type` varchar(30) NOT NULL,
  `rec_id` varchar(30) NOT NULL,
  `rec_desc` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` varchar(30) NOT NULL,
  `role_name` varchar(30) DEFAULT NULL,
  `role_desc` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_desc`) VALUES
('01', 'Master Admin', 'Has all the privilege.');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `std_name` varchar(30) NOT NULL,
  `std_id` varchar(30) NOT NULL,
  `std_dep` varchar(30) NOT NULL,
  `std_email` varchar(30) NOT NULL,
  `std_pass` varchar(30) NOT NULL,
  `latetution` int(30) DEFAULT NULL,
  `nonc` int(30) DEFAULT NULL,
  `nos` int(30) DEFAULT NULL,
  `nolf` int(30) DEFAULT NULL,
  `nohf` int(30) DEFAULT NULL,
  `pay_id` varchar(30) DEFAULT NULL,
  `app_id` varchar(30) DEFAULT NULL,
  `lvl` int(10) DEFAULT NULL,
  `term` int(10) DEFAULT NULL,
  PRIMARY KEY (`std_id`),
  KEY `pay_id` (`pay_id`),
  KEY `app_id` (`app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_name`, `std_id`, `std_dep`, `std_email`, `std_pass`, `latetution`, `nonc`, `nos`, `nolf`, `nohf`, `pay_id`, `app_id`, `lvl`, `term`) VALUES
('Saqlain Khan', '87', 'CSE', 'abc@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
('Jahid Hasan', '73', 'CSE', 'abc2@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
('Rezwan Ahmed', '74', 'CSE', 'abc3@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
('Mishkat', '78', 'CSE', 'abc55@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
('Rafsan', '75', 'CSE', 'abc333@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
('Shahriar', '79', 'CSE', 'aaaaaa@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
('Mahadi', '84', 'CSE', 'aaa3333@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
('AAA', '11', 'CSE', 'aa@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_std_mob`
--

DROP TABLE IF EXISTS `student_std_mob`;
CREATE TABLE IF NOT EXISTS `student_std_mob` (
  `std_mob` varchar(30) NOT NULL,
  `std_id` varchar(30) NOT NULL,
  PRIMARY KEY (`std_mob`,`std_id`),
  KEY `std_id` (`std_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` varchar(30) NOT NULL,
  `teacher_name` varchar(30) DEFAULT NULL,
  `app_id` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `dep` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `app_id` (`app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `app_id`, `pass`, `dep`, `email`) VALUES
('333', 'A', NULL, '123', 'CSE', 'aaa@gmail.com'),
('123', 'B', NULL, '123', 'CSE', 'B@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
