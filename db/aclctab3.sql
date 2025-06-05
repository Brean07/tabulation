-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2025 at 08:11 AM
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
(53, 'Top 1', 10, 1, '', '', 864846, 0),
(54, 'Top 2', 10, 2, '', '', 545824, 0),
(55, 'Top 3', 10, 3, '', '', 3283143, 0),
(56, 'Top 4', 10, 4, '', '', 3283144, 0),
(57, 'Top 5', 10, 5, '', '', 3283145, 0),
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
(31, 6, 1, 'Jayron D. Bermejo, PhD', 'qassjq', ''),
(32, 6, 2, 'John Jordan J. Somido', 'hytokq', ''),
(33, 6, 3, 'Erich Grace L. Exim', 'd3xdv6', ''),
(34, 7, 1, 'Jayron D. Bermejo, PhD', '4ct726', ''),
(35, 7, 2, 'John Jordan J. Somido', 'ik2yrn', ''),
(36, 7, 3, 'Erich Grace L. Exim', 'yqr3rf', ''),
(37, 8, 1, 'Jayron D. Bermejo, PhD', 'e6inbr', ''),
(38, 8, 2, 'John Jordan J. Somido', 'a34umn', ''),
(39, 8, 3, 'Erich Grace L. Exim', 'jfmeqf', ''),
(40, 9, 1, 'Jayron D. Bermejo, PhD', '0ymib3', ''),
(41, 9, 2, 'John Jordan J. Somido', 'khphuc', ''),
(42, 9, 3, 'Erich Grace L. Exim', 'zei0ww', ''),
(43, 11, 1, 'Jayron D. Bermejo, PhD', '304s2j', ''),
(44, 11, 2, 'John Jordan J. Somido', 'k2dhbe', ''),
(45, 11, 3, 'Erich Grace L. Exim', '23oukc', ''),
(46, 10, 1, 'Jayron D. Bermejo, PhD', '52mgs0', ''),
(47, 10, 2, 'John Jordan J. Somido', '5qg51g', ''),
(48, 10, 3, 'Erich Grace L. Exim', 'kogaxr', '');

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
(8, 'Mutya ng San Felipe', 'activated', 21, '2025', '2025-03-27', '2025-03-28', 'Brgy. San Felipe'),
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
  MODIFY `subresult_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `textpoll`
--
ALTER TABLE `textpoll`
  MODIFY `textpoll_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
