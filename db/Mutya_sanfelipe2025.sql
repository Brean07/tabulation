-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2025 at 04:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aclctab2`
--
CREATE DATABASE IF NOT EXISTS `aclctab2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aclctab2`;

-- --------------------------------------------------------

--
-- Table structure for table `contestants`
--

CREATE TABLE `contestants` (
  `contestant_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `contestant_ctr` int(11) NOT NULL,
  `status` text NOT NULL,
  `txt_code` text NOT NULL,
  `rand_code` int(15) NOT NULL,
  `txtPollScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contestants`
--

INSERT INTO `contestants` (`contestant_id`, `fullname`, `subevent_id`, `contestant_ctr`, `status`, `txt_code`, `rand_code`, `txtPollScore`) VALUES
(21, 'Contestant 1', 6, 1, 'finish', '', 177696, 0),
(22, 'Contestant 2', 6, 2, 'finish', '', 182029, 0),
(23, 'Contestant 3', 6, 3, 'finish', '', 8619033, 0),
(24, 'Contestant 4', 6, 4, 'finish', '', 8619034, 0),
(25, 'Contestant 5', 6, 5, 'finish', '', 8619035, 0),
(26, 'Contestant 6', 6, 6, 'finish', '', 8619036, 0),
(27, 'Contestant 7', 6, 7, 'finish', '', 8619037, 0),
(28, 'Contestant 8', 6, 8, 'finish', '', 8619038, 0),
(29, 'Contestant 1', 7, 1, 'finish', '', 285447, 0),
(30, 'Contestant 2', 7, 2, 'finish', '', 305971, 0),
(31, 'Contestant 3', 7, 3, 'finish', '', 6887173, 0),
(32, 'Contestant 4', 7, 4, 'finish', '', 6887174, 0),
(33, 'Contestant 5', 7, 5, 'finish', '', 6887175, 0),
(34, 'Contestant 6', 7, 6, 'finish', '', 6887176, 0),
(35, 'Contestant 7', 7, 7, 'finish', '', 6887177, 0),
(36, 'Contestant 8', 7, 8, 'finish', '', 6887178, 0),
(37, 'Contestant 1', 8, 1, 'finish', '', 235642, 0),
(38, 'Contestant 2', 8, 2, 'finish', '', 634871, 0),
(39, 'Contestant 3', 8, 3, 'finish', '', 2872563, 0),
(40, 'Contestant 4', 8, 4, 'finish', '', 2872564, 0),
(41, 'Contestant 5', 8, 5, 'finish', '', 2872565, 0),
(42, 'Contestant 6', 8, 6, 'finish', '', 2872566, 0),
(43, 'Contestant 7', 8, 7, 'finish', '', 2872567, 0),
(44, 'Contestant 8', 8, 8, 'finish', '', 2872568, 0),
(45, 'Contestant 1', 9, 1, 'finish', '', 985517, 0),
(46, 'Contestant 2', 9, 2, 'finish', '', 628748, 0),
(47, 'Contestant 3', 9, 3, 'finish', '', 3122183, 0),
(48, 'Contestant 4', 9, 4, 'finish', '', 3122184, 0),
(49, 'Contestant 5', 9, 5, 'finish', '', 3122185, 0),
(50, 'Contestant 6', 9, 6, 'finish', '', 3122186, 0),
(51, 'Contestant 7', 9, 7, 'finish', '', 3122187, 0),
(52, 'Contestant 8', 9, 8, 'finish', '', 3122188, 0),
(53, 'Top 1', 10, 6, 'finish', '', 864846, 0),
(54, 'Top 2', 10, 7, 'finish', '', 545824, 0),
(55, 'Top 3', 10, 5, 'finish', '', 3283143, 0),
(56, 'Top 4', 10, 8, 'finish', '', 3283144, 0),
(57, 'Top 5', 10, 4, 'finish', '', 3283145, 0),
(58, 'Top 1', 11, 1, '', '', 410623, 0),
(59, 'Top 2', 11, 2, '', '', 384250, 0),
(60, 'Top 3', 11, 3, '', '', 2092943, 0),
(61, 'Top 4', 11, 4, '', '', 2092944, 0),
(62, 'Top 5', 11, 5, '', '', 2092945, 0);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `criteria_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `criteria` text NOT NULL,
  `percentage` int(11) NOT NULL,
  `criteria_ctr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`criteria_id`, `subevent_id`, `criteria`, `percentage`, `criteria_ctr`) VALUES
