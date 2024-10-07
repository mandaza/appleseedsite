-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 08:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appleseeds`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `copies`, `school_id`, `session`, `created_at`, `updated_at`) VALUES
(1, 'all things code', 'Craig Gazimbi', 30, 1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `book_id`, `class_id`, `student_id`, `issue_date`, `status`, `school_id`, `session`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '1600639200', 1, 1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ni8isim96md0eqg2sibh61n8g76upuuc', '::1', 1600707260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303730373236303b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('c2diiri29dg5i1p33mrjm3aoddc4ao11', '::1', 1600707565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303730373536353b6163746976655f7363686f6f6c5f69647c733a313a2231223b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b),
('bs0nkcdd7466on2ngfstapb3bd5unt4a', '::1', 1600707883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303730373838333b6163746976655f7363686f6f6c5f69647c733a313a2231223b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b),
('1g8h2mbsaucseqduhkcqaqegh6prhsi1', '::1', 1600708192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303730383139323b6163746976655f7363686f6f6c5f69647c733a313a2231223b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b),
('kbh1plftg9b0i7tonhanf4hll55unamp', '::1', 1600708637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303730383633373b6163746976655f7363686f6f6c5f69647c733a313a2231223b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b),
('3bpd9majvljvgk6nl5v9jqks5bjs5ers', '::1', 1600710820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731303832303b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b),
('h6trpl1hd6dolomd30s25aahnbutea0s', '::1', 1600711137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731313133373b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('tf4nvkbk1tuk6279goidhgug7rsefq3c', '::1', 1600711771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731313737313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('oe690bp92h0mbd4lob3n2q8psh1gjd0r', '::1', 1600712330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731323333303b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('sl7dkvtej6ap15nv6qgpqsqmh2tti4ab', '::1', 1600712636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731323633363b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('ui2ht8srj26flkhmmpmblf64p2ulneda', '::1', 1600712983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731323938333b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('efpj178g61lhq1icjsauon7mrplu21an', '::1', 1600713295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731333239353b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('9isudj2pqmghamt3tnrn0g0hkpm7k47g', '::1', 1600713666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731333636363b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('6ef1173cpqsp4ok4hfe5ft46gpti0ag2', '::1', 1600714651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731343635313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('kjghckqb73f8p0iddmv0oas0gtqne2r2', '::1', 1600717751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731373735313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('kkgh90p7uvnkpr00e1o54rje62rlgb2u', '::1', 1600718336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303731383333363b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('c3r0cparg25ikc5uslgmdbqfg9hucu41', '::1', 1600720262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303732303236323b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('i5182ub67gjopb58so6oc5v69lf589cn', '::1', 1600720907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303732303930373b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('775eiafmdiq15r8ocdni9oprcfjpfhlr', '::1', 1600722310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303732323331303b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('gbte9oqnq1crnbtotstianbjpnbme5hb', '::1', 1600722629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303732323632393b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('r4hc4cd19nu0e49mp9dgmm6qq6o9pop6', '::1', 1600724127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303732343132373b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('meki1qv0dp4rl20003tksm1a72gomn45', '::1', 1600727956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303732373935363b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('kko4ubcgltv46q1a709a00ei338sdb9f', '::1', 1600732562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733323536323b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('u1p8re11e11kac93fsva8pcjpo67rhfo', '::1', 1600732995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733323939353b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('b56n19u2t7c6o0k48qqtmnq3a184f22m', '::1', 1600733407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733333430373b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('cd58g85505ugo86ko5ms1v5a8k3l199o', '::1', 1600733722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733333732323b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('v8h9m4bvliunkca848kh2uk1p1ppps0j', '::1', 1600734139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733343133393b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('9gtgqu9o164ffbsvaugejm6dful2hbr2', '::1', 1600736768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733363736383b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('gt2iv1gbpn89r9olffka31mg53h9lqoh', '::1', 1600737977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733373937373b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a393a2250726f666573736f72223b757365725f747970657c733a31303a22737570657261646d696e223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('l7bho0pviac92l42lhji7j259fd951ij', '::1', 1600738003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303733373937383b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a22506576656e204d6170756e6475223b757365725f747970657c733a31303a22737570657261646d696e223b),
('6eogktlu3aji4nl32bcf41h7tke2pudv', '::1', 1600795832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739353833323b6163746976655f7363686f6f6c5f69647c733a313a2231223b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a22506576656e204d6170756e6475223b757365725f747970657c733a31303a22737570657261646d696e223b666c6173685f6d6573736167657c733a31323a2257656c636f6d65204261636b223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('aa1t0bq4fkh8vv3t6ql1fvo7um8tdepn', '::1', 1600795493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739353438393b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('q563rmampj20q55j9bjbgg8i41mk1ren', '::1', 1600796188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739363138383b6163746976655f7363686f6f6c5f69647c733a313a2231223b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a22506576656e204d6170756e6475223b757365725f747970657c733a31303a22737570657261646d696e223b),
('enuafc0pc18ikesl9rqeh4lptp5psi3n', '::1', 1600796851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739363835313b6163746976655f7363686f6f6c5f69647c733a313a2231223b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a22506576656e204d6170756e6475223b757365725f747970657c733a31303a22737570657261646d696e223b),
('o76di29g10p190kbmlf1e26a7gv0n4jv', '::1', 1600797152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739373135323b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a22506576656e204d6170756e6475223b757365725f747970657c733a31303a22737570657261646d696e223b),
('1kfblm4matu8v7eqg9l8oi4nec1ect35', '::1', 1600797489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739373438393b73747564656e745f6c6f67696e7c623a313b757365725f69647c733a323a223130223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a383a224a6f686e20446f65223b757365725f747970657c733a373a2273747564656e74223b),
('no4es9cebu048g146ds35f71ck3he18a', '::1', 1600798015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739383031353b73747564656e745f6c6f67696e7c623a313b757365725f69647c733a323a223130223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a383a224a6f686e20446f65223b757365725f747970657c733a373a2273747564656e74223b),
('3doa0k9v7ns3gkh5ltrf0hbsjru1mrsk', '::1', 1600798956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739383935363b73747564656e745f6c6f67696e7c623a313b757365725f69647c733a323a223130223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a383a224a6f686e20446f65223b757365725f747970657c733a373a2273747564656e74223b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('mdh2ch6d70ido73v2ohv4vonq43jdd96', '::1', 1600799133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630303739383935363b73747564656e745f6c6f67696e7c623a313b757365725f69647c733a323a223130223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a383a224a6f686e20446f65223b757365725f747970657c733a373a2273747564656e74223b6163746976655f7363686f6f6c5f69647c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `school_id`) VALUES
(1, 'Grade 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `name`, `school_id`) VALUES
(1, 'Mathematics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendances`
--

