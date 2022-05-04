-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 06:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'suryaprasadtripathy8@gmail.com', 'pinkylove');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485dc'),
('5b141d718f873', '5b141d71978d4'),
('5b141d71ddb46', '5b141d71e5f2b'),
('5b141d721a738', '5b141d722282f'),
('5b141d7260b7d', '5b141d7268b95'),
('5b141d72a6fa1', '5b141d72aefe0'),
('5b141d72d7a1c', '5b141d72dfa8b'),
('5b141d731429b', '5b141d731c248'),
('5b141d7345176', '5b141d734cd1d'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab48'),
('5b14226574ed5', '5b1422657d052'),
('5b142265b5d08', '5b142265c09fa'),
('5b1422661d93f', '5b14226635e04'),
('5b14226663cf4', '5b1422666bf39'),
('5b1422669481b', '5b1422669c8ef'),
('5b142266c525c', '5b142266cd361'),
('5b14226711d91', '5b14226719fb7'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('suryaprasadtripathy8@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('priyanka@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('suryaprasadtripathy8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'Rs. 5222.2', '5b141d71485b9'),
('5b141d712647f', 'Rs. 14222.2', '5b141d71485dc'),
('5b141d712647f', 'Rs. 6222.2', '5b141d71485e0'),
('5b141d712647f', 'Rs. 6777.7', '5b141d71485e4'),
('5b141d718f873', '7 months', '5b141d71978be'),
('5b141d718f873', '7.4 months', '5b141d71978cc'),
('5b141d718f873', '8 months', '5b141d71978d1'),
('5b141d718f873', '8.4 months', '5b141d71978d4'),
('5b141d71ddb46', 'Rs.12000', '5b141d71e5f2b'),
('5b141d71ddb46', 'Rs.12500', '5b141d71e5f3c'),
('5b141d71ddb46', 'Rs.13000', '5b141d71e5f43'),
('5b141d71ddb46', 'Rs.13500', '5b141d71e5f48'),
('5b141d721a738', '9 months', '5b141d7222820'),
('5b141d721a738', '3 months', '5b141d722282f'),
('5b141d721a738', '8 months', '5b141d7222880'),
('5b141d721a738', 'None of the above', '5b141d7222884'),
('5b141d7260b7d', '350, 300, 350', '5b141d7268b8a'),
('5b141d7260b7d', '375, 250, 375', '5b141d7268b95'),
('5b141d7260b7d', '400, 300, 300', '5b141d7268b98'),
('5b141d7260b7d', '100, 600,300', '5b141d7268b9a'),
('5b141d72a6fa1', '65:32:56', '5b141d72aefcb'),
('5b141d72a6fa1', '54:60:66', '5b141d72aefd8'),
('5b141d72a6fa1', '84:82:80', '5b141d72aefdc'),
('5b141d72a6fa1', '80:81:84', '5b141d72aefe0'),
('5b141d72d7a1c', '3739.50', '5b141d72dfa7b'),
('5b141d72d7a1c', '3749.50', '5b141d72dfa85'),
('5b141d72d7a1c', '2375.60', '5b141d72dfa88'),
('5b141d72d7a1c', '3937.50', '5b141d72dfa8b'),
('5b141d731429b', '150, 540, 870', '5b141d731c234'),
('5b141d731429b', '100, 160, 860', '5b141d731c242'),
('5b141d731429b', '100, 160, 880', '5b141d731c248'),
('5b141d731429b', '120, 170, 830', '5b141d731c24b'),
('5b141d7345176', '107000', '5b141d734cd10'),
('5b141d7345176', '109000', '5b141d734cd1b'),
('5b141d7345176', '108000', '5b141d734cd1d'),
('5b141d7345176', '115000', '5b141d734cd20'),
('5b141d737ddfc', '155.80 m', '5b141d73858d0'),
('5b141d737ddfc', '157.80 m', '5b141d73858df'),
('5b141d737ddfc', '159. 80 m', '5b141d73858e3'),
('5b141d737ddfc', '161.80 m', '5b141d73858e8'),
('5b1422651fdde', 'Thursday', '5b1422654ab3a'),
('5b1422651fdde', 'Wednesday', '5b1422654ab48'),
('5b1422651fdde', 'Friday', '5b1422654ab4d'),
('5b1422651fdde', 'Sunday', '5b1422654ab51'),
('5b14226574ed5', 'Wednesday', '5b1422657d052'),
('5b14226574ed5', 'Monday', '5b1422657d05f'),
('5b14226574ed5', 'Friday', '5b1422657d064'),
('5b14226574ed5', 'Sunday', '5b1422657d069'),
('5b142265b5d08', '60 m', '5b142265c09e3'),
('5b142265b5d08', '40 m', '5b142265c09f5'),
('5b142265b5d08', '20 m', '5b142265c09fa'),
('5b142265b5d08', '10 m', '5b142265c09ff'),
('5b1422661d93f', '5.15 km/hr', '5b14226635df5'),
('5b1422661d93f', '4.14 km/hr', '5b14226635e04'),
('5b1422661d93f', '4.25 km/hr', '5b14226635e09'),
('5b1422661d93f', '4.41 km/hr', '5b14226635e0d'),
('5b14226663cf4', '5', '5b1422666bf2b'),
('5b14226663cf4', '10', '5b1422666bf39'),
('5b14226663cf4', '15', '5b1422666bf3e'),
('5b14226663cf4', 'None of these', '5b1422666bf42'),
('5b1422669481b', '44 minutes', '5b1422669c8dc'),
('5b1422669481b', '32 minutes', '5b1422669c8ea'),
('5b1422669481b', '352 minutes', '5b1422669c8ef'),
('5b1422669481b', 'None of these.', '5b1422669c8f3'),
('5b142266c525c', '18 m', '5b142266cd353'),
('5b142266c525c', '20 m', '5b142266cd361'),
('5b142266c525c', '27 m', '5b142266cd365'),
('5b142266c525c', '9 m', '5b142266cd369'),
('5b14226711d91', '6', '5b14226719fa0'),
('5b14226711d91', '7', '5b14226719fb1'),
('5b14226711d91', '8', '5b14226719fb7'),
('5b14226711d91', '10', '5b14226719fbb'),
('5b1422674286d', '9/20', '5b1422674a9ee'),
('5b1422674286d', '9/24', '5b1422674aa01'),
('5b1422674286d', '9/27', '5b1422674aa06'),
('5b1422674286d', '9/30', '5b1422674aa0b'),
('5b1422677371f', '1/111', '5b1422677b3e9'),
('5b1422677371f', '1/121', '5b1422677b3f7'),
('5b1422677371f', '1/221', '5b1422677b3fc'),
('5b1422677371f', '1/321', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'Sohan started a business with a capital of Rs. 80000. After 6 months Mohan joined as a partner by investing Rs. 65000. After one year they earned total profit Rs. 20000. What is share of Sohan in the profit?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'A\'s nd B\'s shares in a business are in the ratio of 5:3. If A has invested Rs. 70000 for 12 months, for what period B has invested Rs. 60000', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'A and B enter into a partnership by investing Rs.14000 and Rs. 16000 respectively. After 8 months, C joins them with a capital of Rs.12000. Find the share of C in a total profit of Rs. 57000 after 2 years.', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Raju started a business with Rs. 900. Kamal joined him after few months with an amount of 600. If the profits at the end of the year were divided in the ratio of 2:1, after how many months Kamal joined the business?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'X and Y enter into a partnership for a year. X invests Rs. 6000, and Y invests Rs. 8000. After 4 months, they admit Z, who invests Rs. 9000. If Y withdraws his contribution after 6 months, how would they share a profit of Rs 1000 at the end of the year?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'Praveen and Sunny enter into a partnership. Praveen puts in Rs. 50 and Sunny put in Rs. 45. At the end of 4 months Praveen withdraws half of his capital, and at the end of 6 months, Sunny withdraws half of his capital. Ashu Bhati then enters with a capital of Rs. 70. At the end of 12 months, in what ratio will the profit be divided?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'Two partners invest Rs.125000 and Rs. 85000 respectively in a business and agree that 60% of the profit should be divided equally between them and the remaining profit is to be treated as interest on capital. One partner gets 300 more than the other. Find the total profit made in the business.', 4, 7),
('5b141b8009cf0', '5b141d731429b', ' A, B, and C enter into a partnership. A invests one-fourth of the capital for one-fourth of the time. B invests one-fifth of the capital for half of the time. C contributes the remaining capital for the whole time. How should they divide a profit of Rs 1140?', 4, 8),
('5b141b8009cf0', '5b141d7345176', ' Praveen, Sunny, and Ashu Bhati start a business. Twice the capital of Praveen is equal to thrice the capital of Sunny and Sunny\'s capital is four times Ashu Bhati\'s capital. Find the Sunny\'s share if the total profit earned is 297000.', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', ' Two ships are sailing in the sea on the two sides of a lighthouse. The angles of elevation of the top of the lighthouse observed from the ships are 30° and 45° respectively. If the lighthouse is 100m high, find the distance between the two ships.', 4, 10),
('5b141f1e8399e', '5b1422651fdde', '  If January 1, 1996, was Monday, what day of the week was January 1, 1997?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', '  On February 5, 1998, it was Thursday. The day of the week on February 5, 1997, was', 4, 2),
('5b141f1e8399e', '5b142265b5d08', ' In a 500 m race, the ratio of the speeds of two participants A and B is 3: 4. A has a start of 140 m. Then, A wins by', 4, 3),
('5b141f1e8399e', '5b1422661d93f', ' A and B take part in a 100 m race. A runs at 5 km per hour. A gives B a start of 8 m and still beats him by 8 seconds. The speed of B is', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'In a game of 100 points. A can give B 20 points and C 28 points. How many points can B give C in a game of 100 points?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Three men A, B and C walk around a circle, 1760 meters in circumference, at the rates of 160 meters, 120 meters and 105 meters per minute respectively. If they all start together and walk in the same direction, when will they be first together again?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'In a 100 m race, A can give B a start of 10 m and can give C a start of 28 m. In the same race, B can give C a start of:', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'In a game of 80 points, A can give B 5 points and can give C 15 points. How many points B can give C in a game of 60?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'The tickets numbered from 1 to 20 are mixed up and then a ticket is drawn at random. What is the probability that the ticket has a number which is a multiple of 3 or 5?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'A man draws two cards together from a pack of 52 cards. What is the probability of both the cards being kings?', 4, 10),
('', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Aptitude Test - I', 3, 1, 10, '2022-04-27 16:57:02'),
('5b141f1e8399e', 'Aptitude Test - II', 3, 1, 10, '2022-04-27 16:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('pinky@gmail.com', 30, '2022-04-27 14:38:05'),
('priyanka@gmail.com', 22, '2018-06-03 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Swagatika Padhi', 'National Institute of Science and Technology, Berhampur', 'pinky@gmail.com', 'pinky'),
('Priyanka Pattnaik', 'National Institute of Science and Technology, Berhampur', 'priyanka@gmail.com', 'pinka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