(9, 5, 'Stage Presence / Performance', 35, 1),
(10, 5, 'Composure and Bearing', 35, 2),
(11, 5, 'Beauty of the Face', 30, 3),
(12, 6, 'Stage Presence / Performance', 35, 1),
(13, 6, 'Composure and Bearing', 35, 2),
(14, 6, 'Beauty of the Face', 30, 3),
(15, 7, 'Composure and Projection', 40, 1),
(16, 7, 'Confidence', 30, 2),
(17, 7, 'Beauty of the Face', 30, 3),
(18, 8, 'Elegance and Glamour', 40, 1),
(19, 8, 'Composure and Bearing ', 30, 2),
(20, 8, 'Beauty of the Face ', 30, 3),
(21, 9, 'Content of the Answer', 50, 1),
(22, 9, 'Structure and Delivery ', 50, 2),
(23, 10, 'Beauty', 50, 1),
(24, 10, 'Intelligence', 50, 2),
(25, 11, 'Grand Production', 25, 1),
(26, 11, 'Playsuit', 25, 2),
(27, 11, 'Formal Wear', 25, 3),
(28, 11, 'Interview', 25, 4);

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `judge_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `judge_ctr` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `code` varchar(6) NOT NULL,
  `jtype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`judge_id`, `subevent_id`, `judge_ctr`, `fullname`, `code`, `jtype`) VALUES
(31, 6, 3, 'Jayron D. Bermejo, PhD', 'qassjq', ''),
(32, 6, 1, 'John Jordan J. Somido', 'hytokq', ''),
(33, 6, 2, 'Erich Grace L. Exim', 'd3xdv6', ''),
(34, 7, 3, 'Jayron D. Bermejo, PhD', '4ct726', ''),
(35, 7, 1, 'John Jordan J. Somido', 'ik2yrn', ''),
(36, 7, 2, 'Erich Grace L. Exim', 'yqr3rf', ''),
(37, 8, 3, 'Jayron D. Bermejo, PhD', 'e6inbr', ''),
(38, 8, 1, 'John Jordan J. Somido', 'a34umn', ''),
(39, 8, 2, 'Erich Grace L. Exim', 'jfmeqf', ''),
(40, 9, 3, 'Jayron D. Bermejo, PhD', '0ymib3', ''),
(41, 9, 1, 'John Jordan J. Somido', 'khphuc', ''),
(42, 9, 2, 'Erich Grace L. Exim', 'zei0ww', ''),
(43, 11, 3, 'Jayron D. Bermejo, PhD', '304s2j', ''),
(44, 11, 1, 'John Jordan J. Somido', 'k2dhbe', ''),
(45, 11, 2, 'Erich Grace L. Exim', '23oukc', ''),
(46, 10, 3, 'Jayron D. Bermejo, PhD', '52mgs0', ''),
(47, 10, 1, 'John Jordan J. Somido', '5qg51g', ''),
(48, 10, 2, 'Erich Grace L. Exim', 'kogaxr', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_event`
--

CREATE TABLE `main_event` (
  `mainevent_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `sy` varchar(9) NOT NULL,
  `date_start` text NOT NULL,
  `date_end` text NOT NULL,
  `place` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `main_event`
--

INSERT INTO `main_event` (`mainevent_id`, `event_name`, `status`, `organizer_id`, `sy`, `date_start`, `date_end`, `place`) VALUES
(8, 'Production Number', 'activated', 21, '2025', '2025-03-27', '2025-03-28', 'Brgy. San Felipe'),
(9, 'Top 5', 'activated', 21, '2025', '2025-03-27', '2025-03-28', 'Brgy. San Felipe'),
(10, 'MutyangSanFelipe2025', 'activated', 21, '2025', '2025-03-27', '2025-03-28', 'Brgy. San Felipe');

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` varchar(10) DEFAULT NULL,
  `ReceiveTime` varchar(10) DEFAULT NULL,
  `MessageFrom` bigint(12) DEFAULT NULL,
  `MessageTo` varchar(10) DEFAULT NULL,
  `SMSC` varchar(10) DEFAULT NULL,
  `MessageText` varchar(4) DEFAULT NULL,
  `MessageType` varchar(10) DEFAULT NULL,
  `MessagePDU` varchar(10) DEFAULT NULL,
  `Gateway` varchar(10) DEFAULT NULL,
  `UserId` varchar(10) DEFAULT NULL,
  `sendStatus` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `organizer_id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `pnum` varchar(15) NOT NULL,
  `access` varchar(25) NOT NULL,
  `org_id` varchar(12) NOT NULL,
  `status` varchar(12) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `company_address` varchar(55) NOT NULL,
  `company_logo` varchar(55) NOT NULL,
  `company_telephone` varchar(55) NOT NULL,
  `company_email` varchar(55) NOT NULL,
  `company_website` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`organizer_id`, `fname`, `mname`, `lname`, `username`, `password`, `email`, `pnum`, `access`, `org_id`, `status`, `company_name`, `company_address`, `company_logo`, `company_telephone`, `company_email`, `company_website`) VALUES