CREATE TABLE `daily_attendances` (
  `id` int(11) NOT NULL,
  `timestamp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_attendances`
--

INSERT INTO `daily_attendances` (`id`, `timestamp`, `class_id`, `section_id`, `student_id`, `status`, `session_id`, `school_id`) VALUES
(1, '1600639200', 1, 1, 1, 1, '1', 1),
(2, '1600639200', 1, 1, 2, 0, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `school_id`) VALUES
(1, 'Mathematics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrols`
--

CREATE TABLE `enrols` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `enrols`
--

INSERT INTO `enrols` (`id`, `student_id`, `class_id`, `section_id`, `school_id`, `session`) VALUES
(1, 1, 1, 1, 1, '1'),
(2, 2, 1, 1, 1, '1'),
(3, 3, 1, 1, 1, '1'),
(4, 4, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `event_calendars`
--

CREATE TABLE `event_calendars` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(10) DEFAULT NULL,
  `session` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_calendars`
--

INSERT INTO `event_calendars` (`id`, `title`, `starting_date`, `ending_date`, `school_id`, `session`) VALUES
(1, 'Price Giving Day', '09/21/2020 00:00:1', '09/21/2020 23:59:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `starting_date`, `ending_date`, `school_id`, `session`) VALUES
(1, 'Mathematics', '1600639200', '1600639200', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_category_id`, `date`, `amount`, `school_id`, `session`, `created_at`, `updated_at`) VALUES
(1, 1, 1600639200, '10000', 1, '1', 1600639200, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `school_id`, `session`) VALUES
(1, 'fOOD', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `frontend_events_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-inactive, 1-active',
  `school_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_events`
--

INSERT INTO `frontend_events` (`frontend_events_id`, `title`, `timestamp`, `status`, `school_id`, `created_by`) VALUES
(5, 'Graduation Pending ', 975535200, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery`
--

CREATE TABLE `frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) NOT NULL DEFAULT 0 COMMENT '0-no 1-yes',
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_gallery`
--

INSERT INTO `frontend_gallery` (`frontend_gallery_id`, `title`, `description`, `date_added`, `image`, `show_on_website`, `school_id`) VALUES
(1, 'Apple Seeds Gallery', 'Apple Seeds', 0, 'raWCDwB9iP6Vsjq.jpg', 1, 1),
(2, 'Apple Seeds Private', '“Excellent teaching contributes to the pupils’ high standards of achievement and progress.”', 0, 'myXWCIaqlLjtfYu.jpg', 1, 1),
(3, 'Apple Seeds Private', '“Excellent teaching contributes to the pupils’ high standards of achievement and progress.”', 0, 'Qil2N0fZ674gSJB.jpg', 1, 1),
(4, 'Apple Seeds Private', '“Excellent teaching contributes to the pupils’ high standards of achievement and progress.”', 0, 'T1nUchVf5XS9Zto.jpg', 1, 1),
(5, 'Apple Seeds Private', '“Excellent teaching contributes to the pupils’ high standards of achievement and progress.”', 0, 'Q4OZfnHMCTsu9PR.jpg', 1, 1),
(6, 'Apple Seeds Private', '“Excellent teaching contributes to the pupils’ high standards of achievement and progress.”', 0, 'b5DLpfrNRzmeaKs.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery_image`
--

CREATE TABLE `frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) NOT NULL,
  `about_us` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_conditions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_policy` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `copyright_text` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us_image` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage_note_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage_note_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `social_links`, `copyright_text`, `about_us_image`, `slider_images`, `theme`, `homepage_note_title`, `homepage_note_description`, `website_title`) VALUES
(1, '&lt;ul&gt;&lt;li&gt;&lt;h1&gt;About Our Schools&lt;/h1&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Apple Seeds Private was founded on 02 September 2019. It is in section B2 Malamulele township in Limpopo Province. The primary school offers a high-quality and broad curriculum in multi-age groups aimed at the development of the whole person – mind, body, heart, and soul. We teach academic and social skills, as well as life skills, to last a lifetime.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;The principles and philosophy of Professor Peven Mapundu the School’s educational approach is widely recognized internationally as helping to educate young people to the highest modern standards and giving them a lifelong love of learning, which exceeds the expectations of the South African Curriculum&lt;/span&gt;&lt;span&gt;.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;&lt;br&gt;&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Apple Seeds :&lt;/h3&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h5&gt;&lt;/h5&gt;&lt;ul&gt;&lt;li&gt;&lt;h4&gt;&lt;ul style=&quot;margin-bottom: 1rem; font-size: 14px; font-weight: 400;&quot;&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Develops children&#039;s social skills by learning in groups mixed according to subject and interest -as happens in life - rather than age.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Sees all children as individuals to be treated with consideration and not in a patronizing or undermining way.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Builds our children&#039;s self-esteem through positive management of behavior.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;takes a hostile, child-centered, and inclusive approach based on a profound respect for children and understanding what they are capable of.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/h4&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Apple Seeds prides itself on a high teacher-to-child ratio, far exceeding most other schools. Our teachers are all highly-trained observers. They are committed to providing each child with an individual plan of work that challenges them and which follows a steady learning program.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Each child is allocated their own ‘Key Person’ at Apple Seeds. Young children make secure attachments and strong bonds with their dedicated Key Person, who takes care of them and looks out for them in their parents’ absence.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Each classroom at the school is very well-resourced, with high-quality learning materials to enable a wide range of educational learning through practical activities.&lt;/span&gt;&lt;br style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Apple Seeds also prides itself on a wonderful range of specialist-taught extra-curricular activities which run each week, both during the school day and after school, including:&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Sports (tennis, football, cricket, rugby, netball, swimming)&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Music (singing, percussion, music appreciation, instrumental lessons, drama, and theatre).&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Dance (modern dance, theatre).&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;At Apple Seeds, we take a nurturing approach to look at the whole child. We celebrate their many achievements and milestones with you as they grow and blossom into independent-minded, creative, responsible young people. We are a school that values the individuality of each child. We pride ourselves on meeting each child’s needs to ensure they are happy, stimulated, and able to be themselves.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;Thank you for your interest in Apple Seeds Private.&lt;/span&gt;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: montserratlight; font-size: 20px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;h1&gt;Terms of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Privacy policy of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '[{\"facebook\":\"http:\\/\\/www.facebook.com\\/\",\"twitter\":\"http:\\/\\/www.twitter.com\\/\",\"linkedin\":\"http:\\/\\/www.linkedin.com\\/\",\"google\":\"http:\\/\\/www.google.com\\/\",\"youtube\":\"http:\\/\\/www.youtube.com\\/\",\"instagram\":\"http:\\/\\/www.instagram.com\\/\"}]', 'All the rights reserved to Apple Seeds Private', NULL, '[{\"title\":\"Education is the most powerful weapon\",\"description\":\"&quot;You can use education to change the world&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"slider1.jpg\"},{\"title\":\"Knowledge is power\",\"description\":\"&quot;Education is the premise of progress, in every society, in every family&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2.jpg\"},{\"title\":\"Have an aim in life, continuously acquire knowledge\",\"description\":\"&quot;Never stop fighting until you arrive at your destined place&quot; - &lt;i&gt;A.P.J. Abdul Kalam&lt;\\/i&gt;\",\"image\":\"1.jpg\"}]', 'ultimate', 'Welcome to Apple Seeds Private', 'Apple Seeds Private School\r\nIt was wonderful for the school’s work to be rated as Outstanding and Excellent in every category.We offer a broad curriculum in multi-age classrooms which aims to develop the whole person – their mind, body, heart and soul. We teach academic, social and other valuable skills to last a lifetime. Our goal is to make sure that our girls and boys are confident, happy all-rounders with a love of learning.', 'Apple Seeds Private');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_upto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`, `school_id`, `session`, `created_at`, `updated_at`) VALUES
(1, 'A', '20', '50', '100', NULL, 1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL COMMENT 'This column is all about payment taking date'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `title`, `total_amount`, `class_id`, `student_id`, `payment_method`, `paid_amount`, `status`, `school_id`, `session`, `created_at`, `updated_at`) VALUES
(1, 'tuition', 500, 1, 1, NULL, 400, 'unpaid', 1, '1', 1600639200, 1600639200);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT 0,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `subject_id`, `class_id`, `section_id`, `exam_id`, `mark_obtained`, `comment`, `session`, `school_id`) VALUES
(1, 1, 1, 1, 1, 1, 90, 'good', 1, 1),
(2, 2, 1, 1, 1, 1, 50, 'excellent', 1, 1),
(3, 3, 1, 1, 1, 1, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `displayed_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `superadmin_access` int(11) NOT NULL DEFAULT 0,
  `admin_access` int(11) NOT NULL DEFAULT 0,
  `teacher_access` int(11) NOT NULL DEFAULT 0,
  `parent_access` int(11) NOT NULL DEFAULT 0,
  `student_access` int(11) NOT NULL DEFAULT 0,
  `accountant_access` int(11) NOT NULL DEFAULT 0,
  `librarian_access` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL DEFAULT 0 COMMENT 'If the value is 1 that means its an addon.',
  `unique_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'It is mandatory for addons'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `displayed_name`, `route_name`, `parent`, `icon`, `status`, `superadmin_access`, `admin_access`, `teacher_access`, `parent_access`, `student_access`, `accountant_access`, `librarian_access`, `sort_order`, `is_addon`, `unique_identifier`) VALUES
(1, 'users', NULL, 0, 'dripicons-user', 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'users'),
(2, 'admin', 'admin', 1, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 9, 0, 'admin'),
(3, 'student', 'student', 1, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 10, 0, 'student'),
(4, 'teacher', 'teacher', 1, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'teacher'),
(5, 'parent', 'parent', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'parent'),
(6, 'librarian', 'librarian', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'librarian'),
(7, 'accountant', 'accountant', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'accountant'),
(8, 'driver', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 80, 0, 'driver'),
(9, 'academic', NULL, 0, 'dripicons-store', 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'academic'),
(10, 'class', 'class', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'class'),
(11, 'section', NULL, 9, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'section'),
(12, 'class_room', 'class_room', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'class-room'),
(13, 'syllabus', 'syllabus', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'syllabus'),
(14, 'subject', 'subject', 9, NULL, 1, 1, 1, 1, 0, 1, 0, 0, 29, 0, 'subject'),
(15, 'class_routine', 'routine', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'class-routine'),
(16, 'daily_attendance', 'attendance', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'daily-attendance'),
(17, 'noticeboard', NULL, 9, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'noticeboard'),
(18, 'promotion', 'promotion', 19, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'promotion'),
(19, 'exam', NULL, 0, 'dripicons-to-do', 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'exam'),
(20, 'exam', 'exam', 19, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 20, 0, 'exam'),
(21, 'grades', 'grade', 19, NULL, 1, 1, 1, 0, 1, 1, 0, 0, 30, 0, 'grades'),
(22, 'marks', 'mark', 19, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'marks'),
(23, 'tabulation_sheet', NULL, 19, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 40, 0, 'tabulation-sheet'),
(24, 'accounting', NULL, 0, 'dripicons-suitcase', 1, 1, 1, 0, 1, 1, 1, 0, 40, 0, 'accounting'),
(25, 'student_fee_manager', 'invoice', 24, NULL, 1, 1, 1, 0, 1, 1, 1, 0, 10, 0, 'student-fee-manager'),
(26, 'student_fee_report', NULL, 24, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 20, 0, 'student-fee-report'),
(27, 'expense_manager', 'expense', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 40, 0, 'expense-manager'),
(28, 'back_office', NULL, 0, 'dripicons-archive', 1, 1, 1, 1, 1, 1, 0, 1, 50, 0, 'back-office'),
(29, 'library', NULL, 28, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'library'),
(30, 'transport', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'transport'),
(31, 'hostel', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'hostel'),
(32, 'school_website', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'school-website'),
(33, 'settings', NULL, 0, 'dripicons-cutlery', 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'settings'),
(34, 'system_settings', 'system_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 10, 0, 'system-settings'),
(36, 'payment_settings', 'payment_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 20, 0, 'payment-settings'),
(37, 'language_settings', 'language', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 30, 0, 'language-settings'),
(38, 'session_manager', 'session_manager', 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'session-manager'),
(39, 'department', 'department', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'department'),
(40, 'admission', 'student/create', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 20, 0, 'admission'),
(41, 'addon_manager', 'addon_manager', 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'addon-manager'),
(42, 'assignment', NULL, 9, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 90, 0, 'assignment'),
(43, 'event_calender', 'event_calendar', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 100, 0, 'event-calender'),
(44, 'online_exam', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'online-exam'),
(45, 'certificate', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 60, 0, 'certificate'),
(46, 'teacher_permission', 'permission', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'teacher-permission'),
(47, 'messaging', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'messaging'),
(48, 'role_permission', 'role.index', 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 'role-permission'),
(49, 'form_builder', NULL, 32, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'form-builder'),
(50, 'book_list_manager', 'book', 29, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'book-list-manager'),
(51, 'book_issue_report', 'book_issue', 29, NULL, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 'book-issue-report'),
(52, 'room_manager', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'room-manager'),
(53, 'student_report', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'student-report'),
(55, 'expense_category', 'expense_category', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 30, 0, 'expense-category'),
(56, 'SMTP_settings', 'smtp_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'smtp-settings'),
(57, 'school_settings', 'school_settings', 33, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 12, 0, 'school-settings'),
(58, 'about', 'about', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 51, 0, 'about'),
(115, 'website_settings', 'website_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 11, 0, 'website-settings'),
(116, 'noticeboard', 'noticeboard', 28, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'noticeboard');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_on_website` int(11) DEFAULT 0,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `session` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`id`, `notice_title`, `notice`, `date`, `status`, `show_on_website`, `image`, `school_id`, `session`) VALUES
(3, 'Lockdown: It is back to school for teachers who were on leave due to comorbidities', 'All teachers who were granted Covid-19 concessions will be expected to report again on Monday.\r\n\r\nThose who are still unwell will apply for normal sick leave.\r\n\r\nSchools have been advised to rework timetables and ensure there is appropriate social distancing.\r\n\r\nTeachers - who were on comorbidity absence, over the age of 60, and have been working from home - will now be expected to return to work from Monday as the country moves to level 1 of the lockdown, the Department of Basic Education has said.\r\nAccording to a statement by the department on Saturday, more than 22 500 teachers were granted approval for concessions countrywide in terms of the Education Labour Relations Council&#039;s Collective Agreement 1 of 2020.\r\n\r\nThe agreement was aimed at providing a concession for teachers employed in terms of Act 78 of 1998 of Employment of Educators Act who are affected due to risk factors relating to Covid-19.\r\n\r\nThe agreement, dated 30 May 2020, was signed by the department&#039;s director-general Mathanzima Mweli and South African Democratic Teacher&#039;s Union (SADTU) general-secretary Mugwena Maluleke.\r\n\r\nIt stated the department had put appropriate measures in place to accommodate teachers who were at high risk, had comorbidities, or were over the age of 60.\r\n\r\nThe agreement read; &quot;Employees who have comorbidities and those who are 60 years and above will remain home on full pay subject to all requirements...&quot;\r\n\r\nit also allowed those who had commodities and were 60 years and above, but who wished to continue reporting for duty at schools, to agree with principals, and for relevant measures to be in place to ensure their safety.\r\n\r\nThe agreement, however, noted the concessions granted would only be applicable for the duration of levels 3 and 2.\r\n\r\n&quot;The implication of the announcement by [President Cyril Ramaphosa] of moving the country to alert Level 1 means the concessions to work from home will no longer apply form midnight on Sunday 20 September 2020,&quot; the department said.\r\n\r\nThe department said:\r\nThere are instances where substitute teachers have been appointed in the place of educators who have been granted a concession to work from home.\r\n\r\nAs teachers with commodities will return to school on Monday, the provincial education department should honor the contractual obligations entered into between the substitute educators and the provincial department.\r\nIt added all affected employees would now have to report for duty from Monday, but if some were still nt well, they would be required to &quot;follow the normal sick leave protocols&quot;.\r\n\r\nPrincipals have also been advised to rework timetables as of Monday and school management teams and school governing bodies have been advised to ensure requirements for physical distancing were met as per the department standard norms and standards under COVID-19.\r\n\r\nSchools must also put in place appropriate adjustments for physical distancing and for the timetable to accommodate a certain percentage of the total pupil population who would be attending on a specific day.\r\n\r\n\r\nSource : https://www.news24.com/news24/southafrica/news/lockdown-it-is-back-to-school-for-teachers-who-were-on-leave-due-to-comorbidities-20200919\r\n\r\n', '09/22/2020 00:00:1', 1, 1, '7v3eGf4bEAuBhz2.jpg', 1, 1),
(4, 'A journey of a thousand sites begins with a single click.”  Anonymous', 'We are very excited and proud to announce the launch of our new website here at Apple Seeds Private School.\r\n\r\nOur main aim was to improve accessibility to offer key information and news for parents and carers, set out statutory documents and showcase some amazing photography. We also want the website to be a useful source of news ranging from termly curriculum topics, terms dates, latest news and a calendar of events at the school.\r\n\r\nWe feel the new site offers a much-improved experience for all users and we look forward to developing it further to suit everyone’s needs. We hope that you find it useful and enjoy browsing it. We welcome everyone’s feedback via our contact form so that you may offer your thoughts, suggestions, and comments.\r\n\r\nThank you to all the parents and carers who keep supporting us and share the same vision as we have. That&#039;s creating a better tomorrow for our young ones.\r\n\r\n This new website will revolutionize the way, students will learn. It comes with a School Management System.\r\n\r\nSchool management is important because it also helps the school to manage the student&#039;s admission by managing the prospective student&#039;s data and reduce the use of paper. The students have their personal information and their academic records in the future in one database.  Not only does this reduce paperwork, but it is also in support of the carbon-free agenda.\r\n\r\nA journey of a thousand sites has just begun with a single click  : )\r\n \r\n\r\n', '09/22/2020 00:00:1', 1, 1, 'R0u8XGyKcS39HBg.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `user_id`, `school_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_minute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_minute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `teacher_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Apple  Seeds Private ', '64 Mabandla Village Malamulele Limpopo Province', '+27 547856 254');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `class_id`) VALUES
(1, 'Blue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `status`) VALUES
(1, '2020', 1),
(2, '2021', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `system_title` varchar(255) DEFAULT NULL,
  `system_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `system_currency` varchar(255) DEFAULT NULL,
  `currency_position` varchar(255) DEFAULT NULL,
  `running_session` varchar(255) DEFAULT '',
  `language` varchar(255) DEFAULT NULL,
  `paypal_active` varchar(255) DEFAULT NULL,
  `paypal_mode` varchar(255) DEFAULT NULL,
  `paypal_client_id_sandbox` varchar(255) DEFAULT NULL,
  `paypal_client_id_production` varchar(255) DEFAULT NULL,
  `paypal_currency` varchar(255) DEFAULT NULL,
  `stripe_active` varchar(255) DEFAULT NULL,
  `stripe_mode` varchar(255) DEFAULT NULL,
  `stripe_test_secret_key` varchar(255) DEFAULT NULL,
  `stripe_test_public_key` varchar(255) DEFAULT NULL,
  `stripe_live_secret_key` varchar(255) DEFAULT NULL,
  `stripe_live_public_key` varchar(255) DEFAULT NULL,
  `stripe_currency` varchar(255) DEFAULT NULL,
  `student_email_verification` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `footer_link` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `date_of_last_updated_attendance` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `school_id`, `system_name`, `system_title`, `system_email`, `phone`, `address`, `purchase_code`, `system_currency`, `currency_position`, `running_session`, `language`, `paypal_active`, `paypal_mode`, `paypal_client_id_sandbox`, `paypal_client_id_production`, `paypal_currency`, `stripe_active`, `stripe_mode`, `stripe_test_secret_key`, `stripe_test_public_key`, `stripe_live_secret_key`, `stripe_live_public_key`, `stripe_currency`, `student_email_verification`, `footer_text`, `footer_link`, `version`, `fax`, `date_of_last_updated_attendance`, `timezone`) VALUES
(1, 1, 'Apple Seeds Private', 'Apple Seeds Private', 'info@appleseedsprivate.com', '0027780050646 / 0027748219385', ' 64 Mabandla, Village Malamulele\r\nLimpopo  Province.', '1234', 'ZAR', 'left', '1', 'english', 'no', 'sandbox', 'AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R', '123', 'USD', 'yes', 'on', 'sk_test_iatnshcHhQVRXdygXw3L2Pp2', 'pk_test_CAC3cB1mhgkJqXtypYBTGb4f', '12345', '123456', 'USD', NULL, NULL, NULL, '7.0', '1234567890', '1600675764', 'Africa/Johannesburg');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` int(11) NOT NULL,
  `mail_sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_secure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_set_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_debug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_show_error` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `code`, `user_id`, `parent_id`, `session`, `school_id`) VALUES
(1, '2020-5617-4038', 4, 1, 1, 1),
(2, '2020-2594-0138', 5, 1, 1, 1),
(3, '2020-4861-2395', 9, 1, 1, 1),
(4, '2020-7453-9801', 10, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_id`, `school_id`, `session`) VALUES
(1, 'Mathematics', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `syllabuses`
--

INSERT INTO `syllabuses` (`id`, `title`, `class_id`, `section_id`, `subject_id`, `file`, `session_id`, `school_id`) VALUES
(1, 'Mathematics', 1, 1, 1, 'e3d94e2fa950b800687c13ef2629f81f.pdf', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `department_id`, `designation`, `school_id`, `social_links`, `about`, `show_on_website`) VALUES
(1, 6, 1, 'Grade 1 Blue', 1, '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 'helo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_permissions`
--

CREATE TABLE `teacher_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT 0,
  `assignment` int(11) DEFAULT 0,
  `attendance` int(11) DEFAULT 0,
  `online_exam` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_permissions`
--

INSERT INTO `teacher_permissions` (`id`, `class_id`, `section_id`, `teacher_id`, `marks`, `assignment`, `attendance`, `online_exam`) VALUES
(1, 1, 1, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `authentication_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `address`, `phone`, `remember_token`, `birthday`, `gender`, `blood_group`, `school_id`, `authentication_key`) VALUES
(1, 'Peven Mapundu', 'info@appleseedsprivate.com', '8cb2237d0679ca88db6464eac60da96345513964', 'superadmin', '', '', NULL, NULL, NULL, NULL, 1, NULL),
(2, 'Craig Gazimbi', 'craiggazimbi@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'admin', 'PO BOX 140', '077189926', NULL, NULL, 'Male', 'a+', 1, NULL),
(3, 'Craig Gazimbi', 'craig@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'parent', 'PO BOX 140', '077189926', NULL, NULL, 'Male', 'a+', 1, NULL),
(4, 'Craig Gazimbi', 'gazimbi@outlook.com', '8cb2237d0679ca88db6464eac60da96345513964', 'student', '4320/1 Mkoba 10\r\nUfuli Street', '0771899426', NULL, '910389600', 'Male', 'a+', 1, NULL),
(5, 'Craig Gazimbi', 'student@appleseeds.com', '8cb2237d0679ca88db6464eac60da96345513964', 'student', '4320/1 Mkoba 10\r\nUfuli Street', '771899426', NULL, '906328800', 'Male', 'a+', 1, NULL),
(6, 'Craig Gazimbi', 'teacher@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'teacher', 'PO BOX 140', '77189926', NULL, NULL, 'Male', 'a+', 1, NULL),
(7, 'Craig Gazimbi', 'accountant@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'accountant', 'PO BOX 140', '077189926', NULL, NULL, 'Male', 'a+', 1, NULL),
(8, 'Craig Gazimbi', 'library@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'librarian', 'PO BOX 140', '077189926', NULL, NULL, 'Male', 'a+', 1, NULL),
(9, 'Apple', 'fructoxhosting@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'student', 'PO BOX 140', '077189926', NULL, '1600639200', 'Female', 'a-', 1, NULL),
(10, 'John Doe', 'johndoe@students.com', '8cb2237d0679ca88db6464eac60da96345513964', 'student', 'PO BOX 140', '77189926', NULL, '1596405600', 'Male', 'a-', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrols`
--
ALTER TABLE `enrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_calendars`
--
ALTER TABLE `event_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`frontend_events_id`);

--
-- Indexes for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  ADD PRIMARY KEY (`frontend_gallery_id`);

--
-- Indexes for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  ADD PRIMARY KEY (`frontend_gallery_image_id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enrols`
--
ALTER TABLE `enrols`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_calendars`
--
ALTER TABLE `event_calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  MODIFY `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  MODIFY `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