(21, 'ACLC', 'College', 'Marbel', 'aclc-org', '4c1c', 'aclcmarbelcampus@gmail.com', '', 'Organizer', '', 'offline', 'ACLC College of Marbel', '3F Del Rosario Bldg. Gensan Drive Cor. Zulueta St.', '67143-aclc2.png', '09175075805', '', ''),
(23, 'ACLC', 'College', 'Marbel', 'tabulator', '4c1c', 'aclcmarbelcampus@gmail.com', '', 'Tabulator', '21', 'offline', 'ACLC College of Marbel', '3F Del Rosario Bldg. Gensan Drive Cor. Zulueta St.', '67143-aclc2.png', '09175075805', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rank_system`
--

CREATE TABLE `rank_system` (
  `rs_id` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `total_rank` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank_system`
--

INSERT INTO `rank_system` (`rs_id`, `subevent_id`, `contestant_id`, `total_rank`) VALUES
(1, '2', '5', 9.0),
(2, '2', '6', 6.0),
(3, '2', '7', 10.0),
(4, '2', '8', 7.0),
(5, '2', '9', 7.0),
(6, '2', '10', 3.0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_event`
--

CREATE TABLE `sub_event` (
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `eventdate` text NOT NULL,
  `eventtime` text NOT NULL,
  `place` text NOT NULL,
  `txtpoll_status` text NOT NULL,
  `view` varchar(15) NOT NULL,
  `txtpollview` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_event`
--

INSERT INTO `sub_event` (`subevent_id`, `mainevent_id`, `organizer_id`, `event_name`, `status`, `eventdate`, `eventtime`, `place`, `txtpoll_status`, `view`, `txtpollview`) VALUES
(6, 8, 21, 'Best in Production', 'activated', '2025-03-27', '07:00 PM', 'Brgy. San Felipe', '', '', ''),
(7, 8, 21, 'Best in Playsuit', 'activated', '2025-03-27', '7:00 PM', 'Brgy. San Felipe', '', '', ''),
(8, 8, 21, 'Best in Gown', 'activated', '2025-03-27', '7:00 PM', 'Brgy. San Felipe', '', '', ''),
(9, 8, 21, 'Best in Interview', 'activated', '2025-03-27', '7:00 PM', 'Brgy. San Felipe', '', '', ''),
(10, 9, 21, 'Final Interview', 'activated', '2025-03-27', '7:00 PM', 'Brgy. San Felipe', '', '', ''),
(11, 10, 21, 'Mutya ng San Felipe 2025', 'activated', '2025-03-27', '7:00 PM', 'Brgy. San Felipe', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_results`
--

CREATE TABLE `sub_results` (
  `subresult_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `contestant_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `total_score` decimal(11,1) NOT NULL,
  `deduction` int(11) NOT NULL,
  `criteria_ctr1` decimal(11,1) NOT NULL,
  `criteria_ctr2` decimal(11,1) NOT NULL,
  `criteria_ctr3` decimal(11,1) NOT NULL,
  `criteria_ctr4` decimal(11,1) NOT NULL,
  `criteria_ctr5` decimal(11,1) NOT NULL,
  `criteria_ctr6` decimal(11,1) NOT NULL,
  `criteria_ctr7` decimal(11,1) NOT NULL,
  `criteria_ctr8` decimal(11,1) NOT NULL,
  `criteria_ctr9` decimal(11,1) NOT NULL,
  `criteria_ctr10` decimal(11,1) NOT NULL,
  `comments` text NOT NULL,
  `rank` varchar(11) NOT NULL,
  `judge_rank_stat` varchar(15) NOT NULL,
  `place_title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_results`
--

INSERT INTO `sub_results` (`subresult_id`, `subevent_id`, `mainevent_id`, `contestant_id`, `judge_id`, `total_score`, `deduction`, `criteria_ctr1`, `criteria_ctr2`, `criteria_ctr3`, `criteria_ctr4`, `criteria_ctr5`, `criteria_ctr6`, `criteria_ctr7`, `criteria_ctr8`, `criteria_ctr9`, `criteria_ctr10`, `comments`, `rank`, `judge_rank_stat`, `place_title`) VALUES
(133, 6, 8, 21, 32, 85.0, 0, 30.0, 30.0, 25.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(134, 6, 8, 21, 33, 95.5, 0, 33.5, 33.5, 28.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4.5', 'tie', ''),
(135, 6, 8, 21, 31, 84.0, 0, 30.0, 30.0, 24.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(136, 6, 8, 22, 32, 88.0, 0, 31.0, 31.0, 26.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(137, 6, 8, 23, 32, 90.0, 0, 32.0, 31.0, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(138, 6, 8, 22, 31, 90.0, 0, 32.5, 32.5, 25.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(139, 6, 8, 22, 33, 98.0, 0, 34.5, 34.5, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1.5', 'tie', ''),
(140, 6, 8, 23, 33, 94.0, 0, 33.5, 33.5, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(141, 6, 8, 23, 31, 80.5, 0, 29.5, 28.0, 23.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(142, 6, 8, 24, 32, 93.0, 0, 33.0, 32.0, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(143, 6, 8, 24, 31, 95.0, 0, 33.5, 33.0, 28.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(144, 6, 8, 24, 33, 95.0, 0, 34.0, 33.5, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(145, 6, 8, 25, 32, 93.0, 0, 33.0, 33.0, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(146, 6, 8, 25, 31, 87.0, 0, 31.0, 31.5, 24.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(147, 6, 8, 25, 33, 95.5, 0, 34.0, 33.5, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4.5', 'tie', ''),
(148, 6, 8, 26, 33, 93.5, 0, 35.0, 29.5, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(149, 6, 8, 26, 31, 91.5, 0, 33.0, 33.5, 25.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(150, 6, 8, 27, 33, 98.0, 0, 34.0, 34.0, 30.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1.5', 'tie', ''),
(151, 6, 8, 26, 32, 98.0, 0, 34.5, 34.5, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(152, 6, 8, 27, 31, 91.0, 0, 33.5, 33.0, 24.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(153, 6, 8, 28, 33, 96.0, 0, 33.5, 34.0, 28.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(154, 6, 8, 27, 32, 94.0, 0, 32.0, 33.0, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(155, 6, 8, 28, 31, 91.0, 0, 33.5, 33.5, 24.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(156, 6, 8, 28, 32, 91.0, 0, 33.0, 31.0, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(157, 7, 8, 29, 35, 86.0, 0, 34.0, 26.0, 26.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(158, 7, 8, 29, 36, 93.5, 0, 37.5, 28.5, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(159, 7, 8, 29, 34, 85.0, 0, 35.0, 25.0, 25.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(160, 7, 8, 30, 35, 88.5, 0, 35.5, 27.0, 26.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(161, 7, 8, 33, 36, 94.5, 0, 39.0, 28.5, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5.5', 'tie', ''),
(162, 7, 8, 33, 34, 88.5, 0, 37.0, 26.5, 25.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(163, 7, 8, 31, 35, 91.5, 0, 37.0, 27.0, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(164, 7, 8, 34, 36, 97.5, 0, 39.0, 29.5, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2.5', 'tie', ''),
(165, 7, 8, 34, 34, 95.0, 0, 38.5, 28.5, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(166, 7, 8, 32, 35, 92.0, 0, 38.0, 27.0, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(167, 7, 8, 35, 36, 96.5, 0, 39.5, 27.5, 29.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(168, 7, 8, 35, 34, 90.5, 0, 36.5, 26.5, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(169, 7, 8, 36, 36, 94.0, 0, 37.5, 28.5, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(170, 7, 8, 36, 34, 91.5, 0, 36.5, 28.5, 26.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(171, 7, 8, 30, 34, 87.0, 0, 35.5, 26.5, 25.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(172, 7, 8, 30, 36, 98.5, 0, 40.0, 29.5, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(173, 7, 8, 33, 35, 91.0, 0, 38.0, 26.5, 26.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(174, 7, 8, 34, 35, 97.0, 0, 38.5, 29.5, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(175, 7, 8, 31, 36, 97.5, 0, 39.5, 30.0, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2.5', 'tie', ''),
(176, 7, 8, 31, 34, 86.0, 0, 35.5, 26.0, 24.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(177, 7, 8, 35, 35, 94.0, 0, 38.0, 28.0, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(178, 7, 8, 32, 36, 94.5, 0, 38.0, 28.0, 28.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5.5', 'tie', ''),
(179, 7, 8, 32, 34, 90.5, 0, 36.5, 26.5, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(180, 9, 8, 45, 41, 93.0, 0, 46.5, 46.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', 'tie', ''),
(181, 9, 8, 45, 40, 80.0, 0, 40.0, 40.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(182, 9, 8, 45, 42, 94.0, 0, 47.0, 47.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(183, 7, 8, 36, 35, 93.0, 0, 38.0, 27.0, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(184, 9, 8, 46, 41, 94.0, 0, 47.0, 47.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4.5', 'tie', ''),
(185, 9, 8, 46, 42, 96.5, 0, 48.5, 48.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(186, 9, 8, 46, 40, 81.0, 0, 40.5, 40.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(187, 9, 8, 47, 41, 93.0, 0, 46.0, 47.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', 'tie', ''),
(188, 9, 8, 47, 40, 79.5, 0, 39.5, 40.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7.5', 'tie', ''),
(189, 9, 8, 47, 42, 97.5, 0, 48.5, 49.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(190, 9, 8, 48, 41, 93.0, 0, 46.5, 46.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', 'tie', ''),
(191, 9, 8, 48, 42, 96.0, 0, 48.5, 47.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(192, 9, 8, 48, 40, 79.5, 0, 40.0, 39.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7.5', 'tie', ''),
(193, 9, 8, 49, 42, 98.5, 0, 49.0, 49.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(194, 9, 8, 49, 40, 90.5, 0, 45.0, 45.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(195, 9, 8, 49, 41, 97.0, 0, 48.5, 48.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(196, 9, 8, 50, 42, 99.0, 0, 49.5, 49.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(197, 9, 8, 50, 40, 83.0, 0, 41.0, 42.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(198, 9, 8, 51, 40, 82.5, 0, 41.0, 41.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(199, 9, 8, 51, 41, 94.0, 0, 47.0, 47.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4.5', 'tie', ''),
(200, 9, 8, 51, 42, 95.5, 0, 47.5, 48.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(201, 9, 8, 52, 40, 86.5, 0, 43.0, 43.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(202, 9, 8, 52, 42, 99.5, 0, 49.5, 50.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(203, 9, 8, 50, 41, 96.0, 0, 48.0, 48.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(204, 9, 8, 52, 41, 94.5, 0, 47.0, 47.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(205, 8, 8, 37, 39, 93.5, 0, 38.5, 27.5, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5.5', 'tie', ''),
(206, 8, 8, 37, 38, 86.5, 0, 35.0, 25.5, 26.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(207, 8, 8, 37, 37, 90.0, 0, 37.0, 27.0, 26.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(208, 8, 8, 40, 37, 86.5, 0, 37.0, 26.0, 23.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(209, 8, 8, 38, 38, 90.0, 0, 36.5, 26.5, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(210, 8, 8, 38, 37, 79.0, 0, 32.5, 23.5, 23.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(211, 8, 8, 39, 38, 92.0, 0, 37.5, 27.5, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(212, 8, 8, 40, 39, 92.0, 0, 37.0, 27.0, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '8', '', ''),
(213, 8, 8, 41, 39, 93.5, 0, 38.5, 28.0, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5.5', 'tie', ''),
(214, 8, 8, 40, 38, 95.5, 0, 38.5, 28.5, 28.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(215, 8, 8, 39, 37, 89.5, 0, 37.0, 26.5, 26.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(216, 8, 8, 41, 38, 94.0, 0, 38.5, 28.0, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(217, 8, 8, 41, 37, 90.5, 0, 37.5, 26.5, 26.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(218, 8, 8, 42, 37, 93.0, 0, 37.5, 28.0, 27.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(219, 8, 8, 42, 39, 98.0, 0, 40.0, 29.0, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(220, 8, 8, 42, 38, 98.0, 0, 39.5, 29.5, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(221, 8, 8, 43, 39, 95.5, 0, 38.0, 28.0, 29.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2.5', 'tie', ''),
(222, 8, 8, 43, 37, 90.0, 0, 37.0, 26.0, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3.5', 'tie', ''),
(223, 8, 8, 43, 38, 93.5, 0, 37.5, 27.5, 28.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(224, 8, 8, 44, 39, 93.0, 0, 37.0, 28.0, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '7', '', ''),
(225, 8, 8, 44, 38, 92.5, 0, 38.0, 27.5, 27.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(226, 8, 8, 44, 37, 88.0, 0, 36.5, 25.0, 26.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '6', '', ''),
(227, 8, 8, 38, 39, 95.5, 0, 38.5, 28.5, 28.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2.5', 'tie', ''),
(228, 8, 8, 39, 39, 94.0, 0, 38.0, 28.0, 28.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(229, 10, 9, 53, 47, 98.5, 0, 50.0, 48.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(230, 10, 9, 54, 47, 96.0, 0, 50.0, 46.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(231, 10, 9, 55, 47, 94.0, 0, 50.0, 44.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(232, 10, 9, 56, 47, 95.0, 0, 50.0, 45.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(233, 10, 9, 57, 47, 93.0, 0, 50.0, 43.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(234, 10, 9, 53, 46, 90.0, 0, 47.5, 42.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1.5', 'tie', ''),
(235, 10, 9, 53, 48, 98.0, 0, 49.5, 48.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1', '', ''),
(236, 10, 9, 54, 46, 88.0, 0, 47.5, 40.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', ''),
(237, 10, 9, 54, 48, 97.0, 0, 49.0, 48.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '2', '', ''),
(238, 10, 9, 55, 46, 89.0, 0, 47.0, 42.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(239, 10, 9, 55, 48, 95.5, 0, 48.0, 47.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(240, 10, 9, 56, 48, 96.5, 0, 48.0, 48.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '3', '', ''),
(241, 10, 9, 56, 46, 90.0, 0, 47.0, 43.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '1.5', 'tie', ''),
(242, 10, 9, 57, 46, 86.5, 0, 46.5, 40.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '5', '', ''),
(243, 10, 9, 57, 48, 96.0, 0, 48.5, 47.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '', '4', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `textpoll`
--

CREATE TABLE `textpoll` (
  `textpoll_id` int(11) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `text_vote` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contestants`
--
ALTER TABLE `contestants`
  ADD PRIMARY KEY (`contestant_id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`criteria_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`judge_id`);

--
-- Indexes for table `main_event`
--
ALTER TABLE `main_event`
  ADD PRIMARY KEY (`mainevent_id`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indexes for table `rank_system`
--
ALTER TABLE `rank_system`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `sub_event`
--
ALTER TABLE `sub_event`
  ADD PRIMARY KEY (`subevent_id`);

--
-- Indexes for table `sub_results`
--
ALTER TABLE `sub_results`
  ADD PRIMARY KEY (`subresult_id`);

--
-- Indexes for table `textpoll`
--
ALTER TABLE `textpoll`
  ADD PRIMARY KEY (`textpoll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contestants`
--
ALTER TABLE `contestants`
  MODIFY `contestant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `criteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `judge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `main_event`
--
ALTER TABLE `main_event`
  MODIFY `mainevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rank_system`
--
ALTER TABLE `rank_system`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_event`
--
ALTER TABLE `sub_event`
  MODIFY `subevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_results`
--
ALTER TABLE `sub_results`
  MODIFY `subresult_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `textpoll`
--
ALTER TABLE `textpoll`
  MODIFY `textpoll_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"aclctab2\",\"table\":\"judges\"},{\"db\":\"aclctab2\",\"table\":\"criteria\"},{\"db\":\"aclctab2\",\"table\":\"contestants\"},{\"db\":\"aclctab2\",\"table\":\"sub_event\"},{\"db\":\"aclctab2\",\"table\":\"sub_results\"},{\"db\":\"aclctab2\",\"table\":\"main_event\"},{\"db\":\"aclctab2\",\"table\":\"messagein\"},{\"db\":\"aclctab2\",\"table\":\"messagelog\"},{\"db\":\"aclctab2\",\"table\":\"messageout\"},{\"db\":\"aclctab2\",\"table\":\"organizer\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-03-27 05:11:18', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
