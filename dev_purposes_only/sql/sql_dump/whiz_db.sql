-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 07:43 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `additionalsettings`
--

CREATE TABLE `additionalsettings` (
  `user_id` int(11) NOT NULL,
  `is_pri_gen_details_visible` int(11) DEFAULT NULL,
  `is_pri_soc_details_visible` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `phone_number`, `user_role`) VALUES
(1, 'whizweblk@gmail.com', 114555544, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `adminoffersgovernmentcourse`
--

CREATE TABLE `adminoffersgovernmentcourse` (
  `admin_id` int(11) NOT NULL,
  `gov_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aladmissiblestreamsubject`
--

CREATE TABLE `aladmissiblestreamsubject` (
  `stream_sbj_id` int(11) NOT NULL,
  `sub1_id` int(11) NOT NULL,
  `sub2_id` int(11) NOT NULL,
  `sub3_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aladmissiblestreamsubjectselected`
--

CREATE TABLE `aladmissiblestreamsubjectselected` (
  `stu_id` int(11) NOT NULL,
  `stream_sbj_id` int(11) NOT NULL,
  `ol_sub1_id` int(11) NOT NULL,
  `ol_sub2_id` int(11) NOT NULL,
  `ol_sub3_id` int(11) NOT NULL,
  `ol_sub1_grade` char(1) NOT NULL,
  `ol_sub2_grade` char(1) NOT NULL,
  `ol_sub3_grade` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alqualifiedstudent`
--

CREATE TABLE `alqualifiedstudent` (
  `stu_id` int(11) NOT NULL,
  `al_school` varchar(255) NOT NULL,
  `stream` varchar(20) NOT NULL,
  `z_score` decimal(5,4) DEFAULT NULL,
  `al_district` varchar(100) NOT NULL,
  `al_general_test_grade` int(11) NOT NULL,
  `al_general_english_grade` char(1) NOT NULL,
  `al_sub1_id` int(11) NOT NULL,
  `al_sub1_grade` char(1) NOT NULL,
  `al_sub2_id` int(11) NOT NULL,
  `al_sub2_grade` char(1) NOT NULL,
  `al_sub3_id` int(11) NOT NULL,
  `al_sub3_grade` char(1) NOT NULL,
  `al_result_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alqualifiedstudent`
--

INSERT INTO `alqualifiedstudent` (`stu_id`, `al_school`, `stream`, `z_score`, `al_district`, `al_general_test_grade`, `al_general_english_grade`, `al_sub1_id`, `al_sub1_grade`, `al_sub2_id`, `al_sub2_grade`, `al_sub3_id`, `al_sub3_grade`, `al_result_file`) VALUES
(4, 'Ananda college', '4', '3.8258', 'Colombo', 50, 'A', 44, 'A', 45, 'A', 47, 'A', '1648319317_AL_res_sheet._gimantha.pdf'),
(5, 'Ananda College', '4', '3.9061', 'Colombo', 93, 'A', 44, 'A', 45, 'A', 47, 'A', '1648319537_AL_res_sheet_asela.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `alsubject`
--

CREATE TABLE `alsubject` (
  `al_sub_id` int(11) NOT NULL,
  `al_sub_name` varchar(255) NOT NULL,
  `al_stream_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alsubject`
--

INSERT INTO `alsubject` (`al_sub_id`, `al_sub_name`, `al_stream_id`) VALUES
(1, 'Arabic', 1),
(2, 'Art', 1),
(3, 'Bharatha Natayam', 1),
(4, 'Buddhism', 1),
(5, 'Buddhist Civilization', 1),
(6, 'Chinese', 1),
(7, 'Christian Civilization', 1),
(8, 'Christianity', 1),
(9, 'Communication and Media Studies', 1),
(10, 'Dance', 1),
(11, 'Economics', 1),
(12, 'English', 1),
(13, 'French', 1),
(14, 'Geography', 1),
(15, 'German', 1),
(16, 'Greek and Roman Civilization', 1),
(17, 'Hindi Language', 1),
(18, 'Hindu Civilization', 1),
(19, 'Hinduism', 1),
(20, 'History', 1),
(21, 'Home Economics', 1),
(22, 'Islam', 1),
(23, 'Islamic Civilization', 1),
(24, 'Japan Language', 1),
(25, 'Logic and Scientific Method', 1),
(26, 'Oriental Music', 1),
(27, 'Pali Language', 1),
(28, 'Political Science', 1),
(29, 'Russia', 1),
(30, 'Sanskrit', 1),
(31, 'Sinhala', 1),
(32, 'Tamil', 1),
(33, 'Western Music', 1),
(34, 'Accounting', 2),
(35, 'Business', 2),
(36, 'Statistics Business', 2),
(37, 'Studies Economics', 2),
(38, 'Agriculture', 3),
(39, 'Bio System Technology', 3),
(40, 'Biology', 3),
(41, 'Chemistry', 3),
(42, 'Physics', 3),
(43, 'Science for Technology', 3),
(44, 'Chemistry', 4),
(45, 'Combine Mathematics', 4),
(46, 'Higher Mathematics', 4),
(47, 'Physics', 4),
(48, 'Agro Technology', 5),
(49, 'Engineering Technology', 5),
(50, 'General Information Technology', 5),
(51, 'Information & Communication Technology', 5);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `session_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `session_fee`) VALUES
(16, '1000.00'),
(17, '2500.00'),
(18, '1200.00'),
(19, '2500.00'),
(20, '3000.00');

-- --------------------------------------------------------

--
-- Table structure for table `beginnerstudent`
--

CREATE TABLE `beginnerstudent` (
  `stu_id` int(11) NOT NULL,
  `school` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Ambalanthota'),
(2, 'Akmeemana'),
(3, 'Akuressa'),
(4, 'Ambalangoda'),
(5, 'Akurana'),
(6, 'Ambagamuwa'),
(7, 'Arachchikattuwa'),
(8, 'Agalawatta'),
(9, 'Alawwa'),
(10, 'Ayagama'),
(11, 'Ampara'),
(12, 'Attanagalla'),
(13, 'Angunakolapelessa'),
(14, 'Akkaraipattu'),
(15, 'Ambanganga Korale'),
(16, 'Benthota'),
(17, 'Buttala'),
(18, 'Beliatta'),
(19, 'Bope-Poddala'),
(20, 'Beruwala'),
(21, 'Bandarawela'),
(22, 'Baddegama'),
(23, 'Balapitiya'),
(24, 'Bentota'),
(25, 'Badulla'),
(26, 'Bandaragama'),
(27, 'Balangoda'),
(28, 'Biyagama'),
(29, 'Bibile'),
(30, 'Colombo'),
(31, 'Chilaw'),
(32, 'Dankotuwa'),
(33, 'Dimbulagala'),
(34, 'Doluwa'),
(35, 'Divulapitiya'),
(36, 'Dambulla'),
(37, 'Dodangoda'),
(38, 'Devinuwara'),
(39, 'Dickwella'),
(40, 'Delthota'),
(41, 'Deraniyagala'),
(42, 'Dehiattakandiya'),
(43, 'Dompe'),
(44, 'Delft'),
(45, 'Dehiovita'),
(46, 'Embilipitiya'),
(47, 'Eravur Town'),
(48, 'Ella'),
(49, 'Eravur Pattu'),
(50, 'Elpitiya'),
(51, 'Eheliyagoda'),
(52, 'Galgamuwa'),
(53, 'Galle'),
(54, 'Galewela'),
(55, 'Gampaha'),
(56, 'Godakawela'),
(57, 'Galigamuwa'),
(58, 'Harispattuwa'),
(59, 'Hatharaliyadda'),
(60, 'Hikkaduwa'),
(61, 'Hali-Ela'),
(62, 'Haputale'),
(63, 'Hingurakgoda'),
(64, 'Haldummulla'),
(65, 'Hambantota'),
(66, 'Habaraduwa'),
(67, 'Hanguranketha'),
(68, 'Horana'),
(69, 'Homagama'),
(70, 'Hanwella'),
(71, 'Imaduwa'),
(72, 'Ipalogama'),
(73, 'Imbulpe'),
(74, 'Ibbagamuwa'),
(75, 'Ingiriya'),
(76, 'Jaffna'),
(77, 'Ja-Ela'),
(78, 'Katunayake'),
(79, 'Kalutara'),
(80, 'Kaduwela'),
(81, 'Kotapola'),
(82, 'Kuchchaveli'),
(83, 'Kesbewa'),
(84, 'Koralai Pattu(Valachchenai)'),
(85, 'Kekirawa'),
(86, 'Kuruwita'),
(87, 'Kalpitiya'),
(88, 'Kelaniya'),
(89, 'Kothmale'),
(90, 'Kundasale'),
(91, 'Kataragama'),
(92, 'Kandy'),
(93, 'Kamburupitiya'),
(94, 'Kegalle'),
(95, 'Kolonna'),
(96, 'Kurunegala'),
(97, 'Kalawana'),
(98, 'Kahawatta'),
(99, 'Kobeigane'),
(100, 'Kiriella'),
(101, 'Kuliyapitiya'),
(102, 'Kolonnawa'),
(103, 'Kinniya'),
(104, 'Katuwana'),
(105, 'Karandeniya'),
(106, 'Karachchi'),
(107, 'Karuwalagaswewa'),
(108, 'Lankapura'),
(109, 'Lunugamvehera'),
(110, 'Lahugala'),
(111, 'Laggala-Pallegama'),
(112, 'Lunugala'),
(113, 'Mount Lavinia'),
(114, 'Mathugama'),
(115, 'Mahiyanganaya'),
(116, 'Mannar'),
(117, 'Maharagama'),
(118, 'Millaniya'),
(119, 'Matale'),
(120, 'Mihinthale'),
(121, 'Mulatiyana'),
(122, 'Medadumbara'),
(123, 'Mawathagama'),
(124, 'Mahara'),
(125, 'Moratuwa'),
(126, 'Minipe'),
(127, 'Mawanella'),
(128, 'Matara'),
(129, 'Minuwangoda'),
(130, 'Mahawewa'),
(131, 'Mahakumbukkadawala'),
(132, 'Mirigama'),
(133, 'Maspotha'),
(134, 'Monaragala'),
(135, 'Madulla'),
(136, 'Mahawa'),
(137, 'Medawachchiya'),
(138, 'Mundalama'),
(139, 'Mirissa'),
(140, 'Madurawala'),
(141, 'Mallawapitiya'),
(142, 'Medagama'),
(143, 'Meegahakivula'),
(144, 'Nivithigala'),
(145, 'Nochchiyagama'),
(146, 'Nallur'),
(147, 'Nachchadoowa'),
(148, 'Naula'),
(149, 'Nanaddan'),
(150, 'Nagoda'),
(151, 'Negombo'),
(152, 'Nuwara Eliya'),
(153, 'Nikaweratiya'),
(154, 'Ninthavur'),
(155, 'Nattandiya'),
(156, 'Niyagama'),
(157, 'Opanayake'),
(158, 'Passara'),
(159, 'Palugaswewa'),
(160, 'Pathahewaheta'),
(161, 'Pasbage'),
(162, 'Poojapitiya'),
(163, 'Polpithigama'),
(164, 'Panvila'),
(165, 'Pathadumbara'),
(166, 'Padukka'),
(167, 'Padukka'),
(168, 'Puttalam'),
(169, 'Panadura'),
(170, 'Pothuvil'),
(171, 'Pallepola'),
(172, 'Pelmadulla'),
(173, 'Pitabeddara'),
(174, 'Palindanuwara'),
(175, 'Pannala'),
(176, 'Panduwasnuwara'),
(177, 'Payagala'),
(178, 'Polgahawela'),
(179, 'Pachchilaipalli'),
(180, 'Rambukkana'),
(181, 'Rambewewa'),
(182, 'Ratnapura'),
(183, 'Ruwanwella'),
(184, 'Rattota'),
(185, 'Rideegama'),
(186, 'Sri Jayawardenepura Kotte'),
(187, 'Sevanagala'),
(188, 'Sigiriya'),
(189, 'Sooriyawewa'),
(190, 'Siyabalanduwa'),
(191, 'Sainthamaruthu'),
(192, 'Samanthurai'),
(193, 'Tangalle'),
(194, 'Thissamaharama'),
(195, 'Thumpane'),
(196, 'Thambuttegama'),
(197, 'Thirappane'),
(198, 'Thihagoda'),
(199, 'Thanamalvila'),
(200, 'Thamankaduwa'),
(201, 'Tricomalee'),
(202, 'Thawalama'),
(203, 'Thalawa'),
(204, 'Ukuwela'),
(205, 'Udubaddawa'),
(206, 'Udapalatha'),
(207, 'Uva Paranagama'),
(208, 'Udunuwara'),
(209, 'Unawatuna'),
(210, 'Udadumbara'),
(211, 'Uhana'),
(212, 'Valikamam South-West'),
(213, 'Valikamam South'),
(214, 'Valikamam East'),
(215, 'Valikamam West'),
(216, 'Vanathavilluwa'),
(217, 'Vavuniya'),
(218, 'Valikamam North'),
(219, 'Vadamaradchy'),
(220, 'Welikanda'),
(221, 'Weligama'),
(222, 'Welipitiya'),
(223, 'Wennappuwa'),
(224, 'Walallawita'),
(225, 'Wellawaya'),
(226, 'Welivitiya'),
(227, 'Welimada'),
(228, 'Walapane'),
(229, 'Wattala'),
(230, 'Weeraketiya'),
(231, 'Wariyapola'),
(232, 'Wilgamuwa'),
(233, 'Yakkalamulla'),
(234, 'Yatinuwara'),
(235, 'Yatiyantota'),
(236, 'Yatawatta');

-- --------------------------------------------------------

--
-- Table structure for table `commentinteractions`
--

CREATE TABLE `commentinteractions` (
  `comment_interaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `comment_interaction` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commentinteractions`
--

INSERT INTO `commentinteractions` (`comment_interaction_id`, `user_id`, `comment_id`, `comment_interaction`) VALUES
(1, 2, 1, 'liked'),
(2, 2, 2, 'liked'),
(3, 2, 3, 'liked'),
(4, 2, 4, 'liked'),
(5, 3, 5, 'liked'),
(6, 3, 1, 'liked'),
(7, 3, 7, 'liked'),
(8, 3, 8, 'liked'),
(9, 3, 2, 'liked'),
(10, 4, 11, 'liked'),
(11, 4, 4, 'liked'),
(12, 4, 13, 'liked'),
(13, 4, 14, 'liked'),
(14, 6, 5, 'liked');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `ups` int(11) DEFAULT NULL,
  `downs` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `content`, `ups`, `downs`, `created_at`) VALUES
(1, 4, 2, 'Is this course good for a student whos interested in Quantity surveying?', 2, 0, '2022-03-27 09:25:43'),
(2, 20, 2, 'Seems interesting? are there anybody whos going to this session', 2, 0, '2022-03-27 09:27:47'),
(3, 14, 2, 'Architect is interesting. This is related to my dream career as well. : )', 1, 0, '2022-03-27 09:28:33'),
(4, 15, 2, 'What sort of programming languages are best?', 2, 0, '2022-03-27 09:29:02'),
(5, 5, 3, 'I am interested in Engineering.', 2, 0, '2022-03-27 09:37:21'),
(6, 4, 3, 'Interesting...', 0, 0, '2022-03-27 09:37:40'),
(7, 3, 3, 'WOW this seems to be cool? How long is this course going to be held?', 1, 0, '2022-03-27 09:38:16'),
(8, 1, 3, 'UCSC is the best so far i guess', 1, 0, '2022-03-27 09:40:19'),
(9, 11, 3, 'I am interested in front end. Is this going to be helpful for me?', 0, 0, '2022-03-27 09:41:52'),
(10, 2, 4, 'Amazing course. Currently following it.', 0, 0, '2022-03-27 09:48:20'),
(11, 15, 4, 'Not quite interested. But seems to be cool.', 1, 0, '2022-03-27 09:48:52'),
(12, 12, 4, 'This seems to be interesting', 0, 0, '2022-03-27 09:52:03'),
(13, 23, 4, 'SE is always amazing. However it has some difficult parts as well. ', 1, 0, '2022-03-27 09:54:48'),
(14, 22, 4, 'Coooool', 1, 0, '2022-03-27 09:55:19'),
(15, 20, 5, 'Currently following it.', 0, 0, '2022-03-27 09:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `views` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`thread_id`, `user_id`, `title`, `body`, `views`, `created_at`) VALUES
(1, 2, 'What is quantity surveying and who does quantity surveying?', 'What is the importance and purpose of quantity surveying and costing in construction work? Does anybody help me?', 5, '2022-03-27 09:35:34'),
(2, 3, 'Does anyboby know how to fill that courses table when we are applying for Universities?', 'I am so confused with course selections. What are the best courses for a student who&#39;s interested in engineering? Some says moratuwa is the best. Others says go to a foreign university. Does anybody know the pros and cons of those stuffs?', 1, '2022-03-27 09:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `communitycommentinteractions`
--

CREATE TABLE `communitycommentinteractions` (
  `comment_interaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `comment_interaction` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `communitycommentinteractions`
--

INSERT INTO `communitycommentinteractions` (`comment_interaction_id`, `user_id`, `comment_id`, `comment_interaction`) VALUES
(1, 3, 1, 'liked'),
(2, 4, 1, 'liked'),
(3, 4, 2, 'liked'),
(4, 4, 3, 'liked');

-- --------------------------------------------------------

--
-- Table structure for table `communitycomments`
--

CREATE TABLE `communitycomments` (
  `comment_id` int(11) NOT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `ups` int(11) DEFAULT NULL,
  `downs` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `communitycomments`
--

INSERT INTO `communitycomments` (`comment_id`, `thread_id`, `user_id`, `content`, `ups`, `downs`, `created_at`) VALUES
(1, 1, 3, 'In my observation over the years, the young quantity surveyors put their eyes on money rather than the requisite practical experience on the field. This is a very wrong notion, a misplaced order and the worst idea. If things must work well, this situation must be reversed because this profession requires lots of practical experience if they must excel .  The second mistake is not to have mentorship from the experienced ones. This is absolutely important.  The 3rd mistake is not trying to understand the position of the other quantity surveyors’ points of view before forming their judgement. The thinking of a consultant surveyor is different from that of a contractor\'s quantity surveyor.  4th mistake is not continually having personal development through organised seminars.  The last but not the least is not socializing. This is where contacts are made….if you like call it a form of Marketing.', 2, 0, '2022-03-27 09:43:53'),
(2, 1, 4, 'Most times they questions depend on the client, However, below stated points can be a guide  1.pls explain yourself.(2) what is the work of a QS? 3. what can you do as a QS?  4.which project were you involved in and what was your role in the project?', 1, 0, '2022-03-27 09:55:56'),
(3, 2, 4, 'You can check that from Whiz course page', 1, 0, '2022-03-27 09:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `current_emplyee_amount` int(11) NOT NULL,
  `company_size` int(11) NOT NULL,
  `registered` varchar(3) NOT NULL,
  `overview` varchar(255) NOT NULL,
  `services` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `current_emplyee_amount`, `company_size`, `registered`, `overview`, `services`) VALUES
(7, 200, 1000, 'Yes', 'We are one of the leading IT company in the island', 'Web development, Industrial Computer system design, Network administation');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaintsender_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `sent_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `connection_id` int(11) NOT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`connection_id`, `from_user_id`, `to_user_id`) VALUES
(1, 2, 3),
(2, 2, 4),
(3, 2, 5),
(4, 3, 6),
(5, 3, 2),
(6, 3, 5),
(7, 3, 8),
(8, 8, 2),
(9, 8, 3),
(10, 8, 4),
(11, 8, 5),
(12, 9, 8),
(13, 9, 5),
(14, 4, 8),
(15, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `cv_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cv_file_name` varchar(255) DEFAULT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cvsenttoapost`
--

CREATE TABLE `cvsenttoapost` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`) VALUES
(1, 'Colombo'),
(2, 'Gampaha'),
(3, 'Kalutara'),
(4, 'Kandy'),
(5, 'Matale'),
(6, 'Nuwara Eliya'),
(7, 'Galle'),
(8, 'Matara'),
(9, 'Hambanthota'),
(10, 'Jaffna'),
(11, 'Mannar'),
(12, 'Vauniya'),
(13, 'Mulathivu'),
(14, 'Kilinochchi'),
(15, 'Batticaloa'),
(16, 'Ampara'),
(17, 'Trincomalee'),
(18, 'Kurunegala'),
(19, 'Puttalam'),
(20, 'Anuradhapura'),
(21, 'Polonnaruwa'),
(22, 'Badulla'),
(23, 'Monaragala'),
(24, 'Rathnapura'),
(25, 'Kegalle'),
(26, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `govermentuniversity`
--

CREATE TABLE `govermentuniversity` (
  `gov_uni_id` int(11) NOT NULL,
  `uni_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `world_rank` int(11) DEFAULT NULL,
  `student_amount` int(11) DEFAULT NULL,
  `graduate_job_rate` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `bg_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `govermentuniversity`
--

INSERT INTO `govermentuniversity` (`gov_uni_id`, `uni_name`, `description`, `world_rank`, `student_amount`, `graduate_job_rate`, `logo`, `bg_img`) VALUES
(1, 'University of Colombo', 'The University of Colombo (informally Colombo University or UoC) is a public research university located primarily in Colombo, Sri Lanka. It is the oldest institution of modern higher education in Sri Lanka.', 1634, 37636, 9, 'university_of_colombo_logo.png', 'university_of_colombo_bg.jpg'),
(2, 'University of Peradeniya', 'The University of Peradeniya (Sinhala: පේරාදෙණිය විශ්වවිද්‍යාලය, Tamil: பேராதனைப் பல்கலைக்கழகம்) is a public university in Sri Lanka, funded by the University Grants Commission.', 2030, 11065, 9, 'university_of_peradeniya_logo.png', 'university_of_peradeniya_bg.jpg'),
(3, 'University of Sri Jayawardenepura', 'The University of Sri Jayewardenepura has a long history dating back to 1873 when the Vidyodaya Pirivena was established by the erudite monk Venerable Ven. Hikkaduwe Sri Sumangala Thero who established the pirivena as a center for Oriental learning.', 2166, 13000, 9, 'university_of_sri_jayaawardhanapura_logo.png', 'university_of_sri_jayaawardhanapura_bg.jpg'),
(4, 'University of Kelaniya', 'The University of Kelaniya is a public university in Sri Lanka. Just outside the municipal limits of Colombo, in the city of Kelaniya, the university has two major campuses, seven locations, six faculties and four institutions.', 3015, 11143, 9, 'university_of_kelaniya_logo.png', 'university_of_kelaniya_bg.jpg'),
(5, 'University of Moratuwa', 'The University of Moratuwa is a public university in Sri Lanka. It is located on the bank of the Bolgoda Lake in Katubedda, Moratuwa.', 2863, 10654, 9, 'university_of_moratuwa_logo.png', 'university_of_moratuwa_bg.jpg'),
(6, 'University of Jaffna', 'The University of Jaffna is a public university in the city of Jaffna in Sri Lanka. Established in 1974 as the sixth campus of the University of Sri Lanka, it became an independent, autonomous university in 1979. UoJ has two campuses — the main campus in ', 3897, 7972, 9, 'university_of_jaffna_logo.png', 'university_of_jaffna_bg.png'),
(7, 'University of Ruhuna', 'The University of Ruhuna is a public university in Matara, Sri Lanka. It is the only university in the southern region of Sri Lanka. It was established by a Special Presidential Decree on 1 September 1978 as Ruhuna University College and upgraded to a ful', 2291, 11000, 9, 'university_of_ruhuna_logo.png', 'university_of_ruhuna_bg.jpg'),
(8, 'Eastern University, Sri Lanka', 'The Eastern University, Sri Lanka is a public university in Vantharumoolai, Eastern Province, Sri Lanka. It was established on 1 October 1986. The university was preceded by the Batticaloa University College established on 1 August 1981 which was started ', 5533, 11000, 9, 'esatern_university_logo.png', 'esatern_university_bg.jpg'),
(9, 'South Eastern University of Sri Lanka ', 'The South Eastern University of Sri Lanka is a public university in Oluvil in Sri Lanka. Established in 1995 as a university college, it became a full-fledged university in 1996. The campus is in Oluvil near Oluvil Harbour. It also has faculty in Sammanth', 7941, 2237, 9, 'south_esatern_university_logo.png', 'south_esatern_university_bg.jpg'),
(10, 'Rajarata University of Sri Lanka ', 'Rajarata University of Sri Lanka is a public university located in the historic city of Mihintale, near Anuradhapura, Sri Lanka. The Rajarata University of Sri Lanka was established as the eleventh University in Sri Lanka and was opened on 31 January 1996', 3509, 4000, 9, 'rajarata_university_logo.png', 'rajarata_university_bg.jpg'),
(11, 'Sabaragamuwa University of Sri Lanka', 'The Sabaragamuwa University of Sri Lanka is a public university in Belihuloya, Balangoda, Sri Lanka. It was founded on 20 November 1991 and consists of Eight faculties.', 4775, 14250, 9, 'sabaragamuwa_university_logo.png', 'sabaragamuwa_university_bg.jpg'),
(12, 'Wayamba University of Sri Lanka', 'The Wayamba University of Sri Lanka is headquartered at Kuliyapitiya, Sri Lanka. Its six faculties are in Makandura and Kuliyapitiya. The Faculty of Applied Sciences, Faculty of Business Studies, Finance and Faculty of Technology and Faculty of Medicine w', 4517, 4423, 9, 'wayamba_university_logo.png', 'wayamba_university_logo.jpg'),
(13, 'Uva Wellassa University of Sri Lanka', 'Uva Wellassa University is a Sri Lankan national university. The university was established by government gazette effective 1 June 2005 in Badulla, Sri Lanka as the 14th national university of Sri Lanka. President Chandrika Kumaratunga established the uni', 7796, 2503, 9, 'uva_wellassa_university_logo.png', 'uva_wellassa_university_bg.jpg'),
(14, 'University of the Visual & Performing Arts', 'Sri Lanka is an island nation with a distinctive history of painting and sculpture that dates back to  the 3rd century BC. Historically, painting and sculpture education and practices in Sri Lanka were grounded in the Buddhist philosophy and related ritua', 17040, 330, 9, 'university_of_the_visual_&_performing_arts.png', 'university_of_the_visual_&_performing_arts_bg.jpg'),
(15, 'Sripalee Campus, University of Colombo', 'The Sri Palee Campus of the University of Colombo is located in Wewala, Horana, Sri Lanka. Established in 1996 it conducts undergraduate and postgraduate courses in the fields of performing arts and mass media.', 1634, 619, 9, 'sri_palee_campus_logo.png', 'sri_palee_campus_bg.jpg'),
(16, 'Trincomalee Campus, Eastern University, Sri Lanka', 'Trincomalee campus has educated talented youth from diverse backgrounds and transformed them to high-quality professionals, academics and leaders. The efforts of my predecessor rectors, fully supported by councils, staff, students and society have elevate', 5533, -1, -1, 'trincomalee_campus_logo.png', 'trincomalee_campus_bg.jpg'),
(17, 'Vavuniya Campus, University of Jaffna', 'Situated in the land that was once part of the kingdom of the legendary Vanni Kings, the University of Vavuniya is a higher seat of learning and research in this region, which provides higher education in the fields of Applied Science ,Business Management', 3897, 1500, 9, 'vavuniya_campus_logo.png', 'vavuniya_campus_logo.jpg'),
(18, 'Institute of Indigenous Medicine, University of Colombo', 'The Institute of Indigenous Medicine is an affiliated institute of the University of Colombo, specialising in Ayurveda and the Sri Lankan traditional medicine. Founded as the College of Indigenous Medicine in 1929, it became part of the University of Colo', 1634, -1, 9, 'institute_of_indigenous_medicine_logo.png', 'institute_of_ndigenous_medicine_bg.jpg'),
(19, 'Gampaha Wickramaarachchi Ayurveda Institute, University of Colombo', 'he Gampaha Wickramarachchi University of Indigenous Medicine, is a public university located in Yakkala, Sri Lanka. It was established by Ayurveda Cakrawarti Pandit G.P.', 1634, 398, 9, 'gampaha_wickramarachchi_university_of_indigenous_medicine_logo.png', 'gampaha_wickramarachchi_university_of_indigenous_medicine_bg.jpg'),
(20, 'University of Colombo School of Computing', 'The University of Colombo, founded in 1921, is Sri Lanka’s oldest Higher Education Institution. In keeping with its motto बुद्धिः शर्वत्र भ्रजते (Buddhi Sarvathra Bhrajate), translated from Sanskrit as “Wisdom Enlightens”, the University of Colombo contin', 1634, 1000, 9, 'university_of_colombo_school_of_computing_logo.png', 'university_of_colombo_school_of_computing_bg.jpg'),
(21, 'Swami Vipulananda Institure of Aesthetic Studies, Eastern University, Sri Lanka', 'he Batticaloa University College was established on 1 of August 1981 to fill a long felt need for the development of a Higher Educational Institution in the Eastern Province, Sri Lanka. This College began with two faculties: the Faculty of Science and the', 5533, -1, 9, 'swami_vipulananda_institure_of_aesthetic_studies_logo.png', 'swami_vipulananda_institure_of_aesthetic_studies_bg.jpg'),
(22, 'Ramanathan Academy of Fine Arts, University of Jaffna', 'The Ramanathan Academy of Fine Arts is a school of fine art and a division of the University of Jaffna in northern Sri Lanka.', 3897, -1, 9, 'ramanathan_academy_of_fine_arts_logo.png', 'ramanathan_academy_of_fine_arts_bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `govermentuniversityrankings`
--

CREATE TABLE `govermentuniversityrankings` (
  `gov_uni_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `world_ranking` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `governmentcourse`
--

CREATE TABLE `governmentcourse` (
  `gov_course_id` int(11) NOT NULL,
  `gov_course_name` varchar(255) NOT NULL,
  `stream_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `governmentcourse`
--

INSERT INTO `governmentcourse` (`gov_course_id`, `gov_course_name`, `stream_id`) VALUES
(1, 'Medicine', 3),
(2, 'Dental Surgery', 3),
(3, 'Veterinary Science', 3),
(4, 'Agriculture', 3),
(5, 'Food Science & Nutrition', 3),
(6, 'Biological Science', 3),
(7, 'Applied Sciences(Biological Science)', 3),
(8, 'Engineering', 4),
(9, 'Engineering(EM)', 4),
(10, 'Engineering(TM)', 4),
(11, 'Quantity Surveying', 7),
(12, 'Computer Science', 4),
(13, 'Physical Science', 4),
(14, 'Surveying Science', 7),
(15, 'Applied Sciences(Physical Science)', 4),
(16, 'Management', 2),
(17, 'Estate Management & Valuation', 2),
(18, 'Commerce', 2),
(19, 'Arts', 1),
(20, 'Arts(SP) - Mass Media', 1),
(21, 'Arts(SAB)', 1),
(22, 'Management Studies(TV)', 2),
(23, 'Architecture', 7),
(24, 'Design', 7),
(25, 'Law', 7),
(26, 'Information Technology(IT)', 7),
(27, 'Management and Information Technology(MIT)', 7),
(28, 'Management(Public) Special', 2),
(29, 'Communication Studies', 1),
(30, 'Town & Country Planning', 7),
(31, 'Peace and Conflict Resolution', 1),
(32, 'Ayurvedic Medicine and Surgery', 3),
(33, 'Unani Medicine and Surgery', 3),
(34, 'Fashion Design & Product Development', 7),
(35, 'Food Science & Technology', 3),
(36, 'Siddha Medicine & Surgery', 3),
(37, 'Nursing', 3),
(38, 'Information and Communication Technology(ICT)', 7),
(39, 'Agricultural Technology & Management', 3),
(41, 'Arts(SP) - Performing Arts', 1),
(50, 'Health Promotion', 3),
(51, 'Pharmacy', 3),
(52, 'Medical Laboratory Sciences', 3),
(53, 'Radiography', 3),
(54, 'Physiotherapy', 3),
(55, 'Environmental Conversation & Management', 3),
(56, 'Facilities Management', 7),
(57, 'Transport & Logistics Management', 4),
(58, 'Molecular Biology & Biochemistry', 3),
(59, 'Industrial Statistics & Mathematical Finance', 4),
(60, 'Statistics & Operations Research', 4),
(61, 'Computation & Management', 2),
(62, 'Fisheries & Marine Sciences', 3),
(63, 'Islamic Studies', 1),
(64, 'Science and Technology', 7),
(65, 'Computer Science & Technology', 7),
(66, 'Entrepreneuship & Management', 7),
(67, 'Animal Science', 3),
(68, 'Music', 1),
(69, 'Dance', 1),
(70, 'Art & Design', 1),
(71, 'Drama & Theatre', 1),
(72, 'Visual & Technological Arts', 1),
(73, 'Export Agriculture', 3),
(74, 'Tea Technology & Value Addition', 7),
(75, 'Industrial Information Technology', 7),
(76, 'Mineral Resources and Technology', 7),
(77, 'Business Information Systems(Special)(BIS)', 2),
(79, 'Management and Information Technology(SEUSL)', 7),
(80, 'Computing & Information Systems', 2),
(81, 'Physical Education', 7),
(82, 'Sports Science & Management', 7),
(83, 'Speech ad Hearing Sciences', 7),
(84, 'Arabic Language', 1),
(85, 'Visual Arts', 1),
(86, 'Animal Science & Fisheries', 3),
(87, 'Food Production & Technology Management', 3),
(88, 'Aquatic Resources Technology', 3),
(89, 'Palm and Latex Technology & Value Addition', 7),
(90, 'Hospitiality, Tourism and Events Management', 7),
(91, 'Information Technology & Management', 7),
(92, 'Tourism & Hospitality Management', 7),
(93, 'Agricultural Resource Management & Technology', 3),
(94, 'Agribusiness Management', 3),
(95, 'Green Technology', 3),
(96, 'Information Systems', 7),
(97, 'Landscape Architecture', 7),
(98, 'Translation Studies', 7),
(99, 'Software Engineering', 7),
(100, 'Film & Television Studies', 7),
(101, 'Project Management', 7),
(102, 'Engineering Technology(ET)', 5),
(103, 'Biosystems Technology(BST)', 6),
(104, 'Information Communication Technology', 6),
(105, 'Teaching English as a Second Language(TESL)', 1),
(106, 'Marine and Freshwater Sciences', 7),
(107, 'Food Business Management', 7),
(108, 'Physical Science - ICT', 4),
(109, 'Business Science', 7),
(110, 'Financial Engineering', 7),
(111, 'Geographical Information Science', 7),
(112, 'Social Work', 1),
(113, 'Financial Mathematics and Industrial Statistics', 7),
(114, 'Human Resource Development', 7),
(115, 'Arts - Information Technology', 1),
(116, 'Accounting Information Systems', 2),
(117, 'Ocuupational Therapy', 3),
(118, 'Optometry', 3),
(119, 'Applied Chemistry', 3),
(120, 'Indigenous Medicinal Resources', 3),
(121, 'Aquatic Bioresources', 3),
(122, 'Urban Bioresources', 3),
(123, 'Computing & Information Systems', 4),
(124, 'Artificial Intelligence', 4),
(125, 'Electronics and Computer Science', 4),
(126, 'Health Information and Communication Technology', 7),
(127, 'Health Tourism and Hospitality Management', 7),
(128, 'Biomedical Technology', 7),
(129, 'Indigenous Pharmaceutical Technology', 7),
(130, 'Yoga and Parapsychology', 7),
(131, 'Social studeis in Indigenous Knowledge', 7);

-- --------------------------------------------------------

--
-- Table structure for table `governmentcourseminimumeligibilityrequsingalsubjects`
--

CREATE TABLE `governmentcourseminimumeligibilityrequsingalsubjects` (
  `min_req_id` int(11) NOT NULL,
  `gov_course_id` int(11) NOT NULL,
  `al_sub1_id` int(11) NOT NULL,
  `minimum_al_sub1_grade` char(1) NOT NULL,
  `al_sub2_id` int(11) NOT NULL,
  `minimum_al_sub2_grade` char(1) NOT NULL,
  `al_sub3_id` int(11) NOT NULL,
  `minimum_al_sub3_grade` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `governmentcourseofferedbygovermentuniversity`
--

CREATE TABLE `governmentcourseofferedbygovermentuniversity` (
  `id` int(11) NOT NULL,
  `gov_course_id` int(11) NOT NULL,
  `gov_uni_id` int(11) NOT NULL,
  `purposed_intake` int(11) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `unicode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `governmentcourseofferedbygovermentuniversity`
--

INSERT INTO `governmentcourseofferedbygovermentuniversity` (`id`, `gov_course_id`, `gov_uni_id`, `purposed_intake`, `duration`, `description`, `unicode`) VALUES
(1, 19, 1, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019A'),
(2, 19, 4, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019D'),
(3, 19, 3, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019C'),
(4, 19, 7, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019F'),
(5, 19, 2, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019B'),
(6, 19, 6, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019E'),
(7, 19, 8, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019H'),
(8, 19, 9, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019J'),
(9, 19, 10, 6985, 4, ' To be eligible for admission to a course of study in Arts, candidates must have obtained at least ‘S’ grades for three subjects considered.  As there are many subjects in the Arts stream for the G.C.E. (Advanced Level) Examination, subjects are classified under four baskets.  Students should have obtained passes in three subjects at the G.C.E. (Advanced Level) Examination from the following baskets. Basket 01- Social Sciences / Applied Social Studies: 1. Economics 2. Geography 3. History 4. Home Economics 5. Agricultural Science / Mathematics / Combined Mathematics 6. Communication & Media Studies 7. Information & Communication Technology 8. Accounting / Business Statistics 9. Political Science 10. Logic & Scientific Method 11. One subject from Technological Subjects :  Civil Technology  Electrical, Electronic and Information Technology  Agro Technology  Mechanical Technology  Food Technology  Bio-Resource Technology Guidance for selection of subjects from basket 01:  Students should select at least one subject from this basket.  Students can also select all three subjects only from basket 01. There are three exceptions to this rule. These are; 1. Students selecting three National Languages; Sinhala, Tamil and English from the basket 04 (Language Basket) as the three subjects, need not to select any subject from basket 01. 2. Students selecting a combination of National and Classical languages need not to select any subject from basket 01.National Languages are; Sinhala Tamil English Classical Languages are; Arabic Pali Sanskrit For example, students can select three subjects like Sinhala, Pali and Sanskrit etc. These students need not to select any subject from basket 01. However, no candidate can select three classical languages as three subjects. They can select a maximum of two classical languages only. 3. Students selecting two languages from the basket 04 and the third subject from Religions and Civilizations or Aesthetic subject classified under basket 02 and 03 given below need not to select any subject from basket 01. Basket 02 - Religions and Civilizations: 1. Buddhism 2. Hinduism 3. Christianity 4. Islam 5. Buddhist Civilization 6. Hindu Civilization 7. Christian Civilization 8. Islamic Civilization 9. Greek & Roman Civilization Guidance for selection of subjects from basket 02:  A candidate can select maximum of two subjects from the basket 02.  However, if a religion (Eg: Buddhism) is selected as a subject, the related civilization of the selected religion (Eg: Buddhist Civilization) cannot be offered as another subject from this basket. Basket 03- Aesthetic Studies: Aesthetic subjects consists of four subject areas. These are; 1. Art 2. Dancing 3. Music 4. Drama & Theatre This can be further sub-classified as; 1. Art 2. Dancing a. Sinhala b. Baratha3. Music a. Oriental b. Carnatic c. Western 4.Drama & Theatre a. Sinhala b. Tamil c. English Guidance for selection of subjects from basket 03:  Students can select two subjects out of above four subject areas. However, no student is allowed to select the two subjects from one subject area. Basket 04 - Languages: The language basket has three subject areas. These are;  National Languages  Classical Languages  Foreign Languages National Languages are:  Sinhala  Tamil  English Classical Languages are:  Arabic  Pali  Sanskrit Foreign Languages are:  Chinese  French  German  Hindi  Japanese  Malay  Russian Guidance for selection of subjects from basket 04:  Students are allowed to select a maximum of two subjects from this basket. For example, when selecting the three subjects, students can select Chinese and French from basket 04 and the other subject from another basket.', '019K'),
(10, 20, 15, 110, 4, 'Under this course of study, two degree programmes are offered. These are; 1. B.A. Honours Degree in Performing Arts 2. B.A. Honours Degree in Mass Media Durations of both degree programmes are 04 years. The required three Advanced Level subjects and the special requirements needed to get selected for these two degree programmes are given in next page.Three subjects should have offered at the G.C.E. (Advanced Level) Examination from Arts stream, subject to the following conditions. 1. Not more than two Languages 2. Not more than one subject from Religions and Civilizations basket 3. Not more than one Technological subject 4. Not more than one of the following subjects  Accounting  Business Statistics  Economics Moreover, there are two special requirements to be fulfilled. These are; 1. To have a minimum of an ordinary pass (S) in English at the G.C.E. (Ordinary Level) Examination. Candidates are required to submit the duly certified copy of the original G.C.E. (Ordinary Level) certificate along with the application. Candidates are kindly reminded that failure to submit the above evidence may result in the rejection of the application for the above course of study. 2. To have a pass in the Aptitude Test conducted by the Sripalee Campus of the University of Colombo. The Sripalee Campus of the University of Colombo will publish a press notice calling for applications to sit the Aptitude Test. Aptitude Test may consist of either an Interview, Practical Test or a Written Test or all three components as decided by the Sripalee Campus. Candidates may contact the Senior Assistant Registrar of the Sripalee Campus, Horana if they wish to obtain further details.', '020S'),
(11, 21, 11, 309, 3, 'Students who have satisfied the minimum requirements for admission in Arts stream or Commerce stream are eligible to seek admission for this programme. The two degree programmes offered are: 1. Bachelor of Arts (Honours) - Duration four years 2. Bachelor of Arts - Duration three years Selection of students to the four year honours degree is based on the performance of them in the first year. The main subjects offered under these two degree programmes are given below. 1. Economics - (English & Sinhala medium) 2. Statistics - (English & Sinhala medium) 3. Geography - (English & Sinhala medium) 4. Sociology - (English & Sinhala medium) 5. Political Science - (English & Sinhala medium) 6. Sinhala 7. Tamil 8. English 9. Japanese 10. Hindi 11. Chinese 12. German 13. Information & Communication Technology (ICT) - (Only in English medium).The basis of selection of students: As the opportunities are made available to both Arts and Commerce stream students to seek admissions to this course of study, of the total number of seats available (309), 55% is allocated from the Arts stream and balance is allocated from the Commerce stream.', '021L'),
(12, 29, 16, 200, 3, 'Under this course of study, the Trincomalee campus offers two degree programmes. They are; 1. B.A. (Communication Studies) 2. B.A. (Languages) Students admitted to a three year degree programme may proceed to fourth year if they so desire and satisfy the requirements of the university. In the fourth year, students will be offered extra modules of courses relevant to the areas of specialization as determined by the Faculty and Senate of the University. Selection criteria for this course of study are very flexible. That is, any student who have satisfied the minimum requirements for university admission [minimum of Simple (S) passes in three subjects and 30% or more for the Common General Paper] in G.C.E. (Advanced Level) Examination are eligible but one of the three subjects must have a Credit (C) pass in Sinhala, Tamil or English. However, because the medium of instructions of this course of study is English, to be eligible, the student also must have obtained at least a Credit (C) pass in English at the G.C.E. (Ordinary Level) Examination. Candidates are required to submit the duly certified copy of the original G.C.E (Ordinary Level) certificate along with the application. Candidates are kindly reminded that failure to submit the above evidence may result in the rejection of the application for the course of study in Communication Studies. The Trincomalee campus will decide the maximum number of students allocated to one degree programme in accordance with the criteria determined by the campus.', '029W'),
(13, 31, 4, 36, 4, 'Name of the degree programme is B.A. Honours in Peace and Conflict Resolution [BAHons (Peace and Conflict Resolution)]. Duration of the degree programme is 04 years. Candidates who have satisfied the minimum requirements for university admission [minimum of Simple (S) passes in three subjects and 30% or more for the Common General Paper] having offered any three subjects available at the G.C.E.(Advanced Level) Examination are eligible to seek admission to this programme. Medium of instructions is English.', '031D'),
(14, 63, 9, 278, 3, 'Name of the degree programme is B.A. in Islamic Studies. Duration of the programme is 03 years. Candidates with at least Simple (S) passes in any three subjects at the G.C.E. (Advanced Level) Examination are eligible. However, one must include a subject of Islam or Islamic Civilization.', '063J'),
(15, 84, 9, 225, 3, 'Name of the degree programme is B.A. in Arabic Language. Duration of the programme is 03 years. Candidates with at least Simple (S) passes in any three subjects at the G.C.E.(Advanced Level) Examination are eligible. However one must include a subject of Arabic language.', '084J'),
(16, 105, 4, 81, 4, 'Name of the degree programme is B.A. in TESL (Honours). In order to be eligible for this course of study, candidates should have obtained a minimum grade of ‘S’ or above for English and passes in any other two subjects at the G.C.E.(Advanced Level) Examination. Duration of the degree programme is 04 years. This course is conducted only in the English Medium.', '105D'),
(17, 105, 3, 81, 4, 'Name of the degree programme is B.A. in TESL (Honours). In order to be eligible for this course of study, candidates should have obtained a minimum grade of ‘S’ or above for English and passes in any other two subjects at the G.C.E.(Advanced Level) Examination. Duration of the degree programme is 04 years. This course is conducted only in the English Medium.', '105C'),
(18, 112, 2, 51, 4, 'Name of the degree programme is Bachelor of Social Work Honours [BSW(Hons)]. In order to be eligible for this course of study, candidates should have obtained at least Simple (S) passes in any three subjects of the Arts stream at G.C.E.(Advanced Level) Examination, selected according to the conditions specified in the Section 2.2.1.1 of this handbook. Duration of the degree programme is 04 years. The medium of instructions is English.', '112B'),
(19, 68, 14, 300, 4, 'The University of the Visual & Performing Arts offer Bachelor of Performing Arts- Music (Honours). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the University of the Visual & Performing Arts is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example, a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual Arts must have obtained a Credit (C) pass or more for Art at the G.C.E. (Advanced Level) Examination. The university also conducts Practical / Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual Arts. If a student fails the Practical/ Aptitude Test, he/she is deemed ineligible for admission for the relevant course of study. However, such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. The University of the Visual and Performing Arts will publish a press notice, calling for applications for the Practical / Aptitude test. Students are requested to contact the Registrar of the University for further details. The medium of instructions for all degree programmes conducted by the University of the Visual and Performing Arts is Sinhala.', '068Z'),
(20, 68, 21, 103, 4, 'Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka offer degree programme Bachelor of Fine Arts (Music). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual & Technological Arts must have obtained a Credit (C) pass or more for Art in G.C.E. (Advanced Level) Examination. The institute also conducts Practical/Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual & Technological Arts. If a student fails the Practical/Aptitude Test he/she is deemed ineligible for admission for the relevant course of study. However such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka will publish a press notice, calling for applications for the Practical/Aptitude Test. Students are requested to contact the Senior Assistant Registrar of the Swami Vipulananda Institute for further details. The medium of instructions for all degree programmes conducted by the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is Tamil.', '068Y'),
(21, 68, 22, 117, 4, 'The Ramanathan Academy of Fine Arts of the University of Jaffna offer degree programme Bachelor of Fine Arts (Music). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the Ramanathan Academy of Fine Arts is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example, a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Arts & Design must have obtained a Credit (C) pass or more for Art at the G.C.E. (Advanced Level) Examination. Ramanathan Academy of Fine Arts of the University of Jaffna also conducts Practical/Aptitude Tests for selection. These are for Music, Dance and Art & Design. If a student fails the Practical/Aptitude Test, he/she is deemed ineligible for admission for the relevant course of study. However, such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. Ramanathan Academy of Fine Arts of the University of Jaffna will publish a press notice, calling for applications for the Practical / Aptitude Test. Students are requested to contact the Senior Assistant Registrar of the Ramanathan Academy for further details. The medium of instructions for all degree programmes conducted by the Ramanathan Academy of Fine Arts is Tamil.', '068X'),
(22, 69, 14, 300, 4, 'The University of the Visual & Performing Arts offer degree programme Bachelor of Performing Arts-Dance and Drama (Honours). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the University of the Visual & Performing Arts is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example, a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual Arts must have obtained a Credit (C) pass or more for Art at the G.C.E. (Advanced Level) Examination. The university also conducts Practical / Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual Arts. If a student fails the Practical/ Aptitude Test, he/she is deemed ineligible for admission for the relevant course of study. However, such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. The University of the Visual and Performing Arts will publish a press notice, calling for applications for the Practical / Aptitude test. Students are requested to contact the Registrar of the University for further details. The medium of instructions for all degree programmes conducted by the University of the Visual and Performing Arts is Sinhala.', '069Z'),
(23, 69, 21, 93, 4, 'Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka offer degree programme Bachelor of Fine Arts (Dance). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual & Technological Arts must have obtained a Credit (C) pass or more for Art in G.C.E. (Advanced Level) Examination. The institute also conducts Practical/Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual & Technological Arts. If a student fails the Practical/Aptitude Test he/she is deemed ineligible for admission for the relevant course of study. However such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka will publish a press notice, calling for applications for the Practical/Aptitude Test. Students are requested to contact the Senior Assistant Registrar of the Swami Vipulananda Institute for further details. The medium of instructions for all degree programmes conducted by the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is Tamil.', '069Y');
INSERT INTO `governmentcourseofferedbygovermentuniversity` (`id`, `gov_course_id`, `gov_uni_id`, `purposed_intake`, `duration`, `description`, `unicode`) VALUES
(24, 69, 22, 101, 4, 'The Ramanathan Academy of Fine Arts of the University of Jaffna offer degree programme Bachelor of Fine Arts (Dance). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the Ramanathan Academy of Fine Arts is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example, a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Arts & Design must have obtained a Credit (C) pass or more for Art at the G.C.E. (Advanced Level) Examination. Ramanathan Academy of Fine Arts of the University of Jaffna also conducts Practical/Aptitude Tests for selection. These are for Music, Dance and Art & Design. If a student fails the Practical/Aptitude Test, he/she is deemed ineligible for admission for the relevant course of study. However, such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. Ramanathan Academy of Fine Arts of the University of Jaffna will publish a press notice, calling for applications for the Practical / Aptitude Test. Students are requested to contact the Senior Assistant Registrar of the Ramanathan Academy for further details. The medium of instructions for all degree programmes conducted by the Ramanathan Academy of Fine Arts is Tamil.', '069X'),
(25, 71, 14, 74, 4, 'The University of the Visual & Performing Arts offer degree programme Bachelor of Performing Arts-Dance and Drama (Honours). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the University of the Visual & Performing Arts is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example, a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual Arts must have obtained a Credit (C) pass or more for Art at the G.C.E. (Advanced Level) Examination. The university also conducts Practical / Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual Arts. If a student fails the Practical/ Aptitude Test, he/she is deemed ineligible for admission for the relevant course of study. However, such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. The University of the Visual and Performing Arts will publish a press notice, calling for applications for the Practical / Aptitude test. Students are requested to contact the Registrar of the University for further details. The medium of instructions for all degree programmes conducted by the University of the Visual and Performing Arts is Sinhala.', '071Z'),
(26, 71, 21, 104, 4, 'Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka offer degree programme Bachelor of Fine Arts (Drama & Theatre). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual & Technological Arts must have obtained a Credit (C) pass or more for Art in G.C.E. (Advanced Level) Examination. The institute also conducts Practical/Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual & Technological Arts. If a student fails the Practical/Aptitude Test he/she is deemed ineligible for admission for the relevant course of study. However such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka will publish a press notice, calling for applications for the Practical/Aptitude Test. Students are requested to contact the Senior Assistant Registrar of the Swami Vipulananda Institute for further details. The medium of instructions for all degree programmes conducted by the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is Tamil.', '071Y'),
(27, 85, 14, 120, 4, 'The University of the Visual & Performing Arts offer degree programme Bachelor of Visual Arts (Honours). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the University of the Visual & Performing Arts is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example, a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual Arts must have obtained a Credit (C) pass or more for Art at the G.C.E. (Advanced Level) Examination. The university also conducts Practical / Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual Arts. If a student fails the Practical/ Aptitude Test, he/she is deemed ineligible for admission for the relevant course of study. However, such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. The University of the Visual and Performing Arts will publish a press notice, calling for applications for the Practical / Aptitude test. Students are requested to contact the Registrar of the University for further details. The medium of instructions for all degree programmes conducted by the University of the Visual and Performing Arts is Sinhala.', '085Z'),
(28, 72, 21, 94, 4, 'Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka offer degree programme Bachelor of Fine Arts (Visual & Technological Art). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Visual & Technological Arts must have obtained a Credit (C) pass or more for Art in G.C.E. (Advanced Level) Examination. The institute also conducts Practical/Aptitude Tests for selection. These are for Music, Dance, Drama & Theatre and Visual & Technological Arts. If a student fails the Practical/Aptitude Test he/she is deemed ineligible for admission for the relevant course of study. However such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka will publish a press notice, calling for applications for the Practical/Aptitude Test. Students are requested to contact the Senior Assistant Registrar of the Swami Vipulananda Institute for further details. The medium of instructions for all degree programmes conducted by the Swami Vipulananda Institute of Aesthetic Studies of the Eastern University, Sri Lanka is Tamil.', '072Y'),
(29, 70, 22, 62, 4, 'The Ramanathan Academy of Fine Arts of the University of Jaffna offer degree programme Bachelor of Fine Arts (Art & Design). Guidance for selection of subjects at the G.C.E. (Advanced Level) Examination to be eligible to enter the Ramanathan Academy of Fine Arts is given below: The three subjects at the G.C.E. (Advanced Level) Examination, students must obtain at least two Simple (S) passes in any two subjects and at least a Credit (C) pass for the subject the student wishes to follow. This requirement is mandatory. For example, a student wishing to follow Music must have a Credit (C) pass or more in Music in the G.C.E. (Advanced Level) Examination. Similarly, a student wishing to follow a course of study in Arts & Design must have obtained a Credit (C) pass or more for Art at the G.C.E. (Advanced Level) Examination. Ramanathan Academy of Fine Arts of the University of Jaffna also conducts Practical/Aptitude Tests for selection. These are for Music, Dance and Art & Design. If a student fails the Practical/Aptitude Test, he/she is deemed ineligible for admission for the relevant course of study. However, such student is eligible to be considered for other courses of study of his/ her preference mentioned in the application form, subject to satisfy the relevant requirements. Ramanathan Academy of Fine Arts of the University of Jaffna will publish a press notice, calling for applications for the Practical / Aptitude Test. Students are requested to contact the Senior Assistant Registrar of the Ramanathan Academy for further details. The medium of instructions for all degree programmes conducted by the Ramanathan Academy of Fine Arts is Tamil.', '070X'),
(30, 16, 1, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Business Administration Honours  Bachelor of Business Administration Honours in Finance  Bachelor of Business Administration Honours in Human Resource Management  Bachelor of Business Administration Honours in Marketing  Bachelor of Business Administration Honours in Accounting  Bachelor of Business Administration Honours in Business Economics  Bachelor of Business Administration Honours in International Business  Bachelor of Business Administration Honours in Hospitality and Leisure Management', '016A'),
(31, 16, 2, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:   Bachelor of Business Administration Honours in Human Resource Management  Bachelor of Business Administration Honours in Marketing Management  Bachelor of Business Administration Honours in Operations Management  Bachelor of Business Administration Honours in Accounting and Finance  Bachelor of Business Administration Honours in Organizational Management', '016B'),
(32, 16, 3, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.Sc. Business Administration (Honours)\r\n B.Sc. Management (Public) Honours\r\n B.Com. (Honours)\r\n B.Sc. Estate Management & Valuation (Honours)\r\n B.Sc. Accounting (Honours)\r\n B.Sc. Marketing Management (Honours)\r\n B.Sc. Human Resource Management (Honours)\r\n B.Sc. Business Administration (Business Economics) Honours\r\n B.Sc. Finance (Honours)\r\n B.Sc. Business Information Systems (Honours)\r\n B.Sc. Operations and Technology Management (Honours)\r\n B.Sc. Entrepreneurship (Honours)', '016C'),
(33, 16, 4, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Business Management Honours in Human Resource\r\n Bachelor of Business Management Honours in Accountancy\r\n Bachelor of Business Management Honours in Marketing\r\n Bachelor of Business Management Honours in Finance\r\n Bachelor of Commerce Honours\r\n Bachelor of Commerce Honours in Business Technology\r\n Bachelor of Commerce Honours in Entrepreneurship\r\n Bachelor of Commerce Honours in Financial Management\r\n Bachelor of Business Management Honours in Insurance\r\n Bachelor of Business Management Honours in Banking\r\n Bachelor of Business Management Honours in Auditing and Forensic Accounting\r\n Bachelor of Business Management Honours in Financial Engineering', '016D'),
(34, 16, 6, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Business Administration Honours in Tourism and Hospitality Management\r\n Bachelor of Business Administration Honours in Accounting\r\n Bachelor of Business Administration Honours in Financial Management\r\n Bachelor of Business Administration Honours in Human Resource Management\r\n Bachelor of Business Administration Honours in Marketing\r\n Bachelor of Commerce Honours in Accounting and Finance\r\n Bachelor of Commerce Honours in Business Technology Management\r\n Bachelor of Commerce Honours', '016E'),
(35, 16, 7, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.B.A. Honours in Accounting\r\n B.B.A. Honours in Entrepreneurship\r\n B.B.A. Honours in Human Resources Management\r\n B.B.A. Honours in Marketing\r\n B.B.A. Honours in Business Management', '016F'),
(36, 16, 8, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Business Administration Honours\r\n Bachelor of Business Administration Honours in Marketing Management\r\n Bachelor of Business Administration Honours in Human Resource Management\r\n Bachelor of Commerce Honours\r\n Bachelor of Commerce Honours in Accounting and Finance\r\n Bachelor of Commerce Honours in Enterprise Development\r\n Bachelor of Commerce Honours in Business Economics', '016H'),
(37, 16, 9, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.B.A. (Honours)\r\n B.Com (Honours)', '016J'),
(38, 16, 10, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Science Honours in Accountancy & Finance\r\n Bachelor of Science Honours in Business Management\r\n Bachelor of Science Honours in Tourism and Hospitality Management\r\n Bachelor of Science Honours in Marketing Management\r\n Bachelor of Science Honours in Human Resource Management\r\n Bachelor of Science Honours in Information Systems', '016K'),
(39, 16, 11, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.Sc. (Business Management) Honours\r\n B.Sc. (Financial Management) Honours\r\n B.Sc. (Marketing Management) Honours\r\n B.Sc. (Tourism Management) Honours\r\n B.Sc. (Eco Business Management) Honours\r\n B.Sc. (Banking & Insurance) Honours', '016L'),
(40, 16, 12, 5336, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.Sc. (Accountancy & Business Finance) Honours\r\n B.Sc. (Banking & Business Finance) Honours\r\n B.Sc. (Business Management) Honours\r\n B.Sc. Honours in Insurance & Finance', '016M'),
(41, 28, 3, 114, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.Sc. Business Administration (Honours)\r\n B.Sc. Management (Public) Honours\r\n B.Com. (Honours)\r\n B.Sc. Estate Management & Valuation (Honours)\r\n B.Sc. Accounting (Honours)\r\n B.Sc. Marketing Management (Honours)\r\n B.Sc. Human Resource Management (Honours)\r\n B.Sc. Business Administration (Business Economics) Honours\r\n B.Sc. Finance (Honours)\r\n B.Sc. Business Information Systems (Honours)\r\n B.Sc. Operations and Technology Management (Honours)\r\n B.Sc. Entrepreneurship (Honours)', '028C'),
(42, 17, 3, 88, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.Sc. Business Administration (Honours)\r\n B.Sc. Management (Public) Honours\r\n B.Com. (Honours)\r\n B.Sc. Estate Management & Valuation (Honours)\r\n B.Sc. Accounting (Honours)\r\n B.Sc. Marketing Management (Honours)\r\n B.Sc. Human Resource Management (Honours)\r\n B.Sc. Business Administration (Business Economics) Honours\r\n B.Sc. Finance (Honours)\r\n B.Sc. Business Information Systems (Honours)\r\n B.Sc. Operations and Technology Management (Honours)\r\n B.Sc. Entrepreneurship (Honours)', '017C'),
(43, 18, 3, 899, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.Sc. Business Administration (Honours)\r\n B.Sc. Management (Public) Honours\r\n B.Com. (Honours)\r\n B.Sc. Estate Management & Valuation (Honours)\r\n B.Sc. Accounting (Honours)\r\n B.Sc. Marketing Management (Honours)\r\n B.Sc. Human Resource Management (Honours)\r\n B.Sc. Business Administration (Business Economics) Honours\r\n B.Sc. Finance (Honours)\r\n B.Sc. Business Information Systems (Honours)\r\n B.Sc. Operations and Technology Management (Honours)\r\n B.Sc. Entrepreneurship (Honours)', '018C'),
(44, 18, 4, 899, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Business Management Honours in Human Resource\r\n Bachelor of Business Management Honours in Accountancy\r\n Bachelor of Business Management Honours in Marketing\r\n Bachelor of Business Management Honours in Finance\r\n Bachelor of Commerce Honours\r\n Bachelor of Commerce Honours in Business Technology\r\n Bachelor of Commerce Honours in Entrepreneurship\r\n Bachelor of Commerce Honours in Financial Management\r\n Bachelor of Business Management Honours in Insurance\r\n Bachelor of Business Management Honours in Banking\r\n Bachelor of Business Management Honours in Auditing and Forensic Accounting\r\n Bachelor of Business Management Honours in Financial Engineering', '018D'),
(45, 18, 6, 899, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Business Administration Honours in Tourism and Hospitality Management\r\n Bachelor of Business Administration Honours in Accounting\r\n Bachelor of Business Administration Honours in Financial Management\r\n Bachelor of Business Administration Honours in Human Resource Management\r\n Bachelor of Business Administration Honours in Marketing\r\n Bachelor of Commerce Honours in Accounting and Finance\r\n Bachelor of Commerce Honours in Business Technology Management\r\n Bachelor of Commerce Honours', '018E'),
(46, 18, 8, 899, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  Bachelor of Business Administration Honours\r\n Bachelor of Business Administration Honours in Marketing Management\r\n Bachelor of Business Administration Honours in Human Resource Management\r\n Bachelor of Commerce Honours\r\n Bachelor of Commerce Honours in Accounting and Finance\r\n Bachelor of Commerce Honours in Enterprise Development\r\n Bachelor of Commerce Honours in Business Economics', '018H'),
(47, 18, 9, 899, 4, 'To obtain admission to the above mentioned course of study, a student should have obtained at least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Agricultural Science  Geography  Business Statistics  German  Combined Mathematics or Mathematics  History  Political Science  English  Logic & Scientific Method  French  Information & Communication Technology To enter into some degree programmes such as Accountancy, Auditing & Forensic Accounting and Finance in a university, students should have offered Accounting as a subject at the G.C.E. (Advanced Level) Examination. Durations of the degree programmes are 04 years. Degree programmes available at those universities:  B.B.A. (Honours)\r\n B.Com (Honours)', '018J'),
(48, 22, 16, 458, 3, 'Candidates who have satisfied the minimum requirements for admission having offered any three subjects at the G.C.E. (Advanced Level) Examination are eligible to seek admission to follow a degree course in Management Studies (TV) at one of the following universities. 1. Trincomalee Campus, Eastern University, Sri Lanka 2. Vavuniya Campus of the University of Jaffna However, when selecting students, it will be ensured that at least 60% of the intake to the Vavuniya Campus of the University of Jaffna and at least 40% of the intake to the Trincomalee Campus of the Eastern University, Sri Lanka will be from the students in the Commerce Stream. Students admitted to a three year degree programme may proceed to the fourth year if they so desire and satisfy the requirements of the University. In the fourth year students will be offered extra modules of courses relevant to the areas of specialization as determined by the Faculty/Senate of the University. Names of the universities and the degree programmes available: Trincomalee Campus of the Eastern University, Sri Lanka  Bachelor of Science in Accounting & Financial Management  Bachelor of Science in Marketing Management  Bachelor of Science in Human Resources Management  Bachelor of Science in Information Management Vavuniya Campus of University of Jaffna  Bachelor of Business Management  Bachelor of Business Management Honours in Accounting & Finance  Bachelor of Business Management Honours in Marketing Management  Bachelor of Business Management Honours in Business Economics  Bachelor of Business Management Honours in Human Resource Management', '022W'),
(49, 22, 17, 458, 3, 'Candidates who have satisfied the minimum requirements for admission having offered any three subjects at the G.C.E. (Advanced Level) Examination are eligible to seek admission to follow a degree course in Management Studies (TV) at one of the following universities. 1. Trincomalee Campus, Eastern University, Sri Lanka 2. Vavuniya Campus of the University of Jaffna However, when selecting students, it will be ensured that at least 60% of the intake to the Vavuniya Campus of the University of Jaffna and at least 40% of the intake to the Trincomalee Campus of the Eastern University, Sri Lanka will be from the students in the Commerce Stream. Students admitted to a three year degree programme may proceed to the fourth year if they so desire and satisfy the requirements of the University. In the fourth year students will be offered extra modules of courses relevant to the areas of specialization as determined by the Faculty/Senate of the University. Names of the universities and the degree programmes available: Trincomalee Campus of the Eastern University, Sri Lanka  Bachelor of Science in Accounting & Financial Management  Bachelor of Science in Marketing Management  Bachelor of Science in Human Resources Management  Bachelor of Science in Information Management Vavuniya Campus of University of Jaffna  Bachelor of Business Management  Bachelor of Business Management Honours in Accounting & Finance  Bachelor of Business Management Honours in Marketing Management  Bachelor of Business Management Honours in Business Economics  Bachelor of Business Management Honours in Human Resource Management', '022R'),
(50, 77, 3, 80, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for following three subjects at G.C.E. (Advanced Level) Examination;  Business Studies  Economics  Accounting or At least two subjects given above and the third subject from the subjects given below;  Information & Communication Technology  Combined Mathematics  Logic & Scientific Method  Business Statistics  Physics.  Degree Programme : Business Information Systems (Honours)  Available University : University of Sri Jayewardenepura  Duration : 04 years', '077C'),
(51, 1, 1, 1864, 5, 'Duration: 05 Years', '001A'),
(52, 1, 2, 1864, 5, 'Duration: 05 Years', '001B'),
(53, 1, 3, 1864, 5, 'Duration: 05 Years', '001C'),
(54, 1, 4, 1864, 5, 'Duration: 05 Years', '001D'),
(55, 1, 6, 1864, 5, 'Duration: 05 Years', '001E'),
(56, 1, 7, 1864, 5, 'Duration: 05 Years', '001F'),
(57, 1, 8, 1864, 5, 'Duration: 05 Years', '001H'),
(58, 1, 10, 1864, 5, 'Duration: 05 Years', '001K'),
(59, 1, 12, 1864, 5, 'Duration: 05 Years', '001M'),
(60, 1, 11, 1864, 5, 'Duration: 05 Years', '001L'),
(61, 1, 5, 1864, 5, 'Duration: 05 Years', '001G'),
(62, 2, 2, 153, 5, 'Duration: 05 Years', '002B'),
(63, 2, 3, 153, 5, 'Duration: 05 Years', '002C'),
(64, 3, 2, 130, 5, 'Duration: 05 Years', '003B'),
(65, 39, 2, 221, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination. (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agricultural Science or Mathematics  Degree Programme : B.Sc. in Agricultural Technology & Management  Available University : University of Peradeniya  Duration : 04 years', '039B'),
(66, 4, 6, 889, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination. (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agricultural Science or Mathematics Degree Programmes : Bachelor of Science Honours in Agriculture', '004E'),
(67, 4, 8, 889, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination. (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agricultural Science or Mathematics Degree Programmes : Bachelor of Science Honours in Agriculture', '004H'),
(68, 4, 10, 889, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination. (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agricultural Science or Mathematics Degree Programmes : Bachelor of Science Honours in Agriculture', '004K'),
(69, 4, 11, 889, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination. (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agricultural Science or Mathematics Degree Programmes : Bachelor of Science in Agriculture', '004L'),
(70, 4, 12, 889, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination. (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agricultural Science or Mathematics Degree Programmes : Bachelor of Science Honours in Agriculture', '004M'),
(71, 5, 12, 164, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination. (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agricultural Science or Mathematics  Degree Programme : Bachelor of Science Honours in Food Science & Nutrition [BScHons (Food Sc & Nutr)]  Available University : Wayamba University of Sri Lanka  Duration : 04 years  Fields of Specialization : Food Science & Technology Applied Nutrition', '005M'),
(72, 35, 2, 218, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E.(Advanced Level) Examination.  Degree Programme : B.Sc. Honours in Food Science & Technology  Duration : 04 years', '035B'),
(73, 35, 3, 218, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E.(Advanced Level) Examination.  Degree Programme : B.Sc. Honours in Food Science & Technology [BScHons (FST)]  Duration : 04 years', '035C'),
(74, 35, 11, 218, 4, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E.(Advanced Level) Examination.  Degree Programme : B.Sc. Honours in Food Science & Technology  Duration : 04 years', '035L'),
(75, 32, 18, 383, 6, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E.(Advanced Level) Examination.  Degree Programme : Bachelor of Ayurvedic Medicine and Surgery (B.A.M.S)  Duration : 06 years [05 academic years and 01-year (final) internship]  Medium of Instructions : English', '032N'),
(76, 32, 19, 383, 6, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E.(Advanced Level) Examination.  Degree Programme : Bachelor of Ayurvedic Medicine and Surgery (B.A.M.S)  Duration : 06 years [05 academic years and 01-year (final) internship]  Medium of Instructions : English', '032P'),
(77, 33, 18, 89, 6, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination.  Degree Programme : Bachelor of Unani Medicine and Surgery (B.U.M.S.)  Available University : Institute of Indigenous Medicine, University of Colombo  Duration : 06 years [05 academic years and 01-year (final) internship]  Medium of Instructions : English', '033N'),
(78, 36, 6, 247, 6, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination  Degree Programme : Bachelor of Siddha Medicine and Surgery (B.S.M.S.)  Available Universities : University of Jaffna Trincomalee Campus of the Eastern University, Sri Lanka  Duration : 06 years [05 academic years and 01-year (final) internship]  Medium of Instructions : University of Jaffna - Tamil Trincomalee Campus of the Eastern University, Sri Lanka - English', '036E'),
(79, 36, 16, 247, 6, 'Minimum eligibility requirements for admission : At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination  Degree Programme : Bachelor of Siddha Medicine and Surgery (B.S.M.S.)  Available Universities : University of Jaffna Trincomalee Campus of the Eastern University, Sri Lanka  Duration : 06 years [05 academic years and 01-year (final) internship]  Medium of Instructions : University of Jaffna - Tamil Trincomalee Campus of the Eastern University, Sri Lanka - English', '036W'),
(80, 6, 1, 1686, 4, 'Minimum eligibility requirements for admission : At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics  Degree Programme : B.Sc. in Biological Science  Available Universities : University of Colombo University of Peradeniya University of Sri Jayewardenepura University of Kelaniya University of Jaffna University of Ruhuna Eastern University, Sri Lanka South Eastern University of Sri Lanka', '006A'),
(81, 6, 2, 1686, 3, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics', '006B'),
(82, 6, 3, 1686, 3, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics ACADEMIC YEAR 2020/2021 - 51 ', '006C'),
(83, 6, 4, 1686, 3, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics ACADEMIC YEAR 2020/2021 - 51 ', '006D'),
(84, 6, 6, 1686, 3, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics ACADEMIC YEAR 2020/2021 - 51 ', '006E'),
(85, 6, 7, 1686, 3, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics ACADEMIC YEAR 2020/2021 - 51 ', '006F'),
(86, 6, 8, 1686, 3, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics ACADEMIC YEAR 2020/2021 - 51 ', '006H'),
(87, 6, 9, 1686, 3, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics ACADEMIC YEAR 2020/2021 - 51 ', '006J'),
(88, 7, 10, 410, -1, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics', '007K'),
(89, 7, 11, 410, -1, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics Names of the degree programm', '007L'),
(90, 7, 17, 410, -1, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics Names of the degree programm', '007R'),
(91, 50, 10, 103, -1, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics  Degree Programmes : B.Sc. ', '050K'),
(92, 37, 2, 559, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '037B'),
(93, 37, 3, 559, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '037C'),
(94, 37, 6, 559, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '037E'),
(95, 37, 7, 559, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '037F'),
(96, 37, 8, 559, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '037H');
INSERT INTO `governmentcourseofferedbygovermentuniversity` (`id`, `gov_course_id`, `gov_uni_id`, `purposed_intake`, `duration`, `description`, `unicode`) VALUES
(97, 37, 1, 559, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '037A'),
(98, 51, 2, 227, -1, 'At least a ‘C’ grade in Chemistry and ‘S’ grades in Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '051B'),
(99, 51, 3, 227, -1, 'At least a ‘C’ grade in Chemistry and ‘S’ grades in Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '051C'),
(100, 51, 6, 227, -1, 'At least a ‘C’ grade in Chemistry and ‘S’ grades in Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '051E'),
(101, 51, 7, 227, -1, 'At least a ‘C’ grade in Chemistry and ‘S’ grades in Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination.', '051F'),
(102, 53, 2, 68, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination. In addition to that, at least a ‘S’ pass in English at the G.C.E. (Ordinary Level) Examination. University of Peradeniya offers a 120 credit curriculum', '053B'),
(103, 54, 1, 101, -1, 'At least ‘S’ grades in Physics, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Biology  Mathematics  Higher Mathematics  Combined Mathematics In addition to that, at least a ‘S’ pass in English', '054A'),
(104, 54, 2, 101, -1, 'At least ‘S’ grades in Physics, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Biology  Mathematics  Higher Mathematics  Combined Mathematics In addition to that, at least a ‘S’ pass in English', '054B'),
(105, 58, 1, 80, -1, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination.  Degree Programmes : B.Sc. Duration : 03 years : B.Sc. Honours (Biochemistry & Molecular Biology) Duration : 04 years B.Sc. Honours (Molecular Biology', '058A'),
(106, 62, 7, 120, 4, 'At least three ‘S’ grades in Chemistry, Physics and Biology at the G.C.E. (Advanced Level) Examination.  Degree Programme : B.Sc. Honours in Fisheries and Marine Sciences  Fields of Specialization : Fisheries Sciences Aquaculture  Medium : English', '062F'),
(107, 55, 4, 109, -1, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Physics  Combined Mathematics  Mathematics  Agricultural Science ACADEMIC YEAR 2020/2021 - 56 - UNIVERSITY GRANTS ', '055D'),
(108, 86, 2, 74, 4, 'At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination; (i) Chemistry, Biology and Physics (ii) Chemistry, Biology and Agricultural Science  Degree Programme : B.Sc. in Animal Science & Fisherie', '086B'),
(109, 87, 12, 139, 4, 'At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination; (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agric', '087M'),
(110, 93, 7, 181, 4, 'At least three ‘S’ grades for one of the following combinations of subjects at G.C.E. (Advanced Level) Examination; (i) Chemistry; Physics; and Biology (ii) Chemistry; Physics or Mathematics; Biology or Agricultural Science (iii) Chemistry; Biology; Agric', '093F'),
(111, 94, 7, 78, 4, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Physics  Agricultural Science  Food Technology /Bio - Resource Technology/Agro Technology  Degree Programme : B.Sc.', '094F'),
(112, 95, 7, 72, 4, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Physics  Agricultural Science  Food Technology/Bio - Resource Technology/Agro Technology In addition to that, at lea', '095F'),
(113, 67, 13, 108, 4, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics  Degree Programme : Bachelor', '067U'),
(114, 73, 13, 105, 4, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E.(Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics ACADEMIC YEAR 2020/2021 - 59 ', '073U'),
(115, 88, 13, 114, 4, 'At least ‘S’ grades in Biology, Chemistry and the third subject from the following subjects at the G.C.E. (Advanced Level) Examination;  Agricultural Science  Higher Mathematics  Mathematics  Combined Mathematics  Physics  Degree Programme : Bachelo', '088U'),
(116, 8, 2, 2213, -1, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination.  Fields of specialization available are :   Civil Engineering  Chemical & Process Engineering  Computer Engineering  Electrical & Elec', '008B'),
(117, 8, 6, 2213, -1, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination. Fields of specialization available are :   Civil Engineering  Electrical and Electronic Engineering  Mechanical Engineering  Computer ', '008E'),
(118, 8, 7, 2213, -1, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination. Fields of specialization available are :   Civil and Environmental Engineering  Electrical and Information Engineering  Mechanical and ', '008F'),
(119, 8, 5, 2213, -1, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination. Fields of specialization available are :   Biomedical Engineering  Electrical Engineering  Chemical & Process Engineering  Electronic ', '008G'),
(120, 8, 9, 2213, -1, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination. Fields of specialization available are :   Civil Engineering  Electrical Engineering #  Electronic Engineering #  Mechanical Engineeri', '008J'),
(121, 8, 3, 2213, -1, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination. Fields of specialization available are :   Civil Engineering  Computer Engineering  Electrical and E', '008C'),
(122, 9, 5, 80, 4, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination', '009G'),
(123, 10, 5, 98, 4, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination  Degree Programme : Bachelor of the Science of Engineering Honours in Textile & Apparel Engineering [BScEngHons (Textile & Apparel Enginee', '010G'),
(124, 13, 1, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013A'),
(125, 13, 2, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013B'),
(126, 13, 3, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013C'),
(127, 13, 4, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013D'),
(128, 13, 6, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013E'),
(129, 13, 7, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013F'),
(130, 13, 8, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013H'),
(131, 13, 9, 2327, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '013J'),
(132, 12, 6, 647, 3, 'At least a ‘C’ grade in Combined Mathematics or Physics or Higher Mathematics; and At least ‘S’ grades in two other subjects listed below at the G.C.E. (Advanced Level) Examination;  Combined Mathematics  Higher Mathematics  Mathematics  Physics  Che', '012E'),
(133, 12, 7, 647, 3, 'At least a ‘C’ grade in Combined Mathematics or Physics or Higher Mathematics; and At least ‘S’ grades in two other subjects listed below at the G.C.E. (Advanced Level) Examination;  Combined Mathematics  Higher Mathematics  Mathematics  Physics  Che', '012F'),
(134, 12, 20, 647, 3, 'At least a ‘C’ grade in Combined Mathematics or Physics or Higher Mathematics; and At least ‘S’ grades in two other subjects listed below at the G.C.E. (Advanced Level) Examination;  Combined Mathematics  Higher Mathematics  Mathematics  Physics  Che', '012T'),
(135, 12, 16, 647, 3, 'At least a ‘C’ grade in Combined Mathematics or Physics or Higher Mathematics; and At least ‘S’ grades in two other subjects listed below at the G.C.E. (Advanced Level) Examination;  Combined Mathematics  Higher Mathematics  Mathematics  Physics  Che', '012W'),
(136, 12, 4, 647, 3, 'At least a ‘C’ grade in Combined Mathematics or Physics or Higher Mathematics; and At least ‘S’ grades in two other subjects listed below at the G.C.E. (Advanced Level) Examination;  Combined Mathematics  Higher Mathematics  Mathematics  Physics  Che', '012D'),
(137, 15, 10, 768, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '015K'),
(138, 15, 11, 768, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '015L'),
(139, 15, 12, 768, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '015M'),
(140, 15, 17, 768, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '015R'),
(141, 15, 16, 768, -1, 'At least ‘S’ grades in following three subjects at the G.C.E. (Advanced Level) Examination and the three subjects must include; 1. Combined Mathematics or Higher Mathematics and 2. Chemistry or Physics and the third subject from the list given below;  Ag', '015W'),
(142, 57, 5, 91, 4, 'At least three ‘S’ grades in Chemistry, Combined Mathematics and Physics at the G.C.E. (Advanced Level) Examination.  Degree Programme : Bachelor of the Science of Engineering Honours in Transport Management & Logistics Engineering [BScEngHons (Transport', '057G'),
(143, 59, 1, 121, -1, 'At least ‘S’ grades in Combined Mathematics and any two subjects given below, at the G.C.E. (Advanced Level) Examination; • Higher Mathematics • Physics • Chemistry  Degree Programmes : B.Sc. (General Degree) Duration : 03 years B.Sc. (General Degree) Du', '059A'),
(144, 60, 2, 79, 4, 'At least ‘S’ grades in Combined Mathematics and two of the following subjects at the G.C.E. (Advanced Level) Examination; • Biology • Chemistry • Physics • Agricultural Science • Mathematics • Higher Mathematics • Information & Communication Technology  ', '060B'),
(145, 108, 3, 156, 3, 'At least ‘S’ grades in Combined Mathematics, Physics and Information and Communication Technology at the G.C.E. (Advanced Level) Examination.  Degree Programmes : B.Sc. in Physics and ICT [BSc (PICT)]', '108C'),
(146, 108, 4, 156, 3, 'At least ‘S’ grades in Combined Mathematics, Physics and Information and Communication Technology at the G.C.E. (Advanced Level) Examination.  Degree Programmes : B.Sc. in Physics and Electronics', '108D'),
(147, 102, 3, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102C'),
(148, 102, 4, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102D'),
(149, 102, 6, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102E'),
(150, 102, 7, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102F'),
(151, 102, 10, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102K'),
(152, 102, 13, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102U'),
(153, 102, 12, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102M'),
(154, 102, 1, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102A'),
(155, 102, 11, 1301, -1, 'At least “S” grades for Engineering Technology (ET), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '102L'),
(156, 103, 3, 1221, -1, 'At least “S” grades for Biosystems Technology (BST), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '103C'),
(157, 103, 6, 1221, -1, 'At least “S” grades for Biosystems Technology (BST), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '103E'),
(158, 103, 8, 1221, -1, 'At least “S” grades for Biosystems Technology (BST), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '103H'),
(159, 103, 10, 1221, -1, 'At least “S” grades for Biosystems Technology (BST), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '103K'),
(160, 103, 9, 1221, -1, 'At least “S” grades for Biosystems Technology (BST), Science for Technology (SFT) and for third subject from among;  Economics  Geography  Home Economics  English  Communication and Media Studies  Information & Communication Technology  Art  Busin', '103J'),
(161, 103, 13, -1, -1, '-1', '103U'),
(162, 103, 12, -1, -1, '-1', '103M'),
(163, 103, 1, -1, -1, '-1', '103A'),
(164, 103, 11, -1, -1, '-1', '103L'),
(165, 103, 7, -1, -1, '-1', '103F'),
(166, 38, 3, -1, -1, '-1', '104C'),
(167, 38, 4, -1, -1, '-1', '104D'),
(168, 38, 7, -1, -1, '-1', '104F'),
(170, 38, 9, -1, -1, '-1', '104J'),
(171, 38, 17, -1, -1, '-1', '104R'),
(172, 38, 1, -1, -1, '-1', '104A'),
(173, 38, 13, -1, -1, '-1', '104U'),
(174, 26, 5, -1, -1, '-1', '026G'),
(175, 27, 4, -1, -1, '-1', '027D'),
(176, 11, 5, -1, -1, '-1', '011G'),
(177, 14, 11, -1, -1, '-1', '014L'),
(178, 30, 5, -1, -1, '-1', '030G'),
(179, 23, 5, -1, -1, '-1', '023G'),
(180, 34, 5, -1, -1, '-1', '034G'),
(181, 97, 5, -1, -1, '-1', '097G'),
(182, 24, 5, -1, -1, '-1', '024G'),
(183, 25, 1, -1, -1, '-1', '025A'),
(184, 25, 2, -1, -1, '-1', '025B'),
(185, 25, 6, -1, -1, '-1', '025E'),
(186, 56, 5, -1, -1, '-1', '056G'),
(187, 79, 9, -1, -1, '-1', '079J'),
(188, 64, 13, -1, -1, '-1', '064U'),
(189, 65, 13, -1, -1, '-1', '065U'),
(190, 66, 13, -1, -1, '-1', '066U'),
(191, 74, 13, -1, -1, '-1', '074U'),
(192, 75, 13, -1, -1, '-1', '075U'),
(193, 76, 13, -1, -1, '-1', '076U'),
(194, 89, 13, -1, -1, '-1', '089U'),
(195, 90, 13, -1, -1, '-1', '090U'),
(196, 81, 11, -1, -1, '-1', '081L'),
(197, 81, 6, -1, -1, '-1', '081E'),
(198, 82, 3, -1, -1, '-1', '082C'),
(199, 82, 11, -1, -1, '-1', '082L'),
(200, 82, 4, -1, -1, '-1', '082D'),
(201, 83, 4, -1, -1, '-1', '083D'),
(202, 91, 5, -1, -1, '-1', '091G'),
(203, 92, 10, -1, -1, '-1', '092K'),
(204, 92, 11, -1, -1, '-1', '092L'),
(205, 96, 20, -1, -1, '-1', '096T'),
(206, 98, 4, -1, -1, '-1', '098D'),
(207, 98, 6, -1, -1, '-1', '098E'),
(208, 98, 11, -1, -1, '-1', '098L'),
(209, 98, 8, -1, -1, '-1', '098H'),
(210, 100, 4, -1, -1, '-1', '100D'),
(211, 101, 17, -1, -1, '-1', '101R'),
(212, 38, 10, -1, -1, '-1', '038K'),
(213, 38, 17, -1, -1, '-1', '038R'),
(214, 99, 4, -1, -1, '-1', '099D'),
(215, 99, 11, -1, -1, '-1', '099L'),
(216, 107, 11, -1, -1, '-1', '107L'),
(217, 106, 7, -1, -1, '-1', '106F'),
(218, 109, 5, -1, -1, '-1', '109G'),
(219, 110, 4, -1, -1, '-1', '110D'),
(220, 111, 2, -1, -1, '-1', '111B'),
(221, 113, 7, -1, -1, '-1', '113F'),
(222, 114, 13, -1, -1, '-1', '114U'),
(223, 115, 3, -1, -1, '-1', '128C'),
(224, 116, 4, -1, -1, '-1', '127D'),
(225, 117, 4, -1, -1, '-1', '115D'),
(226, 118, 3, -1, -1, '-1', '116C'),
(227, 119, 4, -1, -1, '-1', '118D'),
(228, 120, 19, -1, -1, '-1', '120P'),
(229, 121, 3, -1, -1, '-1', '129C'),
(230, 122, 3, -1, -1, '-1', '130C'),
(231, 123, 11, -1, -1, '-1', '080L'),
(232, 124, 5, -1, -1, '-1', '117G'),
(233, 125, 4, -1, -1, '-1', '119D'),
(234, 126, 19, -1, -1, '-1', '121P'),
(235, 127, 19, -1, -1, '-1', '122P'),
(236, 128, 19, -1, -1, '-1', '123P'),
(237, 130, 19, -1, -1, '-1', '125P'),
(238, 129, 19, -1, -1, '-1', '124P'),
(239, 131, 19, -1, -1, '-1', '126P'),
(240, 41, 15, -1, -1, '-1', '041S'),
(241, 52, 2, -1, -1, '-1', '052B'),
(242, 52, 3, -1, -1, '-1', '052C'),
(243, 52, 6, -1, -1, '-1', '052E'),
(244, 52, 7, -1, -1, '-1', '052F'),
(245, 38, 10, -1, -1, '-1', '104K');

-- --------------------------------------------------------

--
-- Table structure for table `intakenotices`
--

CREATE TABLE `intakenotices` (
  `notice_id` int(11) NOT NULL,
  `paid_date` date NOT NULL DEFAULT current_timestamp(),
  `private_uni_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intakenotices`
--

INSERT INTO `intakenotices` (`notice_id`, `paid_date`, `private_uni_id`, `post_id`) VALUES
(1, '2022-03-27', 6, 6),
(2, '2022-03-27', 6, 7),
(3, '2022-03-27', 6, 8),
(4, '2022-03-27', 6, 9),
(5, '2022-03-27', 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `jobapplicants`
--

CREATE TABLE `jobapplicants` (
  `job_apply_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `interaction` varchar(100) DEFAULT NULL,
  `applied_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `paid_date` date NOT NULL DEFAULT current_timestamp(),
  `company_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `paid_date`, `company_id`, `post_id`) VALUES
(1, '2022-03-27', 7, 11),
(2, '2022-03-27', 7, 12),
(3, '2022-03-27', 7, 13),
(4, '2022-03-27', 7, 14),
(5, '2022-03-27', 7, 15);

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `mentor_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phn_no` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mentor_type` varchar(20) NOT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`mentor_id`, `email`, `phn_no`, `address`, `gender`, `mentor_type`, `institute`, `password`) VALUES
(8, 'tharindu4151@gmail.com', 361486291, 'No 30, Esplanade Rd Uyanwatta, Matara', 'Male', 'Professional Guider', 'ABC Institute', '$2y$10$nNJ7/g7mdMyDKGs2H4Y.Zu3Wwfwx1aBLFNBMYDQqAAILFLXij8REK'),
(9, 'pubudu4151@gmail.com', 768913423, 'No 57, Lake, Circular Rd, Kurunegala', 'Male', 'Teacher', NULL, '$2y$10$HI0cJzDSlGnU4.18PhtUqeM.dvJlrZwd17g6RYfixUC71YkM/i7Za');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `notification` varchar(255) DEFAULT NULL,
  `send_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `sender_id`, `receiver_id`, `notification`, `send_at`) VALUES
(1, 2, 3, 'follows you', '2022-03-27 09:24:44'),
(2, 2, 4, 'follows you', '2022-03-27 09:24:50'),
(3, 2, 5, 'follows you', '2022-03-27 09:24:56'),
(4, 3, 6, 'follows you', '2022-03-27 09:36:24'),
(5, 3, 2, 'follows you', '2022-03-27 09:46:29'),
(6, 3, 5, 'follows you', '2022-03-27 09:46:38'),
(7, 3, 8, 'follows you', '2022-03-27 09:46:53'),
(8, 8, 2, 'follows you', '2022-03-27 10:13:29'),
(9, 8, 3, 'follows you', '2022-03-27 10:13:36'),
(10, 8, 4, 'follows you', '2022-03-27 10:13:43'),
(11, 8, 5, 'follows you', '2022-03-27 10:13:51'),
(12, 9, 8, 'follows you', '2022-03-27 10:15:05'),
(13, 9, 5, 'follows you', '2022-03-27 10:15:14'),
(14, 9, 4, 'Add a session link', '2022-03-27 10:16:27'),
(15, 9, 4, 'Add a session link', '2022-03-27 10:16:48'),
(16, 9, 4, 'Add a session link', '2022-03-27 10:17:06'),
(17, 4, 8, 'follows you', '2022-03-27 10:17:48'),
(18, 4, 9, 'follows you', '2022-03-27 10:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `olqualifiedstudent`
--

CREATE TABLE `olqualifiedstudent` (
  `stu_id` int(11) NOT NULL,
  `ol_school` varchar(255) NOT NULL,
  `ol_district` varchar(100) NOT NULL,
  `ol_sub1_id` int(11) NOT NULL,
  `ol_sub1_grade` char(1) NOT NULL,
  `ol_sub2_id` int(11) NOT NULL,
  `ol_sub2_grade` char(1) NOT NULL,
  `ol_sub3_id` int(11) NOT NULL,
  `ol_sub3_grade` char(1) NOT NULL,
  `ol_sub4_id` int(11) NOT NULL,
  `ol_sub4_grade` char(1) NOT NULL,
  `ol_sub5_id` int(11) NOT NULL,
  `ol_sub5_grade` char(1) NOT NULL,
  `ol_sub6_id` int(11) NOT NULL,
  `ol_sub6_grade` char(1) NOT NULL,
  `ol_sub7_id` int(11) NOT NULL,
  `ol_sub7_grade` char(1) NOT NULL,
  `ol_sub8_id` int(11) NOT NULL,
  `ol_sub8_grade` char(1) NOT NULL,
  `ol_sub9_id` int(11) NOT NULL,
  `ol_sub9_grade` char(1) NOT NULL,
  `ol_result_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `olqualifiedstudent`
--

INSERT INTO `olqualifiedstudent` (`stu_id`, `ol_school`, `ol_district`, `ol_sub1_id`, `ol_sub1_grade`, `ol_sub2_id`, `ol_sub2_grade`, `ol_sub3_id`, `ol_sub3_grade`, `ol_sub4_id`, `ol_sub4_grade`, `ol_sub5_id`, `ol_sub5_grade`, `ol_sub6_id`, `ol_sub6_grade`, `ol_sub7_id`, `ol_sub7_grade`, `ol_sub8_id`, `ol_sub8_grade`, `ol_sub9_id`, `ol_sub9_grade`, `ol_result_file`) VALUES
(3, 'Ananda College', 'Colombo', 1, 'A', 6, 'B', 8, 'C', 9, 'S', 10, 'A', 11, 'A', 12, 'B', 28, 'C', 39, 'S', '1648319094_OL_res_sheet_divanjana.pdf'),
(4, 'Royal College Colombo', 'Colombo', 1, 'A', 6, 'A', 8, 'B', 9, 'B', 10, 'C', 11, 'C', 12, 'S', 28, 'S', 39, 'A', '1648319243_OL_res_sheet_gimantha.pdf'),
(5, 'Asoka Vidyalaya, Colombo 10', 'Colombo', 1, 'A', 6, 'B', 8, 'C', 9, 'C', 10, 'S', 11, 'S', 12, 'C', 28, 'B', 39, 'A', '1648319498_OL_res_sheet_asela.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `olsubject`
--

CREATE TABLE `olsubject` (
  `ol_sub_id` int(11) NOT NULL,
  `ol_sub_name` varchar(255) NOT NULL,
  `ol_category` varchar(255) NOT NULL,
  `ol_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `olsubject`
--

INSERT INTO `olsubject` (`ol_sub_id`, `ol_sub_name`, `ol_category`, `ol_type`) VALUES
(1, 'Buddhism', 'Main', 'Religion'),
(2, 'Saivaneri (Hinduism / Shaivism)', 'Main', 'Religion'),
(3, '(Roman)Catholicim(RC)', 'Main', 'Religion'),
(4, 'Christianity(Non RC)', 'Main', 'Religion'),
(5, 'Islam', 'Main', 'Religion'),
(6, 'Sinhala Language and Literature', 'Main', 'Primary Language'),
(7, 'Tamil Language and Literature', 'Main', 'Primary Language'),
(8, 'English', 'Main', 'Secondary Language'),
(9, 'History', 'Main', 'History'),
(10, 'Science', 'Main', 'Science'),
(11, 'Mathematics', 'Main', 'Mathematics'),
(12, 'Business & Accounting Studies', 'Basket 1', 'Commerce'),
(13, 'Geography', 'Basket 1', 'Geography'),
(14, 'Civic Education', 'Basket 1', 'Education'),
(15, 'Entrepreneurship Studies', 'Basket 1', 'Entrepreneurship'),
(16, 'Second Language(Sinhala)', 'Basket 1', 'Language'),
(17, 'Second Language(Tamil)', 'Basket 1', 'Language'),
(18, 'Pali', 'Basket 1', 'Language'),
(19, 'Sanskrit', 'Basket 1', 'Language'),
(20, 'French', 'Basket 1', 'Language'),
(21, 'German', 'Basket 1', 'Language'),
(22, 'Hindi', 'Basket 1', 'Language'),
(23, 'Japanese', 'Basket 1', 'Language'),
(24, 'Arabic', 'Basket 1', 'Language'),
(25, 'Korean', 'Basket 1', 'Language'),
(26, 'Chinese', 'Basket 1', 'Language'),
(27, 'Russian', 'Basket 1', 'Language'),
(28, 'Oriental Music', 'Basket 2', 'Music'),
(29, 'Western Music', 'Basket 2', 'Music'),
(30, 'Carnatic Music', 'Basket 2', 'Music'),
(31, 'Oriental Dancing', 'Basket 2', 'Dance'),
(32, 'Bharatha Dancing', 'Basket 2', 'Dance'),
(33, 'Art', 'Basket 2', 'Art'),
(34, 'Appreciation of English Literary Texts', 'Basket 2', 'Literary Texts'),
(35, 'Appreciation of Sinhala Literary Texts', 'Basket 2', 'Literary Texts'),
(36, 'Appreciation of Tamil Literary Texts', 'Basket 2', 'Literary Texts'),
(37, 'Appreciation of Arabic Literary Texts', 'Basket 2', 'Literary Texts'),
(38, 'Drama and Theatre', 'Basket 2', 'Drama'),
(39, 'Information & Communication Technology', 'Basket 3', 'IT'),
(40, 'Agriculture & Food Technology', 'Basket 3', 'Agriculture'),
(41, 'Aquatic Vio-resources Technology', 'Basket 3', 'Aquatics'),
(42, 'Art & Crafts', 'Basket 3', 'Art'),
(43, 'Home Economics', 'Basket 3', 'Economics'),
(44, 'Health & Physical Education', 'Basket 3', 'Health'),
(45, 'Communication & Media Studies', 'Basket 3', 'Technology(Communicaiton)'),
(46, 'Design & Construction Technology', 'Basket 3', 'Technology(Communicaiton)'),
(47, 'Design & Mechanical Technology', 'Basket 3', 'Technology(Communicaiton)'),
(48, 'Design, Electrical & Electronic Technology', 'Basket 3', 'Technology(Communicaiton)'),
(49, 'Electronic Writing & Shorthand', 'Basket 3', 'Technology(Communicaiton)');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `org_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` char(10) NOT NULL,
  `website_address` varchar(255) NOT NULL,
  `founder` varchar(255) NOT NULL,
  `founded_year` int(11) NOT NULL,
  `org_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`org_id`, `address`, `email`, `password`, `phone_no`, `website_address`, `founder`, `founded_year`, `org_type`) VALUES
(6, '123, Jasmine Road, Colombo 3', 'unisliitlk@gmail.com', '$2y$10$AQiFGjgte9v7YEBWHWf3bOrF90WPFMPQpaH12U9rsdlxFokkfVet6', '0714526390', 'www.sliit.lk', 'Mandila', 2004, 'University'),
(7, '456, Galle road, Colombo', 'abcgroup202@gmail.com', '$2y$10$asN26irqhAZFqdfS2druXO1BZm.A6H8Fm9NFJKtkezEsdQ7b0jmRK', '0112345678', 'www.abc.com', 'Mark perera', 2004, 'Company');

-- --------------------------------------------------------

--
-- Table structure for table `poster`
--

CREATE TABLE `poster` (
  `poster_id` int(11) NOT NULL,
  `session_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poster`
--

INSERT INTO `poster` (`poster_id`, `session_fee`) VALUES
(21, '1000.00'),
(22, '999.00'),
(23, '1500.00'),
(24, '2000.00'),
(25, '2300.00');

-- --------------------------------------------------------

--
-- Table structure for table `postinteractions`
--

CREATE TABLE `postinteractions` (
  `interaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `interaction` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postinteractions`
--

INSERT INTO `postinteractions` (`interaction_id`, `user_id`, `post_id`, `interaction`) VALUES
(1, 2, 4, 'liked'),
(2, 2, 5, 'liked'),
(3, 2, 2, 'liked'),
(4, 2, 15, 'liked'),
(5, 2, 12, 'liked'),
(6, 2, 20, 'liked'),
(7, 2, 14, 'liked'),
(8, 3, 5, 'liked'),
(9, 3, 4, 'liked'),
(10, 3, 3, 'liked'),
(11, 3, 2, 'liked'),
(12, 3, 1, 'liked'),
(13, 3, 11, 'liked'),
(14, 3, 19, 'liked'),
(15, 3, 18, 'disliked'),
(16, 3, 17, 'liked'),
(17, 3, 20, 'disliked'),
(18, 4, 4, 'liked'),
(19, 4, 2, 'liked'),
(20, 4, 15, 'disliked'),
(21, 4, 14, 'liked'),
(22, 4, 12, 'liked'),
(23, 4, 20, 'liked'),
(24, 4, 16, 'liked'),
(25, 4, 25, 'liked'),
(26, 4, 24, 'liked'),
(27, 4, 23, 'liked'),
(28, 4, 22, 'liked'),
(29, 5, 15, 'liked'),
(30, 9, 25, 'liked');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `applied` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `ups` int(11) DEFAULT NULL,
  `downs` int(11) DEFAULT NULL,
  `shares` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `payed` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `type`, `image`, `title`, `body`, `applied`, `capacity`, `ups`, `downs`, `shares`, `views`, `payed`, `created_at`) VALUES
(1, 6, 'coursepost', '1648320812_course1.png', 'Computer Science', 'Through the development of new applications in science, engineering, and business, Computer Science is radically changing the way in which we experience our world. This program equips students with the skills needed to contribute to this exciting and rapidly evolving field. Computer Science is our most flexible program , allowing you to chose course units to reflect your developing and changing interests. Furthermore, a wide range of themes from across the discipline allow you to specialize in the second and third years. You will gain not only knowledge and practical experience of the latest technologies, but also a grounding in the underlying principles of the subject. It is this combination of skills that enable our graduates to keep pace with this fast moving subject, and secure rewarding careers that can be pursued almost anywhere in the world.', NULL, NULL, 1, 0, 0, 0, 0, '2022-03-27 00:23:32'),
(2, 6, 'coursepost', '1648320867_course2.png', 'Advanced Certificate in English', 'Having an excellent grasp of spoken and written English is a fundamental requirement for success in the corporate world or other careers. Such knowledge also builds confidence and helps in forming relationships in business and social settings. This course is intended to develop the Listening, Speaking, Reading, and Writing Skills of students. The course will use interactive sessions and technologies based on the ‘Communicative Approach to Language Teaching’, which is the latest language teaching methodology practiced around the world. The syllabus covers a broad range of topics required to reach a level of competence in using English effectively and confidently. Entry Requirements Completion of GCE O/L, A/L examinations AND Certificate in English (CIE) course', NULL, NULL, 3, 0, 0, 0, 0, '2022-03-27 00:24:27'),
(3, 6, 'coursepost', '1648320919_course3.png', 'Artificial Intelligence', 'Artificial intelligence courses after 12th are related to the domain of Computer Science which focuses on developing programmed machines or computers that can function similarly to a human brain. In India, many institutes and websites offer Artificial Intelligence Courses After 12th. Candidates would be eligible to apply for the Artificial Intelligence course after the completion of their class 12th exam.', NULL, NULL, 1, 0, 0, 0, 0, '2022-03-27 00:25:19'),
(4, 6, 'coursepost', '1648321000_course4.jpg', 'Mathematics and Statistic', 'B.Sc Mathematics is a 3-year undergraduate course that deals with the discipline of mathematics and the analysis of numbers, structure, transition, and space is the focus of the B.Sc Maths program. Aspirants will find job opportunities in finance, information technology, and research firms after completing the B.Sc Mathematics course. B.Sc Mathematics Course Details Degree - Bachelors Full Form - Bachelor of Science in Mathematics Duration - Course Duration of Bachelor of Science [B.Sc] (Mathematics) is 3 Years. Age - The minimum age to join B.Sc course is 18 years. There is no upper age limit.', NULL, NULL, 3, 0, 0, 0, 0, '2022-03-27 00:26:40'),
(5, 6, 'coursepost', '1648321055_course5.jpg', 'Civil Engineering', 'The Faculty of Engineering is the epicenter of engineering education, research, knowledge creation and distribution in Sri Lanka. Comprised of prominent lecturers, researchers and a helpful academic staff, the students are guaranteed to receive quality education and knowledge. The students will be well guided so that they study their courses and learn that they are working for knowledge and career, not just to pass examinations. Our academic programs are dedicated to create innovative leaders in a world of modern technology.', NULL, NULL, 2, 0, 0, 0, 0, '2022-03-27 00:27:35'),
(6, 6, 'noticepost', '1648321178_intake1.jpg', 'CALLING INTERVIEW AND REGISTRATION FOR INFORMATION TECHNOLOGY', 'Closing Date -  2022/05/31 Minimum Qualification -  C for G.C.E. O/L English Pass G.C.E. Advanced Level in Physical stream', NULL, NULL, 0, 0, 0, 0, 1, '2022-03-27 00:29:38'),
(7, 6, 'noticepost', '1648321229_intake2.jpg', 'INTERVIEW AND REGISTRATION FOR ENGLISH', 'Closing Date -  2022/05/31 Minimum Qualification -  C for G.C.E. O/L English Pass G.C.E. Advanced Level in any stream', NULL, NULL, 0, 0, 0, 0, 1, '2022-03-27 00:30:29'),
(8, 6, 'noticepost', '1648321279_intake3.jpg', 'INTAKE FOR 2023', 'Closing Date -  2022/05/31 Minimum Qualification -  C for G.C.E. O/L English Pass G.C.E. Advanced Level in Physical stream', NULL, NULL, 0, 0, 0, 0, 1, '2022-03-27 00:31:19'),
(9, 6, 'noticepost', '1648321323_intake4.jpeg', 'REGISTRATION DEADLINE EXTENDED', 'Closing Date -  2022/05/31 Minimum Qualification -  C for G.C.E. O/L English Pass G.C.E. Advanced Level in any stream', NULL, NULL, 0, 0, 0, 0, 1, '2022-03-27 00:32:03'),
(10, 6, 'noticepost', '1648321368_intake5.jpg', 'MBA and EMBA INTAKE FOR 2022', 'Closing Date -  2022/05/31 Minimum Qualification -  C for G.C.E. O/L English Pass G.C.E. Advanced Level in Commerce stream', NULL, NULL, 0, 0, 0, 0, 1, '2022-03-27 00:32:48'),
(11, 7, 'jobpost', '1648321469_job1.jpg', 'Vacancies for Full Stack Developers', 'A Java, C#, .Net, C, Sybase and Oracle Software Developer is generally responsible for the development, design and implementation of new or modified software products or ongoing business projects. Typically sitting within the IT team of a business, a Software Developer will be involved in liaising with the Business Analysts and Development Managers to ensure software projects meet requirements.', 0, 40, 1, 0, 0, 0, 1, '2022-03-27 00:34:29'),
(12, 7, 'jobpost', '1648321522_job2.png', 'Hiring Graphic Designers', 'You&#39;ll work on a variety of products and activities, such as websites, advertising, books, magazines, posters, computer games, product packaging, exhibitions and displays, corporate communications and corporate identity, i.e. giving organizations a visual brand. Working to a brief that has been agreed with the client, creative director or account manager, you&#39;ll develop appropriate creative ideas and concepts for the client&#39;s objectives. The work demands creative flair, up-to-date knowledge of industry software and a professional approach to time, costs and deadlines. Salary start from LKR 75000.', 0, 10, 2, 0, 0, 0, 1, '2022-03-27 00:35:22'),
(13, 7, 'jobpost', '1648321571_job3.jpg', 'Vacancy for Business Analysts', 'We are hiring a business analyst to join our project team. You will work alongside other business analysts and report directly to the project manager. Your main tasks will include performing detailed requirements analysis, documenting processes, and performing some user acceptance testing. To succeed in this role you should have a natural analytical way of thinking and be able to explain difficult concepts to non-technical users. Salary starts from LKR 100000.', 0, 5, 0, 0, 0, 0, 1, '2022-03-27 00:36:11'),
(14, 7, 'jobpost', '1648321625_job4.jpg', 'Architect Vacancies', 'As an architect, you&#39;ll design new buildings or extensions or alterations to existing structures and advise on the restoration and conservation of old properties. You may work on individual buildings or on large redevelopment schemes, and your responsibility can extend to the design of the surrounding landscape and spaces. Working closely with clients and users, you&#39;ll make sure that projected designs match requirements and are functional, safe and economical, and in some cases highly innovative. You&#39;ll usually control a project from start to finish and work with a number of construction professionals, including surveyors and engineers. Salary starts from LKR 150000', 0, 10, 2, 0, 0, 0, 1, '2022-03-27 00:37:05'),
(15, 7, 'jobpost', '1648321717_job5.jpg', 'Apply For Senior Software Engineers', 'Must Have skills:\r\n* Working experience in C#, ASP .Net MVC, Web API and Entity Framework\r\n* Experience in writing TSQL with SQL Server\r\n* Knowledge in HTML, CSS\r\n* Experience in JAVAscript, Typescript and JQuery\r\n* Knowledge in creating SPA based applications preferably Angular or React Teamwork, quality of life, professional and personal development: values that Virtusa is proud to embody. When you join us, you join a team of 21,000 people globally that cares about your growth — one that seeks to provide you with exciting projects, opportunities and work with state of the art technologies throughout your career with us. Great minds, great potential: it all comes together at Virtusa. We value collaboration and the team environment of our company and seek to provide great minds with a dynamic place to nurture new ideas and foster excellence. Virtusa was founded on principles of equal opportunity for all, and so does not discriminate on the basis of race, religion, color, sex, gender identity, sexual orientation, age, non-disqualifying physical or mental disability, national origin, veteran status or any other basis covered by appropriate law. All employment is decided on the basis of qualifications, merit, and business need.', 0, 15, 2, 1, 0, 0, 1, '2022-03-27 00:38:37'),
(16, 8, 'banner', '1648321861_job1.jpg', 'Online Business Workshop', 'Online Business Workshop with Jonaton Dew, e-commerce expert will be held on 20th December 2022 from 10 a.m - 5. p.m', 0, 200, 1, 0, 0, 0, 1, '2022-03-27 00:41:01'),
(17, 8, 'banner', '1648322069_banner2.jpg', 'Social Media Marketing Conference', 'Join with us on 29th September', 1, 100, 1, 0, 0, 0, 1, '2022-03-27 00:44:29'),
(18, 8, 'banner', '1648322136_banner3.jpg', 'Future of Graphic Design', 'An online seminar on &#34;Graphic design strategy Future of graphic design will be held on 12th December 2022 at 5 p.m. Join with us !', 0, 150, 0, 1, 0, 0, 1, '2022-03-27 00:45:36'),
(19, 8, 'banner', '1648322182_banner4.jpg', 'Career Counselling', 'For School, College students & Graduates. Join with us !', 1, 250, 1, 0, 0, 0, 1, '2022-03-27 00:46:22'),
(20, 8, 'banner', '1648322225_banner5.jpg', 'LIVE', 'LIVE with Thomas Pesaco', 3, 500, 2, 1, 0, 0, 1, '2022-03-27 00:47:05'),
(21, 9, 'poster', '1648322374_poster1.jpg', 'Online Tutoring Session', 'From Sunday- Wednesday at 11 a.m', 0, 20, 0, 0, 0, 0, 1, '2022-03-27 00:49:34'),
(22, 9, 'poster', '1648322417_poster2.jpeg', 'HTML, CSS and Javascript', 'On every Saturday at 6.00 p.m', 1, 10, 1, 0, 0, 0, 1, '2022-03-27 00:50:17'),
(23, 9, 'poster', '1648322465_poster3.jpg', 'Software Engineering', 'Software Engineering from the beginning. On Every Wednesday at 5 p.m', 1, 70, 1, 0, 0, 0, 1, '2022-03-27 00:51:05'),
(24, 9, 'poster', '1648322507_poster4.jpg', 'Hardware & Software Components', 'On 2nd April at 7.00 p.m', 1, 150, 1, 0, 0, 0, 1, '2022-03-27 00:51:47'),
(25, 9, 'poster', '1648322546_poster5.png', 'C++  for beginners', 'On 5th May', 0, 200, 2, 0, 0, 0, 1, '2022-03-27 00:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `privatecourses`
--

CREATE TABLE `privatecourses` (
  `privatecourse_id` int(11) NOT NULL,
  `provide_degree` varchar(255) DEFAULT NULL,
  `course_fee` varchar(50) DEFAULT NULL,
  `private_uni_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privatecourses`
--

INSERT INTO `privatecourses` (`privatecourse_id`, `provide_degree`, `course_fee`, `private_uni_id`, `post_id`) VALUES
(1, 'Bsc.(Hons) in Computer Science', '1000000', 6, 1),
(2, 'Diploma in English', '95000', 6, 2),
(3, 'BSc. in Artificial Intelligence', '4500000', 6, 3),
(4, 'BSc in Mathematics', '200000', 6, 4),
(5, 'BSc. in Engineering', '1500000', 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `privateuniversity`
--

CREATE TABLE `privateuniversity` (
  `privateuni_id` int(11) NOT NULL,
  `ugc_approval` varchar(3) NOT NULL,
  `world_rank` int(11) NOT NULL,
  `student_amount` int(11) NOT NULL,
  `graduate_job_rate` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `uni_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privateuniversity`
--

INSERT INTO `privateuniversity` (`privateuni_id`, `ugc_approval`, `world_rank`, `student_amount`, `graduate_job_rate`, `description`, `uni_type`) VALUES
(6, 'Yes', 7711, 5289, 84, 'We are a leading non-state degree awarding institute approved by the University Grants Commission (UGC)', 'Private');

-- --------------------------------------------------------

--
-- Table structure for table `profguide`
--

CREATE TABLE `profguide` (
  `guider_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `subject1` varchar(255) NOT NULL,
  `subject2` varchar(255) DEFAULT NULL,
  `subject3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profguiderenrollments`
--

CREATE TABLE `profguiderenrollments` (
  `enroll_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `interaction` varchar(100) DEFAULT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profguiderenrollments`
--

INSERT INTO `profguiderenrollments` (`enroll_id`, `user_id`, `post_id`, `interaction`, `applied_date`) VALUES
(1, 2, 20, 'applied', '2022-03-27 03:57:52'),
(2, 3, 17, 'applied', '2022-03-27 04:12:51'),
(3, 4, 20, 'applied', '2022-03-27 04:22:33'),
(4, 4, 19, 'applied', '2022-03-27 04:22:48'),
(5, 5, 20, 'applied', '2022-03-27 04:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `reported_id` int(11) NOT NULL,
  `reported_actor_type` varchar(20) DEFAULT NULL,
  `reporter_id` int(11) NOT NULL,
  `reporter_actor_type` varchar(20) DEFAULT NULL,
  `report` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `post_id`, `user_id`, `rate`, `review`, `created_at`) VALUES
(1, 2, 3, 4, 'Good course. I also followed this when I was doing my OLs', '2022-03-27 09:38:51'),
(2, 5, 3, 4, 'Obviously fascinating course. Highly recommended.', '2022-03-27 09:39:18'),
(3, 4, 3, 5, 'Highly recommended', '2022-03-27 09:39:37'),
(4, 3, 3, 3, 'Good.', '2022-03-27 09:39:53'),
(5, 1, 3, 2, 'Cool. but low interaction with students i guess.', '2022-03-27 09:40:48'),
(6, 18, 3, 1, 'Not recommended. But some contents are helpful.', '2022-03-27 09:42:36'),
(7, 17, 3, 5, 'Highly recommended', '2022-03-27 09:42:59'),
(8, 4, 4, 4, 'Yes this is a good course.', '2022-03-27 09:47:50'),
(9, 20, 4, 3, 'Good one.', '2022-03-27 09:52:30'),
(10, 19, 4, 4, 'Currently following. So far so good.', '2022-03-27 09:53:09'),
(11, 16, 4, 4, 'Obviously good.', '2022-03-27 09:53:38'),
(12, 23, 4, 4, 'Amazing.', '2022-03-27 09:54:56'),
(13, 22, 4, 5, 'Perfect', '2022-03-27 09:55:11'),
(14, 4, 4, 4, 'Amazing', '2022-03-27 09:57:43'),
(15, 20, 5, 5, 'Cool sessions', '2022-03-27 09:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `name`, `type`, `district_id`) VALUES
(1, 'Ananda Balika Vidayalaya, Colombo 10', 'National', 1),
(2, 'Ananda College', 'National', 1),
(3, 'Ananda Sastralaya, Kotte', 'National', 1),
(4, 'Asoka Vidyalaya, Colombo 10', 'National', 1),
(5, 'Anula Vidyalaya', 'National', 1),
(6, 'Colombo Hindu College', 'National', 1),
(7, 'Defence Services School, Colombo', 'National', 1),
(8, 'Devi Balika Vidyalaya', 'National', 1),
(9, 'Dharmapala Vidyalaya, Pannipitiya', 'National', 1),
(10, 'D.S.Senanayake College', 'National', 1),
(11, 'Gothami Balika Vidyalaya, Colombo 10', 'National', 1),
(12, 'Hameed Al Hussainie College', 'National', 1),
(13, 'Isipathana College', 'National', 1),
(14, 'Lindsay Collage', 'National', 1),
(15, 'Mahanama College', 'National', 1),
(16, 'Mahamaya Balika Vidyalaya, Nugegoda', 'National', 1),
(17, 'Muslim Ladies College', 'National', 1),
(18, 'Nalanda College', 'National', 1),
(19, 'Presbyterian Girls\' National School, Dehiwala', 'National', 1),
(20, 'President\'s College (Sri Lanka)', 'National', 1),
(21, 'Prince of Wales\' Maha Vidayalaya, Moratuwa', 'National', 1),
(22, 'Princess of Wales\' Maha Vidayalaya, Moratuwa', 'National', 1),
(23, 'Royal College Colombo', 'National', 1),
(24, 'Sirimavo Balika Vidyalaya', 'National', 1),
(25, 'St. Lucia\'s College (Maha Vidyalaya), Kotahena, Colombo - 13', 'National', 1),
(26, 'St. Pauls Girls\' School, Milagiriya', 'National', 1),
(27, 'Thurstan College', 'National', 1),
(28, 'Veluwana Vidyalaya, Colombo 09', 'National', 1),
(29, 'Visakha Vidyalaya', 'National', 1),
(30, 'Vivekananda College', 'National', 1),
(31, 'Yasodara Balika Vidyalaya', 'National', 1),
(32, 'Beravats College Ampitiya -Kandy', 'National', 4),
(33, 'Dharmaraja College', 'National', 4),
(34, 'Girls\' High School', 'National', 4),
(35, 'Kingswood College', 'National', 4),
(36, 'Mahamaya Girls\' College, Kandy', 'National', 4),
(37, 'Nugawela Boys\' College, Kandy', 'National', 4),
(38, 'Pushpadana Girls\' College', 'National', 4),
(39, 'St/Sylvester\'s College', 'National', 4),
(40, 'Vidyartha College, Kandy', 'National', 4),
(41, 'Zahira Muslim Mahavidyalayas, Gampola', 'National', 4),
(42, 'Ananda Central College', 'National', 7),
(43, 'Anurudda kumara maha vidyalaya', 'National', 7),
(44, 'Dharmasoka College', 'National', 7),
(45, 'Good Shepherd Convent', 'National', 7),
(46, 'Mahinda College', 'National', 7),
(47, 'Richmond College', 'National', 7),
(48, 'Sacred Heart Convent', 'National', 7),
(49, 'Sangamitta Balika Vidyalaya', 'National', 7),
(50, 'Southlands College', 'National', 7),
(51, 'Sri Kalyanatissa Vidyalaya,Batapola', 'National', 7),
(52, 'St.Aloysius College', 'National', 7),
(53, 'Vidyaloka College', 'National', 7),
(54, 'G/Zahira college', 'National', 7),
(55, 'Hindu College, Chavakachcheri', 'National', 10),
(56, 'Jaffna Central College', 'National', 10),
(57, 'Jaffna Hindu College', 'National', 10),
(58, 'Kokuvil Hindu College', 'National', 10),
(59, 'Tellippalai Union College', 'National', 10),
(60, 'J/Thuraiyappa Vithiyalayam, Columbuthurai, Jaffna', 'National', 10),
(61, 'Vembady Girls High School', 'National', 10),
(62, 'Holy Family Convent', 'National', 18),
(63, 'Maliyadeva Balika Vidyalaya', 'National', 18),
(64, 'Maliyadeva College', 'National', 18),
(65, 'St. Anne\'s College', 'National', 18),
(66, 'Ajmeer Madhya Maha Vidyalaya', 'National', 5),
(67, 'Amina Maha Vidyalaya', 'National', 5),
(68, 'Christ Church College, Matale', 'National', 5),
(69, 'Matale Hindu College', 'National', 5),
(70, 'Sri Naga National College', 'National', 5),
(71, 'Sri Sangamitta Balika Madhya Vidyalaya, Matale', 'National', 5),
(72, 'St Thomas\' College, Matale', 'National', 5),
(73, 'Vijaya College, Matale', 'National', 5),
(74, 'Zahira College, Matale', 'National', 5),
(75, 'Narandeniya Central College, Kamburupitiya', 'National', 8),
(76, 'Rahula College', 'National', 8),
(77, 'St Chearch College', 'National', 8),
(78, 'St Sevatious College', 'National', 8),
(79, 'St Thomas\' College, Matara', 'National', 8),
(80, 'Sujatha Vidyalaya, Matara', 'National', 8),
(81, 'Thihagoda M.M.V', 'National', 8),
(82, 'Anuradhapura Central College', 'National', 20),
(83, 'Swarnapali Balika Maha Vidyalaya', 'National', 20),
(84, 'Ananda Balika Vidyala', 'National', 21),
(85, 'Aralaganvila Vilayaya Central College', 'National', 21),
(86, 'Madirigiriya Central College', 'National', 21),
(87, 'Minnariya Central college', 'National', 21),
(88, 'Polonnaruwa Royal Central College', 'National', 21),
(89, 'Kalutara Balika National School Kalutara', 'National', 3),
(90, 'Kalutara Vidyalaya, Kalutara', 'National', 3),
(91, 'Kalutara muslim maha vidyalaya kalutara', 'National', 3),
(92, 'Miriswatta Maha Vidyalaya,Dodangoda', 'National', 3),
(93, 'K/Sri Devananda Vidyalaya kalutara', 'National', 3),
(94, 'Tissa Vidyalaya, Kalutara', 'National', 3),
(95, 'Bandaranayaka College', 'National', 2),
(96, 'Nalanda Boy\'s School, Minuwangoda', 'National', 2),
(97, 'Sri Dharmaloka College', 'National', 2),
(98, 'Dudley Senanayake Central College - Tholangamuwa', 'National', 25),
(99, 'Kegalu Balika Maha Vidyalaya', 'National', 25),
(100, 'Kegalu Vidyalaya', 'National', 25),
(101, 'St Joseph\'s Convent', 'National', 25),
(102, 'St Mary\'s College', 'National', 25),
(103, 'Zahira College, Mawanella', 'National', 25),
(104, 'Ananda National School, Chilaw', 'National', 19),
(105, 'Anamaduwa National College, Anamaduwa', 'National', 19),
(106, 'Andre College, Puttalam', 'National', 19),
(107, 'Al/Aqza National School, Kalpitiya', 'National', 19),
(108, 'Dankotuwa Balika, Dankotuwa', 'National', 19),
(109, 'Dhammissara National College, Nattandiya', 'National', 19),
(110, 'Holy Family Girls School, Wennappuwa', 'National', 19),
(111, 'Joseph Vaz College, Wennappuwa', 'National', 19),
(112, 'Senanayake National College,Madampe', 'National', 19),
(113, 'Zahira National School, Puttalam', 'National', 19),
(114, 'Ambadandegama Maha Vidyalaya, Bandarawela', 'National', 22),
(115, 'Badulla Central College, Badulla', 'National', 22),
(116, 'Badulla Dharmadutha College, Badulla', 'National', 22),
(117, 'Bandarawela Central college', 'National', 22),
(118, 'Dharmapala Maha Vidyalaya, Bandarawela', 'National', 22),
(119, 'Halpe National School, Halpe', 'National', 22),
(120, 'Kahagolla National School, Diyatalawa, Bandarawela', 'National', 22),
(121, 'B/Kuda Kusum Balika Maha Vidyalaya, Bandarawela', 'National', 22),
(122, 'Naulla Central College, Demodara', 'National', 22),
(123, 'Sri Janananda National School, Kadurugamuwa', 'National', 22),
(124, 'St. Joseph\'s College, Bandarawela', 'National', 22),
(125, 'Vishaka Balika Vidyalaya, Bandarawela', 'National', 22),
(126, 'Ananda Balika Vidyalaya, Kotte', 'Provincial', 1),
(127, 'C.W.W. Kannangara Vidyalaya', 'Provincial', 1),
(128, 'Good Shepherd Convent, Colombo-13', 'Provincial', 1),
(129, 'Gothami Balika Vidyalaya', 'Provincial', 1),
(130, 'Janadhipathi Balika Vidyalaya, Nawala', 'Provincial', 1),
(131, 'Lumbini Vidyalaya', 'Provincial', 1),
(132, 'Sri Rahula Balika Vidyalaya, Malabe', 'Provincial', 1),
(133, 'Meegoda Dharmaraja Vidyalaya, Meegoda', 'Provincial', 1),
(134, 'St. Johns College, Nugegoda', 'Provincial', 1),
(135, 'Yashodara Balika Vidyalaya', 'Provincial', 1),
(136, 'Gohagoda Maha Vidyalaya', 'Provincial', 4),
(137, 'Halloluwa Navodya Maha Vidyalaya', 'Provincial', 4),
(138, 'Nugawela Boys\' College', 'Provincial', 4),
(139, 'Pushpadana Balika Vidyalaya', 'Provincial', 4),
(140, 'Ranabima Royal College', 'Provincial', 4),
(141, 'Sarasavi Uyana Maha Vidyalaya,kandy', 'Provincial', 4),
(142, 'Vidyartha College', 'Provincial', 4),
(143, 'Viharamaha Devi Balika Vidyalaya', 'Provincial', 4),
(144, 'Wariyapola Sri Sumangala College', 'Provincial', 4),
(145, 'G/Ananda Central Collage', 'Provincial', 4),
(146, 'Batapola Central Collage', 'Provincial', 4),
(147, 'Karandeniya Central Collage', 'Provincial', 4),
(148, 'G/P.De.S.Kularathna Maha Vidyalaya', 'Provincial', 4),
(149, 'G/Thunduwa Muslim Maha Vidyala', 'Provincial', 4),
(150, 'Jaffna Hindu Ladies College', 'Provincial', 10),
(151, 'Jaffna Hindu Primary (JHP)', 'Provincial', 10),
(152, 'Mahajana College, Tellippalai', 'Provincial', 10),
(153, 'Manipay Hindu College', 'Provincial', 10),
(154, 'Manipay Hindu Ladies College', 'Provincial', 10),
(155, 'Manipay Memorial English school', 'Provincial', 10),
(156, 'Sri Somaskanda College, Puttur', 'Provincial', 10),
(157, 'Skandavarodaya College', 'Provincial', 10),
(158, 'Uduvil Girls High School', 'Provincial', 10),
(159, 'Ambanpola Central College, Ambanpola', 'Provincial', 18),
(160, 'Ambanpola Kanista Vidyalaya, Ambanpola', 'Provincial', 18),
(161, 'Central College Kuliyapitiya', 'Provincial', 18),
(162, 'Sir John Kotalawala Vidyalaya', 'Provincial', 18),
(163, 'Maliyadeva Model School', 'Provincial', 18),
(164, 'Wayamba Royal Central College College', 'Provincial', 18),
(165, 'Government Science College, Matale', 'Provincial', 5),
(166, 'Sangamiththa Balika Maha vidyalaya', 'Provincial', 5),
(167, 'Al-Adhan Muslim Mahavidyalaya', 'Provincial', 22),
(168, 'Sujatha Vidyalaya', 'Provincial', 22),
(169, 'Uva College', 'Provincial', 22),
(170, 'Viharamahadevi Girls school', 'Provincial', 22),
(171, 'Vishaka Vidyalaya', 'Provincial', 22),
(172, 'Bandarawela Dharmapala Maha Vidyalaya', 'Provincial', 21),
(173, 'Hingurakdamana Maha vidyalaya', 'Provincial', 21),
(174, 'Lankapura Maha vidyalaya', 'Provincial', 21),
(175, 'Vigitha Maha vidyalaya', 'Provincial', 21),
(176, 'Thopawawa Maha vidyalaya', 'Provincial', 21),
(177, 'Sewamuktha Maha vidyalaya', 'Provincial', 21),
(178, 'Ferguson high School,Ratnapura', 'Provincial', 24),
(179, 'Mihindu Vidyalaya, Ratnapura', 'Provincial', 24),
(180, 'Nawanagara Vidyalaya, Ratnapura', 'Provincial', 24),
(181, 'Sumana Balika Vidyalaya, Ratnapura', 'Provincial', 24),
(182, 'Sivali Central College, Ratnapura', 'Provincial', 24),
(183, 'Kinniya Central College', 'Provincial', 17),
(184, 'Orr\'s Hill Vivekananda College', 'Provincial', 17),
(185, 'Ramakrishna Mission Sri Koneswara Hindu College', 'Provincial', 17),
(186, 'St Mary\'s College, Trincomalee', 'Provincial', 17),
(187, 'Trincomalee Hindu College', 'Provincial', 17),
(188, 'Agamathi Balika Vidyalaya, Panadura', 'Provincial', 26),
(189, 'Arafa National College, Weligama', 'Provincial', 26),
(190, 'Annor Muslim Balika National College, Weligama', 'Provincial', 26),
(191, 'Al-hilal Maha Vidyalaya, Sainthamaruthu', 'Provincial', 26),
(192, 'Al Yaseen Vidyalaya, Bandarawela', 'Provincial', 26),
(193, 'As-Safa Muslim School, Madurapura, Denipitiya', 'Provincial', 26),
(194, 'Atapattukanda K.V, Deiyandara', 'Provincial', 26),
(195, 'Bandaranaike Vidyalaya, Gampaha', 'Provincial', 26),
(196, 'Darmapala Maha Vidyalaya, Bandarawela', 'Provincial', 26),
(197, 'Darmashoka Maha Vidyalaya, Bandarawela', 'Provincial', 26),
(198, 'De Mazenod College, Kandana', 'Provincial', 26),
(199, 'Debaraweva Madhya Maha Vidyalaya, Tissamaharamaya', 'Provincial', 26),
(200, 'Deiyandara M.M.V,Deiyandara', 'Provincial', 26),
(201, 'Dhammissara national College, Nattandiya', 'Provincial', 26),
(202, 'Bd/Haputale Tamil Central College, Haputale', 'Provincial', 26),
(203, 'Joseph Vaz College, Wennapuwa', 'Provincial', 26),
(204, 'Kegalle Balika Vidyalaya, Kegalle', 'Provincial', 26),
(205, 'Ketiyape M.V, Deiyandara', 'Provincial', 26),
(206, 'Kilinochchi Madya Maha Vidyalayam, Kilinochchi', 'Provincial', 26),
(207, 'B/ Kuda Kusum Balika Maha Vidyalaya, Bandarawela', 'Provincial', 26),
(208, 'Kudakusum Maha Vidyalaya, Bandarawela', 'Provincial', 26),
(209, 'Mahumoos Ladies College, Kalmunai', 'Provincial', 26),
(210, 'Mawala Vidyalaya, Wadduwa', 'Provincial', 26),
(211, 'Mallavi Central College, Mallavi', 'Provincial', 26),
(212, 'Malharu Sams School, Sainthamaruthu', 'Provincial', 26),
(213, 'MR/Kongala M.M.V, Hakmana', 'Provincial', 26),
(214, 'MR/Gagodagama jayawardana M.V, Hakmana', 'Provincial', 26),
(215, 'MR/Buddhajayanthi K.V, Hakmana', 'Provincial', 26),
(216, 'Nalanda Girl\'s School, Minuwangoda', 'Provincial', 26),
(217, 'Narandeniya M.M.V, kamburupitiya', 'Provincial', 26),
(218, 'Piliyandala Central College, Piliyandala', 'Provincial', 26),
(219, 'Panadura Royal College, Panadura', 'Provincial', 26),
(220, 'Rathanawali Balika Vidyalaya, Gampaha', 'Provincial', 26),
(221, 'Seevali Navodya Maha Vidyalaya, Bandarawela', 'Provincial', 26),
(222, 'Sitthartha College, Weligama', 'Provincial', 26),
(223, 'Sripali Maha Vidyalaya, Horana', 'Provincial', 26),
(224, 'Sir Rasik Fareed Maha Vidyalaya, Bandarawela', 'Provincial', 26),
(225, 'Sri Sangamitta Balika Vidyalaya, Matale', 'Provincial', 26),
(226, 'St. Anne\'s M.M.V, Vankalai, Mannar', 'Provincial', 26),
(227, 'St. Josophs College, Bandarawela', 'Provincial', 26),
(228, 'St. Mary\'s Maha vidayalaya, Bandarawela', 'Provincial', 26),
(229, 'St. Pauls Balika Maha Vidyalaya,Kelaniya', 'Provincial', 26),
(230, 'Sumagale Balika National College, Weligama', 'Provincial', 26),
(231, 'warnapali Balika Vidyalaya, Anuradhapura', 'Provincial', 26),
(232, 'Taxila Central College, Horana', 'Provincial', 26),
(233, 'Telijjawila Central College, Matara', 'Provincial', 26),
(234, 'Thihagoda M.M.V,Thihagoda', 'Provincial', 26),
(235, 'Tumpane Central College', 'Provincial', 26),
(236, 'Vishaka Maha Vidyalaya, Bandarawela', 'Provincial', 26),
(237, 'Vayavilan Central College, Vayavilan', 'Provincial', 26),
(238, 'Zahira College, Kalmunai', 'Provincial', 26),
(239, 'Alexcendra Collage, Maradana', 'Private', 1),
(240, 'Bishop\'s College', 'Private', 1),
(241, 'Buddhist Ladies College', 'Private', 1),
(242, 'Carey College, Borella', 'Private', 1),
(243, 'Good Shepherd Convent', 'Private', 1),
(244, 'Highlands College, Nugegoda', 'Private', 1),
(245, 'Holy Family Convent, Colombo 4', 'Private', 1),
(246, 'Holy Family Convent, Dehiwela', 'Private', 1),
(247, 'Ladies College, Colombo', 'Private', 1),
(248, 'Karlshrue College', 'Private', 1),
(249, 'Methodist College, Colombo', 'Private', 1),
(250, 'Musaeus College', 'Private', 1),
(251, 'Our Lady of Victories Convent, Moratuwa', 'Private', 1),
(252, 'St. Benedict\'s College, Coombo', 'Private', 1),
(253, 'St Bridget\'s Convent, Colombo', 'Private', 1),
(254, 'St. Joseph\'s College', 'Private', 1),
(255, 'St. Paul\'s Girls School, Milagiriya', 'Private', 1),
(256, 'St. Peter\'s College', 'Private', 1),
(257, 'St. Sebastian\'s College, Moratuwa', 'Private', 1),
(258, 'St. Thomas College, Mount Lavinia', 'Private', 1),
(259, 'S. Thomas\' Preparatory School,Kollupitiya', 'Private', 1),
(260, 'Sujatha Vidyalaya - Nugegoda', 'Private', 1),
(261, 'The School For The Blind', 'Private', 1),
(262, 'Wesley College', 'Private', 1),
(263, 'Zahira College, Colombo', 'Private', 1),
(264, 'Ave Maria Convent, Negombo', 'Private', 1),
(265, 'Maris Stella College, Negombo', 'Private', 1),
(266, 'Newstead College, Negombo', 'Private', 1),
(267, 'St. Mary\'s College, Negombo', 'Private', 1),
(268, 'Hillwood College', 'Private', 4),
(269, 'St Anthony\'s Balika Vidyalaya', 'Private', 4),
(270, 'St Anthony\'s College, Katugastota', 'Private', 4),
(271, 'Trinity College', 'Private', 4),
(272, 'Rippon Girls\' College', 'Private', 7),
(273, 'Chundikuli Girls High School', 'Private', 10),
(274, 'Hartley College', 'Private', 10),
(275, 'Jaffna College', 'Private', 10),
(276, 'Jaffna Convent', 'Private', 10),
(277, 'St. John\'s College, Jaffna', 'Private', 10),
(278, 'St. Patrick\'s College', 'Private', 10),
(279, 'Maliyadeva College', 'Private', 18),
(280, 'Holy Family Convent', 'Private', 18),
(281, 'St. Anne\'s College', 'Private', 18),
(282, 'St Thomas\' Girls School, Matale', 'Private', 5),
(283, 'St. Mary\'s Convent, Matara', 'Private', 8),
(284, 'St. Servatius\'College, Matara', 'Private', 8),
(285, 'St. Thomas Girl\'s School, Matara', 'Private', 8),
(286, 'St. Thomas\' College, Bandarawela', 'Private', 22),
(287, 'St. Thomas\' College, Guruthalawa', 'Private', 22),
(288, 'Child Jesus\'s Convent, Ratnapura', 'Private', 24),
(289, 'Ferguson High School, Ratnapura', 'Private', 24),
(290, 'St. Aloysius College, Ratnapura', 'Private', 24),
(291, 'St. Luke\'s College, Ratnapura', 'Private', 24),
(292, 'Holy Cross College, Gampaha', 'Private', 26),
(293, 'Holy Cross College, Kalutara', 'Private', 26),
(294, 'Mn.Vellankulam G.T.M.S, Mannar', 'Private', 26),
(295, 'St. Michael\'s College, Batticaloa', 'Private', 26),
(296, 'St. John\'s College, Panadura', 'Private', 26),
(297, 'St. Joseph\'s College, Trincomalee', 'Private', 26),
(298, 'St. John Bosco\'s College, Hatton', 'Private', 26),
(299, 'St. Thomas College, Guruthalawa', 'Private', 26),
(300, 'St. Thomas\'s College, Matale', 'Private', 26),
(301, 'St. Xavier Boy\'s National School, Mannar', 'Private', 26),
(302, 'Ceylinco Sussex College Network, Colombo', 'Private', 26),
(303, 'Ceylinco Sussex College Kandy Branch, Kandy', 'Private', 26),
(304, 'Ceylinco Sussex College Galle Branch, Galle', 'Private', 26),
(305, 'Ceylinco Sussex College Ratnapura Branch, Ratnapura', 'Private', 26),
(306, 'Minhal Boys\' School, Kotahena', 'Private', 26),
(307, 'Vajira College, Colombo', 'Private', 26),
(308, 'Vidura College, Colombo', 'Private', 26),
(309, 'Aba Beel International College', 'International', 1),
(310, 'American International School', 'International', 1),
(311, 'Alethea International School', 'International', 1),
(312, 'Amal International School', 'International', 1),
(313, 'Asian International School', 'International', 1),
(314, 'Belvoir College International', 'International', 1),
(315, 'Buddhist Ladies College International', 'International', 1),
(316, 'The British School in Colombo', 'International', 1),
(317, 'College Of World Education', 'International', 1),
(318, 'Colombo International School', 'International', 1),
(319, 'Colombo South International School', 'International', 1),
(320, 'Crescent Schools International', 'International', 1),
(321, 'Elizabeth Moir School', 'International', 1),
(322, 'Gateway College, Colombo', 'International', 1),
(323, 'Highlands College', 'International', 1),
(324, 'Ikra International School', 'International', 1),
(325, 'Ilma International School', 'International', 1),
(326, 'J.M.C. International School', 'International', 1),
(327, 'Lakeland Inter-American School', 'International', 1),
(328, 'Leighton Park International School', 'International', 1),
(329, 'Lyceum International School', 'International', 1),
(330, 'The Overseas School of Colombo', 'International', 1),
(331, 'Oxford College International', 'International', 1),
(332, 'Rotary International School', 'International', 1),
(333, 'Royal Institute', 'International', 1),
(334, 'Stafford International School', 'International', 1),
(335, 'Willesden College International', 'International', 1),
(336, 'Wycherley International School', 'International', 1),
(337, 'Winway International School', 'International', 1),
(338, 'Ecole Internationale', 'International', 4),
(339, 'Gateway College, Kandy (formally Kandy International School)', 'International', 4),
(340, 'Netherfield International School', 'International', 4),
(341, 'Vision International School', 'International', 4),
(342, 'Cambridge International, Matale', 'International', 26),
(343, 'Eureka International school, Kiribathgoda', 'International', 26),
(344, 'Gateway College, Negombo', 'International', 26),
(345, 'Leeds International School, Panadura', 'International', 26),
(346, 'Lyceum International School, Gampaha', 'International', 26),
(347, 'Lyceum International School, Kandana', 'International', 26),
(348, 'Lyceum International School, Panadura', 'International', 26),
(349, 'Lyceum International School, Ratnapura', 'International', 26),
(350, 'Lyceum International School, Wattala', 'International', 26),
(351, 'Negombo International School, Negombo', 'International', 26),
(352, 'Negombo South International School, Negombo', 'International', 26),
(353, 'Noor International School, Kalutara', 'International', 26),
(354, 'Royal International, Matale', 'International', 26),
(355, 'OKI International School, Wattala', 'International', 26),
(356, 'Sri Bodhiraja International College, Embilipitiya', 'International', 26),
(357, 'Ward International School, Gampaha', 'International', 26);

-- --------------------------------------------------------

--
-- Table structure for table `sessionlink`
--

CREATE TABLE `sessionlink` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessionlink`
--

INSERT INTO `sessionlink` (`id`, `post_id`, `date`, `time`, `body`) VALUES
(1, 24, '2022-06-15', '10:15:00', 'https://learn.zoom.us/j/66023267900?pwd=U3hrbS85dHJwRm5UN3FuSkoxQzE3dz09'),
(2, 23, '2022-07-06', '10:17:00', 'https://learn.zoom.us/j/69452048844?pwd=MlNMU3huRjAzeGpHK2krcTZvbGhOdz09'),
(3, 22, '2022-10-04', '10:17:00', 'https://learn.zoom.us/j/65975259338?pwd=dUFUdnFsTGdDNHM0YitRQjJUY1FaZz09');

-- --------------------------------------------------------

--
-- Table structure for table `socialprofiles`
--

CREATE TABLE `socialprofiles` (
  `profile_record_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `printerest` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `reddit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `steamselectedbyalqualifiedstudent`
--

CREATE TABLE `steamselectedbyalqualifiedstudent` (
  `stu_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `stream_id` int(11) NOT NULL,
  `stream_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`stream_id`, `stream_name`) VALUES
(1, 'Arts'),
(2, 'Commerce'),
(3, 'Biological Science'),
(4, 'Physical Science (Maths)'),
(5, 'Engineering Technology'),
(6, 'Biosystems Technology(BST)'),
(7, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phn_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `address`, `gender`, `date_of_birth`, `email`, `phn_no`) VALUES
(2, '12/a, Kahahena, Waga', 'Male', '2002-05-15', 'denethchamodya03@gmail.com', '0714526390'),
(3, '34/c, Meepe, Padukka', 'Male', '2001-03-17', 'disaladivanjana@gmail.com', '0719236558'),
(4, '34/e, Kotikawatta, Padukka', 'Male', '2000-03-17', 'gimanthaanupama008@gmail.com', '0763399475'),
(5, '131/c, Godakawila, Padukka', 'Male', '1999-11-12', 'pasinduasela119@gmail.com', '0775642956');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `school` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacherenrollments`
--

CREATE TABLE `teacherenrollments` (
  `enroll_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `interaction` varchar(100) DEFAULT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherenrollments`
--

INSERT INTO `teacherenrollments` (`enroll_id`, `user_id`, `post_id`, `interaction`, `applied_date`) VALUES
(1, 4, 24, 'applied', '2022-03-27 04:24:03'),
(2, 4, 23, 'applied', '2022-03-27 04:24:08'),
(3, 4, 22, 'applied', '2022-03-27 04:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `post_id`, `user_id`, `amount`) VALUES
(1, 6, 6, 100),
(2, 7, 6, 100),
(3, 8, 6, 100),
(4, 9, 6, 100),
(5, 10, 6, 100),
(6, 11, 7, 150),
(7, 12, 7, 150),
(8, 13, 7, 150),
(9, 14, 7, 150),
(10, 15, 7, 150),
(11, 16, 8, 100),
(12, 17, 8, 100),
(13, 18, 8, 100),
(14, 19, 8, 100),
(15, 20, 8, 100),
(16, 21, 9, 100),
(17, 22, 9, 100),
(18, 23, 9, 100),
(19, NULL, 9, 100),
(20, 24, 9, 100),
(21, 25, 9, 100);

-- --------------------------------------------------------

--
-- Table structure for table `undergraduategraduate`
--

CREATE TABLE `undergraduategraduate` (
  `stu_id` int(11) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `uni_type` varchar(255) NOT NULL,
  `uni_name` varchar(255) NOT NULL,
  `gpa` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergraduategraduate`
--

INSERT INTO `undergraduategraduate` (`stu_id`, `degree`, `uni_type`, `uni_name`, `gpa`) VALUES
(5, 'Computer Science', 'Government', 'University of Colombo School of Computing', '3.8204');

-- --------------------------------------------------------

--
-- Table structure for table `unicodes`
--

CREATE TABLE `unicodes` (
  `uni_code` char(4) NOT NULL,
  `gov_uni_id` int(11) NOT NULL,
  `gov_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `universitytype`
--

CREATE TABLE `universitytype` (
  `uni_type_id` int(11) NOT NULL,
  `uni_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universitytype`
--

INSERT INTO `universitytype` (`uni_type_id`, `uni_type_name`) VALUES
(1, 'Government'),
(2, 'Semi-Goverment'),
(3, 'Private');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `actor_type` varchar(255) NOT NULL,
  `specialized_actor_type` varchar(255) NOT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_image`, `first_name`, `last_name`, `email`, `password`, `actor_type`, `specialized_actor_type`, `status`) VALUES
(1, '1648318124_adminwhiz.png', 'Admin', NULL, 'whizweblk@gmail.com', '$2y$10$.luL7/HPbAux0Ss530ruBe0/GK1X0v3XiNwFBH8OBO8zIlepdSYd6', 'Admin', 'Admin', 'verified'),
(2, '1648318238_deneth.jpg', 'Deneth', 'Chamodya', 'denethchamodya03@gmail.com', '$2y$10$XJ5AD.PoliFlSgFu0thoVeRkD84PEUSHDMWPfwV9PqMT3jpx9ljgu', 'Student', 'Beginner', 'not verified'),
(3, '1648318327_divanjana.jpg', 'Divanjana', 'Disala', 'disaladivanjana@gmail.com', '$2y$10$s66KzP8SOZyf41jEX1UoJ.CipU3K843/YRiqHsxA8079fukOAHHQi', 'Student', 'OL qualified', 'not verified'),
(4, '1648319177_gimantha.jpg', 'Gimantha', 'Anupama', 'gimanthaanupama008@gmail.com', '$2y$10$1sw6oHV3QUyLwkCWbn.mCe9kGqtQW/hrov.QT9tl3on0E9NCLEduy', 'Student', 'AL qualified', 'not verified'),
(5, '1648319440_asela.jpg', 'Pasindu', 'Asela', 'pasinduasela119@gmail.com', '$2y$10$z06eN5eA.UvwDyFvagT9a.DjN8cnlQewCXiEl/a./J.8U8QBSDaFq', 'Student', 'Undergraduate Graduate', 'not verified'),
(6, '1648319645_sliit.jpg', 'SLIIT', NULL, 'unisliitlk@gmail.com', '$2y$10$AQiFGjgte9v7YEBWHWf3bOrF90WPFMPQpaH12U9rsdlxFokkfVet6', 'Organization', 'University', 'not verified'),
(7, '1648319792_abc.jpg', 'ABC', NULL, 'abcgroup202@gmail.com', '$2y$10$asN26irqhAZFqdfS2druXO1BZm.A6H8Fm9NFJKtkezEsdQ7b0jmRK', 'Organization', 'Company', 'not verified'),
(8, '1648319903_tharindu.jpg', 'Tharindu', 'Amarasekara', 'tharindu4151@gmail.com', '$2y$10$nNJ7/g7mdMyDKGs2H4Y.Zu3Wwfwx1aBLFNBMYDQqAAILFLXij8REK', 'Mentor', 'Professional Guider', 'not verified'),
(9, '1648319948_pubudu.jpg', 'Pubudu', 'Pathirana', 'pubudu4151@gmail.com', '$2y$10$HI0cJzDSlGnU4.18PhtUqeM.dvJlrZwd17g6RYfixUC71YkM/i7Za', 'Mentor', 'Teacher', 'not verified');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_community`
-- (See below for the actual view)
--
CREATE TABLE `v_community` (
`user_id` int(11)
,`profile_image` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`status` varchar(15)
,`thread_id` int(11)
,`title` text
,`body` text
,`views` int(11)
,`created_at` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_complete_posts`
-- (See below for the actual view)
--
CREATE TABLE `v_complete_posts` (
`postId` int(11)
,`userId` int(11)
,`type` varchar(20)
,`image` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`profile_image` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`status` varchar(15)
,`postCreated` datetime
,`title` varchar(255)
,`body` longtext
,`applied` int(11)
,`capacity` int(11)
,`ups` int(11)
,`downs` int(11)
,`payed` int(11)
,`comment_count` bigint(21)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
,`review_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_enrol_student_list`
-- (See below for the actual view)
--
CREATE TABLE `v_enrol_student_list` (
`post_id` int(11)
,`user_id` int(11)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`profile_image` varchar(255)
,`actor_type` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_gov_course_and_university`
-- (See below for the actual view)
--
CREATE TABLE `v_gov_course_and_university` (
`id` int(11)
,`gov_course_id` int(11)
,`gov_course_name` varchar(255)
,`gov_uni_id` int(11)
,`uni_name` varchar(255)
,`unicode` varchar(10)
,`purposed_intake` int(11)
,`duration` int(11)
,`description` longtext
,`stream_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_banners`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_banners` (
`post_id` int(11)
,`userId` int(11)
,`type` varchar(20)
,`image` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`profile_image` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`status` varchar(15)
,`postCreated` datetime
,`title` varchar(255)
,`body` longtext
,`applied` int(11)
,`capacity` int(11)
,`session_fee` decimal(15,2)
,`ups` int(11)
,`downs` int(11)
,`comment_count` bigint(21)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
,`review_count` bigint(21)
,`payed` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_courses`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_courses` (
`post_id` int(11)
,`private_uni_id` int(11)
,`type` varchar(20)
,`image` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`profile_image` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`status` varchar(15)
,`postCreated` datetime
,`courseName` varchar(255)
,`courseContent` longtext
,`provide_degree` varchar(255)
,`course_fee` varchar(50)
,`applied` int(11)
,`capacity` int(11)
,`ups` int(11)
,`downs` int(11)
,`comment_count` bigint(21)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
,`review_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_jobs`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_jobs` (
`post_id` int(11)
,`company_id` int(11)
,`type` varchar(20)
,`image` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`profile_image` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`status` varchar(15)
,`postCreated` datetime
,`paid_date` date
,`jobName` varchar(255)
,`jobContent` longtext
,`applied` int(11)
,`capacity` int(11)
,`ups` int(11)
,`downs` int(11)
,`comment_count` bigint(21)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
,`review_count` bigint(21)
,`payed` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_link`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_link` (
`post_id` int(11)
,`user_id` int(11)
,`title` varchar(255)
,`date` date
,`time` time
,`body` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_notices`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_notices` (
`post_id` int(11)
,`private_uni_id` int(11)
,`type` varchar(20)
,`image` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`profile_image` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`status` varchar(15)
,`postCreated` datetime
,`paid_date` date
,`noticeName` varchar(255)
,`noticeContent` longtext
,`applied` int(11)
,`capacity` int(11)
,`ups` int(11)
,`downs` int(11)
,`comment_count` bigint(21)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
,`review_count` bigint(21)
,`payed` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_posters`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_posters` (
`post_id` int(11)
,`userId` int(11)
,`type` varchar(20)
,`image` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`profile_image` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`status` varchar(15)
,`postCreated` datetime
,`title` varchar(255)
,`body` longtext
,`applied` int(11)
,`capacity` int(11)
,`session_fee` decimal(15,2)
,`ups` int(11)
,`downs` int(11)
,`comment_count` bigint(21)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
,`review_count` bigint(21)
,`payed` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_rate1`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_rate1` (
`postId` int(11)
,`rate1` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_rate2`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_rate2` (
`postId` int(11)
,`rate2` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_rate3`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_rate3` (
`postId` int(11)
,`rate3` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_rate4`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_rate4` (
`postId` int(11)
,`rate4` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_rate5`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_rate5` (
`postId` int(11)
,`rate5` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_rates`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_rates` (
`postId` int(11)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_transactions`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_transactions` (
`transaction_id` int(11)
,`post_id` int(11)
,`user_id` int(11)
,`type` varchar(20)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`amount` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_with_comments`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_with_comments` (
`postId` int(11)
,`comment_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_with_rates`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_with_rates` (
`postId` int(11)
,`rate1` bigint(21)
,`rate2` bigint(21)
,`rate3` bigint(21)
,`rate4` bigint(21)
,`rate5` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_with_reviews`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_with_reviews` (
`postId` int(11)
,`review_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_posts_with_users`
-- (See below for the actual view)
--
CREATE TABLE `v_posts_with_users` (
`image` varchar(255)
,`type` varchar(20)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`profile_image` varchar(255)
,`actor_type` varchar(255)
,`specialized_actor_type` varchar(255)
,`status` varchar(15)
,`postId` int(11)
,`userId` int(11)
,`postCreated` datetime
,`title` varchar(255)
,`body` longtext
,`applied` int(11)
,`capacity` int(11)
,`ups` int(11)
,`downs` int(11)
,`payed` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_received_cv`
-- (See below for the actual view)
--
CREATE TABLE `v_received_cv` (
`post_id` int(11)
,`user_id` int(11)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`cv_file_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_zscore_table`
-- (See below for the actual view)
--
CREATE TABLE `v_zscore_table` (
`district_name` varchar(255)
,`gov_course_name` varchar(255)
,`uni_name` varchar(255)
,`unicode` varchar(10)
,`stream_id` int(11)
,`syllabus` varchar(100)
,`year` int(11)
,`z_score` decimal(5,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `zscoretable`
--

CREATE TABLE `zscoretable` (
  `z_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `unicode` varchar(100) NOT NULL,
  `syllabus` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `z_score` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zscoretable`
--

INSERT INTO `zscoretable` (`z_id`, `district_id`, `unicode`, `syllabus`, `year`, `z_score`) VALUES
(1, 1, '001A', 'New', 2019, '2.4546'),
(2, 2, '001A', 'New', 2019, '2.5010'),
(3, 3, '001A', 'New', 2019, '2.5199'),
(4, 5, '001A', 'New', 2019, '2.5115'),
(5, 4, '001A', 'New', 2019, '2.5805'),
(6, 6, '001A', 'New', 2019, '2.8375'),
(7, 7, '001A', 'New', 2019, '2.5220'),
(8, 8, '001A', 'New', 2019, '2.4758'),
(9, 9, '001A', 'New', 2019, '2.4648'),
(10, 10, '001A', 'New', 2019, '2.5293'),
(11, 14, '001A', 'New', 2019, '-1.0000'),
(12, 11, '001A', 'New', 2019, '-1.0000'),
(13, 13, '001A', 'New', 2019, '-1.0000'),
(14, 12, '001A', 'New', 2019, '2.5182'),
(15, 17, '001A', 'New', 2019, '-1.0000'),
(16, 15, '001A', 'New', 2019, '2.5213'),
(17, 16, '001A', 'New', 2019, '2.4820'),
(18, 19, '001A', 'New', 2019, '2.4950'),
(19, 18, '001A', 'New', 2019, '2.5206'),
(20, 20, '001A', 'New', 2019, '-1.0000'),
(21, 21, '001A', 'New', 2019, '2.4690'),
(22, 22, '001A', 'New', 2019, '2.4770'),
(23, 23, '001A', 'New', 2019, '2.5168'),
(24, 25, '001A', 'New', 2019, '-1.0000'),
(25, 24, '001A', 'New', 2019, '2.4741'),
(26, 1, '001B', 'New', 2019, '2.3255'),
(27, 2, '001B', 'New', 2019, '2.3317'),
(28, 3, '001B', 'New', 2019, '2.3277'),
(29, 5, '001B', 'New', 2019, '2.3456'),
(30, 4, '001B', 'New', 2019, '2.3727'),
(31, 6, '001B', 'New', 2019, '2.3809'),
(32, 7, '001B', 'New', 2019, '2.3250'),
(33, 8, '001B', 'New', 2019, '2.3492'),
(34, 9, '001B', 'New', 2019, '-1.0000'),
(35, 10, '001B', 'New', 2019, '2.3660'),
(36, 14, '001B', 'New', 2019, '-1.0000'),
(37, 11, '001B', 'New', 2019, '-1.0000'),
(38, 13, '001B', 'New', 2019, '-1.0000'),
(39, 12, '001B', 'New', 2019, '-1.0000'),
(40, 17, '001B', 'New', 2019, '-1.0000'),
(41, 15, '001B', 'New', 2019, '2.3768'),
(42, 16, '001B', 'New', 2019, '2.3294'),
(43, 19, '001B', 'New', 2019, '2.4914'),
(44, 18, '001B', 'New', 2019, '2.3312'),
(45, 20, '001B', 'New', 2019, '2.4235'),
(46, 21, '001B', 'New', 2019, '2.4509'),
(47, 22, '001B', 'New', 2019, '-1.0000'),
(48, 23, '001B', 'New', 2019, '-1.0000'),
(49, 25, '001B', 'New', 2019, '2.3502'),
(50, 24, '001B', 'New', 2019, '2.3453'),
(51, 1, '001C', 'New', 2019, '2.2572'),
(52, 2, '001C', 'New', 2019, '2.4300'),
(53, 3, '001C', 'New', 2019, '2.2924'),
(54, 5, '001C', 'New', 2019, '-1.0000'),
(55, 4, '001C', 'New', 2019, '2.2660'),
(56, 6, '001C', 'New', 2019, '-1.0000'),
(57, 7, '001C', 'New', 2019, '2.2716'),
(58, 8, '001C', 'New', 2019, '2.2627'),
(59, 9, '001C', 'New', 2019, '-1.0000'),
(60, 10, '001C', 'New', 2019, '2.2998'),
(61, 14, '001C', 'New', 2019, '-1.0000'),
(62, 11, '001C', 'New', 2019, '-1.0000'),
(63, 13, '001C', 'New', 2019, '-1.0000'),
(64, 12, '001C', 'New', 2019, '2.2646'),
(65, 17, '001C', 'New', 2019, '-1.0000'),
(66, 15, '001C', 'New', 2019, '2.4249'),
(67, 16, '001C', 'New', 2019, '2.2747'),
(68, 19, '001C', 'New', 2019, '2.2819'),
(69, 18, '001C', 'New', 2019, '2.2594'),
(70, 20, '001C', 'New', 2019, '-1.0000'),
(71, 21, '001C', 'New', 2019, '2.2598'),
(72, 22, '001C', 'New', 2019, '2.2920'),
(73, 23, '001C', 'New', 2019, '-1.0000'),
(74, 25, '001C', 'New', 2019, '-1.0000'),
(75, 24, '001C', 'New', 2019, '2.2627'),
(76, 1, '001D', 'New', 2019, '2.2016'),
(77, 2, '001D', 'New', 2019, '2.2054'),
(78, 3, '001D', 'New', 2019, '2.2006'),
(79, 5, '001D', 'New', 2019, '-1.0000'),
(80, 4, '001D', 'New', 2019, '2.1990'),
(81, 6, '001D', 'New', 2019, '-1.0000'),
(82, 7, '001D', 'New', 2019, '-1.0000'),
(83, 8, '001D', 'New', 2019, '2.2097'),
(84, 9, '001D', 'New', 2019, '2.2443'),
(85, 10, '001D', 'New', 2019, '-1.0000'),
(86, 14, '001D', 'New', 2019, '-1.0000'),
(87, 11, '001D', 'New', 2019, '-1.0000'),
(88, 13, '001D', 'New', 2019, '-1.0000'),
(89, 12, '001D', 'New', 2019, '-1.0000'),
(90, 17, '001D', 'New', 2019, '2.2042'),
(91, 15, '001D', 'New', 2019, '-1.0000'),
(92, 16, '001D', 'New', 2019, '2.2018'),
(93, 19, '001D', 'New', 2019, '2.2997'),
(94, 18, '001D', 'New', 2019, '2.2066'),
(95, 20, '001D', 'New', 2019, '2.2061'),
(96, 21, '001D', 'New', 2019, '-1.0000'),
(97, 22, '001D', 'New', 2019, '-1.0000'),
(98, 23, '001D', 'New', 2019, '-1.0000'),
(99, 25, '001D', 'New', 2019, '2.1967'),
(100, 24, '001D', 'New', 2019, '2.2027'),
(101, 1, '001E', 'New', 2019, '2.0858'),
(102, 2, '001E', 'New', 2019, '1.9626'),
(103, 3, '001E', 'New', 2019, '-1.0000'),
(104, 5, '001E', 'New', 2019, '-1.0000'),
(105, 4, '001E', 'New', 2019, '1.9955'),
(106, 6, '001E', 'New', 2019, '1.9626'),
(107, 7, '001E', 'New', 2019, '-1.0000'),
(108, 8, '001E', 'New', 2019, '-1.0000'),
(109, 9, '001E', 'New', 2019, '-1.0000'),
(110, 10, '001E', 'New', 2019, '1.9573'),
(111, 14, '001E', 'New', 2019, '2.0841'),
(112, 11, '001E', 'New', 2019, '-1.0000'),
(113, 13, '001E', 'New', 2019, '2.1642'),
(114, 12, '001E', 'New', 2019, '2.0422'),
(115, 17, '001E', 'New', 2019, '1.9576'),
(116, 15, '001E', 'New', 2019, '1.9561'),
(117, 16, '001E', 'New', 2019, '1.9583'),
(118, 19, '001E', 'New', 2019, '1.9714'),
(119, 18, '001E', 'New', 2019, '-1.0000'),
(120, 20, '001E', 'New', 2019, '1.9929'),
(121, 21, '001E', 'New', 2019, '2.0086'),
(122, 22, '001E', 'New', 2019, '1.9590'),
(123, 23, '001E', 'New', 2019, '-1.0000'),
(124, 25, '001E', 'New', 2019, '-1.0000'),
(125, 24, '001E', 'New', 2019, '2.0379'),
(126, 1, '001F', 'New', 2019, '2.1392'),
(127, 2, '001F', 'New', 2019, '2.1446'),
(128, 3, '001F', 'New', 2019, '2.1625'),
(129, 5, '001F', 'New', 2019, '-1.0000'),
(130, 4, '001F', 'New', 2019, '2.1403'),
(131, 6, '001F', 'New', 2019, '-1.0000'),
(132, 7, '001F', 'New', 2019, '2.1400'),
(133, 8, '001F', 'New', 2019, '2.1450'),
(134, 9, '001F', 'New', 2019, '2.1760'),
(135, 10, '001F', 'New', 2019, '-1.0000'),
(136, 14, '001F', 'New', 2019, '-1.0000'),
(137, 11, '001F', 'New', 2019, '2.1435'),
(138, 13, '001F', 'New', 2019, '-1.0000'),
(139, 12, '001F', 'New', 2019, '-1.0000'),
(140, 17, '001F', 'New', 2019, '2.1860'),
(141, 15, '001F', 'New', 2019, '-1.0000'),
(142, 16, '001F', 'New', 2019, '-1.0000'),
(143, 19, '001F', 'New', 2019, '2.1608'),
(144, 18, '001F', 'New', 2019, '2.1687'),
(145, 20, '001F', 'New', 2019, '2.1591'),
(146, 21, '001F', 'New', 2019, '-1.0000'),
(147, 22, '001F', 'New', 2019, '2.1766'),
(148, 23, '001F', 'New', 2019, '-1.0000'),
(149, 25, '001F', 'New', 2019, '2.1956'),
(150, 24, '001F', 'New', 2019, '2.1398'),
(151, 1, '001G', 'New', 2019, '2.0676'),
(152, 2, '001G', 'New', 2019, '1.9289'),
(153, 3, '001G', 'New', 2019, '-1.0000'),
(154, 5, '001G', 'New', 2019, '2.1129'),
(155, 4, '001G', 'New', 2019, '2.0031'),
(156, 6, '001G', 'New', 2019, '1.9691'),
(157, 7, '001G', 'New', 2019, '2.0238'),
(158, 8, '001G', 'New', 2019, '2.1371'),
(159, 9, '001G', 'New', 2019, '-1.0000'),
(160, 10, '001G', 'New', 2019, '2.0147'),
(161, 14, '001G', 'New', 2019, '-1.0000'),
(162, 11, '001G', 'New', 2019, '-1.0000'),
(163, 13, '001G', 'New', 2019, '-1.0000'),
(164, 12, '001G', 'New', 2019, '1.8969'),
(165, 17, '001G', 'New', 2019, '1.9202'),
(166, 15, '001G', 'New', 2019, '1.9118'),
(167, 16, '001G', 'New', 2019, '1.8797'),
(168, 19, '001G', 'New', 2019, '-1.0000'),
(169, 18, '001G', 'New', 2019, '-1.0000'),
(170, 20, '001G', 'New', 2019, '1.9954'),
(171, 21, '001G', 'New', 2019, '-1.0000'),
(172, 22, '001G', 'New', 2019, '-1.0000'),
(173, 23, '001G', 'New', 2019, '1.9195'),
(174, 25, '001G', 'New', 2019, '-1.0000'),
(175, 24, '001G', 'New', 2019, '1.9329'),
(176, 1, '001H', 'New', 2019, '-1.0000'),
(177, 2, '001H', 'New', 2019, '-1.0000'),
(178, 3, '001H', 'New', 2019, '-1.0000'),
(179, 5, '001H', 'New', 2019, '-1.0000'),
(180, 4, '001H', 'New', 2019, '-1.0000'),
(181, 6, '001H', 'New', 2019, '1.4744'),
(182, 7, '001H', 'New', 2019, '-1.0000'),
(183, 8, '001H', 'New', 2019, '-1.0000'),
(184, 9, '001H', 'New', 2019, '-1.0000'),
(185, 10, '001H', 'New', 2019, '-1.0000'),
(186, 14, '001H', 'New', 2019, '1.6855'),
(187, 11, '001H', 'New', 2019, '1.9176'),
(188, 13, '001H', 'New', 2019, '1.2427'),
(189, 12, '001H', 'New', 2019, '-1.0000'),
(190, 17, '001H', 'New', 2019, '-1.0000'),
(191, 15, '001H', 'New', 2019, '1.8353'),
(192, 16, '001H', 'New', 2019, '1.7481'),
(193, 19, '001H', 'New', 2019, '-1.0000'),
(194, 18, '001H', 'New', 2019, '-1.0000'),
(195, 20, '001H', 'New', 2019, '1.6484'),
(196, 21, '001H', 'New', 2019, '-1.0000'),
(197, 22, '001H', 'New', 2019, '-1.0000'),
(198, 23, '001H', 'New', 2019, '-1.0000'),
(199, 25, '001H', 'New', 2019, '-1.0000'),
(200, 24, '001H', 'New', 2019, '-1.0000'),
(201, 1, '001K', 'New', 2019, '2.0957'),
(202, 2, '001K', 'New', 2019, '2.0626'),
(203, 3, '001K', 'New', 2019, '2.0672'),
(204, 5, '001K', 'New', 2019, '2.1166'),
(205, 4, '001K', 'New', 2019, '2.0580'),
(206, 6, '001K', 'New', 2019, '2.0357'),
(207, 7, '001K', 'New', 2019, '2.1302'),
(208, 8, '001K', 'New', 2019, '-1.0000'),
(209, 9, '001K', 'New', 2019, '2.0457'),
(210, 10, '001K', 'New', 2019, '-1.0000'),
(211, 14, '001K', 'New', 2019, '-1.0000'),
(212, 11, '001K', 'New', 2019, '-1.0000'),
(213, 13, '001K', 'New', 2019, '-1.0000'),
(214, 12, '001K', 'New', 2019, '-1.0000'),
(215, 17, '001K', 'New', 2019, '-1.0000'),
(216, 15, '001K', 'New', 2019, '-1.0000'),
(217, 16, '001K', 'New', 2019, '2.0670'),
(218, 19, '001K', 'New', 2019, '2.0744'),
(219, 18, '001K', 'New', 2019, '2.0431'),
(220, 20, '001K', 'New', 2019, '-1.0000'),
(221, 21, '001K', 'New', 2019, '-1.0000'),
(222, 22, '001K', 'New', 2019, '2.0379'),
(223, 23, '001K', 'New', 2019, '-1.0000'),
(224, 25, '001K', 'New', 2019, '2.0407'),
(225, 24, '001K', 'New', 2019, '2.0393'),
(226, 1, '001L', 'New', 2019, '-1.0000'),
(227, 2, '001L', 'New', 2019, '1.9173'),
(228, 3, '001L', 'New', 2019, '-1.0000'),
(229, 5, '001L', 'New', 2019, '1.8842'),
(230, 4, '001L', 'New', 2019, '2.0130'),
(231, 6, '001L', 'New', 2019, '-1.0000'),
(232, 7, '001L', 'New', 2019, '2.0427'),
(233, 8, '001L', 'New', 2019, '-1.0000'),
(234, 9, '001L', 'New', 2019, '1.8262'),
(235, 10, '001L', 'New', 2019, '-1.0000'),
(236, 14, '001L', 'New', 2019, '-1.0000'),
(237, 11, '001L', 'New', 2019, '-1.0000'),
(238, 13, '001L', 'New', 2019, '-1.0000'),
(239, 12, '001L', 'New', 2019, '-1.0000'),
(240, 17, '001L', 'New', 2019, '-1.0000'),
(241, 15, '001L', 'New', 2019, '-1.0000'),
(242, 16, '001L', 'New', 2019, '1.7345'),
(243, 19, '001L', 'New', 2019, '-1.0000'),
(244, 18, '001L', 'New', 2019, '-1.0000'),
(245, 20, '001L', 'New', 2019, '1.6870'),
(246, 21, '001L', 'New', 2019, '1.7857'),
(247, 22, '001L', 'New', 2019, '1.8267'),
(248, 23, '001L', 'New', 2019, '1.9727'),
(249, 25, '001L', 'New', 2019, '-1.0000'),
(250, 24, '001L', 'New', 2019, '1.9595'),
(251, 1, '001M', 'New', 2019, '-1.0000'),
(252, 2, '001M', 'New', 2019, '1.9238'),
(253, 3, '001M', 'New', 2019, '-1.0000'),
(254, 5, '001M', 'New', 2019, '1.9473'),
(255, 4, '001M', 'New', 2019, '1.9852'),
(256, 6, '001M', 'New', 2019, '1.8684'),
(257, 7, '001M', 'New', 2019, '-1.0000'),
(258, 8, '001M', 'New', 2019, '-1.0000'),
(259, 9, '001M', 'New', 2019, '-1.0000'),
(260, 10, '001M', 'New', 2019, '-1.0000'),
(261, 14, '001M', 'New', 2019, '-1.0000'),
(262, 11, '001M', 'New', 2019, '-1.0000'),
(263, 13, '001M', 'New', 2019, '-1.0000'),
(264, 12, '001M', 'New', 2019, '1.7884'),
(265, 17, '001M', 'New', 2019, '-1.0000'),
(266, 15, '001M', 'New', 2019, '-1.0000'),
(267, 16, '001M', 'New', 2019, '-1.0000'),
(268, 19, '001M', 'New', 2019, '1.9267'),
(269, 18, '001M', 'New', 2019, '2.0436'),
(270, 20, '001M', 'New', 2019, '1.7481'),
(271, 21, '001M', 'New', 2019, '1.8430'),
(272, 22, '001M', 'New', 2019, '1.9109'),
(273, 23, '001M', 'New', 2019, '1.6753'),
(274, 25, '001M', 'New', 2019, '2.1362'),
(275, 24, '001M', 'New', 2019, '-1.0000'),
(276, 1, '002B', 'New', 2019, '2.0326'),
(277, 2, '002B', 'New', 2019, '1.9130'),
(278, 3, '002B', 'New', 2019, '2.0355'),
(279, 5, '002B', 'New', 2019, '1.8557'),
(280, 4, '002B', 'New', 2019, '1.9612'),
(281, 6, '002B', 'New', 2019, '1.4729'),
(282, 7, '002B', 'New', 2019, '2.0186'),
(283, 8, '002B', 'New', 2019, '2.0314'),
(284, 9, '002B', 'New', 2019, '1.8047'),
(285, 10, '002B', 'New', 2019, '1.9479'),
(286, 14, '002B', 'New', 2019, '1.5918'),
(287, 11, '002B', 'New', 2019, '1.8964'),
(288, 13, '002B', 'New', 2019, '1.1326'),
(289, 12, '002B', 'New', 2019, '1.7721'),
(290, 17, '002B', 'New', 2019, '1.7716'),
(291, 15, '002B', 'New', 2019, '1.7515'),
(292, 16, '002B', 'New', 2019, '1.7298'),
(293, 19, '002B', 'New', 2019, '1.7951'),
(294, 18, '002B', 'New', 2019, '1.9979'),
(295, 20, '002B', 'New', 2019, '1.6278'),
(296, 21, '002B', 'New', 2019, '1.7827'),
(297, 22, '002B', 'New', 2019, '1.7730'),
(298, 23, '002B', 'New', 2019, '1.6367'),
(299, 25, '002B', 'New', 2019, '2.0342'),
(300, 24, '002B', 'New', 2019, '1.9308'),
(301, 1, '003B', 'New', 2019, '1.8619'),
(302, 2, '003B', 'New', 2019, '1.8900'),
(303, 3, '003B', 'New', 2019, '1.9417'),
(304, 5, '003B', 'New', 2019, '1.8452'),
(305, 4, '003B', 'New', 2019, '1.9482'),
(306, 6, '003B', 'New', 2019, '1.4370'),
(307, 7, '003B', 'New', 2019, '1.9590'),
(308, 8, '003B', 'New', 2019, '1.9219'),
(309, 9, '003B', 'New', 2019, '1.7601'),
(310, 10, '003B', 'New', 2019, '1.9343'),
(311, 14, '003B', 'New', 2019, '1.4078'),
(312, 11, '003B', 'New', 2019, '1.6798'),
(313, 13, '003B', 'New', 2019, '0.9074'),
(314, 12, '003B', 'New', 2019, '1.6451'),
(315, 17, '003B', 'New', 2019, '1.6728'),
(316, 15, '003B', 'New', 2019, '1.6679'),
(317, 16, '003B', 'New', 2019, '1.6903'),
(318, 19, '003B', 'New', 2019, '1.6815'),
(319, 18, '003B', 'New', 2019, '1.9475'),
(320, 20, '003B', 'New', 2019, '1.5338'),
(321, 21, '003B', 'New', 2019, '1.5868'),
(322, 22, '003B', 'New', 2019, '1.7594'),
(323, 23, '003B', 'New', 2019, '1.4732'),
(324, 25, '003B', 'New', 2019, '1.9538'),
(325, 24, '003B', 'New', 2019, '1.8881'),
(326, 1, '058A', 'New', 2019, '1.9949'),
(327, 2, '058A', 'New', 2019, '1.9077'),
(328, 3, '058A', 'New', 2019, '1.9906'),
(329, 5, '058A', 'New', 2019, '1.6920'),
(330, 4, '058A', 'New', 2019, '1.9561'),
(331, 6, '058A', 'New', 2019, '1.4608'),
(332, 7, '058A', 'New', 2019, '1.9446'),
(333, 8, '058A', 'New', 2019, '1.9782'),
(334, 9, '058A', 'New', 2019, '1.7560'),
(335, 10, '058A', 'New', 2019, '1.9358'),
(336, 14, '058A', 'New', 2019, '1.1372'),
(337, 11, '058A', 'New', 2019, '1.7886'),
(338, 13, '058A', 'New', 2019, '0.5986'),
(339, 12, '058A', 'New', 2019, '1.5638'),
(340, 17, '058A', 'New', 2019, '1.7248'),
(341, 15, '058A', 'New', 2019, '1.6271'),
(342, 16, '058A', 'New', 2019, '1.5856'),
(343, 19, '058A', 'New', 2019, '1.7424'),
(344, 18, '058A', 'New', 2019, '1.9997'),
(345, 20, '058A', 'New', 2019, '1.5341'),
(346, 21, '058A', 'New', 2019, '1.4669'),
(347, 22, '058A', 'New', 2019, '1.7327'),
(348, 23, '058A', 'New', 2019, '1.3232'),
(349, 25, '058A', 'New', 2019, '2.0005'),
(350, 24, '058A', 'New', 2019, '1.9281'),
(351, 1, '039B', 'New', 2019, '1.5348'),
(352, 2, '039B', 'New', 2019, '1.6880'),
(353, 3, '039B', 'New', 2019, '1.5810'),
(354, 5, '039B', 'New', 2019, '1.2934'),
(355, 4, '039B', 'New', 2019, '1.7639'),
(356, 6, '039B', 'New', 2019, '1.3991'),
(357, 7, '039B', 'New', 2019, '1.7428'),
(358, 8, '039B', 'New', 2019, '1.7588'),
(359, 9, '039B', 'New', 2019, '1.6244'),
(360, 10, '039B', 'New', 2019, '1.6369'),
(361, 14, '039B', 'New', 2019, '1.0568'),
(362, 11, '039B', 'New', 2019, '1.3195'),
(363, 13, '039B', 'New', 2019, '0.3502'),
(364, 12, '039B', 'New', 2019, '1.4562'),
(365, 17, '039B', 'New', 2019, '1.1063'),
(366, 15, '039B', 'New', 2019, '1.5406'),
(367, 16, '039B', 'New', 2019, '1.3826'),
(368, 19, '039B', 'New', 2019, '1.5286'),
(369, 18, '039B', 'New', 2019, '1.6400'),
(370, 20, '039B', 'New', 2019, '1.5189'),
(371, 21, '039B', 'New', 2019, '1.1585'),
(372, 22, '039B', 'New', 2019, '1.6449'),
(373, 23, '039B', 'New', 2019, '1.1822'),
(374, 25, '039B', 'New', 2019, '1.6812'),
(375, 24, '039B', 'New', 2019, '1.7632'),
(376, 1, '004E', 'New', 2019, '0.9845'),
(377, 2, '004E', 'New', 2019, '0.8692'),
(378, 3, '004E', 'New', 2019, '1.0650'),
(379, 5, '004E', 'New', 2019, '1.0423'),
(380, 4, '004E', 'New', 2019, '1.4291'),
(381, 6, '004E', 'New', 2019, '0.8936'),
(382, 7, '004E', 'New', 2019, '1.1144'),
(383, 8, '004E', 'New', 2019, '-1.0000'),
(384, 9, '004E', 'New', 2019, '-1.0000'),
(385, 10, '004E', 'New', 2019, '0.9846'),
(386, 14, '004E', 'New', 2019, '0.6444'),
(387, 11, '004E', 'New', 2019, '1.0231'),
(388, 13, '004E', 'New', 2019, '0.2643'),
(389, 12, '004E', 'New', 2019, '0.5594'),
(390, 17, '004E', 'New', 2019, '0.7839'),
(391, 15, '004E', 'New', 2019, '0.8961'),
(392, 16, '004E', 'New', 2019, '0.8817'),
(393, 19, '004E', 'New', 2019, '0.8191'),
(394, 18, '004E', 'New', 2019, '1.0562'),
(395, 20, '004E', 'New', 2019, '0.6214'),
(396, 21, '004E', 'New', 2019, '0.6443'),
(397, 22, '004E', 'New', 2019, '0.9150'),
(398, 23, '004E', 'New', 2019, '1.0619'),
(399, 25, '004E', 'New', 2019, '1.1130'),
(400, 24, '004E', 'New', 2019, '0.9494'),
(401, 1, '004H', 'New', 2019, '1.0438'),
(402, 2, '004H', 'New', 2019, '0.7995'),
(403, 3, '004H', 'New', 2019, '-1.0000'),
(404, 5, '004H', 'New', 2019, '0.8997'),
(405, 4, '004H', 'New', 2019, '1.1530'),
(406, 6, '004H', 'New', 2019, '0.9256'),
(407, 7, '004H', 'New', 2019, '1.0143'),
(408, 8, '004H', 'New', 2019, '-1.0000'),
(409, 9, '004H', 'New', 2019, '1.0648'),
(410, 10, '004H', 'New', 2019, '0.9781'),
(411, 14, '004H', 'New', 2019, '-1.0000'),
(412, 11, '004H', 'New', 2019, '-1.0000'),
(413, 13, '004H', 'New', 2019, '0.3086'),
(414, 12, '004H', 'New', 2019, '-1.0000'),
(415, 17, '004H', 'New', 2019, '1.0456'),
(416, 15, '004H', 'New', 2019, '0.9385'),
(417, 16, '004H', 'New', 2019, '0.9147'),
(418, 19, '004H', 'New', 2019, '0.7748'),
(419, 18, '004H', 'New', 2019, '1.0611'),
(420, 20, '004H', 'New', 2019, '0.6238'),
(421, 21, '004H', 'New', 2019, '0.5638'),
(422, 22, '004H', 'New', 2019, '-1.0000'),
(423, 23, '004H', 'New', 2019, '-1.0000'),
(424, 25, '004H', 'New', 2019, '-1.0000'),
(425, 24, '004H', 'New', 2019, '0.8146'),
(426, 1, '004K', 'New', 2019, '0.9613'),
(427, 2, '004K', 'New', 2019, '0.9507'),
(428, 3, '004K', 'New', 2019, '0.9825'),
(429, 5, '004K', 'New', 2019, '1.0682'),
(430, 4, '004K', 'New', 2019, '1.0569'),
(431, 6, '004K', 'New', 2019, '1.0068'),
(432, 7, '004K', 'New', 2019, '0.9876'),
(433, 8, '004K', 'New', 2019, '0.9666'),
(434, 9, '004K', 'New', 2019, '0.9960'),
(435, 10, '004K', 'New', 2019, '-1.0000'),
(436, 14, '004K', 'New', 2019, '-1.0000'),
(437, 11, '004K', 'New', 2019, '-1.0000'),
(438, 13, '004K', 'New', 2019, '-1.0000'),
(439, 12, '004K', 'New', 2019, '-1.0000'),
(440, 17, '004K', 'New', 2019, '-1.0000'),
(441, 15, '004K', 'New', 2019, '1.1973'),
(442, 16, '004K', 'New', 2019, '0.9318'),
(443, 19, '004K', 'New', 2019, '0.9814'),
(444, 18, '004K', 'New', 2019, '1.0683'),
(445, 20, '004K', 'New', 2019, '0.9416'),
(446, 21, '004K', 'New', 2019, '-1.0000'),
(447, 22, '004K', 'New', 2019, '1.0051'),
(448, 23, '004K', 'New', 2019, '-1.0000'),
(449, 25, '004K', 'New', 2019, '1.0826'),
(450, 24, '004K', 'New', 2019, '0.9773'),
(451, 1, '004L', 'New', 2019, '1.1013'),
(452, 2, '004L', 'New', 2019, '1.1023'),
(453, 3, '004L', 'New', 2019, '1.0828'),
(454, 5, '004L', 'New', 2019, '-1.0000'),
(455, 4, '004L', 'New', 2019, '1.1451'),
(456, 6, '004L', 'New', 2019, '-1.0000'),
(457, 7, '004L', 'New', 2019, '1.0818'),
(458, 8, '004L', 'New', 2019, '1.0864'),
(459, 9, '004L', 'New', 2019, '1.1005'),
(460, 10, '004L', 'New', 2019, '-1.0000'),
(461, 14, '004L', 'New', 2019, '-1.0000'),
(462, 11, '004L', 'New', 2019, '-1.0000'),
(463, 13, '004L', 'New', 2019, '-1.0000'),
(464, 12, '004L', 'New', 2019, '-1.0000'),
(465, 17, '004L', 'New', 2019, '-1.0000'),
(466, 15, '004L', 'New', 2019, '-1.0000'),
(467, 16, '004L', 'New', 2019, '-1.0000'),
(468, 19, '004L', 'New', 2019, '-1.0000'),
(469, 18, '004L', 'New', 2019, '1.1387'),
(470, 20, '004L', 'New', 2019, '-1.0000'),
(471, 21, '004L', 'New', 2019, '-1.0000'),
(472, 22, '004L', 'New', 2019, '1.1267'),
(473, 23, '004L', 'New', 2019, '-1.0000'),
(474, 25, '004L', 'New', 2019, '1.0838'),
(475, 24, '004L', 'New', 2019, '1.0929'),
(476, 1, '004M', 'New', 2019, '1.0427'),
(477, 2, '004M', 'New', 2019, '1.0294'),
(478, 3, '004M', 'New', 2019, '1.0277'),
(479, 5, '004M', 'New', 2019, '-1.0000'),
(480, 4, '004M', 'New', 2019, '1.0448'),
(481, 6, '004M', 'New', 2019, '1.1197'),
(482, 7, '004M', 'New', 2019, '1.0453'),
(483, 8, '004M', 'New', 2019, '-1.0000'),
(484, 9, '004M', 'New', 2019, '-1.0000'),
(485, 10, '004M', 'New', 2019, '1.1475'),
(486, 14, '004M', 'New', 2019, '-1.0000'),
(487, 11, '004M', 'New', 2019, '-1.0000'),
(488, 13, '004M', 'New', 2019, '-1.0000'),
(489, 12, '004M', 'New', 2019, '-1.0000'),
(490, 17, '004M', 'New', 2019, '-1.0000'),
(491, 15, '004M', 'New', 2019, '1.2115'),
(492, 16, '004M', 'New', 2019, '1.0292'),
(493, 19, '004M', 'New', 2019, '1.1087'),
(494, 18, '004M', 'New', 2019, '1.0631'),
(495, 20, '004M', 'New', 2019, '-1.0000'),
(496, 21, '004M', 'New', 2019, '-1.0000'),
(497, 22, '004M', 'New', 2019, '1.0701'),
(498, 23, '004M', 'New', 2019, '-1.0000'),
(499, 25, '004M', 'New', 2019, '1.0903'),
(500, 24, '004M', 'New', 2019, '-1.0000'),
(501, 1, '005M', 'New', 2019, '1.4539'),
(502, 2, '005M', 'New', 2019, '1.4708'),
(503, 3, '005M', 'New', 2019, '1.5003'),
(504, 5, '005M', 'New', 2019, '1.3013'),
(505, 4, '005M', 'New', 2019, '1.5409'),
(506, 6, '005M', 'New', 2019, '1.1645'),
(507, 7, '005M', 'New', 2019, '1.5573'),
(508, 8, '005M', 'New', 2019, '1.5796'),
(509, 9, '005M', 'New', 2019, '1.4368'),
(510, 10, '005M', 'New', 2019, '1.5806'),
(511, 14, '005M', 'New', 2019, '0.6568'),
(512, 11, '005M', 'New', 2019, '1.2408'),
(513, 13, '005M', 'New', 2019, '0.5614'),
(514, 12, '005M', 'New', 2019, '0.9971'),
(515, 17, '005M', 'New', 2019, '1.2125'),
(516, 15, '005M', 'New', 2019, '1.4483'),
(517, 16, '005M', 'New', 2019, '1.4106'),
(518, 19, '005M', 'New', 2019, '1.4168'),
(519, 18, '005M', 'New', 2019, '1.5165'),
(520, 20, '005M', 'New', 2019, '1.3310'),
(521, 21, '005M', 'New', 2019, '1.1775'),
(522, 22, '005M', 'New', 2019, '1.5391'),
(523, 23, '005M', 'New', 2019, '1.0491'),
(524, 25, '005M', 'New', 2019, '1.5712'),
(525, 24, '005M', 'New', 2019, '1.5624'),
(526, 1, '035B', 'New', 2019, '1.8514'),
(527, 2, '035B', 'New', 2019, '1.7948'),
(528, 3, '035B', 'New', 2019, '-1.0000'),
(529, 5, '035B', 'New', 2019, '-1.0000'),
(530, 4, '035B', 'New', 2019, '1.9224'),
(531, 6, '035B', 'New', 2019, '-1.0000'),
(532, 7, '035B', 'New', 2019, '1.8222'),
(533, 8, '035B', 'New', 2019, '1.8430'),
(534, 9, '035B', 'New', 2019, '-1.0000'),
(535, 10, '035B', 'New', 2019, '1.8287'),
(536, 14, '035B', 'New', 2019, '-1.0000'),
(537, 11, '035B', 'New', 2019, '-1.0000'),
(538, 13, '035B', 'New', 2019, '-1.0000'),
(539, 12, '035B', 'New', 2019, '-1.0000'),
(540, 17, '035B', 'New', 2019, '-1.0000'),
(541, 15, '035B', 'New', 2019, '-1.0000'),
(542, 16, '035B', 'New', 2019, '-1.0000'),
(543, 19, '035B', 'New', 2019, '-1.0000'),
(544, 18, '035B', 'New', 2019, '1.8327'),
(545, 20, '035B', 'New', 2019, '-1.0000'),
(546, 21, '035B', 'New', 2019, '-1.0000'),
(547, 22, '035B', 'New', 2019, '-1.0000'),
(548, 23, '035B', 'New', 2019, '-1.0000'),
(549, 25, '035B', 'New', 2019, '1.8613'),
(550, 24, '035B', 'New', 2019, '-1.0000'),
(551, 1, '035C', 'New', 2019, '1.7577'),
(552, 2, '035C', 'New', 2019, '1.7478'),
(553, 3, '035C', 'New', 2019, '1.7840'),
(554, 5, '035C', 'New', 2019, '-1.0000'),
(555, 4, '035C', 'New', 2019, '-1.0000'),
(556, 6, '035C', 'New', 2019, '-1.0000'),
(557, 7, '035C', 'New', 2019, '1.8720'),
(558, 8, '035C', 'New', 2019, '1.7478'),
(559, 9, '035C', 'New', 2019, '-1.0000'),
(560, 10, '035C', 'New', 2019, '1.7843'),
(561, 14, '035C', 'New', 2019, '-1.0000'),
(562, 11, '035C', 'New', 2019, '-1.0000'),
(563, 13, '035C', 'New', 2019, '-1.0000'),
(564, 12, '035C', 'New', 2019, '-1.0000'),
(565, 17, '035C', 'New', 2019, '-1.0000'),
(566, 15, '035C', 'New', 2019, '-1.0000'),
(567, 16, '035C', 'New', 2019, '-1.0000'),
(568, 19, '035C', 'New', 2019, '-1.0000'),
(569, 18, '035C', 'New', 2019, '1.7679'),
(570, 20, '035C', 'New', 2019, '-1.0000'),
(571, 21, '035C', 'New', 2019, '-1.0000'),
(572, 22, '035C', 'New', 2019, '-1.0000'),
(573, 23, '035C', 'New', 2019, '-1.0000'),
(574, 25, '035C', 'New', 2019, '1.7750'),
(575, 24, '035C', 'New', 2019, '-1.0000'),
(576, 1, '035L', 'New', 2019, '-1.0000'),
(577, 2, '035L', 'New', 2019, '1.6597'),
(578, 3, '035L', 'New', 2019, '-1.0000'),
(579, 5, '035L', 'New', 2019, '1.1929'),
(580, 4, '035L', 'New', 2019, '1.5605'),
(581, 6, '035L', 'New', 2019, '1.1316'),
(582, 7, '035L', 'New', 2019, '-1.0000'),
(583, 8, '035L', 'New', 2019, '-1.0000'),
(584, 9, '035L', 'New', 2019, '1.5511'),
(585, 10, '035L', 'New', 2019, '1.6790'),
(586, 14, '035L', 'New', 2019, '0.8505'),
(587, 11, '035L', 'New', 2019, '0.9186'),
(588, 13, '035L', 'New', 2019, '0.3311'),
(589, 12, '035L', 'New', 2019, '1.1434'),
(590, 17, '035L', 'New', 2019, '0.9667'),
(591, 15, '035L', 'New', 2019, '1.3594'),
(592, 16, '035L', 'New', 2019, '1.3413'),
(593, 19, '035L', 'New', 2019, '1.2992'),
(594, 18, '035L', 'New', 2019, '1.5400'),
(595, 20, '035L', 'New', 2019, '1.4435'),
(596, 21, '035L', 'New', 2019, '1.2242'),
(597, 22, '035L', 'New', 2019, '1.4989'),
(598, 23, '035L', 'New', 2019, '1.2060'),
(599, 25, '035L', 'New', 2019, '-1.0000'),
(600, 24, '035L', 'New', 2019, '1.5384'),
(601, 1, '006A', 'New', 2019, '1.7667'),
(602, 2, '006A', 'New', 2019, '1.7863'),
(603, 3, '006A', 'New', 2019, '1.9307'),
(604, 5, '006A', 'New', 2019, '-1.0000'),
(605, 4, '006A', 'New', 2019, '1.8081'),
(606, 6, '006A', 'New', 2019, '-1.0000'),
(607, 7, '006A', 'New', 2019, '1.7747'),
(608, 8, '006A', 'New', 2019, '1.7779'),
(609, 9, '006A', 'New', 2019, '-1.0000'),
(610, 10, '006A', 'New', 2019, '1.8644'),
(611, 14, '006A', 'New', 2019, '-1.0000'),
(612, 11, '006A', 'New', 2019, '-1.0000'),
(613, 13, '006A', 'New', 2019, '-1.0000'),
(614, 12, '006A', 'New', 2019, '-1.0000'),
(615, 17, '006A', 'New', 2019, '-1.0000'),
(616, 15, '006A', 'New', 2019, '-1.0000'),
(617, 16, '006A', 'New', 2019, '-1.0000'),
(618, 19, '006A', 'New', 2019, '-1.0000'),
(619, 18, '006A', 'New', 2019, '1.8191'),
(620, 20, '006A', 'New', 2019, '-1.0000'),
(621, 21, '006A', 'New', 2019, '-1.0000'),
(622, 22, '006A', 'New', 2019, '-1.0000'),
(623, 23, '006A', 'New', 2019, '-1.0000'),
(624, 25, '006A', 'New', 2019, '1.8176'),
(625, 24, '006A', 'New', 2019, '1.7807'),
(626, 1, '006B', 'New', 2019, '1.6793'),
(627, 2, '006B', 'New', 2019, '1.6501'),
(628, 3, '006B', 'New', 2019, '1.6697'),
(629, 5, '006B', 'New', 2019, '1.7218'),
(630, 4, '006B', 'New', 2019, '1.6450'),
(631, 6, '006B', 'New', 2019, '-1.0000'),
(632, 7, '006B', 'New', 2019, '1.6453'),
(633, 8, '006B', 'New', 2019, '1.6774'),
(634, 9, '006B', 'New', 2019, '-1.0000'),
(635, 10, '006B', 'New', 2019, '1.6427'),
(636, 14, '006B', 'New', 2019, '-1.0000'),
(637, 11, '006B', 'New', 2019, '-1.0000'),
(638, 13, '006B', 'New', 2019, '-1.0000'),
(639, 12, '006B', 'New', 2019, '-1.0000'),
(640, 17, '006B', 'New', 2019, '-1.0000'),
(641, 15, '006B', 'New', 2019, '-1.0000'),
(642, 16, '006B', 'New', 2019, '-1.0000'),
(643, 19, '006B', 'New', 2019, '-1.0000'),
(644, 18, '006B', 'New', 2019, '1.6385'),
(645, 20, '006B', 'New', 2019, '-1.0000'),
(646, 21, '006B', 'New', 2019, '-1.0000'),
(647, 22, '006B', 'New', 2019, '1.6400'),
(648, 23, '006B', 'New', 2019, '-1.0000'),
(649, 25, '006B', 'New', 2019, '1.6408'),
(650, 24, '006B', 'New', 2019, '1.6422'),
(651, 1, '006C', 'New', 2019, '1.5357'),
(652, 2, '006C', 'New', 2019, '1.5403'),
(653, 3, '006C', 'New', 2019, '1.5547'),
(654, 5, '006C', 'New', 2019, '-1.0000'),
(655, 4, '006C', 'New', 2019, '1.5588'),
(656, 6, '006C', 'New', 2019, '-1.0000'),
(657, 7, '006C', 'New', 2019, '1.5381'),
(658, 8, '006C', 'New', 2019, '1.5559'),
(659, 9, '006C', 'New', 2019, '1.5627'),
(660, 10, '006C', 'New', 2019, '1.5489'),
(661, 14, '006C', 'New', 2019, '-1.0000'),
(662, 11, '006C', 'New', 2019, '-1.0000'),
(663, 13, '006C', 'New', 2019, '-1.0000'),
(664, 12, '006C', 'New', 2019, '-1.0000'),
(665, 17, '006C', 'New', 2019, '-1.0000'),
(666, 15, '006C', 'New', 2019, '-1.0000'),
(667, 16, '006C', 'New', 2019, '-1.0000'),
(668, 19, '006C', 'New', 2019, '1.6221'),
(669, 18, '006C', 'New', 2019, '1.5621'),
(670, 20, '006C', 'New', 2019, '-1.0000'),
(671, 21, '006C', 'New', 2019, '-1.0000'),
(672, 22, '006C', 'New', 2019, '1.5439'),
(673, 23, '006C', 'New', 2019, '-1.0000'),
(674, 25, '006C', 'New', 2019, '1.5485'),
(675, 24, '006C', 'New', 2019, '1.6134'),
(676, 1, '006D', 'New', 2019, '1.4785'),
(677, 2, '006D', 'New', 2019, '1.4828'),
(678, 3, '006D', 'New', 2019, '1.4842'),
(679, 5, '006D', 'New', 2019, '-1.0000'),
(680, 4, '006D', 'New', 2019, '1.4871'),
(681, 6, '006D', 'New', 2019, '-1.0000'),
(682, 7, '006D', 'New', 2019, '1.4811'),
(683, 8, '006D', 'New', 2019, '1.4899'),
(684, 9, '006D', 'New', 2019, '1.6997'),
(685, 10, '006D', 'New', 2019, '-1.0000'),
(686, 14, '006D', 'New', 2019, '-1.0000'),
(687, 11, '006D', 'New', 2019, '-1.0000'),
(688, 13, '006D', 'New', 2019, '-1.0000'),
(689, 12, '006D', 'New', 2019, '-1.0000'),
(690, 17, '006D', 'New', 2019, '-1.0000'),
(691, 15, '006D', 'New', 2019, '-1.0000'),
(692, 16, '006D', 'New', 2019, '-1.0000'),
(693, 19, '006D', 'New', 2019, '1.5063'),
(694, 18, '006D', 'New', 2019, '1.5018'),
(695, 20, '006D', 'New', 2019, '-1.0000'),
(696, 21, '006D', 'New', 2019, '-1.0000'),
(697, 22, '006D', 'New', 2019, '-1.0000'),
(698, 23, '006D', 'New', 2019, '-1.0000'),
(699, 25, '006D', 'New', 2019, '1.5108'),
(700, 24, '006D', 'New', 2019, '1.4813'),
(701, 1, '006E', 'New', 2019, '1.4413'),
(702, 2, '006E', 'New', 2019, '1.1882'),
(703, 3, '006E', 'New', 2019, '-1.0000'),
(704, 5, '006E', 'New', 2019, '1.0936'),
(705, 4, '006E', 'New', 2019, '1.3271'),
(706, 6, '006E', 'New', 2019, '1.0854'),
(707, 7, '006E', 'New', 2019, '-1.0000'),
(708, 8, '006E', 'New', 2019, '1.4093'),
(709, 9, '006E', 'New', 2019, '1.0864'),
(710, 10, '006E', 'New', 2019, '1.2848'),
(711, 14, '006E', 'New', 2019, '1.4073'),
(712, 11, '006E', 'New', 2019, '-1.0000'),
(713, 13, '006E', 'New', 2019, '-1.0000'),
(714, 12, '006E', 'New', 2019, '-1.0000'),
(715, 17, '006E', 'New', 2019, '-1.0000'),
(716, 15, '006E', 'New', 2019, '1.0442'),
(717, 16, '006E', 'New', 2019, '1.0859'),
(718, 19, '006E', 'New', 2019, '1.0234'),
(719, 18, '006E', 'New', 2019, '1.3129'),
(720, 20, '006E', 'New', 2019, '1.0183'),
(721, 21, '006E', 'New', 2019, '-1.0000'),
(722, 22, '006E', 'New', 2019, '1.1582'),
(723, 23, '006E', 'New', 2019, '-1.0000'),
(724, 25, '006E', 'New', 2019, '-1.0000'),
(725, 24, '006E', 'New', 2019, '1.2299'),
(726, 1, '006F', 'New', 2019, '1.4327'),
(727, 2, '006F', 'New', 2019, '1.3687'),
(728, 3, '006F', 'New', 2019, '1.4073'),
(729, 5, '006F', 'New', 2019, '-1.0000'),
(730, 4, '006F', 'New', 2019, '1.4059'),
(731, 6, '006F', 'New', 2019, '-1.0000'),
(732, 7, '006F', 'New', 2019, '1.4579'),
(733, 8, '006F', 'New', 2019, '1.3814'),
(734, 9, '006F', 'New', 2019, '1.4427'),
(735, 10, '006F', 'New', 2019, '-1.0000'),
(736, 14, '006F', 'New', 2019, '-1.0000'),
(737, 11, '006F', 'New', 2019, '-1.0000'),
(738, 13, '006F', 'New', 2019, '-1.0000'),
(739, 12, '006F', 'New', 2019, '-1.0000'),
(740, 17, '006F', 'New', 2019, '-1.0000'),
(741, 15, '006F', 'New', 2019, '-1.0000'),
(742, 16, '006F', 'New', 2019, '-1.0000'),
(743, 19, '006F', 'New', 2019, '1.4059'),
(744, 18, '006F', 'New', 2019, '1.3773'),
(745, 20, '006F', 'New', 2019, '-1.0000'),
(746, 21, '006F', 'New', 2019, '1.4373'),
(747, 22, '006F', 'New', 2019, '1.4516'),
(748, 23, '006F', 'New', 2019, '-1.0000'),
(749, 25, '006F', 'New', 2019, '1.3834'),
(750, 24, '006F', 'New', 2019, '1.3724'),
(751, 1, '006H', 'New', 2019, '-1.0000'),
(752, 2, '006H', 'New', 2019, '-1.0000'),
(753, 3, '006H', 'New', 2019, '1.2944'),
(754, 5, '006H', 'New', 2019, '0.9831'),
(755, 4, '006H', 'New', 2019, '-1.0000'),
(756, 6, '006H', 'New', 2019, '0.9798'),
(757, 7, '006H', 'New', 2019, '-1.0000'),
(758, 8, '006H', 'New', 2019, '1.2688'),
(759, 9, '006H', 'New', 2019, '1.1668'),
(760, 10, '006H', 'New', 2019, '-1.0000'),
(761, 14, '006H', 'New', 2019, '1.1515'),
(762, 11, '006H', 'New', 2019, '0.9707'),
(763, 13, '006H', 'New', 2019, '-1.0000'),
(764, 12, '006H', 'New', 2019, '-1.0000'),
(765, 17, '006H', 'New', 2019, '0.9589'),
(766, 15, '006H', 'New', 2019, '0.8879'),
(767, 16, '006H', 'New', 2019, '0.9741'),
(768, 19, '006H', 'New', 2019, '0.9426'),
(769, 18, '006H', 'New', 2019, '-1.0000'),
(770, 20, '006H', 'New', 2019, '0.8850'),
(771, 21, '006H', 'New', 2019, '0.9581'),
(772, 22, '006H', 'New', 2019, '1.1501'),
(773, 23, '006H', 'New', 2019, '1.0103'),
(774, 25, '006H', 'New', 2019, '1.3797'),
(775, 24, '006H', 'New', 2019, '-1.0000'),
(776, 1, '006J', 'New', 2019, '-1.0000'),
(777, 2, '006J', 'New', 2019, '1.3305'),
(778, 3, '006J', 'New', 2019, '1.2689'),
(779, 5, '006J', 'New', 2019, '1.1706'),
(780, 4, '006J', 'New', 2019, '1.3178'),
(781, 6, '006J', 'New', 2019, '0.7542'),
(782, 7, '006J', 'New', 2019, '-1.0000'),
(783, 8, '006J', 'New', 2019, '-1.0000'),
(784, 9, '006J', 'New', 2019, '-1.0000'),
(785, 10, '006J', 'New', 2019, '-1.0000'),
(786, 14, '006J', 'New', 2019, '0.3957'),
(787, 11, '006J', 'New', 2019, '0.5035'),
(788, 13, '006J', 'New', 2019, '0.2442'),
(789, 12, '006J', 'New', 2019, '0.2952'),
(790, 17, '006J', 'New', 2019, '0.6730'),
(791, 15, '006J', 'New', 2019, '0.7919'),
(792, 16, '006J', 'New', 2019, '0.9793'),
(793, 19, '006J', 'New', 2019, '0.7641'),
(794, 18, '006J', 'New', 2019, '-1.0000'),
(795, 20, '006J', 'New', 2019, '0.6770'),
(796, 21, '006J', 'New', 2019, '0.6790'),
(797, 22, '006J', 'New', 2019, '1.2213'),
(798, 23, '006J', 'New', 2019, '0.7010'),
(799, 25, '006J', 'New', 2019, '-1.0000'),
(800, 24, '006J', 'New', 2019, '-1.0000'),
(801, 1, '007K', 'New', 2019, '1.1614'),
(802, 2, '007K', 'New', 2019, '1.1357'),
(803, 3, '007K', 'New', 2019, '1.1547'),
(804, 5, '007K', 'New', 2019, '-1.0000'),
(805, 4, '007K', 'New', 2019, '1.1755'),
(806, 6, '007K', 'New', 2019, '1.2968'),
(807, 7, '007K', 'New', 2019, '1.1851'),
(808, 8, '007K', 'New', 2019, '1.1486'),
(809, 9, '007K', 'New', 2019, '-1.0000'),
(810, 10, '007K', 'New', 2019, '-1.0000'),
(811, 14, '007K', 'New', 2019, '-1.0000'),
(812, 11, '007K', 'New', 2019, '-1.0000'),
(813, 13, '007K', 'New', 2019, '-1.0000'),
(814, 12, '007K', 'New', 2019, '-1.0000'),
(815, 17, '007K', 'New', 2019, '-1.0000'),
(816, 15, '007K', 'New', 2019, '1.3551'),
(817, 16, '007K', 'New', 2019, '1.1617'),
(818, 19, '007K', 'New', 2019, '1.1330'),
(819, 18, '007K', 'New', 2019, '1.1146'),
(820, 20, '007K', 'New', 2019, '-1.0000'),
(821, 21, '007K', 'New', 2019, '-1.0000'),
(822, 22, '007K', 'New', 2019, '1.1214'),
(823, 23, '007K', 'New', 2019, '-1.0000'),
(824, 25, '007K', 'New', 2019, '1.1636'),
(825, 24, '007K', 'New', 2019, '1.1364'),
(826, 1, '007L', 'New', 2019, '1.1882'),
(827, 2, '007L', 'New', 2019, '1.2577'),
(828, 3, '007L', 'New', 2019, '1.2071'),
(829, 5, '007L', 'New', 2019, '1.1984'),
(830, 4, '007L', 'New', 2019, '1.1924'),
(831, 6, '007L', 'New', 2019, '-1.0000'),
(832, 7, '007L', 'New', 2019, '1.1939'),
(833, 8, '007L', 'New', 2019, '1.2031'),
(834, 9, '007L', 'New', 2019, '1.0000'),
(835, 10, '007L', 'New', 2019, '-1.0000'),
(836, 14, '007L', 'New', 2019, '-1.0000'),
(837, 11, '007L', 'New', 2019, '-1.0000'),
(838, 13, '007L', 'New', 2019, '-1.0000'),
(839, 12, '007L', 'New', 2019, '-1.0000'),
(840, 17, '007L', 'New', 2019, '-1.0000'),
(841, 15, '007L', 'New', 2019, '-1.0000'),
(842, 16, '007L', 'New', 2019, '-1.0000'),
(843, 19, '007L', 'New', 2019, '-1.0000'),
(844, 18, '007L', 'New', 2019, '1.2758'),
(845, 20, '007L', 'New', 2019, '-1.0000'),
(846, 21, '007L', 'New', 2019, '-1.0000'),
(847, 22, '007L', 'New', 2019, '1.3292'),
(848, 23, '007L', 'New', 2019, '-1.0000'),
(849, 25, '007L', 'New', 2019, '1.2640'),
(850, 24, '007L', 'New', 2019, '1.1857'),
(851, 1, '007R', 'New', 2019, '1.1628'),
(852, 2, '007R', 'New', 2019, '1.0410'),
(853, 3, '007R', 'New', 2019, '-1.0000'),
(854, 5, '007R', 'New', 2019, '0.8395'),
(855, 4, '007R', 'New', 2019, '-1.0000'),
(856, 6, '007R', 'New', 2019, '0.7365'),
(857, 7, '007R', 'New', 2019, '-1.0000'),
(858, 8, '007R', 'New', 2019, '-1.0000'),
(859, 9, '007R', 'New', 2019, '1.0257'),
(860, 10, '007R', 'New', 2019, '0.9084'),
(861, 14, '007R', 'New', 2019, '0.3931'),
(862, 11, '007R', 'New', 2019, '0.6906'),
(863, 13, '007R', 'New', 2019, '0.0304'),
(864, 12, '007R', 'New', 2019, '0.7837'),
(865, 17, '007R', 'New', 2019, '0.5819'),
(866, 15, '007R', 'New', 2019, '0.7648'),
(867, 16, '007R', 'New', 2019, '0.9242'),
(868, 19, '007R', 'New', 2019, '0.7607'),
(869, 18, '007R', 'New', 2019, '1.0383'),
(870, 20, '007R', 'New', 2019, '0.7355'),
(871, 21, '007R', 'New', 2019, '0.4915'),
(872, 22, '007R', 'New', 2019, '0.9962'),
(873, 23, '007R', 'New', 2019, '0.6426'),
(874, 25, '007R', 'New', 2019, '-1.0000'),
(875, 24, '007R', 'New', 2019, '-1.0000'),
(876, 1, '008B', 'New', 2019, '2.0630'),
(877, 2, '008B', 'New', 2019, '2.0711'),
(878, 3, '008B', 'New', 2019, '2.0716'),
(879, 5, '008B', 'New', 2019, '-1.0000'),
(880, 4, '008B', 'New', 2019, '2.0714'),
(881, 6, '008B', 'New', 2019, '2.1218'),
(882, 7, '008B', 'New', 2019, '2.0675'),
(883, 8, '008B', 'New', 2019, '2.0659'),
(884, 9, '008B', 'New', 2019, '2.1511'),
(885, 10, '008B', 'New', 2019, '2.0611'),
(886, 14, '008B', 'New', 2019, '-1.0000'),
(887, 11, '008B', 'New', 2019, '-1.0000'),
(888, 13, '008B', 'New', 2019, '-1.0000'),
(889, 12, '008B', 'New', 2019, '2.0636'),
(890, 17, '008B', 'New', 2019, '2.0849'),
(891, 15, '008B', 'New', 2019, '2.0635'),
(892, 16, '008B', 'New', 2019, '2.1394'),
(893, 19, '008B', 'New', 2019, '2.0934'),
(894, 18, '008B', 'New', 2019, '2.0630'),
(895, 20, '008B', 'New', 2019, '2.0716'),
(896, 21, '008B', 'New', 2019, '-1.0000'),
(897, 22, '008B', 'New', 2019, '9.9999'),
(898, 23, '008B', 'New', 2019, '2.1320'),
(899, 25, '008B', 'New', 2019, '2.0829'),
(900, 24, '008B', 'New', 2019, '2.0717'),
(901, 1, '008C', 'New', 2019, '1.9771'),
(902, 2, '008C', 'New', 2019, '1.9761'),
(903, 3, '008C', 'New', 2019, '2.0321'),
(904, 5, '008C', 'New', 2019, '-1.0000'),
(905, 4, '008C', 'New', 2019, '1.9921'),
(906, 6, '008C', 'New', 2019, '-1.0000'),
(907, 7, '008C', 'New', 2019, '1.9815'),
(908, 8, '008C', 'New', 2019, '-1.0000'),
(909, 9, '008C', 'New', 2019, '2.0005'),
(910, 10, '008C', 'New', 2019, '1.9941'),
(911, 14, '008C', 'New', 2019, '-1.0000'),
(912, 11, '008C', 'New', 2019, '-1.0000'),
(913, 13, '008C', 'New', 2019, '-1.0000'),
(914, 12, '008C', 'New', 2019, '-1.0000'),
(915, 17, '008C', 'New', 2019, '-1.0000'),
(916, 15, '008C', 'New', 2019, '-1.0000'),
(917, 16, '008C', 'New', 2019, '1.9808'),
(918, 19, '008C', 'New', 2019, '-1.0000'),
(919, 18, '008C', 'New', 2019, '2.0065'),
(920, 20, '008C', 'New', 2019, '2.0128'),
(921, 21, '008C', 'New', 2019, '-1.0000'),
(922, 22, '008C', 'New', 2019, '-1.0000'),
(923, 23, '008C', 'New', 2019, '-1.0000'),
(924, 25, '008C', 'New', 2019, '-1.0000'),
(925, 24, '008C', 'New', 2019, '2.0118'),
(926, 1, '008E', 'New', 2019, '-1.0000'),
(927, 2, '008E', 'New', 2019, '1.6726'),
(928, 3, '008E', 'New', 2019, '1.7864'),
(929, 5, '008E', 'New', 2019, '1.6401'),
(930, 4, '008E', 'New', 2019, '1.6026'),
(931, 6, '008E', 'New', 2019, '1.5478'),
(932, 7, '008E', 'New', 2019, '-1.0000'),
(933, 8, '008E', 'New', 2019, '-1.0000'),
(934, 9, '008E', 'New', 2019, '-1.0000'),
(935, 10, '008E', 'New', 2019, '2.0519'),
(936, 14, '008E', 'New', 2019, '1.7732'),
(937, 11, '008E', 'New', 2019, '1.5311'),
(938, 13, '008E', 'New', 2019, '-1.0000'),
(939, 12, '008E', 'New', 2019, '1.8302'),
(940, 17, '008E', 'New', 2019, '1.5215'),
(941, 15, '008E', 'New', 2019, '1.5035'),
(942, 16, '008E', 'New', 2019, '1.7089'),
(943, 19, '008E', 'New', 2019, '1.4940'),
(944, 18, '008E', 'New', 2019, '-1.0000'),
(945, 20, '008E', 'New', 2019, '1.4994'),
(946, 21, '008E', 'New', 2019, '1.6445'),
(947, 22, '008E', 'New', 2019, '1.5771'),
(948, 23, '008E', 'New', 2019, '1.5840'),
(949, 25, '008E', 'New', 2019, '1.7645'),
(950, 24, '008E', 'New', 2019, '-1.0000'),
(951, 1, '008F', 'New', 2019, '1.8596'),
(952, 2, '008F', 'New', 2019, '1.8512'),
(953, 3, '008F', 'New', 2019, '1.8564'),
(954, 5, '008F', 'New', 2019, '1.9637'),
(955, 4, '008F', 'New', 2019, '1.8537'),
(956, 6, '008F', 'New', 2019, '1.9647'),
(957, 7, '008F', 'New', 2019, '1.9140'),
(958, 8, '008F', 'New', 2019, '1.9269'),
(959, 9, '008F', 'New', 2019, '1.8575'),
(960, 10, '008F', 'New', 2019, '1.9845'),
(961, 14, '008F', 'New', 2019, '1.8681'),
(962, 11, '008F', 'New', 2019, '2.0327'),
(963, 13, '008F', 'New', 2019, '1.8521'),
(964, 12, '008F', 'New', 2019, '1.8672'),
(965, 17, '008F', 'New', 2019, '1.8660'),
(966, 15, '008F', 'New', 2019, '1.8634'),
(967, 16, '008F', 'New', 2019, '1.8773'),
(968, 19, '008F', 'New', 2019, '1.8573'),
(969, 18, '008F', 'New', 2019, '1.9017'),
(970, 20, '008F', 'New', 2019, '1.9375'),
(971, 21, '008F', 'New', 2019, '1.8558'),
(972, 22, '008F', 'New', 2019, '1.8528'),
(973, 23, '008F', 'New', 2019, '1.8997'),
(974, 25, '008F', 'New', 2019, '1.9157'),
(975, 24, '008F', 'New', 2019, '1.8618'),
(976, 1, '008G', 'New', 2019, '2.1944'),
(977, 2, '008G', 'New', 2019, '2.2013'),
(978, 3, '008G', 'New', 2019, '2.2083'),
(979, 5, '008G', 'New', 2019, '-1.0000'),
(980, 4, '008G', 'New', 2019, '2.1971'),
(981, 6, '008G', 'New', 2019, '2.3184'),
(982, 7, '008G', 'New', 2019, '2.1960'),
(983, 8, '008G', 'New', 2019, '2.2200'),
(984, 9, '008G', 'New', 2019, '2.2393'),
(985, 10, '008G', 'New', 2019, '2.2101'),
(986, 14, '008G', 'New', 2019, '2.2537'),
(987, 11, '008G', 'New', 2019, '2.3366'),
(988, 13, '008G', 'New', 2019, '2.4700'),
(989, 12, '008G', 'New', 2019, '2.3648'),
(990, 17, '008G', 'New', 2019, '2.2607'),
(991, 15, '008G', 'New', 2019, '2.1967'),
(992, 16, '008G', 'New', 2019, '2.2750'),
(993, 19, '008G', 'New', 2019, '2.2014'),
(994, 18, '008G', 'New', 2019, '2.1954'),
(995, 20, '008G', 'New', 2019, '2.2019'),
(996, 21, '008G', 'New', 2019, '2.3358'),
(997, 22, '008G', 'New', 2019, '2.1675'),
(998, 23, '008G', 'New', 2019, '2.2686'),
(999, 25, '008G', 'New', 2019, '2.2350'),
(1000, 24, '008G', 'New', 2019, '2.2147'),
(1001, 1, '008J', 'New', 2019, '-1.0000'),
(1002, 2, '008J', 'New', 2019, '1.6610'),
(1003, 3, '008J', 'New', 2019, '1.7927'),
(1004, 5, '008J', 'New', 2019, '-1.0000'),
(1005, 4, '008J', 'New', 2019, '1.7021'),
(1006, 6, '008J', 'New', 2019, '1.2693'),
(1007, 7, '008J', 'New', 2019, '-1.0000'),
(1008, 8, '008J', 'New', 2019, '-1.0000'),
(1009, 9, '008J', 'New', 2019, '1.7042'),
(1010, 10, '008J', 'New', 2019, '-1.0000'),
(1011, 14, '008J', 'New', 2019, '1.6903'),
(1012, 11, '008J', 'New', 2019, '1.4206'),
(1013, 13, '008J', 'New', 2019, '1.3693'),
(1014, 12, '008J', 'New', 2019, '-1.0000'),
(1015, 17, '008J', 'New', 2019, '1.3152'),
(1016, 15, '008J', 'New', 2019, '1.4666'),
(1017, 16, '008J', 'New', 2019, '1.7122'),
(1018, 19, '008J', 'New', 2019, '1.3596'),
(1019, 18, '008J', 'New', 2019, '-1.0000'),
(1020, 20, '008J', 'New', 2019, '1.4599'),
(1021, 21, '008J', 'New', 2019, '1.2100'),
(1022, 22, '008J', 'New', 2019, '1.6021'),
(1023, 23, '008J', 'New', 2019, '1.4151'),
(1024, 25, '008J', 'New', 2019, '1.6939'),
(1025, 24, '008J', 'New', 2019, '-1.0000'),
(1026, 1, '009G', 'New', 2019, '1.8628'),
(1027, 2, '009G', 'New', 2019, '1.8205'),
(1028, 3, '009G', 'New', 2019, '1.8195'),
(1029, 5, '009G', 'New', 2019, '1.5782'),
(1030, 4, '009G', 'New', 2019, '1.8798'),
(1031, 6, '009G', 'New', 2019, '1.3736'),
(1032, 7, '009G', 'New', 2019, '1.8291'),
(1033, 8, '009G', 'New', 2019, '1.8825'),
(1034, 9, '009G', 'New', 2019, '1.8058'),
(1035, 10, '009G', 'New', 2019, '1.8730'),
(1036, 14, '009G', 'New', 2019, '1.6507'),
(1037, 11, '009G', 'New', 2019, '1.1788'),
(1038, 13, '009G', 'New', 2019, '1.3286'),
(1039, 12, '009G', 'New', 2019, '1.6568'),
(1040, 17, '009G', 'New', 2019, '1.3057'),
(1041, 15, '009G', 'New', 2019, '1.4457'),
(1042, 16, '009G', 'New', 2019, '1.7708'),
(1043, 19, '009G', 'New', 2019, '1.4505'),
(1044, 18, '009G', 'New', 2019, '1.8884'),
(1045, 20, '009G', 'New', 2019, '1.4573'),
(1046, 21, '009G', 'New', 2019, '1.1556'),
(1047, 22, '009G', 'New', 2019, '1.8398'),
(1048, 23, '009G', 'New', 2019, '1.5974'),
(1049, 25, '009G', 'New', 2019, '1.7837'),
(1050, 24, '009G', 'New', 2019, '1.7687'),
(1051, 1, '010G', 'New', 2019, '1.8473'),
(1052, 2, '010G', 'New', 2019, '1.8846'),
(1053, 3, '010G', 'New', 2019, '1.8504'),
(1054, 5, '010G', 'New', 2019, '1.4669'),
(1055, 4, '010G', 'New', 2019, '1.8463'),
(1056, 6, '010G', 'New', 2019, '1.4201'),
(1057, 7, '010G', 'New', 2019, '1.8425'),
(1058, 8, '010G', 'New', 2019, '1.8526'),
(1059, 9, '010G', 'New', 2019, '1.8067'),
(1060, 10, '010G', 'New', 2019, '1.8409'),
(1061, 14, '010G', 'New', 2019, '1.5276'),
(1062, 11, '010G', 'New', 2019, '1.0265'),
(1063, 13, '010G', 'New', 2019, '1.2822'),
(1064, 12, '010G', 'New', 2019, '1.6530'),
(1065, 17, '010G', 'New', 2019, '1.3052'),
(1066, 15, '010G', 'New', 2019, '1.4638'),
(1067, 16, '010G', 'New', 2019, '1.6722'),
(1068, 19, '010G', 'New', 2019, '1.6021'),
(1069, 18, '010G', 'New', 2019, '1.8627'),
(1070, 20, '010G', 'New', 2019, '1.6133'),
(1071, 21, '010G', 'New', 2019, '1.1609'),
(1072, 22, '010G', 'New', 2019, '1.8084'),
(1073, 23, '010G', 'New', 2019, '1.4408'),
(1074, 25, '010G', 'New', 2019, '1.8234'),
(1075, 24, '010G', 'New', 2019, '1.8109'),
(1076, 1, '011G', 'New', 2019, '1.7992'),
(1077, 2, '011G', 'New', 2019, '1.7414'),
(1078, 3, '011G', 'New', 2019, '1.7900'),
(1079, 5, '011G', 'New', 2019, '1.3832'),
(1080, 4, '011G', 'New', 2019, '1.6057'),
(1081, 6, '011G', 'New', 2019, '1.7358'),
(1082, 7, '011G', 'New', 2019, '1.7688'),
(1083, 8, '011G', 'New', 2019, '1.7731'),
(1084, 9, '011G', 'New', 2019, '1.7426'),
(1085, 10, '011G', 'New', 2019, '1.7832'),
(1086, 14, '011G', 'New', 2019, '1.5568'),
(1087, 11, '011G', 'New', 2019, '0.8651'),
(1088, 13, '011G', 'New', 2019, '1.2603'),
(1089, 12, '011G', 'New', 2019, '1.6443'),
(1090, 17, '011G', 'New', 2019, '1.2747'),
(1091, 15, '011G', 'New', 2019, '1.4851'),
(1092, 16, '011G', 'New', 2019, '1.6390'),
(1093, 19, '011G', 'New', 2019, '1.4461'),
(1094, 18, '011G', 'New', 2019, '1.7938'),
(1095, 20, '011G', 'New', 2019, '1.4227'),
(1096, 21, '011G', 'New', 2019, '1.1119'),
(1097, 22, '011G', 'New', 2019, '1.6796'),
(1098, 23, '011G', 'New', 2019, '1.3987'),
(1099, 25, '011G', 'New', 2019, '1.7751'),
(1100, 24, '011G', 'New', 2019, '1.7561'),
(1101, 1, '012D', 'New', 2019, '1.7020'),
(1102, 2, '012D', 'New', 2019, '1.7036'),
(1103, 3, '012D', 'New', 2019, '1.7186'),
(1104, 5, '012D', 'New', 2019, '-1.0000'),
(1105, 4, '012D', 'New', 2019, '1.7109'),
(1106, 6, '012D', 'New', 2019, '-1.0000'),
(1107, 7, '012D', 'New', 2019, '1.7071'),
(1108, 8, '012D', 'New', 2019, '1.7111'),
(1109, 9, '012D', 'New', 2019, '1.7014'),
(1110, 10, '012D', 'New', 2019, '1.7027'),
(1111, 14, '012D', 'New', 2019, '-1.0000'),
(1112, 11, '012D', 'New', 2019, '-1.0000'),
(1113, 13, '012D', 'New', 2019, '-1.0000'),
(1114, 12, '012D', 'New', 2019, '-1.0000'),
(1115, 17, '012D', 'New', 2019, '-1.0000'),
(1116, 15, '012D', 'New', 2019, '-1.0000'),
(1117, 16, '012D', 'New', 2019, '-1.0000'),
(1118, 19, '012D', 'New', 2019, '-1.0000'),
(1119, 18, '012D', 'New', 2019, '1.7084'),
(1120, 20, '012D', 'New', 2019, '-1.0000'),
(1121, 21, '012D', 'New', 2019, '-1.0000'),
(1122, 22, '012D', 'New', 2019, '-1.0000'),
(1123, 23, '012D', 'New', 2019, '-1.0000'),
(1124, 25, '012D', 'New', 2019, '-1.0000'),
(1125, 24, '012D', 'New', 2019, '1.7485'),
(1126, 1, '012E', 'New', 2019, '1.3623'),
(1127, 2, '012E', 'New', 2019, '1.3671'),
(1128, 3, '012E', 'New', 2019, '-1.0000'),
(1129, 5, '012E', 'New', 2019, '-1.0000'),
(1130, 4, '012E', 'New', 2019, '1.3650'),
(1131, 6, '012E', 'New', 2019, '-1.0000'),
(1132, 7, '012E', 'New', 2019, '-1.0000'),
(1133, 8, '012E', 'New', 2019, '-1.0000'),
(1134, 9, '012E', 'New', 2019, '-1.0000'),
(1135, 10, '012E', 'New', 2019, '1.6764'),
(1136, 14, '012E', 'New', 2019, '-1.0000'),
(1137, 11, '012E', 'New', 2019, '-1.0000'),
(1138, 13, '012E', 'New', 2019, '-1.0000'),
(1139, 12, '012E', 'New', 2019, '1.3730'),
(1140, 17, '012E', 'New', 2019, '-1.0000'),
(1141, 15, '012E', 'New', 2019, '1.3452'),
(1142, 16, '012E', 'New', 2019, '1.3425'),
(1143, 19, '012E', 'New', 2019, '1.3585'),
(1144, 18, '012E', 'New', 2019, '-1.0000'),
(1145, 20, '012E', 'New', 2019, '1.3612'),
(1146, 21, '012E', 'New', 2019, '-1.0000'),
(1147, 22, '012E', 'New', 2019, '1.3469'),
(1148, 23, '012E', 'New', 2019, '-1.0000'),
(1149, 25, '012E', 'New', 2019, '1.4237'),
(1150, 24, '012E', 'New', 2019, '1.3413'),
(1151, 1, '013F', 'New', 2019, '1.5317'),
(1152, 2, '013F', 'New', 2019, '1.5697'),
(1153, 3, '013F', 'New', 2019, '1.5782'),
(1154, 5, '013F', 'New', 2019, '-1.0000'),
(1155, 4, '013F', 'New', 2019, '1.6436'),
(1156, 6, '013F', 'New', 2019, '-1.0000'),
(1157, 7, '013F', 'New', 2019, '1.5654'),
(1158, 8, '013F', 'New', 2019, '1.6508'),
(1159, 9, '013F', 'New', 2019, '1.6578'),
(1160, 10, '013F', 'New', 2019, '-1.0000'),
(1161, 14, '013F', 'New', 2019, '-1.0000'),
(1162, 11, '013F', 'New', 2019, '-1.0000'),
(1163, 13, '013F', 'New', 2019, '-1.0000'),
(1164, 12, '013F', 'New', 2019, '-1.0000'),
(1165, 17, '013F', 'New', 2019, '-1.0000'),
(1166, 15, '013F', 'New', 2019, '-1.0000'),
(1167, 16, '013F', 'New', 2019, '-1.0000'),
(1168, 19, '013F', 'New', 2019, '-1.0000'),
(1169, 18, '013F', 'New', 2019, '1.5718'),
(1170, 20, '013F', 'New', 2019, '-1.0000'),
(1171, 21, '013F', 'New', 2019, '-1.0000'),
(1172, 22, '013F', 'New', 2019, '-1.0000'),
(1173, 23, '013F', 'New', 2019, '-1.0000'),
(1174, 25, '013F', 'New', 2019, '1.5317'),
(1175, 24, '013F', 'New', 2019, '1.5494'),
(1176, 1, '012T', 'New', 2019, '1.7533'),
(1177, 2, '012T', 'New', 2019, '1.7681'),
(1178, 3, '012T', 'New', 2019, '1.7697'),
(1179, 5, '012T', 'New', 2019, '-1.0000'),
(1180, 4, '012T', 'New', 2019, '1.7961'),
(1181, 6, '012T', 'New', 2019, '-1.0000'),
(1182, 7, '012T', 'New', 2019, '1.7554'),
(1183, 8, '012T', 'New', 2019, '1.7642'),
(1184, 9, '012T', 'New', 2019, '1.7689'),
(1185, 10, '012T', 'New', 2019, '1.7538'),
(1186, 14, '012T', 'New', 2019, '-1.0000'),
(1187, 11, '012T', 'New', 2019, '-1.0000'),
(1188, 13, '012T', 'New', 2019, '-1.0000'),
(1189, 12, '012T', 'New', 2019, '-1.0000'),
(1190, 17, '012T', 'New', 2019, '-1.0000'),
(1191, 15, '012T', 'New', 2019, '-1.0000'),
(1192, 16, '012T', 'New', 2019, '-1.0000'),
(1193, 19, '012T', 'New', 2019, '1.8414'),
(1194, 18, '012T', 'New', 2019, '1.7538'),
(1195, 20, '012T', 'New', 2019, '-1.0000'),
(1196, 21, '012T', 'New', 2019, '-1.0000'),
(1197, 22, '012T', 'New', 2019, '1.8352'),
(1198, 23, '012T', 'New', 2019, '-1.0000'),
(1199, 25, '012T', 'New', 2019, '1.7564'),
(1200, 24, '012T', 'New', 2019, '1.7524'),
(1201, 1, '012W', 'New', 2019, '1.3374'),
(1202, 2, '012W', 'New', 2019, '1.0503'),
(1203, 3, '012W', 'New', 2019, '-1.0000'),
(1204, 5, '012W', 'New', 2019, '1.0436'),
(1205, 4, '012W', 'New', 2019, '1.0563'),
(1206, 6, '012W', 'New', 2019, '0.8378'),
(1207, 7, '012W', 'New', 2019, '-1.0000'),
(1208, 8, '012W', 'New', 2019, '-1.0000'),
(1209, 9, '012W', 'New', 2019, '-1.0000'),
(1210, 10, '012W', 'New', 2019, '-1.0000'),
(1211, 14, '012W', 'New', 2019, '1.2204'),
(1212, 11, '012W', 'New', 2019, '0.5839'),
(1213, 13, '012W', 'New', 2019, '0.6294'),
(1214, 12, '012W', 'New', 2019, '-1.0000'),
(1215, 17, '012W', 'New', 2019, '0.9189'),
(1216, 15, '012W', 'New', 2019, '1.2223'),
(1217, 16, '012W', 'New', 2019, '1.1749'),
(1218, 19, '012W', 'New', 2019, '0.8517'),
(1219, 18, '012W', 'New', 2019, '-1.0000'),
(1220, 20, '012W', 'New', 2019, '1.1524'),
(1221, 21, '012W', 'New', 2019, '0.8634'),
(1222, 22, '012W', 'New', 2019, '1.1503'),
(1223, 23, '012W', 'New', 2019, '0.8772'),
(1224, 25, '012W', 'New', 2019, '-1.0000'),
(1225, 24, '012W', 'New', 2019, '1.1293'),
(1226, 1, '013A', 'New', 2019, '1.5668'),
(1227, 2, '013A', 'New', 2019, '1.5712'),
(1228, 3, '013A', 'New', 2019, '1.5637'),
(1229, 5, '013A', 'New', 2019, '-1.0000'),
(1230, 4, '013A', 'New', 2019, '1.5764'),
(1231, 6, '013A', 'New', 2019, '-1.0000'),
(1232, 7, '013A', 'New', 2019, '1.5618'),
(1233, 8, '013A', 'New', 2019, '1.5750'),
(1234, 9, '013A', 'New', 2019, '1.7313'),
(1235, 10, '013A', 'New', 2019, '1.5798'),
(1236, 14, '013A', 'New', 2019, '-1.0000'),
(1237, 11, '013A', 'New', 2019, '-1.0000'),
(1238, 13, '013A', 'New', 2019, '-1.0000'),
(1239, 12, '013A', 'New', 2019, '-1.0000'),
(1240, 17, '013A', 'New', 2019, '-1.0000'),
(1241, 15, '013A', 'New', 2019, '2.4241'),
(1242, 16, '013A', 'New', 2019, '1.6091'),
(1243, 19, '013A', 'New', 2019, '-1.0000'),
(1244, 18, '013A', 'New', 2019, '1.6233');
INSERT INTO `zscoretable` (`z_id`, `district_id`, `unicode`, `syllabus`, `year`, `z_score`) VALUES
(1245, 20, '013A', 'New', 2019, '-1.0000'),
(1246, 21, '013A', 'New', 2019, '-1.0000'),
(1247, 22, '013A', 'New', 2019, '2.5764'),
(1248, 23, '013A', 'New', 2019, '-1.0000'),
(1249, 25, '013A', 'New', 2019, '1.6214'),
(1250, 24, '013A', 'New', 2019, '1.6629'),
(1251, 1, '013B', 'New', 2019, '1.4680'),
(1252, 2, '013B', 'New', 2019, '1.4676'),
(1253, 3, '013B', 'New', 2019, '1.4688'),
(1254, 5, '013B', 'New', 2019, '-1.0000'),
(1255, 4, '013B', 'New', 2019, '1.4644'),
(1256, 6, '013B', 'New', 2019, '-1.0000'),
(1257, 7, '013B', 'New', 2019, '1.4804'),
(1258, 8, '013B', 'New', 2019, '1.4676'),
(1259, 9, '013B', 'New', 2019, '1.4659'),
(1260, 10, '013B', 'New', 2019, '1.4666'),
(1261, 14, '013B', 'New', 2019, '-1.0000'),
(1262, 11, '013B', 'New', 2019, '-1.0000'),
(1263, 13, '013B', 'New', 2019, '-1.0000'),
(1264, 12, '013B', 'New', 2019, '-1.0000'),
(1265, 17, '013B', 'New', 2019, '-1.0000'),
(1266, 15, '013B', 'New', 2019, '-1.0000'),
(1267, 16, '013B', 'New', 2019, '1.5118'),
(1268, 19, '013B', 'New', 2019, '-1.0000'),
(1269, 18, '013B', 'New', 2019, '1.4750'),
(1270, 20, '013B', 'New', 2019, '-1.0000'),
(1271, 21, '013B', 'New', 2019, '-1.0000'),
(1272, 22, '013B', 'New', 2019, '1.4825'),
(1273, 23, '013B', 'New', 2019, '-1.0000'),
(1274, 25, '013B', 'New', 2019, '1.4673'),
(1275, 24, '013B', 'New', 2019, '1.4771'),
(1276, 1, '013C', 'New', 2019, '1.3618'),
(1277, 2, '013C', 'New', 2019, '1.3613'),
(1278, 3, '013C', 'New', 2019, '1.3633'),
(1279, 5, '013C', 'New', 2019, '-1.0000'),
(1280, 4, '013C', 'New', 2019, '1.3646'),
(1281, 6, '013C', 'New', 2019, '-1.0000'),
(1282, 7, '013C', 'New', 2019, '1.3607'),
(1283, 8, '013C', 'New', 2019, '1.3746'),
(1284, 9, '013C', 'New', 2019, '1.3705'),
(1285, 10, '013C', 'New', 2019, '1.3762'),
(1286, 14, '013C', 'New', 2019, '-1.0000'),
(1287, 11, '013C', 'New', 2019, '-1.0000'),
(1288, 13, '013C', 'New', 2019, '-1.0000'),
(1289, 12, '013C', 'New', 2019, '-1.0000'),
(1290, 17, '013C', 'New', 2019, '-1.0000'),
(1291, 15, '013C', 'New', 2019, '-1.0000'),
(1292, 16, '013C', 'New', 2019, '-1.0000'),
(1293, 19, '013C', 'New', 2019, '-1.0000'),
(1294, 18, '013C', 'New', 2019, '1.3762'),
(1295, 20, '013C', 'New', 2019, '1.3997'),
(1296, 21, '013C', 'New', 2019, '-1.0000'),
(1297, 22, '013C', 'New', 2019, '1.3779'),
(1298, 23, '013C', 'New', 2019, '-1.0000'),
(1299, 25, '013C', 'New', 2019, '1.4329'),
(1300, 24, '013C', 'New', 2019, '1.4290'),
(1301, 1, '013D', 'New', 2019, '1.2816'),
(1302, 2, '013D', 'New', 2019, '1.2832'),
(1303, 3, '013D', 'New', 2019, '1.2827'),
(1304, 5, '013D', 'New', 2019, '-1.0000'),
(1305, 4, '013D', 'New', 2019, '1.2844'),
(1306, 6, '013D', 'New', 2019, '-1.0000'),
(1307, 7, '013D', 'New', 2019, '1.2893'),
(1308, 8, '013D', 'New', 2019, '1.2908'),
(1309, 9, '013D', 'New', 2019, '1.3037'),
(1310, 10, '013D', 'New', 2019, '1.3070'),
(1311, 14, '013D', 'New', 2019, '-1.0000'),
(1312, 11, '013D', 'New', 2019, '-1.0000'),
(1313, 13, '013D', 'New', 2019, '-1.0000'),
(1314, 12, '013D', 'New', 2019, '-1.0000'),
(1315, 17, '013D', 'New', 2019, '-1.0000'),
(1316, 15, '013D', 'New', 2019, '1.3110'),
(1317, 16, '013D', 'New', 2019, '1.3741'),
(1318, 19, '013D', 'New', 2019, '1.3066'),
(1319, 18, '013D', 'New', 2019, '1.2822'),
(1320, 20, '013D', 'New', 2019, '-1.0000'),
(1321, 21, '013D', 'New', 2019, '-1.0000'),
(1322, 22, '013D', 'New', 2019, '-1.0000'),
(1323, 23, '013D', 'New', 2019, '-1.0000'),
(1324, 25, '013D', 'New', 2019, '1.3069'),
(1325, 24, '013D', 'New', 2019, '1.2843'),
(1326, 1, '013E', 'New', 2019, '-1.0000'),
(1327, 2, '013E', 'New', 2019, '0.9152'),
(1328, 3, '013E', 'New', 2019, '-1.0000'),
(1329, 5, '013E', 'New', 2019, '0.7967'),
(1330, 4, '013E', 'New', 2019, '0.8491'),
(1331, 6, '013E', 'New', 2019, '0.7743'),
(1332, 7, '013E', 'New', 2019, '1.0991'),
(1333, 8, '013E', 'New', 2019, '-1.0000'),
(1334, 9, '013E', 'New', 2019, '1.0318'),
(1335, 10, '013E', 'New', 2019, '1.0796'),
(1336, 14, '013E', 'New', 2019, '0.9810'),
(1337, 11, '013E', 'New', 2019, '-1.0000'),
(1338, 13, '013E', 'New', 2019, '-1.0000'),
(1339, 12, '013E', 'New', 2019, '0.7878'),
(1340, 17, '013E', 'New', 2019, '0.7829'),
(1341, 15, '013E', 'New', 2019, '0.8380'),
(1342, 16, '013E', 'New', 2019, '0.8009'),
(1343, 19, '013E', 'New', 2019, '0.7830'),
(1344, 18, '013E', 'New', 2019, '1.1288'),
(1345, 20, '013E', 'New', 2019, '0.8303'),
(1346, 21, '013E', 'New', 2019, '0.7939'),
(1347, 22, '013E', 'New', 2019, '0.9900'),
(1348, 23, '013E', 'New', 2019, '0.7962'),
(1349, 25, '013E', 'New', 2019, '0.9000'),
(1350, 24, '013E', 'New', 2019, '0.7774'),
(1351, 1, '013E', 'New', 2019, '1.2180'),
(1352, 2, '013E', 'New', 2019, '1.1812'),
(1353, 3, '013E', 'New', 2019, '1.2149'),
(1354, 5, '013E', 'New', 2019, '1.2149'),
(1355, 4, '013E', 'New', 2019, '1.2010'),
(1356, 6, '013E', 'New', 2019, '-1.0000'),
(1357, 7, '013E', 'New', 2019, '1.1823'),
(1358, 8, '013E', 'New', 2019, '1.2237'),
(1359, 9, '013E', 'New', 2019, '1.2279'),
(1360, 10, '013E', 'New', 2019, '1.2604'),
(1361, 14, '013E', 'New', 2019, '-1.0000'),
(1362, 11, '013E', 'New', 2019, '-1.0000'),
(1363, 13, '013E', 'New', 2019, '-1.0000'),
(1364, 12, '013E', 'New', 2019, '-1.0000'),
(1365, 17, '013E', 'New', 2019, '-1.0000'),
(1366, 15, '013E', 'New', 2019, '-1.0000'),
(1367, 16, '013E', 'New', 2019, '1.2411'),
(1368, 19, '013E', 'New', 2019, '1.1941'),
(1369, 18, '013E', 'New', 2019, '1.1824'),
(1370, 20, '013E', 'New', 2019, '1.2245'),
(1371, 21, '013E', 'New', 2019, '-1.0000'),
(1372, 22, '013E', 'New', 2019, '1.1893'),
(1373, 23, '013E', 'New', 2019, '-1.0000'),
(1374, 25, '013E', 'New', 2019, '1.1819'),
(1375, 24, '013E', 'New', 2019, '1.1819'),
(1376, 1, '013H', 'New', 2019, '-1.0000'),
(1377, 2, '013H', 'New', 2019, '0.9917'),
(1378, 3, '013H', 'New', 2019, '-1.0000'),
(1379, 5, '013H', 'New', 2019, '0.6535'),
(1380, 4, '013H', 'New', 2019, '0.8532'),
(1381, 6, '013H', 'New', 2019, '0.4816'),
(1382, 7, '013H', 'New', 2019, '-1.0000'),
(1383, 8, '013H', 'New', 2019, '-1.0000'),
(1384, 9, '013H', 'New', 2019, '1.0115'),
(1385, 10, '013H', 'New', 2019, '-1.0000'),
(1386, 14, '013H', 'New', 2019, '0.6452'),
(1387, 11, '013H', 'New', 2019, '-1.0000'),
(1388, 13, '013H', 'New', 2019, '-1.0000'),
(1389, 12, '013H', 'New', 2019, '0.5057'),
(1390, 17, '013H', 'New', 2019, '0.4753'),
(1391, 15, '013H', 'New', 2019, '0.5571'),
(1392, 16, '013H', 'New', 2019, '0.7071'),
(1393, 19, '013H', 'New', 2019, '0.7167'),
(1394, 18, '013H', 'New', 2019, '-1.0000'),
(1395, 20, '013H', 'New', 2019, '0.6686'),
(1396, 21, '013H', 'New', 2019, '0.5083'),
(1397, 22, '013H', 'New', 2019, '-1.0000'),
(1398, 23, '013H', 'New', 2019, '0.5639'),
(1399, 25, '013H', 'New', 2019, '0.9751'),
(1400, 24, '013H', 'New', 2019, '0.6756'),
(1401, 1, '013J', 'New', 2019, '-1.0000'),
(1402, 2, '013J', 'New', 2019, '0.9388'),
(1403, 3, '013J', 'New', 2019, '-1.0000'),
(1404, 5, '013J', 'New', 2019, '0.8534'),
(1405, 4, '013J', 'New', 2019, '0.9594'),
(1406, 6, '013J', 'New', 2019, '0.5050'),
(1407, 7, '013J', 'New', 2019, '-1.0000'),
(1408, 8, '013J', 'New', 2019, '-1.0000'),
(1409, 9, '013J', 'New', 2019, '-1.0000'),
(1410, 10, '013J', 'New', 2019, '1.1386'),
(1411, 14, '013J', 'New', 2019, '0.3748'),
(1412, 11, '013J', 'New', 2019, '0.3022'),
(1413, 13, '013J', 'New', 2019, '0.3776'),
(1414, 12, '013J', 'New', 2019, '0.0614'),
(1415, 17, '013J', 'New', 2019, '0.3773'),
(1416, 15, '013J', 'New', 2019, '0.5644'),
(1417, 16, '013J', 'New', 2019, '0.7023'),
(1418, 19, '013J', 'New', 2019, '0.7636'),
(1419, 18, '013J', 'New', 2019, '1.1269'),
(1420, 20, '013J', 'New', 2019, '0.7069'),
(1421, 21, '013J', 'New', 2019, '0.5248'),
(1422, 22, '013J', 'New', 2019, '1.0633'),
(1423, 23, '013J', 'New', 2019, '0.6689'),
(1424, 25, '013J', 'New', 2019, '-1.0000'),
(1425, 24, '013J', 'New', 2019, '0.7149'),
(1426, 1, '014L', 'New', 2019, '1.4067'),
(1427, 2, '014L', 'New', 2019, '1.3517'),
(1428, 3, '014L', 'New', 2019, '1.5486'),
(1429, 5, '014L', 'New', 2019, '1.1668'),
(1430, 4, '014L', 'New', 2019, '1.4178'),
(1431, 6, '014L', 'New', 2019, '1.0263'),
(1432, 7, '014L', 'New', 2019, '1.5119'),
(1433, 8, '014L', 'New', 2019, '1.5557'),
(1434, 9, '014L', 'New', 2019, '1.5558'),
(1435, 10, '014L', 'New', 2019, '1.5643'),
(1436, 14, '014L', 'New', 2019, '1.3785'),
(1437, 11, '014L', 'New', 2019, '0.8700'),
(1438, 13, '014L', 'New', 2019, '0.9222'),
(1439, 12, '014L', 'New', 2019, '1.3913'),
(1440, 17, '014L', 'New', 2019, '1.3478'),
(1441, 15, '014L', 'New', 2019, '1.3405'),
(1442, 16, '014L', 'New', 2019, '1.4821'),
(1443, 19, '014L', 'New', 2019, '1.3442'),
(1444, 18, '014L', 'New', 2019, '1.5252'),
(1445, 20, '014L', 'New', 2019, '1.2476'),
(1446, 21, '014L', 'New', 2019, '1.0930'),
(1447, 22, '014L', 'New', 2019, '1.4841'),
(1448, 23, '014L', 'New', 2019, '1.2799'),
(1449, 25, '014L', 'New', 2019, '1.5743'),
(1450, 24, '014L', 'New', 2019, '1.4872'),
(1451, 1, '015K', 'New', 2019, '1.0226'),
(1452, 2, '015K', 'New', 2019, '1.0372'),
(1453, 3, '015K', 'New', 2019, '1.0481'),
(1454, 5, '015K', 'New', 2019, '1.0985'),
(1455, 4, '015K', 'New', 2019, '1.0685'),
(1456, 6, '015K', 'New', 2019, '1.1192'),
(1457, 7, '015K', 'New', 2019, '1.0479'),
(1458, 8, '015K', 'New', 2019, '1.0334'),
(1459, 9, '015K', 'New', 2019, '1.0344'),
(1460, 10, '015K', 'New', 2019, '1.0382'),
(1461, 14, '015K', 'New', 2019, '-1.0000'),
(1462, 11, '015K', 'New', 2019, '-1.0000'),
(1463, 13, '015K', 'New', 2019, '-1.0000'),
(1464, 12, '015K', 'New', 2019, '-1.0000'),
(1465, 17, '015K', 'New', 2019, '-1.0000'),
(1466, 15, '015K', 'New', 2019, '1.0296'),
(1467, 16, '015K', 'New', 2019, '1.0249'),
(1468, 19, '015K', 'New', 2019, '-1.0000'),
(1469, 18, '015K', 'New', 2019, '1.0285'),
(1470, 20, '015K', 'New', 2019, '-1.0000'),
(1471, 21, '015K', 'New', 2019, '-1.0000'),
(1472, 22, '015K', 'New', 2019, '1.0381'),
(1473, 23, '015K', 'New', 2019, '1.0762'),
(1474, 25, '015K', 'New', 2019, '1.0322'),
(1475, 24, '015K', 'New', 2019, '1.0312'),
(1476, 1, '015L', 'New', 2019, '1.1354'),
(1477, 2, '015L', 'New', 2019, '1.1279'),
(1478, 3, '015L', 'New', 2019, '1.1269'),
(1479, 5, '015L', 'New', 2019, '-1.0000'),
(1480, 4, '015L', 'New', 2019, '1.1186'),
(1481, 6, '015L', 'New', 2019, '-1.0000'),
(1482, 7, '015L', 'New', 2019, '1.1610'),
(1483, 8, '015L', 'New', 2019, '1.1428'),
(1484, 9, '015L', 'New', 2019, '1.1230'),
(1485, 10, '015L', 'New', 2019, '-1.0000'),
(1486, 14, '015L', 'New', 2019, '-1.0000'),
(1487, 11, '015L', 'New', 2019, '-1.0000'),
(1488, 13, '015L', 'New', 2019, '-1.0000'),
(1489, 12, '015L', 'New', 2019, '-1.0000'),
(1490, 17, '015L', 'New', 2019, '-1.0000'),
(1491, 15, '015L', 'New', 2019, '1.2668'),
(1492, 16, '015L', 'New', 2019, '-1.0000'),
(1493, 19, '015L', 'New', 2019, '1.1246'),
(1494, 18, '015L', 'New', 2019, '1.1113'),
(1495, 20, '015L', 'New', 2019, '-1.0000'),
(1496, 21, '015L', 'New', 2019, '-1.0000'),
(1497, 22, '015L', 'New', 2019, '1.1481'),
(1498, 23, '015L', 'New', 2019, '-1.0000'),
(1499, 25, '015L', 'New', 2019, '1.1642'),
(1500, 24, '015L', 'New', 2019, '1.1237'),
(1501, 1, '015M', 'New', 2019, '0.9960'),
(1502, 2, '015M', 'New', 2019, '0.9950'),
(1503, 3, '015M', 'New', 2019, '1.0515'),
(1504, 5, '015M', 'New', 2019, '1.0301'),
(1505, 4, '015M', 'New', 2019, '1.0024'),
(1506, 6, '015M', 'New', 2019, '-1.0000'),
(1507, 7, '015M', 'New', 2019, '1.0509'),
(1508, 8, '015M', 'New', 2019, '0.9991'),
(1509, 9, '015M', 'New', 2019, '1.0046'),
(1510, 10, '015M', 'New', 2019, '1.0036'),
(1511, 14, '015M', 'New', 2019, '-1.0000'),
(1512, 11, '015M', 'New', 2019, '-1.0000'),
(1513, 13, '015M', 'New', 2019, '-1.0000'),
(1514, 12, '015M', 'New', 2019, '-1.0000'),
(1515, 17, '015M', 'New', 2019, '-1.0000'),
(1516, 15, '015M', 'New', 2019, '-1.0000'),
(1517, 16, '015M', 'New', 2019, '1.1417'),
(1518, 19, '015M', 'New', 2019, '-1.0000'),
(1519, 18, '015M', 'New', 2019, '0.9997'),
(1520, 20, '015M', 'New', 2019, '-1.0000'),
(1521, 21, '015M', 'New', 2019, '-1.0000'),
(1522, 22, '015M', 'New', 2019, '-1.0000'),
(1523, 23, '015M', 'New', 2019, '-1.0000'),
(1524, 25, '015M', 'New', 2019, '1.0215'),
(1525, 24, '015M', 'New', 2019, '0.9953'),
(1526, 1, '015R', 'New', 2019, '0.9735'),
(1527, 2, '015R', 'New', 2019, '0.9309'),
(1528, 3, '015R', 'New', 2019, '-1.0000'),
(1529, 5, '015R', 'New', 2019, '0.7706'),
(1530, 4, '015R', 'New', 2019, '0.6397'),
(1531, 6, '015R', 'New', 2019, '-1.0000'),
(1532, 7, '015R', 'New', 2019, '-1.0000'),
(1533, 8, '015R', 'New', 2019, '-1.0000'),
(1534, 9, '015R', 'New', 2019, '-1.0000'),
(1535, 10, '015R', 'New', 2019, '0.9822'),
(1536, 14, '015R', 'New', 2019, '-1.0000'),
(1537, 11, '015R', 'New', 2019, '-1.0000'),
(1538, 13, '015R', 'New', 2019, '-1.0000'),
(1539, 12, '015R', 'New', 2019, '1.2816'),
(1540, 17, '015R', 'New', 2019, '0.6268'),
(1541, 15, '015R', 'New', 2019, '0.6568'),
(1542, 16, '015R', 'New', 2019, '0.7004'),
(1543, 19, '015R', 'New', 2019, '0.6627'),
(1544, 18, '015R', 'New', 2019, '0.9539'),
(1545, 20, '015R', 'New', 2019, '0.5992'),
(1546, 21, '015R', 'New', 2019, '-1.0000'),
(1547, 22, '015R', 'New', 2019, '0.8768'),
(1548, 23, '015R', 'New', 2019, '-1.0000'),
(1549, 25, '015R', 'New', 2019, '0.8907'),
(1550, 24, '015R', 'New', 2019, '-1.0000'),
(1551, 1, '015W', 'New', 2019, '0.9726'),
(1552, 2, '015W', 'New', 2019, '0.9796'),
(1553, 3, '015W', 'New', 2019, '-1.0000'),
(1554, 5, '015W', 'New', 2019, '0.7838'),
(1555, 4, '015W', 'New', 2019, '0.7342'),
(1556, 6, '015W', 'New', 2019, '0.3741'),
(1557, 7, '015W', 'New', 2019, '-1.0000'),
(1558, 8, '015W', 'New', 2019, '-1.0000'),
(1559, 9, '015W', 'New', 2019, '-1.0000'),
(1560, 10, '015W', 'New', 2019, '1.0029'),
(1561, 14, '015W', 'New', 2019, '0.2526'),
(1562, 11, '015W', 'New', 2019, '0.5298'),
(1563, 13, '015W', 'New', 2019, '0.3657'),
(1564, 12, '015W', 'New', 2019, '0.0498'),
(1565, 17, '015W', 'New', 2019, '-1.0000'),
(1566, 15, '015W', 'New', 2019, '0.7273'),
(1567, 16, '015W', 'New', 2019, '0.6952'),
(1568, 19, '015W', 'New', 2019, '0.6500'),
(1569, 18, '015W', 'New', 2019, '-1.0000'),
(1570, 20, '015W', 'New', 2019, '0.5971'),
(1571, 21, '015W', 'New', 2019, '0.4576'),
(1572, 22, '015W', 'New', 2019, '0.9574'),
(1573, 23, '015W', 'New', 2019, '0.5563'),
(1574, 25, '015W', 'New', 2019, '-1.0000'),
(1575, 24, '015W', 'New', 2019, '0.8694'),
(1576, 1, '016A', 'New', 2019, '1.7418'),
(1577, 2, '016A', 'New', 2019, '1.7400'),
(1578, 3, '016A', 'New', 2019, '1.7425'),
(1579, 5, '016A', 'New', 2019, '1.7535'),
(1580, 4, '016A', 'New', 2019, '1.7481'),
(1581, 6, '016A', 'New', 2019, '1.7424'),
(1582, 7, '016A', 'New', 2019, '1.7407'),
(1583, 8, '016A', 'New', 2019, '1.7412'),
(1584, 9, '016A', 'New', 2019, '1.7591'),
(1585, 10, '016A', 'New', 2019, '1.7431'),
(1586, 14, '016A', 'New', 2019, '1.7412'),
(1587, 11, '016A', 'New', 2019, '-1.0000'),
(1588, 13, '016A', 'New', 2019, '1.7536'),
(1589, 12, '016A', 'New', 2019, '1.7756'),
(1590, 17, '016A', 'New', 2019, '1.7444'),
(1591, 15, '016A', 'New', 2019, '1.7628'),
(1592, 16, '016A', 'New', 2019, '1.7478'),
(1593, 19, '016A', 'New', 2019, '1.7573'),
(1594, 18, '016A', 'New', 2019, '1.7469'),
(1595, 20, '016A', 'New', 2019, '1.7406'),
(1596, 21, '016A', 'New', 2019, '1.7541'),
(1597, 22, '016A', 'New', 2019, '1.7517'),
(1598, 23, '016A', 'New', 2019, '1.7506'),
(1599, 25, '016A', 'New', 2019, '1.7413'),
(1600, 24, '016A', 'New', 2019, '1.7457'),
(1601, 1, '016B', 'New', 2019, '1.6036'),
(1602, 2, '016B', 'New', 2019, '1.6025'),
(1603, 3, '016B', 'New', 2019, '1.6263'),
(1604, 5, '016B', 'New', 2019, '1.6312'),
(1605, 4, '016B', 'New', 2019, '1.6024'),
(1606, 6, '016B', 'New', 2019, '1.6048'),
(1607, 7, '016B', 'New', 2019, '1.6062'),
(1608, 8, '016B', 'New', 2019, '-1.0000'),
(1609, 9, '016B', 'New', 2019, '1.6139'),
(1610, 10, '016B', 'New', 2019, '1.6037'),
(1611, 14, '016B', 'New', 2019, '1.6659'),
(1612, 11, '016B', 'New', 2019, '1.6994'),
(1613, 13, '016B', 'New', 2019, '1.6189'),
(1614, 12, '016B', 'New', 2019, '1.6270'),
(1615, 17, '016B', 'New', 2019, '1.6024'),
(1616, 15, '016B', 'New', 2019, '1.6079'),
(1617, 16, '016B', 'New', 2019, '1.6053'),
(1618, 19, '016B', 'New', 2019, '1.6134'),
(1619, 18, '016B', 'New', 2019, '1.6029'),
(1620, 20, '016B', 'New', 2019, '1.6183'),
(1621, 21, '016B', 'New', 2019, '-1.0000'),
(1622, 22, '016B', 'New', 2019, '1.6078'),
(1623, 23, '016B', 'New', 2019, '-1.0000'),
(1624, 25, '016B', 'New', 2019, '1.6379'),
(1625, 24, '016B', 'New', 2019, '1.6024'),
(1626, 1, '016C', 'New', 2019, '1.8391'),
(1627, 2, '016C', 'New', 2019, '1.8340'),
(1628, 3, '016C', 'New', 2019, '1.8364'),
(1629, 5, '016C', 'New', 2019, '1.8561'),
(1630, 4, '016C', 'New', 2019, '1.8396'),
(1631, 6, '016C', 'New', 2019, '1.8513'),
(1632, 7, '016C', 'New', 2019, '1.8359'),
(1633, 8, '016C', 'New', 2019, '1.8372'),
(1634, 9, '016C', 'New', 2019, '1.8531'),
(1635, 10, '016C', 'New', 2019, '1.8390'),
(1636, 14, '016C', 'New', 2019, '1.9165'),
(1637, 11, '016C', 'New', 2019, '1.8838'),
(1638, 13, '016C', 'New', 2019, '1.8777'),
(1639, 12, '016C', 'New', 2019, '1.8759'),
(1640, 17, '016C', 'New', 2019, '1.8494'),
(1641, 15, '016C', 'New', 2019, '1.9336'),
(1642, 16, '016C', 'New', 2019, '1.8857'),
(1643, 19, '016C', 'New', 2019, '1.8340'),
(1644, 18, '016C', 'New', 2019, '1.8409'),
(1645, 20, '016C', 'New', 2019, '1.8427'),
(1646, 21, '016C', 'New', 2019, '1.8427'),
(1647, 22, '016C', 'New', 2019, '1.8624'),
(1648, 23, '016C', 'New', 2019, '1.8365'),
(1649, 25, '016C', 'New', 2019, '1.8433'),
(1650, 24, '016C', 'New', 2019, '1.8378'),
(1651, 1, '016D', 'New', 2019, '1.6417'),
(1652, 2, '016D', 'New', 2019, '1.6442'),
(1653, 3, '016D', 'New', 2019, '1.6442'),
(1654, 5, '016D', 'New', 2019, '1.6408'),
(1655, 4, '016D', 'New', 2019, '1.6471'),
(1656, 6, '016D', 'New', 2019, '1.6471'),
(1657, 7, '016D', 'New', 2019, '1.6429'),
(1658, 8, '016D', 'New', 2019, '1.6447'),
(1659, 9, '016D', 'New', 2019, '1.6681'),
(1660, 10, '016D', 'New', 2019, '-1.0000'),
(1661, 14, '016D', 'New', 2019, '-1.0000'),
(1662, 11, '016D', 'New', 2019, '-1.0000'),
(1663, 13, '016D', 'New', 2019, '-1.0000'),
(1664, 12, '016D', 'New', 2019, '-1.0000'),
(1665, 17, '016D', 'New', 2019, '1.6534'),
(1666, 15, '016D', 'New', 2019, '-1.0000'),
(1667, 16, '016D', 'New', 2019, '1.7222'),
(1668, 19, '016D', 'New', 2019, '1.6576'),
(1669, 18, '016D', 'New', 2019, '1.6429'),
(1670, 20, '016D', 'New', 2019, '1.6553'),
(1671, 21, '016D', 'New', 2019, '1.6613'),
(1672, 22, '016D', 'New', 2019, '1.6489'),
(1673, 23, '016D', 'New', 2019, '1.6411'),
(1674, 25, '016D', 'New', 2019, '1.6434'),
(1675, 24, '016D', 'New', 2019, '1.6418'),
(1676, 1, '016E', 'New', 2019, '1.2740'),
(1677, 2, '016E', 'New', 2019, '1.3443'),
(1678, 3, '016E', 'New', 2019, '1.4678'),
(1679, 5, '016E', 'New', 2019, '1.1997'),
(1680, 4, '016E', 'New', 2019, '1.2974'),
(1681, 6, '016E', 'New', 2019, '1.2850'),
(1682, 7, '016E', 'New', 2019, '-1.0000'),
(1683, 8, '016E', 'New', 2019, '-1.0000'),
(1684, 9, '016E', 'New', 2019, '-1.0000'),
(1685, 10, '016E', 'New', 2019, '1.1695'),
(1686, 14, '016E', 'New', 2019, '1.3049'),
(1687, 11, '016E', 'New', 2019, '1.2869'),
(1688, 13, '016E', 'New', 2019, '1.2877'),
(1689, 12, '016E', 'New', 2019, '1.1327'),
(1690, 17, '016E', 'New', 2019, '1.1136'),
(1691, 15, '016E', 'New', 2019, '1.1616'),
(1692, 16, '016E', 'New', 2019, '1.1229'),
(1693, 19, '016E', 'New', 2019, '1.2384'),
(1694, 18, '016E', 'New', 2019, '1.4130'),
(1695, 20, '016E', 'New', 2019, '1.2748'),
(1696, 21, '016E', 'New', 2019, '1.1406'),
(1697, 22, '016E', 'New', 2019, '1.3036'),
(1698, 23, '016E', 'New', 2019, '-1.0000'),
(1699, 25, '016E', 'New', 2019, '-1.0000'),
(1700, 24, '016E', 'New', 2019, '1.3052'),
(1701, 1, '016F', 'New', 2019, '1.4347'),
(1702, 2, '016F', 'New', 2019, '1.4369'),
(1703, 3, '016F', 'New', 2019, '1.4375'),
(1704, 5, '016F', 'New', 2019, '-1.0000'),
(1705, 4, '016F', 'New', 2019, '1.4462'),
(1706, 6, '016F', 'New', 2019, '1.4535'),
(1707, 7, '016F', 'New', 2019, '1.4345'),
(1708, 8, '016F', 'New', 2019, '1.4800'),
(1709, 9, '016F', 'New', 2019, '1.4408'),
(1710, 10, '016F', 'New', 2019, '-1.0000'),
(1711, 14, '016F', 'New', 2019, '-1.0000'),
(1712, 11, '016F', 'New', 2019, '-1.0000'),
(1713, 13, '016F', 'New', 2019, '-1.0000'),
(1714, 12, '016F', 'New', 2019, '-1.0000'),
(1715, 17, '016F', 'New', 2019, '1.4474'),
(1716, 15, '016F', 'New', 2019, '1.4419'),
(1717, 16, '016F', 'New', 2019, '1.4425'),
(1718, 19, '016F', 'New', 2019, '-1.0000'),
(1719, 18, '016F', 'New', 2019, '1.4641'),
(1720, 20, '016F', 'New', 2019, '1.4375'),
(1721, 21, '016F', 'New', 2019, '1.5816'),
(1722, 22, '016F', 'New', 2019, '1.4357'),
(1723, 23, '016F', 'New', 2019, '1.4401'),
(1724, 25, '016F', 'New', 2019, '1.4480'),
(1725, 24, '016F', 'New', 2019, '1.4356'),
(1726, 1, '016H', 'New', 2019, '1.2717'),
(1727, 2, '016H', 'New', 2019, '-1.0000'),
(1728, 3, '016H', 'New', 2019, '-1.0000'),
(1729, 5, '016H', 'New', 2019, '1.1793'),
(1730, 4, '016H', 'New', 2019, '1.3030'),
(1731, 6, '016H', 'New', 2019, '1.1124'),
(1732, 7, '016H', 'New', 2019, '-1.0000'),
(1733, 8, '016H', 'New', 2019, '-1.0000'),
(1734, 9, '016H', 'New', 2019, '-1.0000'),
(1735, 10, '016H', 'New', 2019, '1.3300'),
(1736, 14, '016H', 'New', 2019, '-1.0000'),
(1737, 11, '016H', 'New', 2019, '-1.0000'),
(1738, 13, '016H', 'New', 2019, '-1.0000'),
(1739, 12, '016H', 'New', 2019, '1.1315'),
(1740, 17, '016H', 'New', 2019, '1.1125'),
(1741, 15, '016H', 'New', 2019, '1.1638'),
(1742, 16, '016H', 'New', 2019, '1.1057'),
(1743, 19, '016H', 'New', 2019, '1.2617'),
(1744, 18, '016H', 'New', 2019, '1.3911'),
(1745, 20, '016H', 'New', 2019, '1.2753'),
(1746, 21, '016H', 'New', 2019, '1.1375'),
(1747, 22, '016H', 'New', 2019, '1.2869'),
(1748, 23, '016H', 'New', 2019, '-1.0000'),
(1749, 25, '016H', 'New', 2019, '-1.0000'),
(1750, 24, '016H', 'New', 2019, '1.2761'),
(1751, 1, '016J', 'New', 2019, '1.2674'),
(1752, 2, '016J', 'New', 2019, '1.3417'),
(1753, 3, '016J', 'New', 2019, '1.3823'),
(1754, 5, '016J', 'New', 2019, '1.1706'),
(1755, 4, '016J', 'New', 2019, '1.2926'),
(1756, 6, '016J', 'New', 2019, '1.1137'),
(1757, 7, '016J', 'New', 2019, '-1.0000'),
(1758, 8, '016J', 'New', 2019, '-1.0000'),
(1759, 9, '016J', 'New', 2019, '-1.0000'),
(1760, 10, '016J', 'New', 2019, '-1.0000'),
(1761, 14, '016J', 'New', 2019, '-1.0000'),
(1762, 11, '016J', 'New', 2019, '1.3084'),
(1763, 13, '016J', 'New', 2019, '-1.0000'),
(1764, 12, '016J', 'New', 2019, '-1.0000'),
(1765, 17, '016J', 'New', 2019, '1.2029'),
(1766, 15, '016J', 'New', 2019, '1.1670'),
(1767, 16, '016J', 'New', 2019, '1.0745'),
(1768, 19, '016J', 'New', 2019, '1.2511'),
(1769, 18, '016J', 'New', 2019, '-1.0000'),
(1770, 20, '016J', 'New', 2019, '1.3001'),
(1771, 21, '016J', 'New', 2019, '1.1573'),
(1772, 22, '016J', 'New', 2019, '1.3023'),
(1773, 23, '016J', 'New', 2019, '1.3363'),
(1774, 25, '016J', 'New', 2019, '-1.0000'),
(1775, 24, '016J', 'New', 2019, '1.3159'),
(1776, 1, '016K', 'New', 2019, '1.3318'),
(1777, 2, '016K', 'New', 2019, '1.3387'),
(1778, 3, '016K', 'New', 2019, '1.3785'),
(1779, 5, '016K', 'New', 2019, '1.3446'),
(1780, 4, '016K', 'New', 2019, '1.3391'),
(1781, 6, '016K', 'New', 2019, '1.3435'),
(1782, 7, '016K', 'New', 2019, '-1.0000'),
(1783, 8, '016K', 'New', 2019, '-1.0000'),
(1784, 9, '016K', 'New', 2019, '1.3589'),
(1785, 10, '016K', 'New', 2019, '1.5819'),
(1786, 14, '016K', 'New', 2019, '1.3712'),
(1787, 11, '016K', 'New', 2019, '-1.0000'),
(1788, 13, '016K', 'New', 2019, '-1.0000'),
(1789, 12, '016K', 'New', 2019, '1.4898'),
(1790, 17, '016K', 'New', 2019, '1.3454'),
(1791, 15, '016K', 'New', 2019, '1.3341'),
(1792, 16, '016K', 'New', 2019, '1.3496'),
(1793, 19, '016K', 'New', 2019, '1.3313'),
(1794, 18, '016K', 'New', 2019, '1.3976'),
(1795, 20, '016K', 'New', 2019, '1.3313'),
(1796, 21, '016K', 'New', 2019, '1.3324'),
(1797, 22, '016K', 'New', 2019, '1.3337'),
(1798, 23, '016K', 'New', 2019, '1.3306'),
(1799, 25, '016K', 'New', 2019, '-1.0000'),
(1800, 24, '016K', 'New', 2019, '1.3349'),
(1801, 1, '016L', 'New', 2019, '1.3914'),
(1802, 2, '016L', 'New', 2019, '1.3910'),
(1803, 3, '016L', 'New', 2019, '1.3920'),
(1804, 5, '016L', 'New', 2019, '-1.0000'),
(1805, 4, '016L', 'New', 2019, '1.3963'),
(1806, 6, '016L', 'New', 2019, '1.3915'),
(1807, 7, '016L', 'New', 2019, '1.3963'),
(1808, 8, '016L', 'New', 2019, '-1.0000'),
(1809, 9, '016L', 'New', 2019, '1.3946'),
(1810, 10, '016L', 'New', 2019, '-1.0000'),
(1811, 14, '016L', 'New', 2019, '-1.0000'),
(1812, 11, '016L', 'New', 2019, '-1.0000'),
(1813, 13, '016L', 'New', 2019, '-1.0000'),
(1814, 12, '016L', 'New', 2019, '-1.0000'),
(1815, 17, '016L', 'New', 2019, '-1.0000'),
(1816, 15, '016L', 'New', 2019, '-1.0000'),
(1817, 16, '016L', 'New', 2019, '1.4095'),
(1818, 19, '016L', 'New', 2019, '-1.0000'),
(1819, 18, '016L', 'New', 2019, '1.3995'),
(1820, 20, '016L', 'New', 2019, '1.4333'),
(1821, 21, '016L', 'New', 2019, '1.3995'),
(1822, 22, '016L', 'New', 2019, '1.3920'),
(1823, 23, '016L', 'New', 2019, '1.4050'),
(1824, 25, '016L', 'New', 2019, '1.4197'),
(1825, 24, '016L', 'New', 2019, '1.3933'),
(1826, 1, '016M', 'New', 2019, '1.4260'),
(1827, 2, '016M', 'New', 2019, '1.4204'),
(1828, 3, '016M', 'New', 2019, '1.4302'),
(1829, 5, '016M', 'New', 2019, '1.4246'),
(1830, 4, '016M', 'New', 2019, '1.4216'),
(1831, 6, '016M', 'New', 2019, '1.4351'),
(1832, 7, '016M', 'New', 2019, '1.5466'),
(1833, 8, '016M', 'New', 2019, '-1.0000'),
(1834, 9, '016M', 'New', 2019, '-1.0000'),
(1835, 10, '016M', 'New', 2019, '1.4923'),
(1836, 14, '016M', 'New', 2019, '-1.0000'),
(1837, 11, '016M', 'New', 2019, '-1.0000'),
(1838, 13, '016M', 'New', 2019, '-1.0000'),
(1839, 12, '016M', 'New', 2019, '-1.0000'),
(1840, 17, '016M', 'New', 2019, '1.4352'),
(1841, 15, '016M', 'New', 2019, '-1.0000'),
(1842, 16, '016M', 'New', 2019, '1.4475'),
(1843, 19, '016M', 'New', 2019, '1.4204'),
(1844, 18, '016M', 'New', 2019, '1.4272'),
(1845, 20, '016M', 'New', 2019, '1.4302'),
(1846, 21, '016M', 'New', 2019, '1.4406'),
(1847, 22, '016M', 'New', 2019, '1.5028'),
(1848, 23, '016M', 'New', 2019, '-1.0000'),
(1849, 25, '016M', 'New', 2019, '1.4271'),
(1850, 24, '016M', 'New', 2019, '1.4947'),
(1851, 1, '017C', 'New', 2019, '1.6303'),
(1852, 2, '017C', 'New', 2019, '1.5533'),
(1853, 3, '017C', 'New', 2019, '1.6195'),
(1854, 5, '017C', 'New', 2019, '1.5524'),
(1855, 4, '017C', 'New', 2019, '1.6299'),
(1856, 6, '017C', 'New', 2019, '1.3809'),
(1857, 7, '017C', 'New', 2019, '1.5520'),
(1858, 8, '017C', 'New', 2019, '1.6301'),
(1859, 9, '017C', 'New', 2019, '1.5974'),
(1860, 10, '017C', 'New', 2019, '1.6146'),
(1861, 14, '017C', 'New', 2019, '1.5668'),
(1862, 11, '017C', 'New', 2019, '1.4645'),
(1863, 13, '017C', 'New', 2019, '1.1941'),
(1864, 12, '017C', 'New', 2019, '1.5315'),
(1865, 17, '017C', 'New', 2019, '1.5771'),
(1866, 15, '017C', 'New', 2019, '1.5666'),
(1867, 16, '017C', 'New', 2019, '1.3895'),
(1868, 19, '017C', 'New', 2019, '1.4517'),
(1869, 18, '017C', 'New', 2019, '1.6208'),
(1870, 20, '017C', 'New', 2019, '1.6177'),
(1871, 21, '017C', 'New', 2019, '1.6207'),
(1872, 22, '017C', 'New', 2019, '1.6152'),
(1873, 23, '017C', 'New', 2019, '1.4573'),
(1874, 25, '017C', 'New', 2019, '1.1624'),
(1875, 24, '017C', 'New', 2019, '1.6017'),
(1876, 1, '018C', 'New', 2019, '1.6139'),
(1877, 2, '018C', 'New', 2019, '1.6165'),
(1878, 3, '018C', 'New', 2019, '1.6232'),
(1879, 5, '018C', 'New', 2019, '1.6300'),
(1880, 4, '018C', 'New', 2019, '1.6416'),
(1881, 6, '018C', 'New', 2019, '-1.0000'),
(1882, 7, '018C', 'New', 2019, '1.6139'),
(1883, 8, '018C', 'New', 2019, '1.6363'),
(1884, 9, '018C', 'New', 2019, '-1.0000'),
(1885, 10, '018C', 'New', 2019, '1.6404'),
(1886, 14, '018C', 'New', 2019, '-1.0000'),
(1887, 11, '018C', 'New', 2019, '-1.0000'),
(1888, 13, '018C', 'New', 2019, '-1.0000'),
(1889, 12, '018C', 'New', 2019, '1.6307'),
(1890, 17, '018C', 'New', 2019, '-1.0000'),
(1891, 15, '018C', 'New', 2019, '-1.0000'),
(1892, 16, '018C', 'New', 2019, '-1.0000'),
(1893, 19, '018C', 'New', 2019, '-1.0000'),
(1894, 18, '018C', 'New', 2019, '1.6173'),
(1895, 20, '018C', 'New', 2019, '1.6202'),
(1896, 21, '018C', 'New', 2019, '1.6152'),
(1897, 22, '018C', 'New', 2019, '1.6479'),
(1898, 23, '018C', 'New', 2019, '-1.0000'),
(1899, 25, '018C', 'New', 2019, '1.6141'),
(1900, 24, '018C', 'New', 2019, '1.6213'),
(1901, 1, '018D', 'New', 2019, '1.5102'),
(1902, 2, '018D', 'New', 2019, '1.5102'),
(1903, 3, '018D', 'New', 2019, '1.5232'),
(1904, 5, '018D', 'New', 2019, '1.5236'),
(1905, 4, '018D', 'New', 2019, '1.5250'),
(1906, 6, '018D', 'New', 2019, '1.5194'),
(1907, 7, '018D', 'New', 2019, '1.5102'),
(1908, 8, '018D', 'New', 2019, '1.5218'),
(1909, 9, '018D', 'New', 2019, '1.5743'),
(1910, 10, '018D', 'New', 2019, '-1.0000'),
(1911, 14, '018D', 'New', 2019, '-1.0000'),
(1912, 11, '018D', 'New', 2019, '-1.0000'),
(1913, 13, '018D', 'New', 2019, '-1.0000'),
(1914, 12, '018D', 'New', 2019, '-1.0000'),
(1915, 17, '018D', 'New', 2019, '-1.0000'),
(1916, 15, '018D', 'New', 2019, '-1.0000'),
(1917, 16, '018D', 'New', 2019, '-1.0000'),
(1918, 19, '018D', 'New', 2019, '-1.0000'),
(1919, 18, '018D', 'New', 2019, '1.5156'),
(1920, 20, '018D', 'New', 2019, '1.5291'),
(1921, 21, '018D', 'New', 2019, '1.5115'),
(1922, 22, '018D', 'New', 2019, '1.5150'),
(1923, 23, '018D', 'New', 2019, '-1.0000'),
(1924, 25, '018D', 'New', 2019, '1.5125'),
(1925, 24, '018D', 'New', 2019, '1.5284'),
(1926, 1, '018E', 'New', 2019, '1.2496'),
(1927, 2, '018E', 'New', 2019, '1.2724'),
(1928, 3, '018E', 'New', 2019, '1.3498'),
(1929, 5, '018E', 'New', 2019, '1.1370'),
(1930, 4, '018E', 'New', 2019, '1.2526'),
(1931, 6, '018E', 'New', 2019, '-1.0000'),
(1932, 7, '018E', 'New', 2019, '-1.0000'),
(1933, 8, '018E', 'New', 2019, '1.4591'),
(1934, 9, '018E', 'New', 2019, '-1.0000'),
(1935, 10, '018E', 'New', 2019, '1.1222'),
(1936, 14, '018E', 'New', 2019, '1.2532'),
(1937, 11, '018E', 'New', 2019, '1.2716'),
(1938, 13, '018E', 'New', 2019, '1.1147'),
(1939, 12, '018E', 'New', 2019, '1.0890'),
(1940, 17, '018E', 'New', 2019, '-1.0000'),
(1941, 15, '018E', 'New', 2019, '1.1364'),
(1942, 16, '018E', 'New', 2019, '-1.0000'),
(1943, 19, '018E', 'New', 2019, '1.1899'),
(1944, 18, '018E', 'New', 2019, '1.3412'),
(1945, 20, '018E', 'New', 2019, '1.2481'),
(1946, 21, '018E', 'New', 2019, '1.0964'),
(1947, 22, '018E', 'New', 2019, '1.2422'),
(1948, 23, '018E', 'New', 2019, '1.3071'),
(1949, 25, '018E', 'New', 2019, '1.3791'),
(1950, 24, '018E', 'New', 2019, '1.2266'),
(1951, 1, '018H', 'New', 2019, '1.2557'),
(1952, 2, '018H', 'New', 2019, '1.2723'),
(1953, 3, '018H', 'New', 2019, '1.3466'),
(1954, 5, '018H', 'New', 2019, '1.1456'),
(1955, 4, '018H', 'New', 2019, '1.2519'),
(1956, 6, '018H', 'New', 2019, '1.0755'),
(1957, 7, '018H', 'New', 2019, '1.3183'),
(1958, 8, '018H', 'New', 2019, '1.4068'),
(1959, 9, '018H', 'New', 2019, '1.3012'),
(1960, 10, '018H', 'New', 2019, '-1.0000'),
(1961, 14, '018H', 'New', 2019, '-1.0000'),
(1962, 11, '018H', 'New', 2019, '-1.0000'),
(1963, 13, '018H', 'New', 2019, '-1.0000'),
(1964, 12, '018H', 'New', 2019, '1.0798'),
(1965, 17, '018H', 'New', 2019, '1.0123'),
(1966, 15, '018H', 'New', 2019, '1.1386'),
(1967, 16, '018H', 'New', 2019, '1.0405'),
(1968, 19, '018H', 'New', 2019, '1.1898'),
(1969, 18, '018H', 'New', 2019, '1.3541'),
(1970, 20, '018H', 'New', 2019, '-1.0000'),
(1971, 21, '018H', 'New', 2019, '1.0652'),
(1972, 22, '018H', 'New', 2019, '1.3290'),
(1973, 23, '018H', 'New', 2019, '1.6146'),
(1974, 25, '018H', 'New', 2019, '1.3897'),
(1975, 24, '018H', 'New', 2019, '1.2249'),
(1976, 1, '018J', 'New', 2019, '1.2509'),
(1977, 2, '018J', 'New', 2019, '1.2777'),
(1978, 3, '018J', 'New', 2019, '1.3472'),
(1979, 5, '018J', 'New', 2019, '1.1468'),
(1980, 4, '018J', 'New', 2019, '1.2662'),
(1981, 6, '018J', 'New', 2019, '1.0805'),
(1982, 7, '018J', 'New', 2019, '1.3220'),
(1983, 8, '018J', 'New', 2019, '1.4222'),
(1984, 9, '018J', 'New', 2019, '1.3412'),
(1985, 10, '018J', 'New', 2019, '-1.0000'),
(1986, 14, '018J', 'New', 2019, '-1.0000'),
(1987, 11, '018J', 'New', 2019, '-1.0000'),
(1988, 13, '018J', 'New', 2019, '-1.0000'),
(1989, 12, '018J', 'New', 2019, '1.1040'),
(1990, 17, '018J', 'New', 2019, '1.0029'),
(1991, 15, '018J', 'New', 2019, '1.1444'),
(1992, 16, '018J', 'New', 2019, '1.0276'),
(1993, 19, '018J', 'New', 2019, '1.1861'),
(1994, 18, '018J', 'New', 2019, '1.3529'),
(1995, 20, '018J', 'New', 2019, '1.2668'),
(1996, 21, '018J', 'New', 2019, '1.0712'),
(1997, 22, '018J', 'New', 2019, '1.2434'),
(1998, 23, '018J', 'New', 2019, '1.3152'),
(1999, 25, '018J', 'New', 2019, '1.4125'),
(2000, 24, '018J', 'New', 2019, '1.2323'),
(2001, 1, '028C', 'New', 2019, '1.6815'),
(2002, 2, '028C', 'New', 2019, '1.5858'),
(2003, 3, '028C', 'New', 2019, '1.6521'),
(2004, 5, '028C', 'New', 2019, '1.5625'),
(2005, 4, '028C', 'New', 2019, '1.5685'),
(2006, 6, '028C', 'New', 2019, '1.5919'),
(2007, 7, '028C', 'New', 2019, '1.6067'),
(2008, 8, '028C', 'New', 2019, '1.6025'),
(2009, 9, '028C', 'New', 2019, '1.6860'),
(2010, 10, '028C', 'New', 2019, '1.6939'),
(2011, 14, '028C', 'New', 2019, '1.6318'),
(2012, 11, '028C', 'New', 2019, '1.5616'),
(2013, 13, '028C', 'New', 2019, '1.0780'),
(2014, 12, '028C', 'New', 2019, '1.5808'),
(2015, 17, '028C', 'New', 2019, '1.5703'),
(2016, 15, '028C', 'New', 2019, '1.6988'),
(2017, 16, '028C', 'New', 2019, '1.5760'),
(2018, 19, '028C', 'New', 2019, '1.6743'),
(2019, 18, '028C', 'New', 2019, '1.6711'),
(2020, 20, '028C', 'New', 2019, '1.6511'),
(2021, 21, '028C', 'New', 2019, '1.6267'),
(2022, 22, '028C', 'New', 2019, '1.6349'),
(2023, 23, '028C', 'New', 2019, '1.6263'),
(2024, 25, '028C', 'New', 2019, '1.6355'),
(2025, 24, '028C', 'New', 2019, '1.6423'),
(2026, 1, '077C', 'New', 2019, '1.7328'),
(2027, 2, '077C', 'New', 2019, '1.7300'),
(2028, 3, '077C', 'New', 2019, '1.7290'),
(2029, 5, '077C', 'New', 2019, '1.5795'),
(2030, 4, '077C', 'New', 2019, '1.7450'),
(2031, 6, '077C', 'New', 2019, '1.7227'),
(2032, 7, '077C', 'New', 2019, '1.6220'),
(2033, 8, '077C', 'New', 2019, '1.7350'),
(2034, 9, '077C', 'New', 2019, '1.5323'),
(2035, 10, '077C', 'New', 2019, '1.6349'),
(2036, 14, '077C', 'New', 2019, '1.1875'),
(2037, 11, '077C', 'New', 2019, '1.5592'),
(2038, 13, '077C', 'New', 2019, '1.1356'),
(2039, 12, '077C', 'New', 2019, '1.6023'),
(2040, 17, '077C', 'New', 2019, '1.5913'),
(2041, 15, '077C', 'New', 2019, '1.6908'),
(2042, 16, '077C', 'New', 2019, '1.3970'),
(2043, 19, '077C', 'New', 2019, '1.6529'),
(2044, 18, '077C', 'New', 2019, '1.7375'),
(2045, 20, '077C', 'New', 2019, '1.6955'),
(2046, 21, '077C', 'New', 2019, '1.5727'),
(2047, 22, '077C', 'New', 2019, '1.7380'),
(2048, 23, '077C', 'New', 2019, '1.3741'),
(2049, 25, '077C', 'New', 2019, '1.6073'),
(2050, 24, '077C', 'New', 2019, '1.6423'),
(2051, 1, '110D', 'New', 2019, '1.4807'),
(2052, 2, '110D', 'New', 2019, '1.4572'),
(2053, 3, '110D', 'New', 2019, '1.1819'),
(2054, 5, '110D', 'New', 2019, '1.2414'),
(2055, 4, '110D', 'New', 2019, '1.4738'),
(2056, 6, '110D', 'New', 2019, '-1.0000'),
(2057, 7, '110D', 'New', 2019, '1.2403'),
(2058, 8, '110D', 'New', 2019, '1.1887'),
(2059, 9, '110D', 'New', 2019, '1.1574'),
(2060, 10, '110D', 'New', 2019, '1.4431'),
(2061, 14, '110D', 'New', 2019, '-1.0000'),
(2062, 11, '110D', 'New', 2019, '1.1493'),
(2063, 13, '110D', 'New', 2019, '-1.0000'),
(2064, 12, '110D', 'New', 2019, '1.0114'),
(2065, 17, '110D', 'New', 2019, '-1.0000'),
(2066, 15, '110D', 'New', 2019, '1.4202'),
(2067, 16, '110D', 'New', 2019, '0.6752'),
(2068, 19, '110D', 'New', 2019, '1.1456'),
(2069, 18, '110D', 'New', 2019, '1.3484'),
(2070, 20, '110D', 'New', 2019, '1.1868'),
(2071, 21, '110D', 'New', 2019, '-1.0000'),
(2072, 22, '110D', 'New', 2019, '1.4001'),
(2073, 23, '110D', 'New', 2019, '1.2519'),
(2074, 25, '110D', 'New', 2019, '1.2416'),
(2075, 24, '110D', 'New', 2019, '1.2808'),
(2076, 1, '025A', 'New', 2019, '1.9660'),
(2077, 2, '025A', 'New', 2019, '1.9646'),
(2078, 3, '025A', 'New', 2019, '1.9704'),
(2079, 5, '025A', 'New', 2019, '1.9784'),
(2080, 4, '025A', 'New', 2019, '1.9967'),
(2081, 6, '025A', 'New', 2019, '-1.0000'),
(2082, 7, '025A', 'New', 2019, '1.9672'),
(2083, 8, '025A', 'New', 2019, '1.9649'),
(2084, 9, '025A', 'New', 2019, '1.9772'),
(2085, 10, '025A', 'New', 2019, '1.9744'),
(2086, 14, '025A', 'New', 2019, '-1.0000'),
(2087, 11, '025A', 'New', 2019, '2.1073'),
(2088, 13, '025A', 'New', 2019, '-1.0000'),
(2089, 12, '025A', 'New', 2019, '2.0641'),
(2090, 17, '025A', 'New', 2019, '1.9819'),
(2091, 15, '025A', 'New', 2019, '1.9840'),
(2092, 16, '025A', 'New', 2019, '1.9824'),
(2093, 19, '025A', 'New', 2019, '2.0031'),
(2094, 18, '025A', 'New', 2019, '1.9659'),
(2095, 20, '025A', 'New', 2019, '1.9740'),
(2096, 21, '025A', 'New', 2019, '1.9776'),
(2097, 22, '025A', 'New', 2019, '1.9670'),
(2098, 23, '025A', 'New', 2019, '1.9807'),
(2099, 25, '025A', 'New', 2019, '1.9897'),
(2100, 24, '025A', 'New', 2019, '1.9647'),
(2101, 1, '025B', 'New', 2019, '1.9265'),
(2102, 2, '025B', 'New', 2019, '1.9298'),
(2103, 3, '025B', 'New', 2019, '1.9288'),
(2104, 5, '025B', 'New', 2019, '1.9239'),
(2105, 4, '025B', 'New', 2019, '1.9310'),
(2106, 6, '025B', 'New', 2019, '1.9352'),
(2107, 7, '025B', 'New', 2019, '1.9289'),
(2108, 8, '025B', 'New', 2019, '1.9321'),
(2109, 9, '025B', 'New', 2019, '1.9424'),
(2110, 10, '025B', 'New', 2019, '-1.0000'),
(2111, 14, '025B', 'New', 2019, '-1.0000'),
(2112, 11, '025B', 'New', 2019, '1.9537'),
(2113, 13, '025B', 'New', 2019, '-1.0000'),
(2114, 12, '025B', 'New', 2019, '-1.0000'),
(2115, 17, '025B', 'New', 2019, '1.9274'),
(2116, 15, '025B', 'New', 2019, '-1.0000'),
(2117, 16, '025B', 'New', 2019, '2.0083'),
(2118, 19, '025B', 'New', 2019, '1.9246'),
(2119, 18, '025B', 'New', 2019, '1.9477'),
(2120, 20, '025B', 'New', 2019, '1.9555'),
(2121, 21, '025B', 'New', 2019, '-1.0000'),
(2122, 22, '025B', 'New', 2019, '1.9286'),
(2123, 23, '025B', 'New', 2019, '-1.0000'),
(2124, 25, '025B', 'New', 2019, '1.9277'),
(2125, 24, '025B', 'New', 2019, '1.9462'),
(2126, 1, '025E', 'New', 2019, '1.7806'),
(2127, 2, '025E', 'New', 2019, '1.7050'),
(2128, 3, '025E', 'New', 2019, '1.7934'),
(2129, 5, '025E', 'New', 2019, '1.9065'),
(2130, 4, '025E', 'New', 2019, '1.7846'),
(2131, 6, '025E', 'New', 2019, '1.7061'),
(2132, 7, '025E', 'New', 2019, '-1.0000'),
(2133, 8, '025E', 'New', 2019, '-1.0000'),
(2134, 9, '025E', 'New', 2019, '1.8919'),
(2135, 10, '025E', 'New', 2019, '1.8854'),
(2136, 14, '025E', 'New', 2019, '1.5392'),
(2137, 11, '025E', 'New', 2019, '1.9027'),
(2138, 13, '025E', 'New', 2019, '1.8175'),
(2139, 12, '025E', 'New', 2019, '1.7697'),
(2140, 17, '025E', 'New', 2019, '1.8600'),
(2141, 15, '025E', 'New', 2019, '1.6492'),
(2142, 16, '025E', 'New', 2019, '1.7828'),
(2143, 19, '025E', 'New', 2019, '1.8872'),
(2144, 18, '025E', 'New', 2019, '-1.0000'),
(2145, 20, '025E', 'New', 2019, '1.9716'),
(2146, 21, '025E', 'New', 2019, '-1.0000'),
(2147, 22, '025E', 'New', 2019, '1.8954'),
(2148, 23, '025E', 'New', 2019, '-1.0000'),
(2149, 25, '025E', 'New', 2019, '1.8959'),
(2150, 24, '025E', 'New', 2019, '1.9035'),
(2151, 1, '019A', 'New', 2019, '1.7576'),
(2152, 2, '019A', 'New', 2019, '1.7563'),
(2153, 3, '019A', 'New', 2019, '1.7567'),
(2154, 5, '019A', 'New', 2019, '1.8045'),
(2155, 4, '019A', 'New', 2019, '1.7700'),
(2156, 6, '019A', 'New', 2019, '-1.0000'),
(2157, 7, '019A', 'New', 2019, '1.7586'),
(2158, 8, '019A', 'New', 2019, '1.7579'),
(2159, 9, '019A', 'New', 2019, '1.7600'),
(2160, 10, '019A', 'New', 2019, '1.7804'),
(2161, 14, '019A', 'New', 2019, '-1.0000'),
(2162, 11, '019A', 'New', 2019, '1.8587'),
(2163, 13, '019A', 'New', 2019, '-1.0000'),
(2164, 12, '019A', 'New', 2019, '1.8282'),
(2165, 17, '019A', 'New', 2019, '1.7925'),
(2166, 15, '019A', 'New', 2019, '-1.0000'),
(2167, 16, '019A', 'New', 2019, '1.7644'),
(2168, 19, '019A', 'New', 2019, '1.7601'),
(2169, 18, '019A', 'New', 2019, '1.7565'),
(2170, 20, '019A', 'New', 2019, '1.7595'),
(2171, 21, '019A', 'New', 2019, '1.7710'),
(2172, 22, '019A', 'New', 2019, '1.7680'),
(2173, 23, '019A', 'New', 2019, '1.7670'),
(2174, 25, '019A', 'New', 2019, '1.7586'),
(2175, 24, '019A', 'New', 2019, '1.7572'),
(2176, 1, '019B', 'New', 2019, '1.6055'),
(2177, 2, '019B', 'New', 2019, '1.6005'),
(2178, 3, '019B', 'New', 2019, '1.6005'),
(2179, 5, '019B', 'New', 2019, '1.6142'),
(2180, 4, '019B', 'New', 2019, '1.6005'),
(2181, 6, '019B', 'New', 2019, '1.6056'),
(2182, 7, '019B', 'New', 2019, '1.6002'),
(2183, 8, '019B', 'New', 2019, '1.6053'),
(2184, 9, '019B', 'New', 2019, '1.5981'),
(2185, 10, '019B', 'New', 2019, '1.6175'),
(2186, 14, '019B', 'New', 2019, '1.6132'),
(2187, 11, '019B', 'New', 2019, '1.6844'),
(2188, 13, '019B', 'New', 2019, '1.6127'),
(2189, 12, '019B', 'New', 2019, '1.6075'),
(2190, 17, '019B', 'New', 2019, '1.6110'),
(2191, 15, '019B', 'New', 2019, '1.6042'),
(2192, 16, '019B', 'New', 2019, '1.5988'),
(2193, 19, '019B', 'New', 2019, '1.5976'),
(2194, 18, '019B', 'New', 2019, '1.5993'),
(2195, 20, '019B', 'New', 2019, '1.5993'),
(2196, 21, '019B', 'New', 2019, '1.6028'),
(2197, 22, '019B', 'New', 2019, '1.5981'),
(2198, 23, '019B', 'New', 2019, '1.5982'),
(2199, 25, '019B', 'New', 2019, '1.5986'),
(2200, 24, '019B', 'New', 2019, '1.5997'),
(2201, 1, '019C', 'New', 2019, '1.5650'),
(2202, 2, '019C', 'New', 2019, '1.5640'),
(2203, 3, '019C', 'New', 2019, '1.5722'),
(2204, 5, '019C', 'New', 2019, '1.5685'),
(2205, 4, '019C', 'New', 2019, '1.5654'),
(2206, 6, '019C', 'New', 2019, '1.6764'),
(2207, 7, '019C', 'New', 2019, '1.5639'),
(2208, 8, '019C', 'New', 2019, '1.5777'),
(2209, 9, '019C', 'New', 2019, '1.5655'),
(2210, 10, '019C', 'New', 2019, '-1.0000'),
(2211, 14, '019C', 'New', 2019, '-1.0000'),
(2212, 11, '019C', 'New', 2019, '-1.0000'),
(2213, 13, '019C', 'New', 2019, '-1.0000'),
(2214, 12, '019C', 'New', 2019, '-1.0000'),
(2215, 17, '019C', 'New', 2019, '1.5630'),
(2216, 15, '019C', 'New', 2019, '-1.0000'),
(2217, 16, '019C', 'New', 2019, '1.5629'),
(2218, 19, '019C', 'New', 2019, '1.5659'),
(2219, 18, '019C', 'New', 2019, '1.5624'),
(2220, 20, '019C', 'New', 2019, '1.5624'),
(2221, 21, '019C', 'New', 2019, '1.6296'),
(2222, 22, '019C', 'New', 2019, '1.5627'),
(2223, 23, '019C', 'New', 2019, '1.5737'),
(2224, 25, '019C', 'New', 2019, '1.5663'),
(2225, 24, '019C', 'New', 2019, '1.5632'),
(2226, 1, '019D', 'New', 2019, '1.5054'),
(2227, 2, '019D', 'New', 2019, '1.5034'),
(2228, 3, '019D', 'New', 2019, '1.5040'),
(2229, 5, '019D', 'New', 2019, '1.5051'),
(2230, 4, '019D', 'New', 2019, '1.5041'),
(2231, 6, '019D', 'New', 2019, '1.5038'),
(2232, 7, '019D', 'New', 2019, '1.5041'),
(2233, 8, '019D', 'New', 2019, '1.5065'),
(2234, 9, '019D', 'New', 2019, '1.5041'),
(2235, 10, '019D', 'New', 2019, '-1.0000'),
(2236, 14, '019D', 'New', 2019, '-1.0000'),
(2237, 11, '019D', 'New', 2019, '-1.0000'),
(2238, 13, '019D', 'New', 2019, '1.5086'),
(2239, 12, '019D', 'New', 2019, '1.5499'),
(2240, 17, '019D', 'New', 2019, '1.5177'),
(2241, 15, '019D', 'New', 2019, '-1.0000'),
(2242, 16, '019D', 'New', 2019, '1.5068'),
(2243, 19, '019D', 'New', 2019, '1.5036'),
(2244, 18, '019D', 'New', 2019, '1.5053'),
(2245, 20, '019D', 'New', 2019, '1.5052'),
(2246, 21, '019D', 'New', 2019, '1.5065'),
(2247, 22, '019D', 'New', 2019, '1.5072'),
(2248, 23, '019D', 'New', 2019, '1.5101'),
(2249, 25, '019D', 'New', 2019, '1.5077'),
(2250, 24, '019D', 'New', 2019, '1.5063'),
(2251, 1, '019E', 'New', 2019, '1.3070'),
(2252, 2, '019E', 'New', 2019, '1.1767'),
(2253, 3, '019E', 'New', 2019, '1.2193'),
(2254, 5, '019E', 'New', 2019, '1.1680'),
(2255, 4, '019E', 'New', 2019, '1.1738'),
(2256, 6, '019E', 'New', 2019, '1.1685'),
(2257, 7, '019E', 'New', 2019, '-1.0000'),
(2258, 8, '019E', 'New', 2019, '1.2186'),
(2259, 9, '019E', 'New', 2019, '-1.0000'),
(2260, 10, '019E', 'New', 2019, '1.1650'),
(2261, 14, '019E', 'New', 2019, '1.1677'),
(2262, 11, '019E', 'New', 2019, '1.1762'),
(2263, 13, '019E', 'New', 2019, '1.1648'),
(2264, 12, '019E', 'New', 2019, '1.1821'),
(2265, 17, '019E', 'New', 2019, '1.1890'),
(2266, 15, '019E', 'New', 2019, '1.1658'),
(2267, 16, '019E', 'New', 2019, '1.1862'),
(2268, 19, '019E', 'New', 2019, '1.1693'),
(2269, 18, '019E', 'New', 2019, '1.1869'),
(2270, 20, '019E', 'New', 2019, '1.2692'),
(2271, 21, '019E', 'New', 2019, '1.2889'),
(2272, 22, '019E', 'New', 2019, '1.2122'),
(2273, 23, '019E', 'New', 2019, '-1.0000'),
(2274, 25, '019E', 'New', 2019, '1.1889'),
(2275, 24, '019E', 'New', 2019, '1.1689'),
(2276, 1, '019F', 'New', 2019, '1.4257'),
(2277, 2, '019F', 'New', 2019, '1.4307'),
(2278, 3, '019F', 'New', 2019, '1.4250'),
(2279, 5, '019F', 'New', 2019, '1.4652'),
(2280, 4, '019F', 'New', 2019, '1.4300'),
(2281, 6, '019F', 'New', 2019, '1.4407'),
(2282, 7, '019F', 'New', 2019, '1.4261'),
(2283, 8, '019F', 'New', 2019, '1.4333'),
(2284, 9, '019F', 'New', 2019, '1.4251'),
(2285, 10, '019F', 'New', 2019, '-1.0000'),
(2286, 14, '019F', 'New', 2019, '-1.0000'),
(2287, 11, '019F', 'New', 2019, '-1.0000'),
(2288, 13, '019F', 'New', 2019, '-1.0000'),
(2289, 12, '019F', 'New', 2019, '1.4355'),
(2290, 17, '019F', 'New', 2019, '-1.0000'),
(2291, 15, '019F', 'New', 2019, '-1.0000'),
(2292, 16, '019F', 'New', 2019, '1.4256'),
(2293, 19, '019F', 'New', 2019, '1.4313'),
(2294, 18, '019F', 'New', 2019, '1.4287'),
(2295, 20, '019F', 'New', 2019, '1.4259'),
(2296, 21, '019F', 'New', 2019, '1.4250'),
(2297, 22, '019F', 'New', 2019, '1.4303'),
(2298, 23, '019F', 'New', 2019, '1.4251'),
(2299, 25, '019F', 'New', 2019, '1.4404'),
(2300, 24, '019F', 'New', 2019, '1.4263'),
(2301, 1, '019H', 'New', 2019, '1.1380'),
(2302, 2, '019H', 'New', 2019, '1.1072'),
(2303, 3, '019H', 'New', 2019, '1.1151'),
(2304, 5, '019H', 'New', 2019, '1.1070'),
(2305, 4, '019H', 'New', 2019, '1.1243'),
(2306, 6, '019H', 'New', 2019, '1.1074'),
(2307, 7, '019H', 'New', 2019, '-1.0000'),
(2308, 8, '019H', 'New', 2019, '-1.0000'),
(2309, 9, '019H', 'New', 2019, '-1.0000'),
(2310, 10, '019H', 'New', 2019, '1.1080'),
(2311, 14, '019H', 'New', 2019, '1.1105'),
(2312, 11, '019H', 'New', 2019, '1.1122'),
(2313, 13, '019H', 'New', 2019, '1.1074'),
(2314, 12, '019H', 'New', 2019, '1.1224'),
(2315, 17, '019H', 'New', 2019, '1.1085'),
(2316, 15, '019H', 'New', 2019, '1.1072'),
(2317, 16, '019H', 'New', 2019, '1.1089'),
(2318, 19, '019H', 'New', 2019, '1.1087'),
(2319, 18, '019H', 'New', 2019, '1.1116'),
(2320, 20, '019H', 'New', 2019, '1.1210'),
(2321, 21, '019H', 'New', 2019, '1.1180'),
(2322, 22, '019H', 'New', 2019, '1.1157'),
(2323, 23, '019H', 'New', 2019, '1.1540'),
(2324, 25, '019H', 'New', 2019, '1.1161'),
(2325, 24, '019H', 'New', 2019, '1.1101'),
(2326, 1, '019J', 'New', 2019, '1.4168'),
(2327, 2, '019J', 'New', 2019, '1.2428'),
(2328, 3, '019J', 'New', 2019, '1.2385'),
(2329, 5, '019J', 'New', 2019, '1.3110'),
(2330, 4, '019J', 'New', 2019, '1.2440'),
(2331, 6, '019J', 'New', 2019, '1.2520'),
(2332, 7, '019J', 'New', 2019, '1.3022'),
(2333, 8, '019J', 'New', 2019, '1.4663'),
(2334, 9, '019J', 'New', 2019, '-1.0000'),
(2335, 10, '019J', 'New', 2019, '-1.0000'),
(2336, 14, '019J', 'New', 2019, '-1.0000'),
(2337, 11, '019J', 'New', 2019, '1.2448'),
(2338, 13, '019J', 'New', 2019, '-1.0000'),
(2339, 12, '019J', 'New', 2019, '1.2882'),
(2340, 17, '019J', 'New', 2019, '1.2364'),
(2341, 15, '019J', 'New', 2019, '1.2525'),
(2342, 16, '019J', 'New', 2019, '1.3730'),
(2343, 19, '019J', 'New', 2019, '1.2433'),
(2344, 18, '019J', 'New', 2019, '1.2406'),
(2345, 20, '019J', 'New', 2019, '1.2373'),
(2346, 21, '019J', 'New', 2019, '1.3308'),
(2347, 22, '019J', 'New', 2019, '1.2936'),
(2348, 23, '019J', 'New', 2019, '1.2380'),
(2349, 25, '019J', 'New', 2019, '1.2381'),
(2350, 24, '019J', 'New', 2019, '1.2687'),
(2351, 1, '019K', 'New', 2019, '1.3999'),
(2352, 2, '019K', 'New', 2019, '1.3995'),
(2353, 3, '019K', 'New', 2019, '1.4022'),
(2354, 5, '019K', 'New', 2019, '1.4022'),
(2355, 4, '019K', 'New', 2019, '1.3999'),
(2356, 6, '019K', 'New', 2019, '1.4016'),
(2357, 7, '019K', 'New', 2019, '1.4040'),
(2358, 8, '019K', 'New', 2019, '1.4009'),
(2359, 9, '019K', 'New', 2019, '1.4003'),
(2360, 10, '019K', 'New', 2019, '-1.0000'),
(2361, 14, '019K', 'New', 2019, '-1.0000'),
(2362, 11, '019K', 'New', 2019, '-1.0000'),
(2363, 13, '019K', 'New', 2019, '-1.0000'),
(2364, 12, '019K', 'New', 2019, '1.4214'),
(2365, 17, '019K', 'New', 2019, '1.4054'),
(2366, 15, '019K', 'New', 2019, '-1.0000'),
(2367, 16, '019K', 'New', 2019, '1.4100'),
(2368, 19, '019K', 'New', 2019, '1.4005'),
(2369, 18, '019K', 'New', 2019, '1.3991'),
(2370, 20, '019K', 'New', 2019, '1.3994'),
(2371, 21, '019K', 'New', 2019, '1.4147'),
(2372, 22, '019K', 'New', 2019, '1.4002'),
(2373, 23, '019K', 'New', 2019, '1.4009'),
(2374, 25, '019K', 'New', 2019, '1.4003'),
(2375, 24, '019K', 'New', 2019, '1.3999'),
(2376, 1, '020S', 'New', 2019, '1.3171'),
(2377, 2, '020S', 'New', 2019, '1.3171'),
(2378, 3, '020S', 'New', 2019, '1.3171'),
(2379, 5, '020S', 'New', 2019, '1.3171'),
(2380, 4, '020S', 'New', 2019, '1.3171'),
(2381, 6, '020S', 'New', 2019, '1.3171'),
(2382, 7, '020S', 'New', 2019, '1.3171'),
(2383, 8, '020S', 'New', 2019, '1.3171'),
(2384, 9, '020S', 'New', 2019, '1.3171'),
(2385, 10, '020S', 'New', 2019, '1.3171'),
(2386, 14, '020S', 'New', 2019, '1.3171'),
(2387, 11, '020S', 'New', 2019, '1.3171'),
(2388, 13, '020S', 'New', 2019, '1.3171'),
(2389, 12, '020S', 'New', 2019, '1.3171'),
(2390, 17, '020S', 'New', 2019, '1.3171'),
(2391, 15, '020S', 'New', 2019, '1.3171'),
(2392, 16, '020S', 'New', 2019, '1.3171'),
(2393, 19, '020S', 'New', 2019, '1.3171'),
(2394, 18, '020S', 'New', 2019, '1.3171'),
(2395, 20, '020S', 'New', 2019, '1.3171'),
(2396, 21, '020S', 'New', 2019, '1.3171'),
(2397, 22, '020S', 'New', 2019, '1.3171'),
(2398, 23, '020S', 'New', 2019, '1.3171'),
(2399, 25, '020S', 'New', 2019, '1.3171'),
(2400, 24, '020S', 'New', 2019, '1.3171'),
(2401, 1, '041S', 'New', 2019, '1.1556'),
(2402, 2, '041S', 'New', 2019, '1.1556'),
(2403, 3, '041S', 'New', 2019, '1.1556'),
(2404, 5, '041S', 'New', 2019, '1.1556'),
(2405, 4, '041S', 'New', 2019, '1.1556'),
(2406, 6, '041S', 'New', 2019, '1.1556'),
(2407, 7, '041S', 'New', 2019, '1.1556'),
(2408, 8, '041S', 'New', 2019, '1.1556'),
(2409, 9, '041S', 'New', 2019, '1.1556'),
(2410, 10, '041S', 'New', 2019, '1.1556'),
(2411, 14, '041S', 'New', 2019, '1.1556'),
(2412, 11, '041S', 'New', 2019, '1.1556'),
(2413, 13, '041S', 'New', 2019, '1.1556'),
(2414, 12, '041S', 'New', 2019, '1.1556'),
(2415, 17, '041S', 'New', 2019, '1.1556'),
(2416, 15, '041S', 'New', 2019, '1.1556'),
(2417, 16, '041S', 'New', 2019, '1.1556'),
(2418, 19, '041S', 'New', 2019, '1.1556'),
(2419, 18, '041S', 'New', 2019, '1.1556'),
(2420, 20, '041S', 'New', 2019, '1.1556'),
(2421, 21, '041S', 'New', 2019, '1.1556'),
(2422, 22, '041S', 'New', 2019, '1.1556'),
(2423, 23, '041S', 'New', 2019, '1.1556'),
(2424, 25, '041S', 'New', 2019, '1.1556'),
(2425, 24, '041S', 'New', 2019, '1.1556'),
(2426, 1, '021L', 'New', 2019, '1.4614'),
(2427, 2, '021L', 'New', 2019, '1.4614'),
(2428, 3, '021L', 'New', 2019, '1.4614'),
(2429, 5, '021L', 'New', 2019, '1.4614'),
(2430, 4, '021L', 'New', 2019, '1.4614'),
(2431, 6, '021L', 'New', 2019, '1.4614'),
(2432, 7, '021L', 'New', 2019, '1.4614'),
(2433, 8, '021L', 'New', 2019, '1.4614'),
(2434, 9, '021L', 'New', 2019, '1.4614'),
(2435, 10, '021L', 'New', 2019, '1.4614'),
(2436, 14, '021L', 'New', 2019, '1.4614'),
(2437, 11, '021L', 'New', 2019, '1.4614'),
(2438, 13, '021L', 'New', 2019, '1.4614'),
(2439, 12, '021L', 'New', 2019, '1.4614'),
(2440, 17, '021L', 'New', 2019, '1.4614'),
(2441, 15, '021L', 'New', 2019, '1.4614'),
(2442, 16, '021L', 'New', 2019, '1.4614'),
(2443, 19, '021L', 'New', 2019, '1.4614'),
(2444, 18, '021L', 'New', 2019, '1.4614'),
(2445, 20, '021L', 'New', 2019, '1.4614'),
(2446, 21, '021L', 'New', 2019, '1.4614'),
(2447, 22, '021L', 'New', 2019, '1.4614'),
(2448, 23, '021L', 'New', 2019, '1.4614'),
(2449, 25, '021L', 'New', 2019, '1.4614'),
(2450, 24, '021L', 'New', 2019, '1.4614'),
(2451, 1, '021L', 'New', 2019, '1.2903'),
(2452, 2, '021L', 'New', 2019, '1.2903'),
(2453, 3, '021L', 'New', 2019, '1.2903'),
(2454, 5, '021L', 'New', 2019, '1.2903'),
(2455, 4, '021L', 'New', 2019, '1.2903'),
(2456, 6, '021L', 'New', 2019, '1.2903'),
(2457, 7, '021L', 'New', 2019, '1.2903'),
(2458, 8, '021L', 'New', 2019, '1.2903'),
(2459, 9, '021L', 'New', 2019, '1.2903'),
(2460, 10, '021L', 'New', 2019, '1.2903'),
(2461, 14, '021L', 'New', 2019, '1.2903'),
(2462, 11, '021L', 'New', 2019, '1.2903'),
(2463, 13, '021L', 'New', 2019, '1.2903'),
(2464, 12, '021L', 'New', 2019, '1.2903'),
(2465, 17, '021L', 'New', 2019, '1.2903');
INSERT INTO `zscoretable` (`z_id`, `district_id`, `unicode`, `syllabus`, `year`, `z_score`) VALUES
(2466, 15, '021L', 'New', 2019, '1.2903'),
(2467, 16, '021L', 'New', 2019, '1.2903'),
(2468, 19, '021L', 'New', 2019, '1.2903'),
(2469, 18, '021L', 'New', 2019, '1.2903'),
(2470, 20, '021L', 'New', 2019, '1.2903'),
(2471, 21, '021L', 'New', 2019, '1.2903'),
(2472, 22, '021L', 'New', 2019, '1.2903'),
(2473, 23, '021L', 'New', 2019, '1.2903'),
(2474, 25, '021L', 'New', 2019, '1.2903'),
(2475, 24, '021L', 'New', 2019, '1.2903'),
(2476, 1, '112B', 'New', 2019, '1.7060'),
(2477, 2, '112B', 'New', 2019, '1.7060'),
(2478, 3, '112B', 'New', 2019, '1.7060'),
(2479, 5, '112B', 'New', 2019, '1.7060'),
(2480, 4, '112B', 'New', 2019, '1.7060'),
(2481, 6, '112B', 'New', 2019, '1.7060'),
(2482, 7, '112B', 'New', 2019, '1.7060'),
(2483, 8, '112B', 'New', 2019, '1.7060'),
(2484, 9, '112B', 'New', 2019, '1.7060'),
(2485, 10, '112B', 'New', 2019, '1.7060'),
(2486, 14, '112B', 'New', 2019, '1.7060'),
(2487, 11, '112B', 'New', 2019, '1.7060'),
(2488, 13, '112B', 'New', 2019, '1.7060'),
(2489, 12, '112B', 'New', 2019, '1.7060'),
(2490, 17, '112B', 'New', 2019, '1.7060'),
(2491, 15, '112B', 'New', 2019, '1.7060'),
(2492, 16, '112B', 'New', 2019, '1.7060'),
(2493, 19, '112B', 'New', 2019, '1.7060'),
(2494, 18, '112B', 'New', 2019, '1.7060'),
(2495, 20, '112B', 'New', 2019, '1.7060'),
(2496, 21, '112B', 'New', 2019, '1.7060'),
(2497, 22, '112B', 'New', 2019, '1.7060'),
(2498, 23, '112B', 'New', 2019, '1.7060'),
(2499, 25, '112B', 'New', 2019, '1.7060'),
(2500, 24, '112B', 'New', 2019, '1.7060'),
(2501, 1, '114U', 'New', 2019, '1.6185'),
(2502, 2, '114U', 'New', 2019, '1.7104'),
(2503, 3, '114U', 'New', 2019, '1.5738'),
(2504, 5, '114U', 'New', 2019, '1.6101'),
(2505, 4, '114U', 'New', 2019, '1.6957'),
(2506, 6, '114U', 'New', 2019, '1.7134'),
(2507, 7, '114U', 'New', 2019, '1.6387'),
(2508, 8, '114U', 'New', 2019, '1.4435'),
(2509, 9, '114U', 'New', 2019, '1.5519'),
(2510, 10, '114U', 'New', 2019, '1.5925'),
(2511, 14, '114U', 'New', 2019, '1.1716'),
(2512, 11, '114U', 'New', 2019, '1.4805'),
(2513, 13, '114U', 'New', 2019, '1.2200'),
(2514, 12, '114U', 'New', 2019, '1.5299'),
(2515, 17, '114U', 'New', 2019, '1.6521'),
(2516, 15, '114U', 'New', 2019, '1.6290'),
(2517, 16, '114U', 'New', 2019, '1.6348'),
(2518, 19, '114U', 'New', 2019, '1.7194'),
(2519, 18, '114U', 'New', 2019, '1.5390'),
(2520, 20, '114U', 'New', 2019, '1.7139'),
(2521, 21, '114U', 'New', 2019, '1.6400'),
(2522, 22, '114U', 'New', 2019, '1.6201'),
(2523, 23, '114U', 'New', 2019, '1.4793'),
(2524, 25, '114U', 'New', 2019, '1.7015'),
(2525, 24, '114U', 'New', 2019, '1.6697'),
(2526, 1, '022R', 'New', 2019, '1.2188'),
(2527, 2, '022R', 'New', 2019, '1.2494'),
(2528, 3, '022R', 'New', 2019, '1.2421'),
(2529, 5, '022R', 'New', 2019, '1.1050'),
(2530, 4, '022R', 'New', 2019, '1.2248'),
(2531, 6, '022R', 'New', 2019, '1.0751'),
(2532, 7, '022R', 'New', 2019, '1.2623'),
(2533, 8, '022R', 'New', 2019, '1.2784'),
(2534, 9, '022R', 'New', 2019, '1.2815'),
(2535, 10, '022R', 'New', 2019, '1.1024'),
(2536, 14, '022R', 'New', 2019, '1.1986'),
(2537, 11, '022R', 'New', 2019, '-1.0000'),
(2538, 13, '022R', 'New', 2019, '1.0984'),
(2539, 12, '022R', 'New', 2019, '1.1826'),
(2540, 17, '022R', 'New', 2019, '1.0019'),
(2541, 15, '022R', 'New', 2019, '1.1051'),
(2542, 16, '022R', 'New', 2019, '0.9717'),
(2543, 19, '022R', 'New', 2019, '1.1728'),
(2544, 18, '022R', 'New', 2019, '1.2748'),
(2545, 20, '022R', 'New', 2019, '1.2321'),
(2546, 21, '022R', 'New', 2019, '1.0484'),
(2547, 22, '022R', 'New', 2019, '1.2575'),
(2548, 23, '022R', 'New', 2019, '1.2438'),
(2549, 25, '022R', 'New', 2019, '1.2777'),
(2550, 24, '022R', 'New', 2019, '1.3117'),
(2551, 1, '022W', 'New', 2019, '1.2605'),
(2552, 2, '022W', 'New', 2019, '1.2556'),
(2553, 3, '022W', 'New', 2019, '1.2667'),
(2554, 5, '022W', 'New', 2019, '-1.0000'),
(2555, 4, '022W', 'New', 2019, '-1.0000'),
(2556, 6, '022W', 'New', 2019, '-1.0000'),
(2557, 7, '022W', 'New', 2019, '1.3061'),
(2558, 8, '022W', 'New', 2019, '1.2953'),
(2559, 9, '022W', 'New', 2019, '1.2839'),
(2560, 10, '022W', 'New', 2019, '-1.0000'),
(2561, 14, '022W', 'New', 2019, '-1.0000'),
(2562, 11, '022W', 'New', 2019, '1.2659'),
(2563, 13, '022W', 'New', 2019, '-1.0000'),
(2564, 12, '022W', 'New', 2019, '-1.0000'),
(2565, 17, '022W', 'New', 2019, '-1.0000'),
(2566, 15, '022W', 'New', 2019, '-1.0000'),
(2567, 16, '022W', 'New', 2019, '-1.0000'),
(2568, 19, '022W', 'New', 2019, '-1.0000'),
(2569, 18, '022W', 'New', 2019, '1.2742'),
(2570, 20, '022W', 'New', 2019, '-1.0000'),
(2571, 21, '022W', 'New', 2019, '-1.0000'),
(2572, 22, '022W', 'New', 2019, '-1.0000'),
(2573, 23, '022W', 'New', 2019, '1.2943'),
(2574, 25, '022W', 'New', 2019, '1.2673'),
(2575, 24, '022W', 'New', 2019, '1.2690'),
(2576, 1, '022R', 'New', 2019, '1.2669'),
(2577, 2, '022R', 'New', 2019, '1.2600'),
(2578, 3, '022R', 'New', 2019, '1.3393'),
(2579, 5, '022R', 'New', 2019, '1.4035'),
(2580, 4, '022R', 'New', 2019, '1.3509'),
(2581, 6, '022R', 'New', 2019, '1.3236'),
(2582, 7, '022R', 'New', 2019, '1.4281'),
(2583, 8, '022R', 'New', 2019, '1.3413'),
(2584, 9, '022R', 'New', 2019, '-1.0000'),
(2585, 10, '022R', 'New', 2019, '1.2768'),
(2586, 14, '022R', 'New', 2019, '-1.0000'),
(2587, 11, '022R', 'New', 2019, '-1.0000'),
(2588, 13, '022R', 'New', 2019, '-1.0000'),
(2589, 12, '022R', 'New', 2019, '-1.0000'),
(2590, 17, '022R', 'New', 2019, '-1.0000'),
(2591, 15, '022R', 'New', 2019, '1.2923'),
(2592, 16, '022R', 'New', 2019, '1.3787'),
(2593, 19, '022R', 'New', 2019, '1.3270'),
(2594, 18, '022R', 'New', 2019, '1.3582'),
(2595, 20, '022R', 'New', 2019, '1.3422'),
(2596, 21, '022R', 'New', 2019, '1.3289'),
(2597, 22, '022R', 'New', 2019, '-1.0000'),
(2598, 23, '022R', 'New', 2019, '1.3742'),
(2599, 25, '022R', 'New', 2019, '-1.0000'),
(2600, 24, '022R', 'New', 2019, '1.3346'),
(2601, 1, '022W', 'New', 2019, '1.2373'),
(2602, 2, '022W', 'New', 2019, '1.2698'),
(2603, 3, '022W', 'New', 2019, '1.3278'),
(2604, 5, '022W', 'New', 2019, '1.3486'),
(2605, 4, '022W', 'New', 2019, '1.3314'),
(2606, 6, '022W', 'New', 2019, '-1.0000'),
(2607, 7, '022W', 'New', 2019, '1.3496'),
(2608, 8, '022W', 'New', 2019, '1.3539'),
(2609, 9, '022W', 'New', 2019, '1.3523'),
(2610, 10, '022W', 'New', 2019, '1.1048'),
(2611, 14, '022W', 'New', 2019, '1.1321'),
(2612, 11, '022W', 'New', 2019, '1.2587'),
(2613, 13, '022W', 'New', 2019, '1.0777'),
(2614, 12, '022W', 'New', 2019, '1.2108'),
(2615, 17, '022W', 'New', 2019, '1.2734'),
(2616, 15, '022W', 'New', 2019, '1.2242'),
(2617, 16, '022W', 'New', 2019, '1.3271'),
(2618, 19, '022W', 'New', 2019, '1.3962'),
(2619, 18, '022W', 'New', 2019, '1.3627'),
(2620, 20, '022W', 'New', 2019, '1.3737'),
(2621, 21, '022W', 'New', 2019, '1.4219'),
(2622, 22, '022W', 'New', 2019, '1.3615'),
(2623, 23, '022W', 'New', 2019, '1.3661'),
(2624, 25, '022W', 'New', 2019, '1.3111'),
(2625, 24, '022W', 'New', 2019, '1.3564'),
(2626, 1, '029W', 'New', 2019, '1.2979'),
(2627, 2, '029W', 'New', 2019, '1.2979'),
(2628, 3, '029W', 'New', 2019, '1.2979'),
(2629, 5, '029W', 'New', 2019, '1.2979'),
(2630, 4, '029W', 'New', 2019, '1.2979'),
(2631, 6, '029W', 'New', 2019, '1.2979'),
(2632, 7, '029W', 'New', 2019, '1.2979'),
(2633, 8, '029W', 'New', 2019, '1.2979'),
(2634, 9, '029W', 'New', 2019, '1.2979'),
(2635, 10, '029W', 'New', 2019, '1.2979'),
(2636, 14, '029W', 'New', 2019, '1.2979'),
(2637, 11, '029W', 'New', 2019, '1.2979'),
(2638, 13, '029W', 'New', 2019, '1.2979'),
(2639, 12, '029W', 'New', 2019, '1.2979'),
(2640, 17, '029W', 'New', 2019, '1.2979'),
(2641, 15, '029W', 'New', 2019, '1.2979'),
(2642, 16, '029W', 'New', 2019, '1.2979'),
(2643, 19, '029W', 'New', 2019, '1.2979'),
(2644, 18, '029W', 'New', 2019, '1.2979'),
(2645, 20, '029W', 'New', 2019, '1.2979'),
(2646, 21, '029W', 'New', 2019, '1.2979'),
(2647, 22, '029W', 'New', 2019, '1.2979'),
(2648, 23, '029W', 'New', 2019, '1.2979'),
(2649, 25, '029W', 'New', 2019, '1.2979'),
(2650, 24, '029W', 'New', 2019, '1.2979'),
(2651, 1, '031D', 'New', 2019, '1.7772'),
(2652, 2, '031D', 'New', 2019, '1.7772'),
(2653, 3, '031D', 'New', 2019, '1.7772'),
(2654, 5, '031D', 'New', 2019, '1.7772'),
(2655, 4, '031D', 'New', 2019, '1.7772'),
(2656, 6, '031D', 'New', 2019, '1.7772'),
(2657, 7, '031D', 'New', 2019, '1.7772'),
(2658, 8, '031D', 'New', 2019, '1.7772'),
(2659, 9, '031D', 'New', 2019, '1.7772'),
(2660, 10, '031D', 'New', 2019, '1.7772'),
(2661, 14, '031D', 'New', 2019, '1.7772'),
(2662, 11, '031D', 'New', 2019, '1.7772'),
(2663, 13, '031D', 'New', 2019, '1.7772'),
(2664, 12, '031D', 'New', 2019, '1.7772'),
(2665, 17, '031D', 'New', 2019, '1.7772'),
(2666, 15, '031D', 'New', 2019, '1.7772'),
(2667, 16, '031D', 'New', 2019, '1.7772'),
(2668, 19, '031D', 'New', 2019, '1.7772'),
(2669, 18, '031D', 'New', 2019, '1.7772'),
(2670, 20, '031D', 'New', 2019, '1.7772'),
(2671, 21, '031D', 'New', 2019, '1.7772'),
(2672, 22, '031D', 'New', 2019, '1.7772'),
(2673, 23, '031D', 'New', 2019, '1.7772'),
(2674, 25, '031D', 'New', 2019, '1.7772'),
(2675, 24, '031D', 'New', 2019, '1.7772'),
(2676, 1, '063J', 'New', 2019, '0.9976'),
(2677, 2, '063J', 'New', 2019, '0.9976'),
(2678, 3, '063J', 'New', 2019, '0.9976'),
(2679, 5, '063J', 'New', 2019, '0.9976'),
(2680, 4, '063J', 'New', 2019, '0.9976'),
(2681, 6, '063J', 'New', 2019, '0.9976'),
(2682, 7, '063J', 'New', 2019, '0.9976'),
(2683, 8, '063J', 'New', 2019, '0.9976'),
(2684, 9, '063J', 'New', 2019, '0.9976'),
(2685, 10, '063J', 'New', 2019, '0.9976'),
(2686, 14, '063J', 'New', 2019, '0.9976'),
(2687, 11, '063J', 'New', 2019, '0.9976'),
(2688, 13, '063J', 'New', 2019, '0.9976'),
(2689, 12, '063J', 'New', 2019, '0.9976'),
(2690, 17, '063J', 'New', 2019, '0.9976'),
(2691, 15, '063J', 'New', 2019, '0.9976'),
(2692, 16, '063J', 'New', 2019, '0.9976'),
(2693, 19, '063J', 'New', 2019, '0.9976'),
(2694, 18, '063J', 'New', 2019, '0.9976'),
(2695, 20, '063J', 'New', 2019, '0.9976'),
(2696, 21, '063J', 'New', 2019, '0.9976'),
(2697, 22, '063J', 'New', 2019, '0.9976'),
(2698, 23, '063J', 'New', 2019, '0.9976'),
(2699, 25, '063J', 'New', 2019, '0.9976'),
(2700, 24, '063J', 'New', 2019, '0.9976'),
(2701, 1, '084J', 'New', 2019, '0.6114'),
(2702, 2, '084J', 'New', 2019, '0.6114'),
(2703, 3, '084J', 'New', 2019, '0.6114'),
(2704, 5, '084J', 'New', 2019, '0.6114'),
(2705, 4, '084J', 'New', 2019, '0.6114'),
(2706, 6, '084J', 'New', 2019, '0.6114'),
(2707, 7, '084J', 'New', 2019, '0.6114'),
(2708, 8, '084J', 'New', 2019, '0.6114'),
(2709, 9, '084J', 'New', 2019, '0.6114'),
(2710, 10, '084J', 'New', 2019, '0.6114'),
(2711, 14, '084J', 'New', 2019, '0.6114'),
(2712, 11, '084J', 'New', 2019, '0.6114'),
(2713, 13, '084J', 'New', 2019, '0.6114'),
(2714, 12, '084J', 'New', 2019, '0.6114'),
(2715, 17, '084J', 'New', 2019, '0.6114'),
(2716, 15, '084J', 'New', 2019, '0.6114'),
(2717, 16, '084J', 'New', 2019, '0.6114'),
(2718, 19, '084J', 'New', 2019, '0.6114'),
(2719, 18, '084J', 'New', 2019, '0.6114'),
(2720, 20, '084J', 'New', 2019, '0.6114'),
(2721, 21, '084J', 'New', 2019, '0.6114'),
(2722, 22, '084J', 'New', 2019, '0.6114'),
(2723, 23, '084J', 'New', 2019, '0.6114'),
(2724, 25, '084J', 'New', 2019, '0.6114'),
(2725, 24, '084J', 'New', 2019, '0.6114'),
(2726, 1, '023G', 'New', 2019, '1.4412'),
(2727, 2, '023G', 'New', 2019, '1.3554'),
(2728, 3, '023G', 'New', 2019, '1.2340'),
(2729, 5, '023G', 'New', 2019, '1.5407'),
(2730, 4, '023G', 'New', 2019, '1.4199'),
(2731, 6, '023G', 'New', 2019, '1.4050'),
(2732, 7, '023G', 'New', 2019, '1.2638'),
(2733, 8, '023G', 'New', 2019, '0.6526'),
(2734, 9, '023G', 'New', 2019, '1.3022'),
(2735, 10, '023G', 'New', 2019, '1.3523'),
(2736, 14, '023G', 'New', 2019, '-1.0000'),
(2737, 11, '023G', 'New', 2019, '-1.0000'),
(2738, 13, '023G', 'New', 2019, '-1.0000'),
(2739, 12, '023G', 'New', 2019, '-1.0000'),
(2740, 17, '023G', 'New', 2019, '1.0964'),
(2741, 15, '023G', 'New', 2019, '1.3762'),
(2742, 16, '023G', 'New', 2019, '1.4867'),
(2743, 19, '023G', 'New', 2019, '1.5531'),
(2744, 18, '023G', 'New', 2019, '1.4411'),
(2745, 20, '023G', 'New', 2019, '0.4933'),
(2746, 21, '023G', 'New', 2019, '1.3446'),
(2747, 22, '023G', 'New', 2019, '1.1946'),
(2748, 23, '023G', 'New', 2019, '-1.0000'),
(2749, 25, '023G', 'New', 2019, '1.3131'),
(2750, 24, '023G', 'New', 2019, '1.5367'),
(2751, 1, '024G', 'New', 2019, '1.8009'),
(2752, 2, '024G', 'New', 2019, '0.2584'),
(2753, 3, '024G', 'New', 2019, '0.7200'),
(2754, 5, '024G', 'New', 2019, '-1.0000'),
(2755, 4, '024G', 'New', 2019, '0.8426'),
(2756, 6, '024G', 'New', 2019, '-1.0000'),
(2757, 7, '024G', 'New', 2019, '0.3283'),
(2758, 8, '024G', 'New', 2019, '0.8881'),
(2759, 9, '024G', 'New', 2019, '-1.0000'),
(2760, 10, '024G', 'New', 2019, '-1.0000'),
(2761, 14, '024G', 'New', 2019, '-1.0000'),
(2762, 11, '024G', 'New', 2019, '-1.0000'),
(2763, 13, '024G', 'New', 2019, '-1.0000'),
(2764, 12, '024G', 'New', 2019, '-1.0000'),
(2765, 17, '024G', 'New', 2019, '-1.0000'),
(2766, 15, '024G', 'New', 2019, '-1.0000'),
(2767, 16, '024G', 'New', 2019, '-1.0000'),
(2768, 19, '024G', 'New', 2019, '-1.0000'),
(2769, 18, '024G', 'New', 2019, '1.3013'),
(2770, 20, '024G', 'New', 2019, '-1.0000'),
(2771, 21, '024G', 'New', 2019, '-1.0000'),
(2772, 22, '024G', 'New', 2019, '0.6232'),
(2773, 23, '024G', 'New', 2019, '-1.0000'),
(2774, 25, '024G', 'New', 2019, '0.6012'),
(2775, 24, '024G', 'New', 2019, '0.2157'),
(2776, 1, '097G', 'New', 2019, '1.1396'),
(2777, 2, '097G', 'New', 2019, '1.1860'),
(2778, 3, '097G', 'New', 2019, '1.0780'),
(2779, 5, '097G', 'New', 2019, '1.0580'),
(2780, 4, '097G', 'New', 2019, '1.1973'),
(2781, 6, '097G', 'New', 2019, '0.8055'),
(2782, 7, '097G', 'New', 2019, '0.4459'),
(2783, 8, '097G', 'New', 2019, '0.4940'),
(2784, 9, '097G', 'New', 2019, '0.5393'),
(2785, 10, '097G', 'New', 2019, '0.9175'),
(2786, 14, '097G', 'New', 2019, '-1.0000'),
(2787, 11, '097G', 'New', 2019, '-1.0000'),
(2788, 13, '097G', 'New', 2019, '-1.0000'),
(2789, 12, '097G', 'New', 2019, '-1.0000'),
(2790, 17, '097G', 'New', 2019, '-1.0000'),
(2791, 15, '097G', 'New', 2019, '0.9133'),
(2792, 16, '097G', 'New', 2019, '0.9547'),
(2793, 19, '097G', 'New', 2019, '0.8576'),
(2794, 18, '097G', 'New', 2019, '1.1015'),
(2795, 20, '097G', 'New', 2019, '-1.0000'),
(2796, 21, '097G', 'New', 2019, '1.3387'),
(2797, 22, '097G', 'New', 2019, '0.6871'),
(2798, 23, '097G', 'New', 2019, '-1.0000'),
(2799, 25, '097G', 'New', 2019, '0.5095'),
(2800, 24, '097G', 'New', 2019, '1.0078'),
(2801, 1, '030G', 'New', 2019, '1.6554'),
(2802, 2, '030G', 'New', 2019, '1.6192'),
(2803, 3, '030G', 'New', 2019, '1.6386'),
(2804, 5, '030G', 'New', 2019, '1.4406'),
(2805, 4, '030G', 'New', 2019, '1.7180'),
(2806, 6, '030G', 'New', 2019, '1.3970'),
(2807, 7, '030G', 'New', 2019, '1.6843'),
(2808, 8, '030G', 'New', 2019, '1.7030'),
(2809, 9, '030G', 'New', 2019, '1.5606'),
(2810, 10, '030G', 'New', 2019, '1.6931'),
(2811, 14, '030G', 'New', 2019, '0.9576'),
(2812, 11, '030G', 'New', 2019, '1.2149'),
(2813, 13, '030G', 'New', 2019, '1.0586'),
(2814, 12, '030G', 'New', 2019, '1.2448'),
(2815, 17, '030G', 'New', 2019, '1.2593'),
(2816, 15, '030G', 'New', 2019, '1.5003'),
(2817, 16, '030G', 'New', 2019, '1.3198'),
(2818, 19, '030G', 'New', 2019, '1.3527'),
(2819, 18, '030G', 'New', 2019, '1.5807'),
(2820, 20, '030G', 'New', 2019, '1.7019'),
(2821, 21, '030G', 'New', 2019, '1.7042'),
(2822, 22, '030G', 'New', 2019, '1.4013'),
(2823, 23, '030G', 'New', 2019, '1.4663'),
(2824, 25, '030G', 'New', 2019, '1.6310'),
(2825, 24, '030G', 'New', 2019, '1.5722'),
(2826, 1, '034G', 'New', 2019, '1.1749'),
(2827, 2, '034G', 'New', 2019, '0.9821'),
(2828, 3, '034G', 'New', 2019, '0.8918'),
(2829, 5, '034G', 'New', 2019, '1.0005'),
(2830, 4, '034G', 'New', 2019, '0.7400'),
(2831, 6, '034G', 'New', 2019, '-1.0000'),
(2832, 7, '034G', 'New', 2019, '1.0344'),
(2833, 8, '034G', 'New', 2019, '1.0135'),
(2834, 9, '034G', 'New', 2019, '1.0267'),
(2835, 10, '034G', 'New', 2019, '0.7364'),
(2836, 14, '034G', 'New', 2019, '-1.0000'),
(2837, 11, '034G', 'New', 2019, '-1.0000'),
(2838, 13, '034G', 'New', 2019, '-1.0000'),
(2839, 12, '034G', 'New', 2019, '-1.0000'),
(2840, 17, '034G', 'New', 2019, '-1.0000'),
(2841, 15, '034G', 'New', 2019, '-1.0000'),
(2842, 16, '034G', 'New', 2019, '-1.0000'),
(2843, 19, '034G', 'New', 2019, '-1.0000'),
(2844, 18, '034G', 'New', 2019, '0.6077'),
(2845, 20, '034G', 'New', 2019, '-1.0000'),
(2846, 21, '034G', 'New', 2019, '-1.0000'),
(2847, 22, '034G', 'New', 2019, '0.6039'),
(2848, 23, '034G', 'New', 2019, '-1.0000'),
(2849, 25, '034G', 'New', 2019, '-1.0000'),
(2850, 24, '034G', 'New', 2019, '0.9015'),
(2851, 1, '026G', 'New', 2019, '1.8370'),
(2852, 2, '026G', 'New', 2019, '1.7287'),
(2853, 3, '026G', 'New', 2019, '1.7903'),
(2854, 5, '026G', 'New', 2019, '1.7933'),
(2855, 4, '026G', 'New', 2019, '1.6755'),
(2856, 6, '026G', 'New', 2019, '1.2615'),
(2857, 7, '026G', 'New', 2019, '1.8633'),
(2858, 8, '026G', 'New', 2019, '1.8847'),
(2859, 9, '026G', 'New', 2019, '1.8265'),
(2860, 10, '026G', 'New', 2019, '1.8752'),
(2861, 14, '026G', 'New', 2019, '1.5367'),
(2862, 11, '026G', 'New', 2019, '1.3574'),
(2863, 13, '026G', 'New', 2019, '0.9163'),
(2864, 12, '026G', 'New', 2019, '1.7683'),
(2865, 17, '026G', 'New', 2019, '1.3756'),
(2866, 15, '026G', 'New', 2019, '1.7306'),
(2867, 16, '026G', 'New', 2019, '1.6572'),
(2868, 19, '026G', 'New', 2019, '1.7948'),
(2869, 18, '026G', 'New', 2019, '1.8525'),
(2870, 20, '026G', 'New', 2019, '1.5114'),
(2871, 21, '026G', 'New', 2019, '1.6686'),
(2872, 22, '026G', 'New', 2019, '1.5770'),
(2873, 23, '026G', 'New', 2019, '1.3362'),
(2874, 25, '026G', 'New', 2019, '1.8142'),
(2875, 24, '026G', 'New', 2019, '1.7607'),
(2876, 1, '091G', 'New', 2019, '1.9169'),
(2877, 2, '091G', 'New', 2019, '1.8737'),
(2878, 3, '091G', 'New', 2019, '1.8620'),
(2879, 5, '091G', 'New', 2019, '1.7822'),
(2880, 4, '091G', 'New', 2019, '1.7076'),
(2881, 6, '091G', 'New', 2019, '1.6803'),
(2882, 7, '091G', 'New', 2019, '1.9046'),
(2883, 8, '091G', 'New', 2019, '1.8687'),
(2884, 9, '091G', 'New', 2019, '1.7310'),
(2885, 10, '091G', 'New', 2019, '1.9551'),
(2886, 14, '091G', 'New', 2019, '1.1048'),
(2887, 11, '091G', 'New', 2019, '1.3103'),
(2888, 13, '091G', 'New', 2019, '1.0995'),
(2889, 12, '091G', 'New', 2019, '1.4207'),
(2890, 17, '091G', 'New', 2019, '1.9637'),
(2891, 15, '091G', 'New', 2019, '1.6789'),
(2892, 16, '091G', 'New', 2019, '1.8565'),
(2893, 19, '091G', 'New', 2019, '1.8622'),
(2894, 18, '091G', 'New', 2019, '1.9115'),
(2895, 20, '091G', 'New', 2019, '1.8569'),
(2896, 21, '091G', 'New', 2019, '1.8747'),
(2897, 22, '091G', 'New', 2019, '1.8904'),
(2898, 23, '091G', 'New', 2019, '1.9034'),
(2899, 25, '091G', 'New', 2019, '1.8827'),
(2900, 24, '091G', 'New', 2019, '1.9131'),
(2901, 1, '056G', 'New', 2019, '1.6327'),
(2902, 2, '056G', 'New', 2019, '1.6502'),
(2903, 3, '056G', 'New', 2019, '1.5802'),
(2904, 5, '056G', 'New', 2019, '1.4201'),
(2905, 4, '056G', 'New', 2019, '1.4558'),
(2906, 6, '056G', 'New', 2019, '1.5332'),
(2907, 7, '056G', 'New', 2019, '1.6292'),
(2908, 8, '056G', 'New', 2019, '1.6257'),
(2909, 9, '056G', 'New', 2019, '1.5782'),
(2910, 10, '056G', 'New', 2019, '1.6262'),
(2911, 14, '056G', 'New', 2019, '1.1081'),
(2912, 11, '056G', 'New', 2019, '1.4305'),
(2913, 13, '056G', 'New', 2019, '1.0049'),
(2914, 12, '056G', 'New', 2019, '1.3212'),
(2915, 17, '056G', 'New', 2019, '1.4885'),
(2916, 15, '056G', 'New', 2019, '1.3607'),
(2917, 16, '056G', 'New', 2019, '1.3907'),
(2918, 19, '056G', 'New', 2019, '1.4955'),
(2919, 18, '056G', 'New', 2019, '9.9999'),
(2920, 20, '056G', 'New', 2019, '1.3835'),
(2921, 21, '056G', 'New', 2019, '1.3599'),
(2922, 22, '056G', 'New', 2019, '1.5035'),
(2923, 23, '056G', 'New', 2019, '1.4080'),
(2924, 25, '056G', 'New', 2019, '1.6465'),
(2925, 24, '056G', 'New', 2019, '1.6400'),
(2926, 1, '057G', 'New', 2019, '1.7772'),
(2927, 2, '057G', 'New', 2019, '1.6945'),
(2928, 3, '057G', 'New', 2019, '1.7596'),
(2929, 5, '057G', 'New', 2019, '1.3289'),
(2930, 4, '057G', 'New', 2019, '1.6811'),
(2931, 6, '057G', 'New', 2019, '1.3150'),
(2932, 7, '057G', 'New', 2019, '1.7454'),
(2933, 8, '057G', 'New', 2019, '1.7726'),
(2934, 9, '057G', 'New', 2019, '1.7240'),
(2935, 10, '057G', 'New', 2019, '1.6584'),
(2936, 14, '057G', 'New', 2019, '1.1045'),
(2937, 11, '057G', 'New', 2019, '0.8604'),
(2938, 13, '057G', 'New', 2019, '0.7796'),
(2939, 12, '057G', 'New', 2019, '0.6910'),
(2940, 17, '057G', 'New', 2019, '1.2042'),
(2941, 15, '057G', 'New', 2019, '1.4104'),
(2942, 16, '057G', 'New', 2019, '1.5344'),
(2943, 19, '057G', 'New', 2019, '1.4338'),
(2944, 18, '057G', 'New', 2019, '1.7650'),
(2945, 20, '057G', 'New', 2019, '1.2907'),
(2946, 21, '057G', 'New', 2019, '1.0585'),
(2947, 22, '057G', 'New', 2019, '1.5667'),
(2948, 23, '057G', 'New', 2019, '1.3047'),
(2949, 25, '057G', 'New', 2019, '1.7030'),
(2950, 24, '057G', 'New', 2019, '1.6480'),
(2951, 1, '109G', 'New', 2019, '1.7317'),
(2952, 2, '109G', 'New', 2019, '1.6539'),
(2953, 3, '109G', 'New', 2019, '1.7140'),
(2954, 5, '109G', 'New', 2019, '1.7148'),
(2955, 4, '109G', 'New', 2019, '1.5243'),
(2956, 6, '109G', 'New', 2019, '1.5923'),
(2957, 7, '109G', 'New', 2019, '1.6421'),
(2958, 8, '109G', 'New', 2019, '1.6521'),
(2959, 9, '109G', 'New', 2019, '1.6779'),
(2960, 10, '109G', 'New', 2019, '1.7346'),
(2961, 14, '109G', 'New', 2019, '1.1383'),
(2962, 11, '109G', 'New', 2019, '1.2399'),
(2963, 13, '109G', 'New', 2019, '1.1184'),
(2964, 12, '109G', 'New', 2019, '1.4861'),
(2965, 17, '109G', 'New', 2019, '1.4990'),
(2966, 15, '109G', 'New', 2019, '1.6601'),
(2967, 16, '109G', 'New', 2019, '1.5059'),
(2968, 19, '109G', 'New', 2019, '1.5213'),
(2969, 18, '109G', 'New', 2019, '1.6128'),
(2970, 20, '109G', 'New', 2019, '1.5667'),
(2971, 21, '109G', 'New', 2019, '1.4382'),
(2972, 22, '109G', 'New', 2019, '1.7511'),
(2973, 23, '109G', 'New', 2019, '1.3867'),
(2974, 25, '109G', 'New', 2019, '1.6405'),
(2975, 24, '109G', 'New', 2019, '1.6305'),
(2976, 1, '027D', 'New', 2019, '1.4571'),
(2977, 2, '027D', 'New', 2019, '1.4403'),
(2978, 3, '027D', 'New', 2019, '1.3083'),
(2979, 5, '027D', 'New', 2019, '0.8400'),
(2980, 4, '027D', 'New', 2019, '1.0605'),
(2981, 6, '027D', 'New', 2019, '-1.0000'),
(2982, 7, '027D', 'New', 2019, '1.4890'),
(2983, 8, '027D', 'New', 2019, '1.3758'),
(2984, 9, '027D', 'New', 2019, '1.3480'),
(2985, 10, '027D', 'New', 2019, '1.5284'),
(2986, 14, '027D', 'New', 2019, '-1.0000'),
(2987, 11, '027D', 'New', 2019, '-1.0000'),
(2988, 13, '027D', 'New', 2019, '-1.0000'),
(2989, 12, '027D', 'New', 2019, '0.5833'),
(2990, 17, '027D', 'New', 2019, '1.0070'),
(2991, 15, '027D', 'New', 2019, '0.8362'),
(2992, 16, '027D', 'New', 2019, '0.9140'),
(2993, 19, '027D', 'New', 2019, '1.2062'),
(2994, 18, '027D', 'New', 2019, '1.4738'),
(2995, 20, '027D', 'New', 2019, '0.5078'),
(2996, 21, '027D', 'New', 2019, '-1.0000'),
(2997, 22, '027D', 'New', 2019, '1.4235'),
(2998, 23, '027D', 'New', 2019, '-1.0000'),
(2999, 25, '027D', 'New', 2019, '1.3655'),
(3000, 24, '027D', 'New', 2019, '0.8608'),
(3001, 1, '059A', 'New', 2019, '1.6129'),
(3002, 2, '059A', 'New', 2019, '1.5988'),
(3003, 3, '059A', 'New', 2019, '1.5294'),
(3004, 5, '059A', 'New', 2019, '1.1594'),
(3005, 4, '059A', 'New', 2019, '1.5460'),
(3006, 6, '059A', 'New', 2019, '1.1797'),
(3007, 7, '059A', 'New', 2019, '1.6175'),
(3008, 8, '059A', 'New', 2019, '1.4848'),
(3009, 9, '059A', 'New', 2019, '1.4339'),
(3010, 10, '059A', 'New', 2019, '1.5954'),
(3011, 14, '059A', 'New', 2019, '1.8738'),
(3012, 11, '059A', 'New', 2019, '1.5319'),
(3013, 13, '059A', 'New', 2019, '1.6161'),
(3014, 12, '059A', 'New', 2019, '1.3282'),
(3015, 17, '059A', 'New', 2019, '1.1925'),
(3016, 15, '059A', 'New', 2019, '1.3806'),
(3017, 16, '059A', 'New', 2019, '1.3511'),
(3018, 19, '059A', 'New', 2019, '1.1942'),
(3019, 18, '059A', 'New', 2019, '1.5600'),
(3020, 20, '059A', 'New', 2019, '1.2823'),
(3021, 21, '059A', 'New', 2019, '0.9644'),
(3022, 22, '059A', 'New', 2019, '1.5578'),
(3023, 23, '059A', 'New', 2019, '1.1482'),
(3024, 25, '059A', 'New', 2019, '1.4687'),
(3025, 24, '059A', 'New', 2019, '1.5028'),
(3026, 1, '104F', 'New', 2019, '1.3598'),
(3027, 2, '104F', 'New', 2019, '1.1952'),
(3028, 3, '104F', 'New', 2019, '1.4050'),
(3029, 5, '104F', 'New', 2019, '1.1188'),
(3030, 4, '104F', 'New', 2019, '1.1850'),
(3031, 6, '104F', 'New', 2019, '1.9379'),
(3032, 7, '104F', 'New', 2019, '1.3170'),
(3033, 8, '104F', 'New', 2019, '1.1270'),
(3034, 9, '104F', 'New', 2019, '1.2165'),
(3035, 10, '104F', 'New', 2019, '1.1407'),
(3036, 14, '104F', 'New', 2019, '0.3686'),
(3037, 11, '104F', 'New', 2019, '0.6714'),
(3038, 13, '104F', 'New', 2019, '0.3230'),
(3039, 12, '104F', 'New', 2019, '0.4369'),
(3040, 17, '104F', 'New', 2019, '0.8955'),
(3041, 15, '104F', 'New', 2019, '1.3495'),
(3042, 16, '104F', 'New', 2019, '1.1146'),
(3043, 19, '104F', 'New', 2019, '1.2950'),
(3044, 18, '104F', 'New', 2019, '1.1701'),
(3045, 20, '104F', 'New', 2019, '0.9933'),
(3046, 21, '104F', 'New', 2019, '0.8844'),
(3047, 22, '104F', 'New', 2019, '1.3911'),
(3048, 23, '104F', 'New', 2019, '0.7091'),
(3049, 25, '104F', 'New', 2019, '1.3003'),
(3050, 24, '104F', 'New', 2019, '1.2101'),
(3051, 1, '060B', 'New', 2019, '1.5552'),
(3052, 2, '060B', 'New', 2019, '1.5978'),
(3053, 3, '060B', 'New', 2019, '1.5210'),
(3054, 5, '060B', 'New', 2019, '1.2982'),
(3055, 4, '060B', 'New', 2019, '1.5856'),
(3056, 6, '060B', 'New', 2019, '1.2630'),
(3057, 7, '060B', 'New', 2019, '1.5900'),
(3058, 8, '060B', 'New', 2019, '1.4841'),
(3059, 9, '060B', 'New', 2019, '1.5525'),
(3060, 10, '060B', 'New', 2019, '1.5931'),
(3061, 14, '060B', 'New', 2019, '0.8348'),
(3062, 11, '060B', 'New', 2019, '0.4708'),
(3063, 13, '060B', 'New', 2019, '0.4693'),
(3064, 12, '060B', 'New', 2019, '1.1990'),
(3065, 17, '060B', 'New', 2019, '1.1572'),
(3066, 15, '060B', 'New', 2019, '1.4291'),
(3067, 16, '060B', 'New', 2019, '1.4424'),
(3068, 19, '060B', 'New', 2019, '1.2704'),
(3069, 18, '060B', 'New', 2019, '1.5860'),
(3070, 20, '060B', 'New', 2019, '1.0964'),
(3071, 21, '060B', 'New', 2019, '1.1275'),
(3072, 22, '060B', 'New', 2019, '1.4382'),
(3073, 23, '060B', 'New', 2019, '1.1476'),
(3074, 25, '060B', 'New', 2019, '1.5006'),
(3075, 24, '060B', 'New', 2019, '1.5108'),
(3076, 1, '-1', 'New', 2019, '1.6770'),
(3077, 2, '-1', 'New', 2019, '1.5951'),
(3078, 3, '-1', 'New', 2019, '1.6194'),
(3079, 5, '-1', 'New', 2019, '1.6792'),
(3080, 4, '-1', 'New', 2019, '1.7397'),
(3081, 6, '-1', 'New', 2019, '1.5543'),
(3082, 7, '-1', 'New', 2019, '1.6042'),
(3083, 8, '-1', 'New', 2019, '1.6283'),
(3084, 9, '-1', 'New', 2019, '1.5872'),
(3085, 10, '-1', 'New', 2019, '1.6285'),
(3086, 14, '-1', 'New', 2019, '1.4997'),
(3087, 11, '-1', 'New', 2019, '1.3989'),
(3088, 13, '-1', 'New', 2019, '1.1689'),
(3089, 12, '-1', 'New', 2019, '1.3742'),
(3090, 17, '-1', 'New', 2019, '1.7252'),
(3091, 15, '-1', 'New', 2019, '1.4862'),
(3092, 16, '-1', 'New', 2019, '1.6336'),
(3093, 19, '-1', 'New', 2019, '1.7163'),
(3094, 18, '-1', 'New', 2019, '1.7063'),
(3095, 20, '-1', 'New', 2019, '1.4531'),
(3096, 21, '-1', 'New', 2019, '1.3567'),
(3097, 22, '-1', 'New', 2019, '1.4734'),
(3098, 23, '-1', 'New', 2019, '1.3404'),
(3099, 25, '-1', 'New', 2019, '1.6287'),
(3100, 24, '-1', 'New', 2019, '1.5198'),
(3101, 1, '111B', 'New', 2019, '1.7794'),
(3102, 2, '111B', 'New', 2019, '1.8757'),
(3103, 3, '111B', 'New', 2019, '1.9219'),
(3104, 5, '111B', 'New', 2019, '1.9329'),
(3105, 4, '111B', 'New', 2019, '1.8838'),
(3106, 6, '111B', 'New', 2019, '1.9871'),
(3107, 7, '111B', 'New', 2019, '1.9130'),
(3108, 8, '111B', 'New', 2019, '2.0300'),
(3109, 9, '111B', 'New', 2019, '1.8369'),
(3110, 10, '111B', 'New', 2019, '1.8373'),
(3111, 14, '111B', 'New', 2019, '1.8158'),
(3112, 11, '111B', 'New', 2019, '1.8582'),
(3113, 13, '111B', 'New', 2019, '1.7123'),
(3114, 12, '111B', 'New', 2019, '1.6332'),
(3115, 17, '111B', 'New', 2019, '1.9605'),
(3116, 15, '111B', 'New', 2019, '2.0083'),
(3117, 16, '111B', 'New', 2019, '2.0084'),
(3118, 19, '111B', 'New', 2019, '2.0309'),
(3119, 18, '111B', 'New', 2019, '1.9404'),
(3120, 20, '111B', 'New', 2019, '1.9420'),
(3121, 21, '111B', 'New', 2019, '1.8633'),
(3122, 22, '111B', 'New', 2019, '1.9649'),
(3123, 23, '111B', 'New', 2019, '1.9204'),
(3124, 25, '111B', 'New', 2019, '1.9510'),
(3125, 24, '111B', 'New', 2019, '2.0431'),
(3126, 1, '038K', 'New', 2019, '0.8963'),
(3127, 2, '038K', 'New', 2019, '0.9195'),
(3128, 3, '038K', 'New', 2019, '0.9801'),
(3129, 5, '038K', 'New', 2019, '0.8801'),
(3130, 4, '038K', 'New', 2019, '0.8511'),
(3131, 6, '038K', 'New', 2019, '-1.0000'),
(3132, 7, '038K', 'New', 2019, '0.8886'),
(3133, 8, '038K', 'New', 2019, '0.9719'),
(3134, 9, '038K', 'New', 2019, '-1.0000'),
(3135, 10, '038K', 'New', 2019, '0.9683'),
(3136, 14, '038K', 'New', 2019, '-1.0000'),
(3137, 11, '038K', 'New', 2019, '-1.0000'),
(3138, 13, '038K', 'New', 2019, '-1.0000'),
(3139, 12, '038K', 'New', 2019, '0.9077'),
(3140, 17, '038K', 'New', 2019, '-1.0000'),
(3141, 15, '038K', 'New', 2019, '0.8566'),
(3142, 16, '038K', 'New', 2019, '0.9348'),
(3143, 19, '038K', 'New', 2019, '-1.0000'),
(3144, 18, '038K', 'New', 2019, '0.9880'),
(3145, 20, '038K', 'New', 2019, '-1.0000'),
(3146, 21, '038K', 'New', 2019, '-1.0000'),
(3147, 22, '038K', 'New', 2019, '1.2324'),
(3148, 23, '038K', 'New', 2019, '-1.0000'),
(3149, 25, '038K', 'New', 2019, '0.9059'),
(3150, 24, '038K', 'New', 2019, '0.9236'),
(3151, 1, '038R', 'New', 2019, '0.4347'),
(3152, 2, '038R', 'New', 2019, '0.5558'),
(3153, 3, '038R', 'New', 2019, '0.6862'),
(3154, 5, '038R', 'New', 2019, '-1.0000'),
(3155, 4, '038R', 'New', 2019, '0.8304'),
(3156, 6, '038R', 'New', 2019, '0.3037'),
(3157, 7, '038R', 'New', 2019, '-1.0000'),
(3158, 8, '038R', 'New', 2019, '0.8445'),
(3159, 9, '038R', 'New', 2019, '0.3942'),
(3160, 10, '038R', 'New', 2019, '0.8726'),
(3161, 14, '038R', 'New', 2019, '-1.0000'),
(3162, 11, '038R', 'New', 2019, '-1.0000'),
(3163, 13, '038R', 'New', 2019, '-1.0000'),
(3164, 12, '038R', 'New', 2019, '-1.0000'),
(3165, 17, '038R', 'New', 2019, '0.7805'),
(3166, 15, '038R', 'New', 2019, '-1.0000'),
(3167, 16, '038R', 'New', 2019, '0.5831'),
(3168, 19, '038R', 'New', 2019, '0.0022'),
(3169, 18, '038R', 'New', 2019, '0.6300'),
(3170, 20, '038R', 'New', 2019, '-0.0711'),
(3171, 21, '038R', 'New', 2019, '-1.0000'),
(3172, 22, '038R', 'New', 2019, '0.1510'),
(3173, 23, '038R', 'New', 2019, '0.8222'),
(3174, 25, '038R', 'New', 2019, '-1.0000'),
(3175, 24, '038R', 'New', 2019, '0.4503'),
(3176, 1, '096T', 'New', 2019, '1.4543'),
(3177, 2, '096T', 'New', 2019, '1.2886'),
(3178, 3, '096T', 'New', 2019, '1.0984'),
(3179, 5, '096T', 'New', 2019, '-1.0000'),
(3180, 4, '096T', 'New', 2019, '1.2289'),
(3181, 6, '096T', 'New', 2019, '-1.0000'),
(3182, 7, '096T', 'New', 2019, '1.2245'),
(3183, 8, '096T', 'New', 2019, '1.1492'),
(3184, 9, '096T', 'New', 2019, '1.1210'),
(3185, 10, '096T', 'New', 2019, '1.3675'),
(3186, 14, '096T', 'New', 2019, '-1.0000'),
(3187, 11, '096T', 'New', 2019, '-1.0000'),
(3188, 13, '096T', 'New', 2019, '-1.0000'),
(3189, 12, '096T', 'New', 2019, '-1.0000'),
(3190, 17, '096T', 'New', 2019, '1.0674'),
(3191, 15, '096T', 'New', 2019, '0.9330'),
(3192, 16, '096T', 'New', 2019, '0.7401'),
(3193, 19, '096T', 'New', 2019, '0.9079'),
(3194, 18, '096T', 'New', 2019, '0.9713'),
(3195, 20, '096T', 'New', 2019, '0.6547'),
(3196, 21, '096T', 'New', 2019, '-1.0000'),
(3197, 22, '096T', 'New', 2019, '0.9707'),
(3198, 23, '096T', 'New', 2019, '-1.0000'),
(3199, 25, '096T', 'New', 2019, '0.7854'),
(3200, 24, '096T', 'New', 2019, '1.2583'),
(3201, 1, '099D', 'New', 2019, '1.7240'),
(3202, 2, '099D', 'New', 2019, '1.7262'),
(3203, 3, '099D', 'New', 2019, '1.7650'),
(3204, 5, '099D', 'New', 2019, '-1.0000'),
(3205, 4, '099D', 'New', 2019, '2.0848'),
(3206, 6, '099D', 'New', 2019, '-1.0000'),
(3207, 7, '099D', 'New', 2019, '1.7410'),
(3208, 8, '099D', 'New', 2019, '1.7283'),
(3209, 9, '099D', 'New', 2019, '1.7324'),
(3210, 10, '099D', 'New', 2019, '1.7278'),
(3211, 14, '099D', 'New', 2019, '-1.0000'),
(3212, 11, '099D', 'New', 2019, '-1.0000'),
(3213, 13, '099D', 'New', 2019, '-1.0000'),
(3214, 12, '099D', 'New', 2019, '-1.0000'),
(3215, 17, '099D', 'New', 2019, '-1.0000'),
(3216, 15, '099D', 'New', 2019, '-1.0000'),
(3217, 16, '099D', 'New', 2019, '-1.0000'),
(3218, 19, '099D', 'New', 2019, '-1.0000'),
(3219, 18, '099D', 'New', 2019, '1.7431'),
(3220, 20, '099D', 'New', 2019, '-1.0000'),
(3221, 21, '099D', 'New', 2019, '-1.0000'),
(3222, 22, '099D', 'New', 2019, '1.7762'),
(3223, 23, '099D', 'New', 2019, '-1.0000'),
(3224, 25, '099D', 'New', 2019, '-1.0000'),
(3225, 24, '099D', 'New', 2019, '-1.0000'),
(3226, 1, '099L', 'New', 2019, '1.5804'),
(3227, 2, '099L', 'New', 2019, '1.5711'),
(3228, 3, '099L', 'New', 2019, '1.6335'),
(3229, 5, '099L', 'New', 2019, '1.6323'),
(3230, 4, '099L', 'New', 2019, '1.5306'),
(3231, 6, '099L', 'New', 2019, '1.0910'),
(3232, 7, '099L', 'New', 2019, '1.5819'),
(3233, 8, '099L', 'New', 2019, '-1.0000'),
(3234, 9, '099L', 'New', 2019, '1.6760'),
(3235, 10, '099L', 'New', 2019, '-1.0000'),
(3236, 14, '099L', 'New', 2019, '1.2990'),
(3237, 11, '099L', 'New', 2019, '0.9110'),
(3238, 13, '099L', 'New', 2019, '0.8721'),
(3239, 12, '099L', 'New', 2019, '1.1348'),
(3240, 17, '099L', 'New', 2019, '1.2068'),
(3241, 15, '099L', 'New', 2019, '1.7147'),
(3242, 16, '099L', 'New', 2019, '1.6465'),
(3243, 19, '099L', 'New', 2019, '1.3587'),
(3244, 18, '099L', 'New', 2019, '1.5776'),
(3245, 20, '099L', 'New', 2019, '1.3420'),
(3246, 21, '099L', 'New', 2019, '1.3818'),
(3247, 22, '099L', 'New', 2019, '1.5638'),
(3248, 23, '099L', 'New', 2019, '1.1567'),
(3249, 25, '099L', 'New', 2019, '1.5074'),
(3250, 24, '099L', 'New', 2019, '1.4660'),
(3251, 1, '032N', 'New', 2019, '1.3965'),
(3252, 2, '032N', 'New', 2019, '1.4032'),
(3253, 3, '032N', 'New', 2019, '1.4147'),
(3254, 5, '032N', 'New', 2019, '-1.0000'),
(3255, 4, '032N', 'New', 2019, '1.4555'),
(3256, 6, '032N', 'New', 2019, '-1.0000'),
(3257, 7, '032N', 'New', 2019, '1.4241'),
(3258, 8, '032N', 'New', 2019, '1.5138'),
(3259, 9, '032N', 'New', 2019, '1.5015'),
(3260, 10, '032N', 'New', 2019, '-1.0000'),
(3261, 14, '032N', 'New', 2019, '-1.0000'),
(3262, 11, '032N', 'New', 2019, '-1.0000'),
(3263, 13, '032N', 'New', 2019, '-1.0000'),
(3264, 12, '032N', 'New', 2019, '-1.0000'),
(3265, 17, '032N', 'New', 2019, '-1.0000'),
(3266, 15, '032N', 'New', 2019, '-1.0000'),
(3267, 16, '032N', 'New', 2019, '-1.0000'),
(3268, 19, '032N', 'New', 2019, '1.6077'),
(3269, 18, '032N', 'New', 2019, '1.3809'),
(3270, 20, '032N', 'New', 2019, '1.4390'),
(3271, 21, '032N', 'New', 2019, '1.0000'),
(3272, 22, '032N', 'New', 2019, '1.4222'),
(3273, 23, '032N', 'New', 2019, '-1.0000'),
(3274, 25, '032N', 'New', 2019, '1.3760'),
(3275, 24, '032N', 'New', 2019, '1.4549'),
(3276, 1, '032P', 'New', 2019, '1.3201'),
(3277, 2, '032P', 'New', 2019, '1.2784'),
(3278, 3, '032P', 'New', 2019, '1.2980'),
(3279, 5, '032P', 'New', 2019, '1.3153'),
(3280, 4, '032P', 'New', 2019, '1.2899'),
(3281, 6, '032P', 'New', 2019, '0.9751'),
(3282, 7, '032P', 'New', 2019, '1.4197'),
(3283, 8, '032P', 'New', 2019, '1.3606'),
(3284, 9, '032P', 'New', 2019, '1.2985'),
(3285, 10, '032P', 'New', 2019, '-1.0000'),
(3286, 14, '032P', 'New', 2019, '-1.0000'),
(3287, 11, '032P', 'New', 2019, '-1.0000'),
(3288, 13, '032P', 'New', 2019, '-1.0000'),
(3289, 12, '032P', 'New', 2019, '0.1013'),
(3290, 17, '032P', 'New', 2019, '0.2413'),
(3291, 15, '032P', 'New', 2019, '-1.0000'),
(3292, 16, '032P', 'New', 2019, '0.8960'),
(3293, 19, '032P', 'New', 2019, '1.0265'),
(3294, 18, '032P', 'New', 2019, '1.3048'),
(3295, 20, '032P', 'New', 2019, '-1.0000'),
(3296, 21, '032P', 'New', 2019, '0.9926'),
(3297, 22, '032P', 'New', 2019, '1.3420'),
(3298, 23, '032P', 'New', 2019, '1.3318'),
(3299, 25, '032P', 'New', 2019, '1.3447'),
(3300, 24, '032P', 'New', 2019, '1.3637'),
(3301, 1, '033N', 'New', 2019, '1.3174'),
(3302, 2, '033N', 'New', 2019, '1.1676'),
(3303, 3, '033N', 'New', 2019, '1.3829'),
(3304, 5, '033N', 'New', 2019, '0.9637'),
(3305, 4, '033N', 'New', 2019, '1.1539'),
(3306, 6, '033N', 'New', 2019, '1.1540'),
(3307, 7, '033N', 'New', 2019, '1.3348'),
(3308, 8, '033N', 'New', 2019, '1.1463'),
(3309, 9, '033N', 'New', 2019, '0.9972'),
(3310, 10, '033N', 'New', 2019, '1.3040'),
(3311, 14, '033N', 'New', 2019, '0.8010'),
(3312, 11, '033N', 'New', 2019, '1.1438'),
(3313, 13, '033N', 'New', 2019, '0.3523'),
(3314, 12, '033N', 'New', 2019, '1.2628'),
(3315, 17, '033N', 'New', 2019, '1.1870'),
(3316, 15, '033N', 'New', 2019, '1.3749'),
(3317, 16, '033N', 'New', 2019, '1.3905'),
(3318, 19, '033N', 'New', 2019, '1.3776'),
(3319, 18, '033N', 'New', 2019, '1.3802'),
(3320, 20, '033N', 'New', 2019, '0.9948'),
(3321, 21, '033N', 'New', 2019, '0.9629'),
(3322, 22, '033N', 'New', 2019, '1.3862'),
(3323, 23, '033N', 'New', 2019, '0.7837'),
(3324, 25, '033N', 'New', 2019, '1.3685'),
(3325, 24, '033N', 'New', 2019, '1.3163'),
(3326, 1, '036E', 'New', 2019, '0.9421'),
(3327, 2, '036E', 'New', 2019, '0.5394'),
(3328, 3, '036E', 'New', 2019, '-1.0000'),
(3329, 5, '036E', 'New', 2019, '0.7820'),
(3330, 4, '036E', 'New', 2019, '-1.0000'),
(3331, 6, '036E', 'New', 2019, '0.6998'),
(3332, 7, '036E', 'New', 2019, '-1.0000'),
(3333, 8, '036E', 'New', 2019, '-1.0000'),
(3334, 9, '036E', 'New', 2019, '-1.0000'),
(3335, 10, '036E', 'New', 2019, '1.1139'),
(3336, 14, '036E', 'New', 2019, '1.0791'),
(3337, 11, '036E', 'New', 2019, '1.1372'),
(3338, 13, '036E', 'New', 2019, '0.8698'),
(3339, 12, '036E', 'New', 2019, '1.6359'),
(3340, 17, '036E', 'New', 2019, '1.1834'),
(3341, 15, '036E', 'New', 2019, '1.1443'),
(3342, 16, '036E', 'New', 2019, '1.0888'),
(3343, 19, '036E', 'New', 2019, '0.7534'),
(3344, 18, '036E', 'New', 2019, '0.9706'),
(3345, 20, '036E', 'New', 2019, '0.2535'),
(3346, 21, '036E', 'New', 2019, '0.7550'),
(3347, 22, '036E', 'New', 2019, '-1.0000'),
(3348, 23, '036E', 'New', 2019, '-1.0000'),
(3349, 25, '036E', 'New', 2019, '-1.0000'),
(3350, 24, '036E', 'New', 2019, '-1.0000'),
(3351, 1, '036W', 'New', 2019, '0.9138'),
(3352, 2, '036W', 'New', 2019, '0.8769'),
(3353, 3, '036W', 'New', 2019, '0.9430'),
(3354, 5, '036W', 'New', 2019, '0.9025'),
(3355, 4, '036W', 'New', 2019, '0.9889'),
(3356, 6, '036W', 'New', 2019, '-1.0000'),
(3357, 7, '036W', 'New', 2019, '1.0144'),
(3358, 8, '036W', 'New', 2019, '1.0029'),
(3359, 9, '036W', 'New', 2019, '0.9093'),
(3360, 10, '036W', 'New', 2019, '1.1478'),
(3361, 14, '036W', 'New', 2019, '-1.0000'),
(3362, 11, '036W', 'New', 2019, '-1.0000'),
(3363, 13, '036W', 'New', 2019, '-1.0000'),
(3364, 12, '036W', 'New', 2019, '0.9707'),
(3365, 17, '036W', 'New', 2019, '1.1183'),
(3366, 15, '036W', 'New', 2019, '1.1578'),
(3367, 16, '036W', 'New', 2019, '1.0825'),
(3368, 19, '036W', 'New', 2019, '0.9718'),
(3369, 18, '036W', 'New', 2019, '0.9717'),
(3370, 20, '036W', 'New', 2019, '-1.0000'),
(3371, 21, '036W', 'New', 2019, '-1.0000'),
(3372, 22, '036W', 'New', 2019, '0.8829'),
(3373, 23, '036W', 'New', 2019, '1.0192'),
(3374, 25, '036W', 'New', 2019, '1.1233'),
(3375, 24, '036W', 'New', 2019, '0.9383'),
(3376, 1, '050K', 'New', 2019, '1.1130'),
(3377, 2, '050K', 'New', 2019, '0.9651'),
(3378, 3, '050K', 'New', 2019, '1.1287'),
(3379, 5, '050K', 'New', 2019, '0.8532'),
(3380, 4, '050K', 'New', 2019, '1.0217'),
(3381, 6, '050K', 'New', 2019, '0.9776'),
(3382, 7, '050K', 'New', 2019, '1.0767'),
(3383, 8, '050K', 'New', 2019, '1.0815'),
(3384, 9, '050K', 'New', 2019, '1.1024'),
(3385, 10, '050K', 'New', 2019, '0.9264'),
(3386, 14, '050K', 'New', 2019, '0.3011'),
(3387, 11, '050K', 'New', 2019, '0.2790'),
(3388, 13, '050K', 'New', 2019, '0.0728'),
(3389, 12, '050K', 'New', 2019, '0.7411'),
(3390, 17, '050K', 'New', 2019, '0.8819'),
(3391, 15, '050K', 'New', 2019, '1.0636'),
(3392, 16, '050K', 'New', 2019, '1.0973'),
(3393, 19, '050K', 'New', 2019, '1.0010'),
(3394, 18, '050K', 'New', 2019, '1.1235'),
(3395, 20, '050K', 'New', 2019, '0.9092'),
(3396, 21, '050K', 'New', 2019, '0.8567'),
(3397, 22, '050K', 'New', 2019, '1.1211'),
(3398, 23, '050K', 'New', 2019, '0.9971'),
(3399, 25, '050K', 'New', 2019, '1.1305'),
(3400, 24, '050K', 'New', 2019, '1.1101'),
(3401, 1, '037A', 'New', 2019, '1.2649'),
(3402, 2, '037A', 'New', 2019, '1.2650'),
(3403, 3, '037A', 'New', 2019, '1.2974'),
(3404, 5, '037A', 'New', 2019, '1.3364'),
(3405, 4, '037A', 'New', 2019, '-1.0000'),
(3406, 6, '037A', 'New', 2019, '-1.0000'),
(3407, 7, '037A', 'New', 2019, '1.2992'),
(3408, 8, '037A', 'New', 2019, '1.2640'),
(3409, 9, '037A', 'New', 2019, '1.2910'),
(3410, 10, '037A', 'New', 2019, '1.4378'),
(3411, 14, '037A', 'New', 2019, '-1.0000'),
(3412, 11, '037A', 'New', 2019, '-1.0000'),
(3413, 13, '037A', 'New', 2019, '-1.0000'),
(3414, 12, '037A', 'New', 2019, '-1.0000'),
(3415, 17, '037A', 'New', 2019, '-1.0000'),
(3416, 15, '037A', 'New', 2019, '-1.0000'),
(3417, 16, '037A', 'New', 2019, '-1.0000'),
(3418, 19, '037A', 'New', 2019, '1.3639'),
(3419, 18, '037A', 'New', 2019, '1.2898'),
(3420, 20, '037A', 'New', 2019, '1.2776'),
(3421, 21, '037A', 'New', 2019, '-1.0000'),
(3422, 22, '037A', 'New', 2019, '1.3487'),
(3423, 23, '037A', 'New', 2019, '-1.0000'),
(3424, 25, '037A', 'New', 2019, '-1.0000'),
(3425, 24, '037A', 'New', 2019, '-1.0000'),
(3426, 1, '037B', 'New', 2019, '-1.0000'),
(3427, 2, '037B', 'New', 2019, '1.2544'),
(3428, 3, '037B', 'New', 2019, '-1.0000'),
(3429, 5, '037B', 'New', 2019, '-1.0000'),
(3430, 4, '037B', 'New', 2019, '1.3599'),
(3431, 6, '037B', 'New', 2019, '-1.0000'),
(3432, 7, '037B', 'New', 2019, '1.2496'),
(3433, 8, '037B', 'New', 2019, '-1.0000'),
(3434, 9, '037B', 'New', 2019, '-1.0000'),
(3435, 10, '037B', 'New', 2019, '1.2841'),
(3436, 14, '037B', 'New', 2019, '-1.0000'),
(3437, 11, '037B', 'New', 2019, '-1.0000'),
(3438, 13, '037B', 'New', 2019, '-1.0000'),
(3439, 12, '037B', 'New', 2019, '-1.0000'),
(3440, 17, '037B', 'New', 2019, '-1.0000'),
(3441, 15, '037B', 'New', 2019, '1.2578'),
(3442, 16, '037B', 'New', 2019, '1.0000'),
(3443, 19, '037B', 'New', 2019, '1.2444'),
(3444, 18, '037B', 'New', 2019, '1.2501'),
(3445, 20, '037B', 'New', 2019, '-1.0000'),
(3446, 21, '037B', 'New', 2019, '-1.0000'),
(3447, 22, '037B', 'New', 2019, '-1.0000'),
(3448, 23, '037B', 'New', 2019, '-1.0000'),
(3449, 25, '037B', 'New', 2019, '1.2522'),
(3450, 24, '037B', 'New', 2019, '1.2994'),
(3451, 1, '037C', 'New', 2019, '1.2120'),
(3452, 2, '037C', 'New', 2019, '1.2003'),
(3453, 3, '037C', 'New', 2019, '-1.0000'),
(3454, 5, '037C', 'New', 2019, '-1.0000'),
(3455, 4, '037C', 'New', 2019, '-1.0000'),
(3456, 6, '037C', 'New', 2019, '-1.0000'),
(3457, 7, '037C', 'New', 2019, '1.1928'),
(3458, 8, '037C', 'New', 2019, '-1.0000'),
(3459, 9, '037C', 'New', 2019, '1.2352'),
(3460, 10, '037C', 'New', 2019, '-1.0000'),
(3461, 14, '037C', 'New', 2019, '1.2431'),
(3462, 11, '037C', 'New', 2019, '-1.0000'),
(3463, 13, '037C', 'New', 2019, '-1.0000'),
(3464, 12, '037C', 'New', 2019, '-1.0000'),
(3465, 17, '037C', 'New', 2019, '-1.0000'),
(3466, 15, '037C', 'New', 2019, '1.2583'),
(3467, 16, '037C', 'New', 2019, '1.1904'),
(3468, 19, '037C', 'New', 2019, '-1.0000'),
(3469, 18, '037C', 'New', 2019, '1.1997'),
(3470, 20, '037C', 'New', 2019, '-1.0000'),
(3471, 21, '037C', 'New', 2019, '-1.0000'),
(3472, 22, '037C', 'New', 2019, '-1.0000'),
(3473, 23, '037C', 'New', 2019, '-1.0000'),
(3474, 25, '037C', 'New', 2019, '1.2103'),
(3475, 24, '037C', 'New', 2019, '1.1930'),
(3476, 1, '037E', 'New', 2019, '-1.0000'),
(3477, 2, '037E', 'New', 2019, '0.9405'),
(3478, 3, '037E', 'New', 2019, '-1.0000'),
(3479, 5, '037E', 'New', 2019, '0.9229'),
(3480, 4, '037E', 'New', 2019, '0.9537'),
(3481, 6, '037E', 'New', 2019, '0.8735'),
(3482, 7, '037E', 'New', 2019, '-1.0000'),
(3483, 8, '037E', 'New', 2019, '-1.0000'),
(3484, 9, '037E', 'New', 2019, '-1.0000'),
(3485, 10, '037E', 'New', 2019, '1.0005'),
(3486, 14, '037E', 'New', 2019, '0.9332'),
(3487, 11, '037E', 'New', 2019, '-1.0000'),
(3488, 13, '037E', 'New', 2019, '-1.0000'),
(3489, 12, '037E', 'New', 2019, '0.8927'),
(3490, 17, '037E', 'New', 2019, '1.0489'),
(3491, 15, '037E', 'New', 2019, '0.9952'),
(3492, 16, '037E', 'New', 2019, '1.0019'),
(3493, 19, '037E', 'New', 2019, '1.0174'),
(3494, 18, '037E', 'New', 2019, '-1.0000'),
(3495, 20, '037E', 'New', 2019, '0.8504'),
(3496, 21, '037E', 'New', 2019, '1.0802'),
(3497, 22, '037E', 'New', 2019, '0.9385'),
(3498, 23, '037E', 'New', 2019, '-1.0000'),
(3499, 25, '037E', 'New', 2019, '1.1519'),
(3500, 24, '037E', 'New', 2019, '1.1451'),
(3501, 1, '037F', 'New', 2019, '1.0113'),
(3502, 2, '037F', 'New', 2019, '1.0410'),
(3503, 3, '037F', 'New', 2019, '1.1472'),
(3504, 5, '037F', 'New', 2019, '-1.0000'),
(3505, 4, '037F', 'New', 2019, '1.0229'),
(3506, 6, '037F', 'New', 2019, '-1.0000'),
(3507, 7, '037F', 'New', 2019, '1.1553'),
(3508, 8, '037F', 'New', 2019, '1.1341'),
(3509, 9, '037F', 'New', 2019, '1.0667'),
(3510, 10, '037F', 'New', 2019, '1.0130'),
(3511, 14, '037F', 'New', 2019, '-1.0000'),
(3512, 11, '037F', 'New', 2019, '1.1276'),
(3513, 13, '037F', 'New', 2019, '-1.0000'),
(3514, 12, '037F', 'New', 2019, '-1.0000'),
(3515, 17, '037F', 'New', 2019, '1.0986'),
(3516, 15, '037F', 'New', 2019, '-1.0000'),
(3517, 16, '037F', 'New', 2019, '-1.0000'),
(3518, 19, '037F', 'New', 2019, '-1.0000'),
(3519, 18, '037F', 'New', 2019, '1.0220'),
(3520, 20, '037F', 'New', 2019, '1.0975'),
(3521, 21, '037F', 'New', 2019, '1.1338'),
(3522, 22, '037F', 'New', 2019, '1.1769'),
(3523, 23, '037F', 'New', 2019, '-1.0000'),
(3524, 25, '037F', 'New', 2019, '1.0455'),
(3525, 24, '037F', 'New', 2019, '1.0858'),
(3526, 1, '037H', 'New', 2019, '1.0435'),
(3527, 2, '037H', 'New', 2019, '0.8618'),
(3528, 3, '037H', 'New', 2019, '-1.0000'),
(3529, 5, '037H', 'New', 2019, '-1.0000'),
(3530, 4, '037H', 'New', 2019, '0.9747'),
(3531, 6, '037H', 'New', 2019, '0.6782'),
(3532, 7, '037H', 'New', 2019, '-1.0000'),
(3533, 8, '037H', 'New', 2019, '-1.0000'),
(3534, 9, '037H', 'New', 2019, '1.1664'),
(3535, 10, '037H', 'New', 2019, '-1.0000'),
(3536, 14, '037H', 'New', 2019, '0.5480'),
(3537, 11, '037H', 'New', 2019, '-1.0000'),
(3538, 13, '037H', 'New', 2019, '0.4903'),
(3539, 12, '037H', 'New', 2019, '-1.0000'),
(3540, 17, '037H', 'New', 2019, '-1.0000'),
(3541, 15, '037H', 'New', 2019, '1.1303'),
(3542, 16, '037H', 'New', 2019, '1.0679'),
(3543, 19, '037H', 'New', 2019, '0.7741'),
(3544, 18, '037H', 'New', 2019, '0.9733'),
(3545, 20, '037H', 'New', 2019, '-1.0000'),
(3546, 21, '037H', 'New', 2019, '-1.0000'),
(3547, 22, '037H', 'New', 2019, '0.9584'),
(3548, 23, '037H', 'New', 2019, '0.7844'),
(3549, 25, '037H', 'New', 2019, '-1.0000'),
(3550, 24, '037H', 'New', 2019, '-1.0000'),
(3551, 1, '051B', 'New', 2019, '-1.0000'),
(3552, 2, '051B', 'New', 2019, '-1.0000'),
(3553, 3, '051B', 'New', 2019, '-1.0000'),
(3554, 5, '051B', 'New', 2019, '-1.0000'),
(3555, 4, '051B', 'New', 2019, '-1.0000'),
(3556, 6, '051B', 'New', 2019, '-1.0000'),
(3557, 7, '051B', 'New', 2019, '1.7784'),
(3558, 8, '051B', 'New', 2019, '-1.0000'),
(3559, 9, '051B', 'New', 2019, '-1.0000'),
(3560, 10, '051B', 'New', 2019, '1.7630'),
(3561, 14, '051B', 'New', 2019, '-1.0000'),
(3562, 11, '051B', 'New', 2019, '-1.0000'),
(3563, 13, '051B', 'New', 2019, '-1.0000'),
(3564, 12, '051B', 'New', 2019, '-1.0000'),
(3565, 17, '051B', 'New', 2019, '-1.0000'),
(3566, 15, '051B', 'New', 2019, '-1.0000'),
(3567, 16, '051B', 'New', 2019, '-1.0000'),
(3568, 19, '051B', 'New', 2019, '-1.0000'),
(3569, 18, '051B', 'New', 2019, '1.7732'),
(3570, 20, '051B', 'New', 2019, '-1.0000'),
(3571, 21, '051B', 'New', 2019, '-1.0000'),
(3572, 22, '051B', 'New', 2019, '-1.0000'),
(3573, 23, '051B', 'New', 2019, '-1.0000'),
(3574, 25, '051B', 'New', 2019, '-1.0000'),
(3575, 24, '051B', 'New', 2019, '1.7606'),
(3576, 1, '051C', 'New', 2019, '1.7047'),
(3577, 2, '051C', 'New', 2019, '1.7030'),
(3578, 3, '051C', 'New', 2019, '-1.0000'),
(3579, 5, '051C', 'New', 2019, '-1.0000'),
(3580, 4, '051C', 'New', 2019, '-1.0000'),
(3581, 6, '051C', 'New', 2019, '-1.0000'),
(3582, 7, '051C', 'New', 2019, '-1.0000'),
(3583, 8, '051C', 'New', 2019, '-1.0000'),
(3584, 9, '051C', 'New', 2019, '-1.0000'),
(3585, 10, '051C', 'New', 2019, '1.7208'),
(3586, 14, '051C', 'New', 2019, '-1.0000'),
(3587, 11, '051C', 'New', 2019, '-1.0000'),
(3588, 13, '051C', 'New', 2019, '-1.0000'),
(3589, 12, '051C', 'New', 2019, '-1.0000'),
(3590, 17, '051C', 'New', 2019, '-1.0000'),
(3591, 15, '051C', 'New', 2019, '-1.0000'),
(3592, 16, '051C', 'New', 2019, '-1.0000'),
(3593, 19, '051C', 'New', 2019, '-1.0000'),
(3594, 18, '051C', 'New', 2019, '1.7141'),
(3595, 20, '051C', 'New', 2019, '-1.0000'),
(3596, 21, '051C', 'New', 2019, '-1.0000'),
(3597, 22, '051C', 'New', 2019, '-1.0000'),
(3598, 23, '051C', 'New', 2019, '-1.0000'),
(3599, 25, '051C', 'New', 2019, '-1.0000'),
(3600, 24, '051C', 'New', 2019, '1.7045'),
(3601, 1, '051E', 'New', 2019, '1.4667'),
(3602, 2, '051E', 'New', 2019, '-1.0000'),
(3603, 3, '051E', 'New', 2019, '1.1672'),
(3604, 5, '051E', 'New', 2019, '1.2603'),
(3605, 4, '051E', 'New', 2019, '-1.0000'),
(3606, 6, '051E', 'New', 2019, '1.1258'),
(3607, 7, '051E', 'New', 2019, '-1.0000'),
(3608, 8, '051E', 'New', 2019, '-1.0000'),
(3609, 9, '051E', 'New', 2019, '1.4312'),
(3610, 10, '051E', 'New', 2019, '1.7011'),
(3611, 14, '051E', 'New', 2019, '0.9272'),
(3612, 11, '051E', 'New', 2019, '1.0528'),
(3613, 13, '051E', 'New', 2019, '1.1165'),
(3614, 12, '051E', 'New', 2019, '1.4537'),
(3615, 17, '051E', 'New', 2019, '1.4737'),
(3616, 15, '051E', 'New', 2019, '1.5681'),
(3617, 16, '051E', 'New', 2019, '1.4967'),
(3618, 19, '051E', 'New', 2019, '1.3085'),
(3619, 18, '051E', 'New', 2019, '-1.0000'),
(3620, 20, '051E', 'New', 2019, '1.4177'),
(3621, 21, '051E', 'New', 2019, '1.2301'),
(3622, 22, '051E', 'New', 2019, '-1.0000'),
(3623, 23, '051E', 'New', 2019, '1.2281'),
(3624, 25, '051E', 'New', 2019, '-1.0000'),
(3625, 24, '051E', 'New', 2019, '-1.0000'),
(3626, 1, '051F', 'New', 2019, '1.5626'),
(3627, 2, '051F', 'New', 2019, '1.6937'),
(3628, 3, '051F', 'New', 2019, '1.6224'),
(3629, 5, '051F', 'New', 2019, '-1.0000'),
(3630, 4, '051F', 'New', 2019, '1.6836'),
(3631, 6, '051F', 'New', 2019, '-1.0000'),
(3632, 7, '051F', 'New', 2019, '1.6928'),
(3633, 8, '051F', 'New', 2019, '1.6479'),
(3634, 9, '051F', 'New', 2019, '-1.0000'),
(3635, 10, '051F', 'New', 2019, '-1.0000'),
(3636, 14, '051F', 'New', 2019, '-1.0000'),
(3637, 11, '051F', 'New', 2019, '-1.0000'),
(3638, 13, '051F', 'New', 2019, '-1.0000'),
(3639, 12, '051F', 'New', 2019, '-1.0000'),
(3640, 17, '051F', 'New', 2019, '-1.0000'),
(3641, 15, '051F', 'New', 2019, '-1.0000'),
(3642, 16, '051F', 'New', 2019, '-1.0000'),
(3643, 19, '051F', 'New', 2019, '-1.0000'),
(3644, 18, '051F', 'New', 2019, '-1.0000'),
(3645, 20, '051F', 'New', 2019, '-1.0000'),
(3646, 21, '051F', 'New', 2019, '-1.0000'),
(3647, 22, '051F', 'New', 2019, '1.6657'),
(3648, 23, '051F', 'New', 2019, '-1.0000'),
(3649, 25, '051F', 'New', 2019, '1.6980'),
(3650, 24, '051F', 'New', 2019, '-1.0000'),
(3651, 1, '052B', 'New', 2019, '1.9346'),
(3652, 2, '052B', 'New', 2019, '-1.0000'),
(3653, 3, '052B', 'New', 2019, '1.9399'),
(3654, 5, '052B', 'New', 2019, '-1.0000'),
(3655, 4, '052B', 'New', 2019, '1.8996'),
(3656, 6, '052B', 'New', 2019, '-1.0000'),
(3657, 7, '052B', 'New', 2019, '1.8704'),
(3658, 8, '052B', 'New', 2019, '-1.0000'),
(3659, 9, '052B', 'New', 2019, '-1.0000'),
(3660, 10, '052B', 'New', 2019, '-1.0000'),
(3661, 14, '052B', 'New', 2019, '-1.0000'),
(3662, 11, '052B', 'New', 2019, '-1.0000'),
(3663, 13, '052B', 'New', 2019, '-1.0000'),
(3664, 12, '052B', 'New', 2019, '-1.0000'),
(3665, 17, '052B', 'New', 2019, '-1.0000'),
(3666, 15, '052B', 'New', 2019, '-1.0000'),
(3667, 16, '052B', 'New', 2019, '-1.0000'),
(3668, 19, '052B', 'New', 2019, '-1.0000'),
(3669, 18, '052B', 'New', 2019, '1.9329'),
(3670, 20, '052B', 'New', 2019, '-1.0000'),
(3671, 21, '052B', 'New', 2019, '-1.0000'),
(3672, 22, '052B', 'New', 2019, '-1.0000'),
(3673, 23, '052B', 'New', 2019, '-1.0000'),
(3674, 25, '052B', 'New', 2019, '1.9451'),
(3675, 24, '052B', 'New', 2019, '-1.0000'),
(3676, 1, '052C', 'New', 2019, '1.8271'),
(3677, 2, '052C', 'New', 2019, '1.8618'),
(3678, 3, '052C', 'New', 2019, '-1.0000'),
(3679, 5, '052C', 'New', 2019, '-1.0000'),
(3680, 4, '052C', 'New', 2019, '1.8689'),
(3681, 6, '052C', 'New', 2019, '-1.0000'),
(3682, 7, '052C', 'New', 2019, '-1.0000'),
(3683, 8, '052C', 'New', 2019, '-1.0000'),
(3684, 9, '052C', 'New', 2019, '-1.0000'),
(3685, 10, '052C', 'New', 2019, '1.8219'),
(3686, 14, '052C', 'New', 2019, '-1.0000');
INSERT INTO `zscoretable` (`z_id`, `district_id`, `unicode`, `syllabus`, `year`, `z_score`) VALUES
(3687, 11, '052C', 'New', 2019, '-1.0000'),
(3688, 13, '052C', 'New', 2019, '-1.0000'),
(3689, 12, '052C', 'New', 2019, '-1.0000'),
(3690, 17, '052C', 'New', 2019, '-1.0000'),
(3691, 15, '052C', 'New', 2019, '-1.0000'),
(3692, 16, '052C', 'New', 2019, '-1.0000'),
(3693, 19, '052C', 'New', 2019, '-1.0000'),
(3694, 18, '052C', 'New', 2019, '1.8172'),
(3695, 20, '052C', 'New', 2019, '-1.0000'),
(3696, 21, '052C', 'New', 2019, '-1.0000'),
(3697, 22, '052C', 'New', 2019, '-1.0000'),
(3698, 23, '052C', 'New', 2019, '-1.0000'),
(3699, 25, '052C', 'New', 2019, '-1.0000'),
(3700, 24, '052C', 'New', 2019, '1.8319'),
(3701, 1, '052E', 'New', 2019, '-1.0000'),
(3702, 2, '052E', 'New', 2019, '1.4571'),
(3703, 3, '052E', 'New', 2019, '-1.0000'),
(3704, 5, '052E', 'New', 2019, '1.6156'),
(3705, 4, '052E', 'New', 2019, '1.6314'),
(3706, 6, '052E', 'New', 2019, '1.4579'),
(3707, 7, '052E', 'New', 2019, '-1.0000'),
(3708, 8, '052E', 'New', 2019, '-1.0000'),
(3709, 9, '052E', 'New', 2019, '-1.0000'),
(3710, 10, '052E', 'New', 2019, '1.9207'),
(3711, 14, '052E', 'New', 2019, '0.8684'),
(3712, 11, '052E', 'New', 2019, '1.3895'),
(3713, 13, '052E', 'New', 2019, '0.5765'),
(3714, 12, '052E', 'New', 2019, '1.4642'),
(3715, 17, '052E', 'New', 2019, '1.4899'),
(3716, 15, '052E', 'New', 2019, '1.6301'),
(3717, 16, '052E', 'New', 2019, '1.5864'),
(3718, 19, '052E', 'New', 2019, '1.7682'),
(3719, 18, '052E', 'New', 2019, '-1.0000'),
(3720, 20, '052E', 'New', 2019, '1.5032'),
(3721, 21, '052E', 'New', 2019, '1.3385'),
(3722, 22, '052E', 'New', 2019, '1.6335'),
(3723, 23, '052E', 'New', 2019, '1.3730'),
(3724, 25, '052E', 'New', 2019, '-1.0000'),
(3725, 24, '052E', 'New', 2019, '-1.0000'),
(3726, 1, '052F', 'New', 2019, '1.7891'),
(3727, 2, '052F', 'New', 2019, '-1.0000'),
(3728, 3, '052F', 'New', 2019, '1.7238'),
(3729, 5, '052F', 'New', 2019, '-1.0000'),
(3730, 4, '052F', 'New', 2019, '-1.0000'),
(3731, 6, '052F', 'New', 2019, '-1.0000'),
(3732, 7, '052F', 'New', 2019, '1.8109'),
(3733, 8, '052F', 'New', 2019, '1.7912'),
(3734, 9, '052F', 'New', 2019, '1.7143'),
(3735, 10, '052F', 'New', 2019, '-1.0000'),
(3736, 14, '052F', 'New', 2019, '-1.0000'),
(3737, 11, '052F', 'New', 2019, '-1.0000'),
(3738, 13, '052F', 'New', 2019, '-1.0000'),
(3739, 12, '052F', 'New', 2019, '-1.0000'),
(3740, 17, '052F', 'New', 2019, '-1.0000'),
(3741, 15, '052F', 'New', 2019, '-1.0000'),
(3742, 16, '052F', 'New', 2019, '-1.0000'),
(3743, 19, '052F', 'New', 2019, '-1.0000'),
(3744, 18, '052F', 'New', 2019, '1.8040'),
(3745, 20, '052F', 'New', 2019, '-1.0000'),
(3746, 21, '052F', 'New', 2019, '-1.0000'),
(3747, 22, '052F', 'New', 2019, '-1.0000'),
(3748, 23, '052F', 'New', 2019, '-1.0000'),
(3749, 25, '052F', 'New', 2019, '1.7848'),
(3750, 24, '052F', 'New', 2019, '-1.0000'),
(3751, 1, '053B', 'New', 2019, '1.6748'),
(3752, 2, '053B', 'New', 2019, '1.6920'),
(3753, 3, '053B', 'New', 2019, '1.7033'),
(3754, 5, '053B', 'New', 2019, '1.5841'),
(3755, 4, '053B', 'New', 2019, '1.5025'),
(3756, 6, '053B', 'New', 2019, '1.2589'),
(3757, 7, '053B', 'New', 2019, '1.4868'),
(3758, 8, '053B', 'New', 2019, '1.7286'),
(3759, 9, '053B', 'New', 2019, '1.5614'),
(3760, 10, '053B', 'New', 2019, '1.7337'),
(3761, 14, '053B', 'New', 2019, '0.7041'),
(3762, 11, '053B', 'New', 2019, '1.3134'),
(3763, 13, '053B', 'New', 2019, '0.5572'),
(3764, 12, '053B', 'New', 2019, '0.9702'),
(3765, 17, '053B', 'New', 2019, '1.3948'),
(3766, 15, '053B', 'New', 2019, '1.5460'),
(3767, 16, '053B', 'New', 2019, '1.5284'),
(3768, 19, '053B', 'New', 2019, '1.6165'),
(3769, 18, '053B', 'New', 2019, '1.6965'),
(3770, 20, '053B', 'New', 2019, '1.4404'),
(3771, 21, '053B', 'New', 2019, '1.3100'),
(3772, 22, '053B', 'New', 2019, '1.5796'),
(3773, 23, '053B', 'New', 2019, '1.0473'),
(3774, 25, '053B', 'New', 2019, '1.3012'),
(3775, 24, '053B', 'New', 2019, '1.5272'),
(3776, 1, '054A', 'New', 2019, '1.8299'),
(3777, 2, '054A', 'New', 2019, '1.8848'),
(3778, 3, '054A', 'New', 2019, '1.9329'),
(3779, 5, '054A', 'New', 2019, '-1.0000'),
(3780, 4, '054A', 'New', 2019, '-1.0000'),
(3781, 6, '054A', 'New', 2019, '-1.0000'),
(3782, 7, '054A', 'New', 2019, '1.9142'),
(3783, 8, '054A', 'New', 2019, '-1.0000'),
(3784, 9, '054A', 'New', 2019, '-1.0000'),
(3785, 10, '054A', 'New', 2019, '1.9032'),
(3786, 14, '054A', 'New', 2019, '-1.0000'),
(3787, 11, '054A', 'New', 2019, '-1.0000'),
(3788, 13, '054A', 'New', 2019, '-1.0000'),
(3789, 12, '054A', 'New', 2019, '-1.0000'),
(3790, 17, '054A', 'New', 2019, '-1.0000'),
(3791, 15, '054A', 'New', 2019, '-1.0000'),
(3792, 16, '054A', 'New', 2019, '-1.0000'),
(3793, 19, '054A', 'New', 2019, '-1.0000'),
(3794, 18, '054A', 'New', 2019, '1.8970'),
(3795, 20, '054A', 'New', 2019, '-1.0000'),
(3796, 21, '054A', 'New', 2019, '-1.0000'),
(3797, 22, '054A', 'New', 2019, '-1.0000'),
(3798, 23, '054A', 'New', 2019, '-1.0000'),
(3799, 25, '054A', 'New', 2019, '-1.0000'),
(3800, 24, '054A', 'New', 2019, '-1.0000'),
(3801, 1, '054B', 'New', 2019, '1.7577'),
(3802, 2, '054B', 'New', 2019, '-1.0000'),
(3803, 3, '054B', 'New', 2019, '-1.0000'),
(3804, 5, '054B', 'New', 2019, '1.6628'),
(3805, 4, '054B', 'New', 2019, '1.6791'),
(3806, 6, '054B', 'New', 2019, '1.4277'),
(3807, 7, '054B', 'New', 2019, '1.9406'),
(3808, 8, '054B', 'New', 2019, '1.9291'),
(3809, 9, '054B', 'New', 2019, '1.7308'),
(3810, 10, '054B', 'New', 2019, '-1.0000'),
(3811, 14, '054B', 'New', 2019, '1.4880'),
(3812, 11, '054B', 'New', 2019, '1.5117'),
(3813, 13, '054B', 'New', 2019, '0.8946'),
(3814, 12, '054B', 'New', 2019, '1.3671'),
(3815, 17, '054B', 'New', 2019, '1.5109'),
(3816, 15, '054B', 'New', 2019, '1.6810'),
(3817, 16, '054B', 'New', 2019, '1.6846'),
(3818, 19, '054B', 'New', 2019, '1.7787'),
(3819, 18, '054B', 'New', 2019, '-1.0000'),
(3820, 20, '054B', 'New', 2019, '1.5678'),
(3821, 21, '054B', 'New', 2019, '1.4069'),
(3822, 22, '054B', 'New', 2019, '1.6962'),
(3823, 23, '054B', 'New', 2019, '0.3642'),
(3824, 25, '054B', 'New', 2019, '1.9071'),
(3825, 24, '054B', 'New', 2019, '1.8198'),
(3826, 1, '055D', 'New', 2019, '1.3017'),
(3827, 2, '055D', 'New', 2019, '1.2007'),
(3828, 3, '055D', 'New', 2019, '1.1703'),
(3829, 5, '055D', 'New', 2019, '1.0129'),
(3830, 4, '055D', 'New', 2019, '1.2770'),
(3831, 6, '055D', 'New', 2019, '0.8845'),
(3832, 7, '055D', 'New', 2019, '1.1369'),
(3833, 8, '055D', 'New', 2019, '1.3222'),
(3834, 9, '055D', 'New', 2019, '1.3316'),
(3835, 10, '055D', 'New', 2019, '0.9735'),
(3836, 14, '055D', 'New', 2019, '0.4817'),
(3837, 11, '055D', 'New', 2019, '0.4403'),
(3838, 13, '055D', 'New', 2019, '0.3664'),
(3839, 12, '055D', 'New', 2019, '0.8479'),
(3840, 17, '055D', 'New', 2019, '0.9030'),
(3841, 15, '055D', 'New', 2019, '1.1238'),
(3842, 16, '055D', 'New', 2019, '1.0667'),
(3843, 19, '055D', 'New', 2019, '1.2630'),
(3844, 18, '055D', 'New', 2019, '1.2117'),
(3845, 20, '055D', 'New', 2019, '0.9649'),
(3846, 21, '055D', 'New', 2019, '0.7441'),
(3847, 22, '055D', 'New', 2019, '1.2541'),
(3848, 23, '055D', 'New', 2019, '1.1432'),
(3849, 25, '055D', 'New', 2019, '1.3064'),
(3850, 24, '055D', 'New', 2019, '1.2723'),
(3851, 1, '062F', 'New', 2019, '1.7115'),
(3852, 2, '062F', 'New', 2019, '1.1751'),
(3853, 3, '062F', 'New', 2019, '1.0911'),
(3854, 5, '062F', 'New', 2019, '0.7219'),
(3855, 4, '062F', 'New', 2019, '1.1627'),
(3856, 6, '062F', 'New', 2019, '0.7695'),
(3857, 7, '062F', 'New', 2019, '1.1508'),
(3858, 8, '062F', 'New', 2019, '1.1168'),
(3859, 9, '062F', 'New', 2019, '1.0193'),
(3860, 10, '062F', 'New', 2019, '0.8987'),
(3861, 14, '062F', 'New', 2019, '0.2895'),
(3862, 11, '062F', 'New', 2019, '0.2684'),
(3863, 13, '062F', 'New', 2019, '-0.1903'),
(3864, 12, '062F', 'New', 2019, '0.3477'),
(3865, 17, '062F', 'New', 2019, '0.7024'),
(3866, 15, '062F', 'New', 2019, '0.8402'),
(3867, 16, '062F', 'New', 2019, '1.0313'),
(3868, 19, '062F', 'New', 2019, '1.1848'),
(3869, 18, '062F', 'New', 2019, '1.1816'),
(3870, 20, '062F', 'New', 2019, '0.9279'),
(3871, 21, '062F', 'New', 2019, '0.5657'),
(3872, 22, '062F', 'New', 2019, '1.1733'),
(3873, 23, '062F', 'New', 2019, '0.6627'),
(3874, 25, '062F', 'New', 2019, '1.1777'),
(3875, 24, '062F', 'New', 2019, '1.3300'),
(3876, 1, '106F', 'New', 2019, '1.1178'),
(3877, 2, '106F', 'New', 2019, '1.1611'),
(3878, 3, '106F', 'New', 2019, '1.1822'),
(3879, 5, '106F', 'New', 2019, '1.1927'),
(3880, 4, '106F', 'New', 2019, '1.1376'),
(3881, 6, '106F', 'New', 2019, '0.6707'),
(3882, 7, '106F', 'New', 2019, '1.2426'),
(3883, 8, '106F', 'New', 2019, '1.2369'),
(3884, 9, '106F', 'New', 2019, '1.1651'),
(3885, 10, '106F', 'New', 2019, '1.1466'),
(3886, 14, '106F', 'New', 2019, '0.1864'),
(3887, 11, '106F', 'New', 2019, '0.5496'),
(3888, 13, '106F', 'New', 2019, '0.3204'),
(3889, 12, '106F', 'New', 2019, '0.5474'),
(3890, 17, '106F', 'New', 2019, '1.0695'),
(3891, 15, '106F', 'New', 2019, '1.1931'),
(3892, 16, '106F', 'New', 2019, '1.1450'),
(3893, 19, '106F', 'New', 2019, '0.8083'),
(3894, 18, '106F', 'New', 2019, '1.2341'),
(3895, 20, '106F', 'New', 2019, '1.1042'),
(3896, 21, '106F', 'New', 2019, '0.6446'),
(3897, 22, '106F', 'New', 2019, '1.1933'),
(3898, 23, '106F', 'New', 2019, '0.7667'),
(3899, 25, '106F', 'New', 2019, '1.1367'),
(3900, 24, '106F', 'New', 2019, '1.1803'),
(3901, 1, '086B', 'New', 2019, '1.4588'),
(3902, 2, '086B', 'New', 2019, '1.3239'),
(3903, 3, '086B', 'New', 2019, '1.3306'),
(3904, 5, '086B', 'New', 2019, '1.1723'),
(3905, 4, '086B', 'New', 2019, '1.3972'),
(3906, 6, '086B', 'New', 2019, '0.9541'),
(3907, 7, '086B', 'New', 2019, '1.3984'),
(3908, 8, '086B', 'New', 2019, '1.3526'),
(3909, 9, '086B', 'New', 2019, '1.3165'),
(3910, 10, '086B', 'New', 2019, '1.4523'),
(3911, 14, '086B', 'New', 2019, '0.8711'),
(3912, 11, '086B', 'New', 2019, '0.2943'),
(3913, 13, '086B', 'New', 2019, '0.0818'),
(3914, 12, '086B', 'New', 2019, '0.6914'),
(3915, 17, '086B', 'New', 2019, '0.9563'),
(3916, 15, '086B', 'New', 2019, '1.1513'),
(3917, 16, '086B', 'New', 2019, '0.8963'),
(3918, 19, '086B', 'New', 2019, '1.3679'),
(3919, 18, '086B', 'New', 2019, '1.4030'),
(3920, 20, '086B', 'New', 2019, '1.3635'),
(3921, 21, '086B', 'New', 2019, '1.0042'),
(3922, 22, '086B', 'New', 2019, '1.1653'),
(3923, 23, '086B', 'New', 2019, '0.5991'),
(3924, 25, '086B', 'New', 2019, '1.3758'),
(3925, 24, '086B', 'New', 2019, '1.3508'),
(3926, 1, '087M', 'New', 2019, '1.2702'),
(3927, 2, '087M', 'New', 2019, '1.2994'),
(3928, 3, '087M', 'New', 2019, '1.3483'),
(3929, 5, '087M', 'New', 2019, '0.7767'),
(3930, 4, '087M', 'New', 2019, '1.3100'),
(3931, 6, '087M', 'New', 2019, '1.0917'),
(3932, 7, '087M', 'New', 2019, '1.3550'),
(3933, 8, '087M', 'New', 2019, '1.2784'),
(3934, 9, '087M', 'New', 2019, '1.2326'),
(3935, 10, '087M', 'New', 2019, '1.1008'),
(3936, 14, '087M', 'New', 2019, '0.6286'),
(3937, 11, '087M', 'New', 2019, '0.4474'),
(3938, 13, '087M', 'New', 2019, '0.1244'),
(3939, 12, '087M', 'New', 2019, '0.8745'),
(3940, 17, '087M', 'New', 2019, '1.0480'),
(3941, 15, '087M', 'New', 2019, '1.1990'),
(3942, 16, '087M', 'New', 2019, '1.3466'),
(3943, 19, '087M', 'New', 2019, '1.2323'),
(3944, 18, '087M', 'New', 2019, '1.2165'),
(3945, 20, '087M', 'New', 2019, '1.3708'),
(3946, 21, '087M', 'New', 2019, '0.9443'),
(3947, 22, '087M', 'New', 2019, '1.2625'),
(3948, 23, '087M', 'New', 2019, '0.7443'),
(3949, 25, '087M', 'New', 2019, '1.2839'),
(3950, 24, '087M', 'New', 2019, '1.2117'),
(3951, 1, '107L', 'New', 2019, '1.3012'),
(3952, 2, '107L', 'New', 2019, '1.2863'),
(3953, 3, '107L', 'New', 2019, '1.3257'),
(3954, 5, '107L', 'New', 2019, '1.1142'),
(3955, 4, '107L', 'New', 2019, '1.2426'),
(3956, 6, '107L', 'New', 2019, '1.0585'),
(3957, 7, '107L', 'New', 2019, '1.3313'),
(3958, 8, '107L', 'New', 2019, '1.3054'),
(3959, 9, '107L', 'New', 2019, '1.2976'),
(3960, 10, '107L', 'New', 2019, '1.1001'),
(3961, 14, '107L', 'New', 2019, '1.1131'),
(3962, 11, '107L', 'New', 2019, '1.2096'),
(3963, 13, '107L', 'New', 2019, '0.9753'),
(3964, 12, '107L', 'New', 2019, '1.0711'),
(3965, 17, '107L', 'New', 2019, '1.3136'),
(3966, 15, '107L', 'New', 2019, '1.0579'),
(3967, 16, '107L', 'New', 2019, '1.2026'),
(3968, 19, '107L', 'New', 2019, '1.1654'),
(3969, 18, '107L', 'New', 2019, '1.3103'),
(3970, 20, '107L', 'New', 2019, '1.3276'),
(3971, 21, '107L', 'New', 2019, '0.9180'),
(3972, 22, '107L', 'New', 2019, '1.3166'),
(3973, 23, '107L', 'New', 2019, '1.3164'),
(3974, 25, '107L', 'New', 2019, '1.3282'),
(3975, 24, '107L', 'New', 2019, '1.3151'),
(3976, 1, '079J', 'New', 2019, '1.3780'),
(3977, 2, '079J', 'New', 2019, '1.3771'),
(3978, 3, '079J', 'New', 2019, '1.4161'),
(3979, 5, '079J', 'New', 2019, '1.4135'),
(3980, 4, '079J', 'New', 2019, '1.4118'),
(3981, 6, '079J', 'New', 2019, '1.4969'),
(3982, 7, '079J', 'New', 2019, '1.4908'),
(3983, 8, '079J', 'New', 2019, '1.4550'),
(3984, 9, '079J', 'New', 2019, '1.4549'),
(3985, 10, '079J', 'New', 2019, '1.4258'),
(3986, 14, '079J', 'New', 2019, '1.5100'),
(3987, 11, '079J', 'New', 2019, '1.4060'),
(3988, 13, '079J', 'New', 2019, '1.2747'),
(3989, 12, '079J', 'New', 2019, '1.4236'),
(3990, 17, '079J', 'New', 2019, '1.5490'),
(3991, 15, '079J', 'New', 2019, '1.5091'),
(3992, 16, '079J', 'New', 2019, '1.5432'),
(3993, 19, '079J', 'New', 2019, '1.4636'),
(3994, 18, '079J', 'New', 2019, '1.3851'),
(3995, 20, '079J', 'New', 2019, '1.4430'),
(3996, 21, '079J', 'New', 2019, '1.5195'),
(3997, 22, '079J', 'New', 2019, '1.5026'),
(3998, 23, '079J', 'New', 2019, '1.5090'),
(3999, 25, '079J', 'New', 2019, '1.4742'),
(4000, 24, '079J', 'New', 2019, '1.3964'),
(4001, 1, '080L', 'New', 2019, '1.1390'),
(4002, 2, '080L', 'New', 2019, '1.1333'),
(4003, 3, '080L', 'New', 2019, '1.1999'),
(4004, 5, '080L', 'New', 2019, '1.2316'),
(4005, 4, '080L', 'New', 2019, '1.2101'),
(4006, 6, '080L', 'New', 2019, '0.8332'),
(4007, 7, '080L', 'New', 2019, '1.1124'),
(4008, 8, '080L', 'New', 2019, '1.1125'),
(4009, 9, '080L', 'New', 2019, '1.2396'),
(4010, 10, '080L', 'New', 2019, '1.1889'),
(4011, 14, '080L', 'New', 2019, '0.7385'),
(4012, 11, '080L', 'New', 2019, '0.6921'),
(4013, 13, '080L', 'New', 2019, '0.5282'),
(4014, 12, '080L', 'New', 2019, '0.6856'),
(4015, 17, '080L', 'New', 2019, '1.1289'),
(4016, 15, '080L', 'New', 2019, '1.0499'),
(4017, 16, '080L', 'New', 2019, '1.2042'),
(4018, 19, '080L', 'New', 2019, '1.1496'),
(4019, 18, '080L', 'New', 2019, '1.1736'),
(4020, 20, '080L', 'New', 2019, '0.9211'),
(4021, 21, '080L', 'New', 2019, '0.5164'),
(4022, 22, '080L', 'New', 2019, '1.0882'),
(4023, 23, '080L', 'New', 2019, '0.7385'),
(4024, 25, '080L', 'New', 2019, '1.2444'),
(4025, 24, '080L', 'New', 2019, '1.1423'),
(4026, 1, '081L', 'New', 2019, '-0.4142'),
(4027, 2, '081L', 'New', 2019, '0.3390'),
(4028, 3, '081L', 'New', 2019, '0.7362'),
(4029, 5, '081L', 'New', 2019, '1.0661'),
(4030, 4, '081L', 'New', 2019, '0.7663'),
(4031, 6, '081L', 'New', 2019, '0.2970'),
(4032, 7, '081L', 'New', 2019, '0.2174'),
(4033, 8, '081L', 'New', 2019, '0.4498'),
(4034, 9, '081L', 'New', 2019, '-1.0000'),
(4035, 10, '081L', 'New', 2019, '0.6718'),
(4036, 14, '081L', 'New', 2019, '-1.0000'),
(4037, 11, '081L', 'New', 2019, '0.6261'),
(4038, 13, '081L', 'New', 2019, '-1.0000'),
(4039, 12, '081L', 'New', 2019, '-0.3438'),
(4040, 17, '081L', 'New', 2019, '-0.0864'),
(4041, 15, '081L', 'New', 2019, '-0.0086'),
(4042, 16, '081L', 'New', 2019, '0.3157'),
(4043, 19, '081L', 'New', 2019, '-0.5466'),
(4044, 18, '081L', 'New', 2019, '0.2090'),
(4045, 20, '081L', 'New', 2019, '-0.0182'),
(4046, 21, '081L', 'New', 2019, '0.3881'),
(4047, 22, '081L', 'New', 2019, '0.4493'),
(4048, 23, '081L', 'New', 2019, '0.4655'),
(4049, 25, '081L', 'New', 2019, '0.4641'),
(4050, 24, '081L', 'New', 2019, '0.4522'),
(4051, 1, '082C', 'New', 2019, '0.9785'),
(4052, 2, '082C', 'New', 2019, '1.0845'),
(4053, 3, '082C', 'New', 2019, '0.9822'),
(4054, 5, '082C', 'New', 2019, '0.9987'),
(4055, 4, '082C', 'New', 2019, '1.0578'),
(4056, 6, '082C', 'New', 2019, '1.0317'),
(4057, 7, '082C', 'New', 2019, '0.9700'),
(4058, 8, '082C', 'New', 2019, '1.0968'),
(4059, 9, '082C', 'New', 2019, '1.1263'),
(4060, 10, '082C', 'New', 2019, '1.5076'),
(4061, 14, '082C', 'New', 2019, '-1.0000'),
(4062, 11, '082C', 'New', 2019, '-1.0000'),
(4063, 13, '082C', 'New', 2019, '-1.0000'),
(4064, 12, '082C', 'New', 2019, '1.0973'),
(4065, 17, '082C', 'New', 2019, '1.0120'),
(4066, 15, '082C', 'New', 2019, '1.0269'),
(4067, 16, '082C', 'New', 2019, '-1.0000'),
(4068, 19, '082C', 'New', 2019, '0.9556'),
(4069, 18, '082C', 'New', 2019, '1.0555'),
(4070, 20, '082C', 'New', 2019, '0.9600'),
(4071, 21, '082C', 'New', 2019, '1.0981'),
(4072, 22, '082C', 'New', 2019, '1.6170'),
(4073, 23, '082C', 'New', 2019, '1.2023'),
(4074, 25, '082C', 'New', 2019, '1.2287'),
(4075, 24, '082C', 'New', 2019, '0.9700'),
(4076, 1, '082L', 'New', 2019, '0.8304'),
(4077, 2, '082L', 'New', 2019, '0.6783'),
(4078, 3, '082L', 'New', 2019, '0.7669'),
(4079, 5, '082L', 'New', 2019, '-1.0000'),
(4080, 4, '082L', 'New', 2019, '0.7945'),
(4081, 6, '082L', 'New', 2019, '-1.0000'),
(4082, 7, '082L', 'New', 2019, '0.9553'),
(4083, 8, '082L', 'New', 2019, '0.5371'),
(4084, 9, '082L', 'New', 2019, '0.1694'),
(4085, 10, '082L', 'New', 2019, '0.7071'),
(4086, 14, '082L', 'New', 2019, '0.7392'),
(4087, 11, '082L', 'New', 2019, '0.7790'),
(4088, 13, '082L', 'New', 2019, '0.1668'),
(4089, 12, '082L', 'New', 2019, '-1.0000'),
(4090, 17, '082L', 'New', 2019, '-1.0000'),
(4091, 15, '082L', 'New', 2019, '0.9059'),
(4092, 16, '082L', 'New', 2019, '0.5953'),
(4093, 19, '082L', 'New', 2019, '0.6761'),
(4094, 18, '082L', 'New', 2019, '0.5580'),
(4095, 20, '082L', 'New', 2019, '0.3860'),
(4096, 21, '082L', 'New', 2019, '0.9226'),
(4097, 22, '082L', 'New', 2019, '0.1956'),
(4098, 23, '082L', 'New', 2019, '0.7311'),
(4099, 25, '082L', 'New', 2019, '0.6039'),
(4100, 24, '082L', 'New', 2019, '0.8907'),
(4101, 1, '083D', 'New', 2019, '1.4281'),
(4102, 2, '083D', 'New', 2019, '1.4984'),
(4103, 3, '083D', 'New', 2019, '1.2957'),
(4104, 5, '083D', 'New', 2019, '1.3065'),
(4105, 4, '083D', 'New', 2019, '1.2561'),
(4106, 6, '083D', 'New', 2019, '-1.0000'),
(4107, 7, '083D', 'New', 2019, '1.5726'),
(4108, 8, '083D', 'New', 2019, '1.3516'),
(4109, 9, '083D', 'New', 2019, '1.4178'),
(4110, 10, '083D', 'New', 2019, '0.7926'),
(4111, 14, '083D', 'New', 2019, '0.0788'),
(4112, 11, '083D', 'New', 2019, '-0.3512'),
(4113, 13, '083D', 'New', 2019, '-1.0000'),
(4114, 12, '083D', 'New', 2019, '-1.0000'),
(4115, 17, '083D', 'New', 2019, '1.4300'),
(4116, 15, '083D', 'New', 2019, '1.4075'),
(4117, 16, '083D', 'New', 2019, '1.4529'),
(4118, 19, '083D', 'New', 2019, '1.4132'),
(4119, 18, '083D', 'New', 2019, '0.3215'),
(4120, 20, '083D', 'New', 2019, '1.4610'),
(4121, 21, '083D', 'New', 2019, '-1.0000'),
(4122, 22, '083D', 'New', 2019, '1.3339'),
(4123, 23, '083D', 'New', 2019, '-1.0000'),
(4124, 25, '083D', 'New', 2019, '1.3976'),
(4125, 24, '083D', 'New', 2019, '1.2542'),
(4126, 1, '092K', 'New', 2019, '1.3674'),
(4127, 2, '092K', 'New', 2019, '1.4216'),
(4128, 3, '092K', 'New', 2019, '-1.0000'),
(4129, 5, '092K', 'New', 2019, '1.3808'),
(4130, 4, '092K', 'New', 2019, '1.4354'),
(4131, 6, '092K', 'New', 2019, '1.4187'),
(4132, 7, '092K', 'New', 2019, '-1.0000'),
(4133, 8, '092K', 'New', 2019, '-1.0000'),
(4134, 9, '092K', 'New', 2019, '1.5331'),
(4135, 10, '092K', 'New', 2019, '1.2460'),
(4136, 14, '092K', 'New', 2019, '1.1025'),
(4137, 11, '092K', 'New', 2019, '1.2703'),
(4138, 13, '092K', 'New', 2019, '1.0619'),
(4139, 12, '092K', 'New', 2019, '1.1585'),
(4140, 17, '092K', 'New', 2019, '1.4515'),
(4141, 15, '092K', 'New', 2019, '1.1018'),
(4142, 16, '092K', 'New', 2019, '-1.0000'),
(4143, 19, '092K', 'New', 2019, '-1.0000'),
(4144, 18, '092K', 'New', 2019, '1.4316'),
(4145, 20, '092K', 'New', 2019, '-1.0000'),
(4146, 21, '092K', 'New', 2019, '1.3868'),
(4147, 22, '092K', 'New', 2019, '1.4114'),
(4148, 23, '092K', 'New', 2019, '1.3930'),
(4149, 25, '092K', 'New', 2019, '-1.0000'),
(4150, 24, '092K', 'New', 2019, '1.4780'),
(4151, 1, '092L', 'New', 2019, '1.4001'),
(4152, 2, '092L', 'New', 2019, '1.4202'),
(4153, 3, '092L', 'New', 2019, '1.4043'),
(4154, 5, '092L', 'New', 2019, '-1.0000'),
(4155, 4, '092L', 'New', 2019, '1.4131'),
(4156, 6, '092L', 'New', 2019, '1.4333'),
(4157, 7, '092L', 'New', 2019, '1.4143'),
(4158, 8, '092L', 'New', 2019, '1.4518'),
(4159, 9, '092L', 'New', 2019, '1.4495'),
(4160, 10, '092L', 'New', 2019, '-1.0000'),
(4161, 14, '092L', 'New', 2019, '-1.0000'),
(4162, 11, '092L', 'New', 2019, '-1.0000'),
(4163, 13, '092L', 'New', 2019, '-1.0000'),
(4164, 12, '092L', 'New', 2019, '-1.0000'),
(4165, 17, '092L', 'New', 2019, '-1.0000'),
(4166, 15, '092L', 'New', 2019, '-1.0000'),
(4167, 16, '092L', 'New', 2019, '1.4279'),
(4168, 19, '092L', 'New', 2019, '1.4401'),
(4169, 18, '092L', 'New', 2019, '1.4108'),
(4170, 20, '092L', 'New', 2019, '1.3998'),
(4171, 21, '092L', 'New', 2019, '-1.0000'),
(4172, 22, '092L', 'New', 2019, '1.4156'),
(4173, 23, '092L', 'New', 2019, '1.4639'),
(4174, 25, '092L', 'New', 2019, '1.3988'),
(4175, 24, '092L', 'New', 2019, '1.4065'),
(4176, 1, '093F', 'New', 2019, '1.1558'),
(4177, 2, '093F', 'New', 2019, '1.1097'),
(4178, 3, '093F', 'New', 2019, '1.1511'),
(4179, 5, '093F', 'New', 2019, '0.9184'),
(4180, 4, '093F', 'New', 2019, '1.1939'),
(4181, 6, '093F', 'New', 2019, '1.0655'),
(4182, 7, '093F', 'New', 2019, '1.1305'),
(4183, 8, '093F', 'New', 2019, '1.2100'),
(4184, 9, '093F', 'New', 2019, '1.1486'),
(4185, 10, '093F', 'New', 2019, '0.9444'),
(4186, 14, '093F', 'New', 2019, '0.5394'),
(4187, 11, '093F', 'New', 2019, '0.7943'),
(4188, 13, '093F', 'New', 2019, '0.0510'),
(4189, 12, '093F', 'New', 2019, '0.8448'),
(4190, 17, '093F', 'New', 2019, '0.6766'),
(4191, 15, '093F', 'New', 2019, '0.8718'),
(4192, 16, '093F', 'New', 2019, '1.1685'),
(4193, 19, '093F', 'New', 2019, '1.1023'),
(4194, 18, '093F', 'New', 2019, '1.1904'),
(4195, 20, '093F', 'New', 2019, '1.0827'),
(4196, 21, '093F', 'New', 2019, '0.8647'),
(4197, 22, '093F', 'New', 2019, '1.1038'),
(4198, 23, '093F', 'New', 2019, '0.6401'),
(4199, 25, '093F', 'New', 2019, '1.2101'),
(4200, 24, '093F', 'New', 2019, '1.1187'),
(4201, 1, '094F', 'New', 2019, '1.2223'),
(4202, 2, '094F', 'New', 2019, '1.1786'),
(4203, 3, '094F', 'New', 2019, '1.1470'),
(4204, 5, '094F', 'New', 2019, '0.8796'),
(4205, 4, '094F', 'New', 2019, '1.1160'),
(4206, 6, '094F', 'New', 2019, '1.0125'),
(4207, 7, '094F', 'New', 2019, '1.1245'),
(4208, 8, '094F', 'New', 2019, '1.2196'),
(4209, 9, '094F', 'New', 2019, '0.9869'),
(4210, 10, '094F', 'New', 2019, '0.8205'),
(4211, 14, '094F', 'New', 2019, '0.2627'),
(4212, 11, '094F', 'New', 2019, '1.1213'),
(4213, 13, '094F', 'New', 2019, '0.0010'),
(4214, 12, '094F', 'New', 2019, '0.4077'),
(4215, 17, '094F', 'New', 2019, '0.7553'),
(4216, 15, '094F', 'New', 2019, '1.0345'),
(4217, 16, '094F', 'New', 2019, '0.9255'),
(4218, 19, '094F', 'New', 2019, '0.9312'),
(4219, 18, '094F', 'New', 2019, '1.1469'),
(4220, 20, '094F', 'New', 2019, '0.7580'),
(4221, 21, '094F', 'New', 2019, '0.6943'),
(4222, 22, '094F', 'New', 2019, '1.0990'),
(4223, 23, '094F', 'New', 2019, '0.7228'),
(4224, 25, '094F', 'New', 2019, '1.2015'),
(4225, 24, '094F', 'New', 2019, '0.9433'),
(4226, 1, '095F', 'New', 2019, '1.2613'),
(4227, 2, '095F', 'New', 2019, '1.3237'),
(4228, 3, '095F', 'New', 2019, '1.2193'),
(4229, 5, '095F', 'New', 2019, '1.1319'),
(4230, 4, '095F', 'New', 2019, '1.3226'),
(4231, 6, '095F', 'New', 2019, '0.9952'),
(4232, 7, '095F', 'New', 2019, '1.2745'),
(4233, 8, '095F', 'New', 2019, '1.2428'),
(4234, 9, '095F', 'New', 2019, '1.1954'),
(4235, 10, '095F', 'New', 2019, '1.0848'),
(4236, 14, '095F', 'New', 2019, '0.5866'),
(4237, 11, '095F', 'New', 2019, '0.3950'),
(4238, 13, '095F', 'New', 2019, '0.4252'),
(4239, 12, '095F', 'New', 2019, '0.6302'),
(4240, 17, '095F', 'New', 2019, '0.8601'),
(4241, 15, '095F', 'New', 2019, '1.0810'),
(4242, 16, '095F', 'New', 2019, '0.9946'),
(4243, 19, '095F', 'New', 2019, '1.1310'),
(4244, 18, '095F', 'New', 2019, '1.1098'),
(4245, 20, '095F', 'New', 2019, '0.8867'),
(4246, 21, '095F', 'New', 2019, '0.5419'),
(4247, 22, '095F', 'New', 2019, '1.1556'),
(4248, 23, '095F', 'New', 2019, '0.9783'),
(4249, 25, '095F', 'New', 2019, '1.2819'),
(4250, 24, '095F', 'New', 2019, '1.2754'),
(4251, 1, '064U', 'New', 2019, '1.1538'),
(4252, 2, '064U', 'New', 2019, '1.0279'),
(4253, 3, '064U', 'New', 2019, '1.1602'),
(4254, 5, '064U', 'New', 2019, '0.7451'),
(4255, 4, '064U', 'New', 2019, '1.1583'),
(4256, 6, '064U', 'New', 2019, '0.9953'),
(4257, 7, '064U', 'New', 2019, '1.1761'),
(4258, 8, '064U', 'New', 2019, '1.1957'),
(4259, 9, '064U', 'New', 2019, '1.0702'),
(4260, 10, '064U', 'New', 2019, '1.1948'),
(4261, 14, '064U', 'New', 2019, '0.9831'),
(4262, 11, '064U', 'New', 2019, '0.5420'),
(4263, 13, '064U', 'New', 2019, '0.3141'),
(4264, 12, '064U', 'New', 2019, '0.6655'),
(4265, 17, '064U', 'New', 2019, '1.0113'),
(4266, 15, '064U', 'New', 2019, '0.9670'),
(4267, 16, '064U', 'New', 2019, '1.1220'),
(4268, 19, '064U', 'New', 2019, '0.9253'),
(4269, 18, '064U', 'New', 2019, '1.0627'),
(4270, 20, '064U', 'New', 2019, '0.8430'),
(4271, 21, '064U', 'New', 2019, '0.6906'),
(4272, 22, '064U', 'New', 2019, '1.1567'),
(4273, 23, '064U', 'New', 2019, '0.8068'),
(4274, 25, '064U', 'New', 2019, '1.0738'),
(4275, 24, '064U', 'New', 2019, '1.1123'),
(4276, 1, '065U', 'New', 2019, '1.0544'),
(4277, 2, '065U', 'New', 2019, '1.2848'),
(4278, 3, '065U', 'New', 2019, '1.3691'),
(4279, 5, '065U', 'New', 2019, '0.9881'),
(4280, 4, '065U', 'New', 2019, '1.3333'),
(4281, 6, '065U', 'New', 2019, '0.8247'),
(4282, 7, '065U', 'New', 2019, '0.7346'),
(4283, 8, '065U', 'New', 2019, '1.3403'),
(4284, 9, '065U', 'New', 2019, '0.9787'),
(4285, 10, '065U', 'New', 2019, '1.3121'),
(4286, 14, '065U', 'New', 2019, '0.7322'),
(4287, 11, '065U', 'New', 2019, '0.3748'),
(4288, 13, '065U', 'New', 2019, '0.0421'),
(4289, 12, '065U', 'New', 2019, '0.8943'),
(4290, 17, '065U', 'New', 2019, '1.0349'),
(4291, 15, '065U', 'New', 2019, '1.0466'),
(4292, 16, '065U', 'New', 2019, '0.8206'),
(4293, 19, '065U', 'New', 2019, '0.7953'),
(4294, 18, '065U', 'New', 2019, '1.0140'),
(4295, 20, '065U', 'New', 2019, '0.6707'),
(4296, 21, '065U', 'New', 2019, '-1.0000'),
(4297, 22, '065U', 'New', 2019, '1.3483'),
(4298, 23, '065U', 'New', 2019, '0.6579'),
(4299, 25, '065U', 'New', 2019, '0.7664'),
(4300, 24, '065U', 'New', 2019, '0.7473'),
(4301, 1, '066U', 'New', 2019, '1.2795'),
(4302, 2, '066U', 'New', 2019, '1.2620'),
(4303, 3, '066U', 'New', 2019, '1.3263'),
(4304, 5, '066U', 'New', 2019, '1.2452'),
(4305, 4, '066U', 'New', 2019, '1.3287'),
(4306, 6, '066U', 'New', 2019, '1.0701'),
(4307, 7, '066U', 'New', 2019, '1.2839'),
(4308, 8, '066U', 'New', 2019, '1.3054'),
(4309, 9, '066U', 'New', 2019, '1.2692'),
(4310, 10, '066U', 'New', 2019, '0.9030'),
(4311, 14, '066U', 'New', 2019, '-1.0000'),
(4312, 11, '066U', 'New', 2019, '1.0713'),
(4313, 13, '066U', 'New', 2019, '1.0607'),
(4314, 12, '066U', 'New', 2019, '0.8108'),
(4315, 17, '066U', 'New', 2019, '1.1791'),
(4316, 15, '066U', 'New', 2019, '1.1201'),
(4317, 16, '066U', 'New', 2019, '1.0140'),
(4318, 19, '066U', 'New', 2019, '1.1500'),
(4319, 18, '066U', 'New', 2019, '1.3241'),
(4320, 20, '066U', 'New', 2019, '1.2996'),
(4321, 21, '066U', 'New', 2019, '0.9795'),
(4322, 22, '066U', 'New', 2019, '1.3110'),
(4323, 23, '066U', 'New', 2019, '1.1635'),
(4324, 25, '066U', 'New', 2019, '1.2587'),
(4325, 24, '066U', 'New', 2019, '1.2975'),
(4326, 1, '067U', 'New', 2019, '1.0109'),
(4327, 2, '067U', 'New', 2019, '0.9391'),
(4328, 3, '067U', 'New', 2019, '1.0234'),
(4329, 5, '067U', 'New', 2019, '0.7330'),
(4330, 4, '067U', 'New', 2019, '1.0167'),
(4331, 6, '067U', 'New', 2019, '0.7528'),
(4332, 7, '067U', 'New', 2019, '0.9840'),
(4333, 8, '067U', 'New', 2019, '1.0131'),
(4334, 9, '067U', 'New', 2019, '0.9652'),
(4335, 10, '067U', 'New', 2019, '0.9727'),
(4336, 14, '067U', 'New', 2019, '0.3062'),
(4337, 11, '067U', 'New', 2019, '0.3094'),
(4338, 13, '067U', 'New', 2019, '0.0701'),
(4339, 12, '067U', 'New', 2019, '0.7209'),
(4340, 17, '067U', 'New', 2019, '0.6654'),
(4341, 15, '067U', 'New', 2019, '0.9751'),
(4342, 16, '067U', 'New', 2019, '0.9363'),
(4343, 19, '067U', 'New', 2019, '0.7808'),
(4344, 18, '067U', 'New', 2019, '0.9778'),
(4345, 20, '067U', 'New', 2019, '0.7217'),
(4346, 21, '067U', 'New', 2019, '0.5363'),
(4347, 22, '067U', 'New', 2019, '0.8913'),
(4348, 23, '067U', 'New', 2019, '0.6478'),
(4349, 25, '067U', 'New', 2019, '1.0212'),
(4350, 24, '067U', 'New', 2019, '0.8673'),
(4351, 1, '073U', 'New', 2019, '1.0392'),
(4352, 2, '073U', 'New', 2019, '1.0696'),
(4353, 3, '073U', 'New', 2019, '1.0470'),
(4354, 5, '073U', 'New', 2019, '0.9186'),
(4355, 4, '073U', 'New', 2019, '1.0013'),
(4356, 6, '073U', 'New', 2019, '1.0010'),
(4357, 7, '073U', 'New', 2019, '1.0164'),
(4358, 8, '073U', 'New', 2019, '1.0631'),
(4359, 9, '073U', 'New', 2019, '0.9706'),
(4360, 10, '073U', 'New', 2019, '0.9349'),
(4361, 14, '073U', 'New', 2019, '0.2408'),
(4362, 11, '073U', 'New', 2019, '0.1292'),
(4363, 13, '073U', 'New', 2019, '-0.1770'),
(4364, 12, '073U', 'New', 2019, '0.4665'),
(4365, 17, '073U', 'New', 2019, '0.5120'),
(4366, 15, '073U', 'New', 2019, '0.8235'),
(4367, 16, '073U', 'New', 2019, '0.8365'),
(4368, 19, '073U', 'New', 2019, '0.7355'),
(4369, 18, '073U', 'New', 2019, '1.0314'),
(4370, 20, '073U', 'New', 2019, '0.7444'),
(4371, 21, '073U', 'New', 2019, '0.5929'),
(4372, 22, '073U', 'New', 2019, '0.9828'),
(4373, 23, '073U', 'New', 2019, '0.5819'),
(4374, 25, '073U', 'New', 2019, '1.0186'),
(4375, 24, '073U', 'New', 2019, '0.9177'),
(4376, 1, '074U', 'New', 2019, '1.0674'),
(4377, 2, '074U', 'New', 2019, '0.9886'),
(4378, 3, '074U', 'New', 2019, '1.0362'),
(4379, 5, '074U', 'New', 2019, '0.9687'),
(4380, 4, '074U', 'New', 2019, '0.9938'),
(4381, 6, '074U', 'New', 2019, '0.8579'),
(4382, 7, '074U', 'New', 2019, '1.0580'),
(4383, 8, '074U', 'New', 2019, '1.0493'),
(4384, 9, '074U', 'New', 2019, '1.0885'),
(4385, 10, '074U', 'New', 2019, '1.0682'),
(4386, 14, '074U', 'New', 2019, '0.7910'),
(4387, 11, '074U', 'New', 2019, '0.2227'),
(4388, 13, '074U', 'New', 2019, '0.4357'),
(4389, 12, '074U', 'New', 2019, '1.0098'),
(4390, 17, '074U', 'New', 2019, '1.0430'),
(4391, 15, '074U', 'New', 2019, '0.8435'),
(4392, 16, '074U', 'New', 2019, '0.8855'),
(4393, 19, '074U', 'New', 2019, '0.9053'),
(4394, 18, '074U', 'New', 2019, '1.0348'),
(4395, 20, '074U', 'New', 2019, '1.0152'),
(4396, 21, '074U', 'New', 2019, '0.9538'),
(4397, 22, '074U', 'New', 2019, '1.0574'),
(4398, 23, '074U', 'New', 2019, '0.9425'),
(4399, 25, '074U', 'New', 2019, '1.0087'),
(4400, 24, '074U', 'New', 2019, '1.0521'),
(4401, 1, '075U', 'New', 2019, '1.2028'),
(4402, 2, '075U', 'New', 2019, '1.0682'),
(4403, 3, '075U', 'New', 2019, '0.9890'),
(4404, 5, '075U', 'New', 2019, '1.0379'),
(4405, 4, '075U', 'New', 2019, '1.1709'),
(4406, 6, '075U', 'New', 2019, '1.1240'),
(4407, 7, '075U', 'New', 2019, '1.1389'),
(4408, 8, '075U', 'New', 2019, '1.1986'),
(4409, 9, '075U', 'New', 2019, '1.2059'),
(4410, 10, '075U', 'New', 2019, '0.9965'),
(4411, 14, '075U', 'New', 2019, '0.3622'),
(4412, 11, '075U', 'New', 2019, '1.2378'),
(4413, 13, '075U', 'New', 2019, '0.9443'),
(4414, 12, '075U', 'New', 2019, '0.9411'),
(4415, 17, '075U', 'New', 2019, '1.1808'),
(4416, 15, '075U', 'New', 2019, '1.0921'),
(4417, 16, '075U', 'New', 2019, '0.9782'),
(4418, 19, '075U', 'New', 2019, '0.6492'),
(4419, 18, '075U', 'New', 2019, '1.1190'),
(4420, 20, '075U', 'New', 2019, '1.2208'),
(4421, 21, '075U', 'New', 2019, '1.0707'),
(4422, 22, '075U', 'New', 2019, '1.1793'),
(4423, 23, '075U', 'New', 2019, '1.0247'),
(4424, 25, '075U', 'New', 2019, '1.1363'),
(4425, 24, '075U', 'New', 2019, '1.1830'),
(4426, 1, '076U', 'New', 2019, '1.1181'),
(4427, 2, '076U', 'New', 2019, '1.1161'),
(4428, 3, '076U', 'New', 2019, '1.1475'),
(4429, 5, '076U', 'New', 2019, '1.1172'),
(4430, 4, '076U', 'New', 2019, '1.1332'),
(4431, 6, '076U', 'New', 2019, '1.0141'),
(4432, 7, '076U', 'New', 2019, '1.1098'),
(4433, 8, '076U', 'New', 2019, '1.0959'),
(4434, 9, '076U', 'New', 2019, '1.0799'),
(4435, 10, '076U', 'New', 2019, '1.1183'),
(4436, 14, '076U', 'New', 2019, '0.8090'),
(4437, 11, '076U', 'New', 2019, '0.7166'),
(4438, 13, '076U', 'New', 2019, '0.0458'),
(4439, 12, '076U', 'New', 2019, '0.6336'),
(4440, 17, '076U', 'New', 2019, '1.1368'),
(4441, 15, '076U', 'New', 2019, '1.1433'),
(4442, 16, '076U', 'New', 2019, '1.0077'),
(4443, 19, '076U', 'New', 2019, '0.8015'),
(4444, 18, '076U', 'New', 2019, '1.1222'),
(4445, 20, '076U', 'New', 2019, '0.9725'),
(4446, 21, '076U', 'New', 2019, '1.0755'),
(4447, 22, '076U', 'New', 2019, '1.1055'),
(4448, 23, '076U', 'New', 2019, '0.5773'),
(4449, 25, '076U', 'New', 2019, '1.0044'),
(4450, 24, '076U', 'New', 2019, '1.1599'),
(4451, 1, '088U', 'New', 2019, '0.9878'),
(4452, 2, '088U', 'New', 2019, '0.9798'),
(4453, 3, '088U', 'New', 2019, '1.0296'),
(4454, 5, '088U', 'New', 2019, '0.7288'),
(4455, 4, '088U', 'New', 2019, '1.0304'),
(4456, 6, '088U', 'New', 2019, '0.8021'),
(4457, 7, '088U', 'New', 2019, '0.9972'),
(4458, 8, '088U', 'New', 2019, '1.0187'),
(4459, 9, '088U', 'New', 2019, '0.9510'),
(4460, 10, '088U', 'New', 2019, '0.8998'),
(4461, 14, '088U', 'New', 2019, '0.2403'),
(4462, 11, '088U', 'New', 2019, '0.2310'),
(4463, 13, '088U', 'New', 2019, '-0.0499'),
(4464, 12, '088U', 'New', 2019, '0.4077'),
(4465, 17, '088U', 'New', 2019, '0.6125'),
(4466, 15, '088U', 'New', 2019, '0.8067'),
(4467, 16, '088U', 'New', 2019, '0.8618'),
(4468, 19, '088U', 'New', 2019, '0.9214'),
(4469, 18, '088U', 'New', 2019, '1.0081'),
(4470, 20, '088U', 'New', 2019, '0.6648'),
(4471, 21, '088U', 'New', 2019, '0.6559'),
(4472, 22, '088U', 'New', 2019, '0.9285'),
(4473, 23, '088U', 'New', 2019, '0.6071'),
(4474, 25, '088U', 'New', 2019, '1.0110'),
(4475, 24, '088U', 'New', 2019, '0.8970'),
(4476, 1, '089U', 'New', 2019, '0.9699'),
(4477, 2, '089U', 'New', 2019, '0.9825'),
(4478, 3, '089U', 'New', 2019, '0.9956'),
(4479, 5, '089U', 'New', 2019, '0.6852'),
(4480, 4, '089U', 'New', 2019, '0.9527'),
(4481, 6, '089U', 'New', 2019, '0.6460'),
(4482, 7, '089U', 'New', 2019, '0.9821'),
(4483, 8, '089U', 'New', 2019, '0.9832'),
(4484, 9, '089U', 'New', 2019, '0.9639'),
(4485, 10, '089U', 'New', 2019, '0.9078'),
(4486, 14, '089U', 'New', 2019, '0.5893'),
(4487, 11, '089U', 'New', 2019, '0.2029'),
(4488, 13, '089U', 'New', 2019, '-0.0188'),
(4489, 12, '089U', 'New', 2019, '0.3182'),
(4490, 17, '089U', 'New', 2019, '1.0260'),
(4491, 15, '089U', 'New', 2019, '0.9949'),
(4492, 16, '089U', 'New', 2019, '0.7976'),
(4493, 19, '089U', 'New', 2019, '0.7039'),
(4494, 18, '089U', 'New', 2019, '1.0154'),
(4495, 20, '089U', 'New', 2019, '0.9000'),
(4496, 21, '089U', 'New', 2019, '0.4261'),
(4497, 22, '089U', 'New', 2019, '0.9014'),
(4498, 23, '089U', 'New', 2019, '0.5371'),
(4499, 25, '089U', 'New', 2019, '0.9415'),
(4500, 24, '089U', 'New', 2019, '0.8649'),
(4501, 1, '090U', 'New', 2019, '1.2746'),
(4502, 2, '090U', 'New', 2019, '1.2764'),
(4503, 3, '090U', 'New', 2019, '1.2587'),
(4504, 5, '090U', 'New', 2019, '1.2186'),
(4505, 4, '090U', 'New', 2019, '1.2539'),
(4506, 6, '090U', 'New', 2019, '1.0340'),
(4507, 7, '090U', 'New', 2019, '1.2870'),
(4508, 8, '090U', 'New', 2019, '1.2668'),
(4509, 9, '090U', 'New', 2019, '1.3240'),
(4510, 10, '090U', 'New', 2019, '1.0303'),
(4511, 14, '090U', 'New', 2019, '0.4734'),
(4512, 11, '090U', 'New', 2019, '0.8757'),
(4513, 13, '090U', 'New', 2019, '-1.0000'),
(4514, 12, '090U', 'New', 2019, '-0.0329'),
(4515, 17, '090U', 'New', 2019, '0.9773'),
(4516, 15, '090U', 'New', 2019, '1.0805'),
(4517, 16, '090U', 'New', 2019, '0.7189'),
(4518, 19, '090U', 'New', 2019, '0.7001'),
(4519, 18, '090U', 'New', 2019, '1.2680'),
(4520, 20, '090U', 'New', 2019, '1.1999'),
(4521, 21, '090U', 'New', 2019, '-0.1094'),
(4522, 22, '090U', 'New', 2019, '1.6070'),
(4523, 23, '090U', 'New', 2019, '1.3113'),
(4524, 25, '090U', 'New', 2019, '1.2311'),
(4525, 24, '090U', 'New', 2019, '1.2925'),
(4526, 1, '102A', 'New', 2019, '1.9380'),
(4527, 2, '102A', 'New', 2019, '1.9160'),
(4528, 3, '102A', 'New', 2019, '1.8656'),
(4529, 5, '102A', 'New', 2019, '1.8989'),
(4530, 4, '102A', 'New', 2019, '1.9414'),
(4531, 6, '102A', 'New', 2019, '-1.0000'),
(4532, 7, '102A', 'New', 2019, '1.8916'),
(4533, 8, '102A', 'New', 2019, '1.8942'),
(4534, 9, '102A', 'New', 2019, '1.9564'),
(4535, 10, '102A', 'New', 2019, '1.8955'),
(4536, 14, '102A', 'New', 2019, '-1.0000'),
(4537, 11, '102A', 'New', 2019, '-1.0000'),
(4538, 13, '102A', 'New', 2019, '-1.0000'),
(4539, 12, '102A', 'New', 2019, '-1.0000'),
(4540, 17, '102A', 'New', 2019, '-1.0000'),
(4541, 15, '102A', 'New', 2019, '1.9015'),
(4542, 16, '102A', 'New', 2019, '1.8673'),
(4543, 19, '102A', 'New', 2019, '2.0381'),
(4544, 18, '102A', 'New', 2019, '1.8643'),
(4545, 20, '102A', 'New', 2019, '1.8853'),
(4546, 21, '102A', 'New', 2019, '-1.0000'),
(4547, 22, '102A', 'New', 2019, '1.9650'),
(4548, 23, '102A', 'New', 2019, '1.8963'),
(4549, 25, '102A', 'New', 2019, '1.9629'),
(4550, 24, '102A', 'New', 2019, '1.9642'),
(4551, 1, '102C', 'New', 2019, '2.0720'),
(4552, 2, '102C', 'New', 2019, '2.1033'),
(4553, 3, '102C', 'New', 2019, '2.0949'),
(4554, 5, '102C', 'New', 2019, '2.1169'),
(4555, 4, '102C', 'New', 2019, '2.2437'),
(4556, 6, '102C', 'New', 2019, '2.1146'),
(4557, 7, '102C', 'New', 2019, '2.0850'),
(4558, 8, '102C', 'New', 2019, '2.0975'),
(4559, 9, '102C', 'New', 2019, '2.0848'),
(4560, 10, '102C', 'New', 2019, '2.1804'),
(4561, 14, '102C', 'New', 2019, '-1.0000'),
(4562, 11, '102C', 'New', 2019, '-1.0000'),
(4563, 13, '102C', 'New', 2019, '-1.0000'),
(4564, 12, '102C', 'New', 2019, '-1.0000'),
(4565, 17, '102C', 'New', 2019, '2.0885'),
(4566, 15, '102C', 'New', 2019, '2.0586'),
(4567, 16, '102C', 'New', 2019, '2.0855'),
(4568, 19, '102C', 'New', 2019, '2.1725'),
(4569, 18, '102C', 'New', 2019, '2.0690'),
(4570, 20, '102C', 'New', 2019, '2.0982'),
(4571, 21, '102C', 'New', 2019, '-1.0000'),
(4572, 22, '102C', 'New', 2019, '2.1939'),
(4573, 23, '102C', 'New', 2019, '2.2774'),
(4574, 25, '102C', 'New', 2019, '2.1225'),
(4575, 24, '102C', 'New', 2019, '2.0780'),
(4576, 1, '102D', 'New', 2019, '1.7266'),
(4577, 2, '102D', 'New', 2019, '1.7228'),
(4578, 3, '102D', 'New', 2019, '1.7282'),
(4579, 5, '102D', 'New', 2019, '1.7899'),
(4580, 4, '102D', 'New', 2019, '1.7858'),
(4581, 6, '102D', 'New', 2019, '1.7709'),
(4582, 7, '102D', 'New', 2019, '1.8320'),
(4583, 8, '102D', 'New', 2019, '1.7236'),
(4584, 9, '102D', 'New', 2019, '1.7440'),
(4585, 10, '102D', 'New', 2019, '2.0784'),
(4586, 14, '102D', 'New', 2019, '1.8172'),
(4587, 11, '102D', 'New', 2019, '-1.0000'),
(4588, 13, '102D', 'New', 2019, '-1.0000'),
(4589, 12, '102D', 'New', 2019, '1.7405'),
(4590, 17, '102D', 'New', 2019, '-1.0000'),
(4591, 15, '102D', 'New', 2019, '1.8293'),
(4592, 16, '102D', 'New', 2019, '-1.0000'),
(4593, 19, '102D', 'New', 2019, '2.3112'),
(4594, 18, '102D', 'New', 2019, '1.7179'),
(4595, 20, '102D', 'New', 2019, '1.7454'),
(4596, 21, '102D', 'New', 2019, '1.8043'),
(4597, 22, '102D', 'New', 2019, '1.7996'),
(4598, 23, '102D', 'New', 2019, '1.7410'),
(4599, 25, '102D', 'New', 2019, '1.7760'),
(4600, 24, '102D', 'New', 2019, '1.7572'),
(4601, 1, '102E', 'New', 2019, '1.1474'),
(4602, 2, '102E', 'New', 2019, '1.1757'),
(4603, 3, '102E', 'New', 2019, '1.1675'),
(4604, 5, '102E', 'New', 2019, '1.2834'),
(4605, 4, '102E', 'New', 2019, '1.0927'),
(4606, 6, '102E', 'New', 2019, '0.7511'),
(4607, 7, '102E', 'New', 2019, '0.9946'),
(4608, 8, '102E', 'New', 2019, '-1.0000'),
(4609, 9, '102E', 'New', 2019, '-1.0000'),
(4610, 10, '102E', 'New', 2019, '0.9132'),
(4611, 14, '102E', 'New', 2019, '1.2481'),
(4612, 11, '102E', 'New', 2019, '0.4512'),
(4613, 13, '102E', 'New', 2019, '1.1173'),
(4614, 12, '102E', 'New', 2019, '0.3291'),
(4615, 17, '102E', 'New', 2019, '0.9334'),
(4616, 15, '102E', 'New', 2019, '0.9566'),
(4617, 16, '102E', 'New', 2019, '0.9953'),
(4618, 19, '102E', 'New', 2019, '0.9963'),
(4619, 18, '102E', 'New', 2019, '1.1995'),
(4620, 20, '102E', 'New', 2019, '1.2720'),
(4621, 21, '102E', 'New', 2019, '0.9213'),
(4622, 22, '102E', 'New', 2019, '1.0479'),
(4623, 23, '102E', 'New', 2019, '1.0613'),
(4624, 25, '102E', 'New', 2019, '1.1509'),
(4625, 24, '102E', 'New', 2019, '1.0983'),
(4626, 1, '102F', 'New', 2019, '1.3594'),
(4627, 2, '102F', 'New', 2019, '1.3575'),
(4628, 3, '102F', 'New', 2019, '1.3808'),
(4629, 5, '102F', 'New', 2019, '1.5856'),
(4630, 4, '102F', 'New', 2019, '1.3729'),
(4631, 6, '102F', 'New', 2019, '1.3656'),
(4632, 7, '102F', 'New', 2019, '1.3601'),
(4633, 8, '102F', 'New', 2019, '1.4014'),
(4634, 9, '102F', 'New', 2019, '1.4580'),
(4635, 10, '102F', 'New', 2019, '-1.0000'),
(4636, 14, '102F', 'New', 2019, '1.4047'),
(4637, 11, '102F', 'New', 2019, '-1.0000'),
(4638, 13, '102F', 'New', 2019, '1.5199'),
(4639, 12, '102F', 'New', 2019, '-1.0000'),
(4640, 17, '102F', 'New', 2019, '1.4477'),
(4641, 15, '102F', 'New', 2019, '1.6413'),
(4642, 16, '102F', 'New', 2019, '1.3883'),
(4643, 19, '102F', 'New', 2019, '1.6147'),
(4644, 18, '102F', 'New', 2019, '1.3920'),
(4645, 20, '102F', 'New', 2019, '1.4358'),
(4646, 21, '102F', 'New', 2019, '1.5452'),
(4647, 22, '102F', 'New', 2019, '-1.0000'),
(4648, 23, '102F', 'New', 2019, '1.3999'),
(4649, 25, '102F', 'New', 2019, '1.3791'),
(4650, 24, '102F', 'New', 2019, '1.3623'),
(4651, 1, '102K', 'New', 2019, '1.1353'),
(4652, 2, '102K', 'New', 2019, '1.1323'),
(4653, 3, '102K', 'New', 2019, '1.1810'),
(4654, 5, '102K', 'New', 2019, '1.1760'),
(4655, 4, '102K', 'New', 2019, '1.1394'),
(4656, 6, '102K', 'New', 2019, '1.1459'),
(4657, 7, '102K', 'New', 2019, '1.1521'),
(4658, 8, '102K', 'New', 2019, '-1.0000'),
(4659, 9, '102K', 'New', 2019, '1.1363'),
(4660, 10, '102K', 'New', 2019, '1.1853'),
(4661, 14, '102K', 'New', 2019, '1.3519'),
(4662, 11, '102K', 'New', 2019, '-1.0000'),
(4663, 13, '102K', 'New', 2019, '-1.0000'),
(4664, 12, '102K', 'New', 2019, '-1.0000'),
(4665, 17, '102K', 'New', 2019, '-1.0000'),
(4666, 15, '102K', 'New', 2019, '1.1523'),
(4667, 16, '102K', 'New', 2019, '1.2714'),
(4668, 19, '102K', 'New', 2019, '1.1617'),
(4669, 18, '102K', 'New', 2019, '1.2432'),
(4670, 20, '102K', 'New', 2019, '1.2310'),
(4671, 21, '102K', 'New', 2019, '-1.0000'),
(4672, 22, '102K', 'New', 2019, '1.1571'),
(4673, 23, '102K', 'New', 2019, '1.1515'),
(4674, 25, '102K', 'New', 2019, '1.2367'),
(4675, 24, '102K', 'New', 2019, '1.1483'),
(4676, 1, '102L', 'New', 2019, '1.1575'),
(4677, 2, '102L', 'New', 2019, '1.1498'),
(4678, 3, '102L', 'New', 2019, '1.1560'),
(4679, 5, '102L', 'New', 2019, '-1.0000'),
(4680, 4, '102L', 'New', 2019, '1.1942'),
(4681, 6, '102L', 'New', 2019, '1.1564'),
(4682, 7, '102L', 'New', 2019, '1.1506'),
(4683, 8, '102L', 'New', 2019, '1.4086'),
(4684, 9, '102L', 'New', 2019, '1.1517'),
(4685, 10, '102L', 'New', 2019, '1.3223'),
(4686, 14, '102L', 'New', 2019, '-1.0000'),
(4687, 11, '102L', 'New', 2019, '-1.0000'),
(4688, 13, '102L', 'New', 2019, '-1.0000'),
(4689, 12, '102L', 'New', 2019, '1.2526'),
(4690, 17, '102L', 'New', 2019, '-1.0000'),
(4691, 15, '102L', 'New', 2019, '1.1585'),
(4692, 16, '102L', 'New', 2019, '-1.0000'),
(4693, 19, '102L', 'New', 2019, '-1.0000'),
(4694, 18, '102L', 'New', 2019, '1.2092'),
(4695, 20, '102L', 'New', 2019, '-1.0000'),
(4696, 21, '102L', 'New', 2019, '1.5662'),
(4697, 22, '102L', 'New', 2019, '1.2487'),
(4698, 23, '102L', 'New', 2019, '1.2229'),
(4699, 25, '102L', 'New', 2019, '1.1484'),
(4700, 24, '102L', 'New', 2019, '1.2424'),
(4701, 1, '102M', 'New', 2019, '1.3344'),
(4702, 2, '102M', 'New', 2019, '1.3330'),
(4703, 3, '102M', 'New', 2019, '1.3548'),
(4704, 5, '102M', 'New', 2019, '1.3868'),
(4705, 4, '102M', 'New', 2019, '1.3526'),
(4706, 6, '102M', 'New', 2019, '1.3722'),
(4707, 7, '102M', 'New', 2019, '1.3511'),
(4708, 8, '102M', 'New', 2019, '1.4192'),
(4709, 9, '102M', 'New', 2019, '1.4627'),
(4710, 10, '102M', 'New', 2019, '-1.0000'),
(4711, 14, '102M', 'New', 2019, '-1.0000'),
(4712, 11, '102M', 'New', 2019, '-1.0000'),
(4713, 13, '102M', 'New', 2019, '-1.0000'),
(4714, 12, '102M', 'New', 2019, '1.5814'),
(4715, 17, '102M', 'New', 2019, '-1.0000'),
(4716, 15, '102M', 'New', 2019, '1.5341'),
(4717, 16, '102M', 'New', 2019, '1.3430'),
(4718, 19, '102M', 'New', 2019, '1.3278'),
(4719, 18, '102M', 'New', 2019, '1.3429'),
(4720, 20, '102M', 'New', 2019, '1.3479'),
(4721, 21, '102M', 'New', 2019, '1.3624'),
(4722, 22, '102M', 'New', 2019, '1.3616'),
(4723, 23, '102M', 'New', 2019, '1.3515'),
(4724, 25, '102M', 'New', 2019, '1.4004'),
(4725, 24, '102M', 'New', 2019, '1.3282'),
(4726, 1, '102U', 'New', 2019, '1.1115'),
(4727, 2, '102U', 'New', 2019, '1.1331'),
(4728, 3, '102U', 'New', 2019, '1.8827'),
(4729, 5, '102U', 'New', 2019, '1.1186'),
(4730, 4, '102U', 'New', 2019, '1.0936'),
(4731, 6, '102U', 'New', 2019, '0.8130'),
(4732, 7, '102U', 'New', 2019, '0.9818'),
(4733, 8, '102U', 'New', 2019, '-1.0000'),
(4734, 9, '102U', 'New', 2019, '1.0000'),
(4735, 10, '102U', 'New', 2019, '0.9512'),
(4736, 14, '102U', 'New', 2019, '1.0649'),
(4737, 11, '102U', 'New', 2019, '-1.0000'),
(4738, 13, '102U', 'New', 2019, '-1.0000'),
(4739, 12, '102U', 'New', 2019, '-1.0000'),
(4740, 17, '102U', 'New', 2019, '0.9145'),
(4741, 15, '102U', 'New', 2019, '0.9740'),
(4742, 16, '102U', 'New', 2019, '1.0615'),
(4743, 19, '102U', 'New', 2019, '0.9948'),
(4744, 18, '102U', 'New', 2019, '1.2011'),
(4745, 20, '102U', 'New', 2019, '1.3256'),
(4746, 21, '102U', 'New', 2019, '0.9329'),
(4747, 22, '102U', 'New', 2019, '1.0763'),
(4748, 23, '102U', 'New', 2019, '0.9559'),
(4749, 25, '102U', 'New', 2019, '1.2020'),
(4750, 24, '102U', 'New', 2019, '1.0512'),
(4751, 1, '103A', 'New', 2019, '1.7113'),
(4752, 2, '103A', 'New', 2019, '1.7376'),
(4753, 3, '103A', 'New', 2019, '1.6961'),
(4754, 5, '103A', 'New', 2019, '1.7774'),
(4755, 4, '103A', 'New', 2019, '1.7054'),
(4756, 6, '103A', 'New', 2019, '1.7054'),
(4757, 7, '103A', 'New', 2019, '1.7090'),
(4758, 8, '103A', 'New', 2019, '1.7678'),
(4759, 9, '103A', 'New', 2019, '1.7074'),
(4760, 10, '103A', 'New', 2019, '1.7135'),
(4761, 14, '103A', 'New', 2019, '1.7980'),
(4762, 11, '103A', 'New', 2019, '1.8082'),
(4763, 13, '103A', 'New', 2019, '-1.0000'),
(4764, 12, '103A', 'New', 2019, '1.7420'),
(4765, 17, '103A', 'New', 2019, '1.7979'),
(4766, 15, '103A', 'New', 2019, '1.8564'),
(4767, 16, '103A', 'New', 2019, '1.7436'),
(4768, 19, '103A', 'New', 2019, '1.9023'),
(4769, 18, '103A', 'New', 2019, '1.6970'),
(4770, 20, '103A', 'New', 2019, '1.7211'),
(4771, 21, '103A', 'New', 2019, '-1.0000'),
(4772, 22, '103A', 'New', 2019, '1.7070'),
(4773, 23, '103A', 'New', 2019, '1.7021'),
(4774, 25, '103A', 'New', 2019, '1.6987'),
(4775, 24, '103A', 'New', 2019, '1.7479'),
(4776, 1, '103C', 'New', 2019, '1.9091'),
(4777, 2, '103C', 'New', 2019, '1.9102'),
(4778, 3, '103C', 'New', 2019, '1.9654'),
(4779, 5, '103C', 'New', 2019, '1.9244'),
(4780, 4, '103C', 'New', 2019, '2.0050'),
(4781, 6, '103C', 'New', 2019, '1.9929'),
(4782, 7, '103C', 'New', 2019, '1.9129'),
(4783, 8, '103C', 'New', 2019, '2.1109'),
(4784, 9, '103C', 'New', 2019, '1.9099'),
(4785, 10, '103C', 'New', 2019, '2.0031'),
(4786, 14, '103C', 'New', 2019, '-1.0000'),
(4787, 11, '103C', 'New', 2019, '-1.0000'),
(4788, 13, '103C', 'New', 2019, '-1.0000'),
(4789, 12, '103C', 'New', 2019, '-1.0000'),
(4790, 17, '103C', 'New', 2019, '2.0233'),
(4791, 15, '103C', 'New', 2019, '2.0008'),
(4792, 16, '103C', 'New', 2019, '2.1486'),
(4793, 19, '103C', 'New', 2019, '1.9677'),
(4794, 18, '103C', 'New', 2019, '1.9665'),
(4795, 20, '103C', 'New', 2019, '1.9493'),
(4796, 21, '103C', 'New', 2019, '-1.0000'),
(4797, 22, '103C', 'New', 2019, '1.9237'),
(4798, 23, '103C', 'New', 2019, '2.0855'),
(4799, 25, '103C', 'New', 2019, '1.9125'),
(4800, 24, '103C', 'New', 2019, '1.9292'),
(4801, 1, '103E', 'New', 2019, '0.8732'),
(4802, 2, '103E', 'New', 2019, '0.8516'),
(4803, 3, '103E', 'New', 2019, '0.8684'),
(4804, 5, '103E', 'New', 2019, '1.1092'),
(4805, 4, '103E', 'New', 2019, '1.1028'),
(4806, 6, '103E', 'New', 2019, '0.8461'),
(4807, 7, '103E', 'New', 2019, '-1.0000'),
(4808, 8, '103E', 'New', 2019, '1.1269'),
(4809, 9, '103E', 'New', 2019, '1.1660'),
(4810, 10, '103E', 'New', 2019, '0.8937'),
(4811, 14, '103E', 'New', 2019, '-1.0000'),
(4812, 11, '103E', 'New', 2019, '0.9985'),
(4813, 13, '103E', 'New', 2019, '-1.0000'),
(4814, 12, '103E', 'New', 2019, '0.8953'),
(4815, 17, '103E', 'New', 2019, '1.0619'),
(4816, 15, '103E', 'New', 2019, '1.2006'),
(4817, 16, '103E', 'New', 2019, '0.9709'),
(4818, 19, '103E', 'New', 2019, '0.8721'),
(4819, 18, '103E', 'New', 2019, '1.0280'),
(4820, 20, '103E', 'New', 2019, '1.1100'),
(4821, 21, '103E', 'New', 2019, '0.8827'),
(4822, 22, '103E', 'New', 2019, '1.0008'),
(4823, 23, '103E', 'New', 2019, '1.0790'),
(4824, 25, '103E', 'New', 2019, '1.2131'),
(4825, 24, '103E', 'New', 2019, '1.0632'),
(4826, 1, '103F', 'New', 2019, '1.4797'),
(4827, 2, '103F', 'New', 2019, '1.5670'),
(4828, 3, '103F', 'New', 2019, '1.4755'),
(4829, 5, '103F', 'New', 2019, '-1.0000'),
(4830, 4, '103F', 'New', 2019, '1.6596'),
(4831, 6, '103F', 'New', 2019, '1.6639'),
(4832, 7, '103F', 'New', 2019, '1.5025'),
(4833, 8, '103F', 'New', 2019, '1.5339'),
(4834, 9, '103F', 'New', 2019, '1.5876'),
(4835, 10, '103F', 'New', 2019, '-1.0000'),
(4836, 14, '103F', 'New', 2019, '-1.0000'),
(4837, 11, '103F', 'New', 2019, '-1.0000'),
(4838, 13, '103F', 'New', 2019, '-1.0000'),
(4839, 12, '103F', 'New', 2019, '-1.0000'),
(4840, 17, '103F', 'New', 2019, '-1.0000'),
(4841, 15, '103F', 'New', 2019, '-1.0000'),
(4842, 16, '103F', 'New', 2019, '1.4781'),
(4843, 19, '103F', 'New', 2019, '-1.0000'),
(4844, 18, '103F', 'New', 2019, '1.5049'),
(4845, 20, '103F', 'New', 2019, '1.6742'),
(4846, 21, '103F', 'New', 2019, '-1.0000'),
(4847, 22, '103F', 'New', 2019, '1.5336'),
(4848, 23, '103F', 'New', 2019, '1.4819'),
(4849, 25, '103F', 'New', 2019, '1.5177'),
(4850, 24, '103F', 'New', 2019, '1.4945'),
(4851, 1, '103H', 'New', 2019, '0.7074'),
(4852, 2, '103H', 'New', 2019, '0.7511'),
(4853, 3, '103H', 'New', 2019, '0.8343'),
(4854, 5, '103H', 'New', 2019, '1.1719'),
(4855, 4, '103H', 'New', 2019, '1.1172'),
(4856, 6, '103H', 'New', 2019, '0.7344'),
(4857, 7, '103H', 'New', 2019, '1.1257'),
(4858, 8, '103H', 'New', 2019, '-1.0000'),
(4859, 9, '103H', 'New', 2019, '1.0714'),
(4860, 10, '103H', 'New', 2019, '0.7781'),
(4861, 14, '103H', 'New', 2019, '0.6073'),
(4862, 11, '103H', 'New', 2019, '-1.0000'),
(4863, 13, '103H', 'New', 2019, '0.6262'),
(4864, 12, '103H', 'New', 2019, '0.6481'),
(4865, 17, '103H', 'New', 2019, '1.0647'),
(4866, 15, '103H', 'New', 2019, '1.0899'),
(4867, 16, '103H', 'New', 2019, '0.9851'),
(4868, 19, '103H', 'New', 2019, '0.7893'),
(4869, 18, '103H', 'New', 2019, '1.1120'),
(4870, 20, '103H', 'New', 2019, '1.1609'),
(4871, 21, '103H', 'New', 2019, '0.8314'),
(4872, 22, '103H', 'New', 2019, '1.0522'),
(4873, 23, '103H', 'New', 2019, '1.0919'),
(4874, 25, '103H', 'New', 2019, '-1.0000'),
(4875, 24, '103H', 'New', 2019, '1.0351'),
(4876, 1, '103J', 'New', 2019, '0.8734'),
(4877, 2, '103J', 'New', 2019, '0.8575'),
(4878, 3, '103J', 'New', 2019, '0.8556'),
(4879, 5, '103J', 'New', 2019, '1.1959'),
(4880, 4, '103J', 'New', 2019, '1.0966'),
(4881, 6, '103J', 'New', 2019, '0.9248'),
(4882, 7, '103J', 'New', 2019, '1.0320'),
(4883, 8, '103J', 'New', 2019, '1.1090'),
(4884, 9, '103J', 'New', 2019, '1.0888'),
(4885, 10, '103J', 'New', 2019, '1.1274'),
(4886, 14, '103J', 'New', 2019, '-1.0000'),
(4887, 11, '103J', 'New', 2019, '1.0334'),
(4888, 13, '103J', 'New', 2019, '0.8803'),
(4889, 12, '103J', 'New', 2019, '-1.0000'),
(4890, 17, '103J', 'New', 2019, '-1.0000'),
(4891, 15, '103J', 'New', 2019, '1.0248'),
(4892, 16, '103J', 'New', 2019, '0.9808'),
(4893, 19, '103J', 'New', 2019, '-1.0000'),
(4894, 18, '103J', 'New', 2019, '1.1368'),
(4895, 20, '103J', 'New', 2019, '1.1869'),
(4896, 21, '103J', 'New', 2019, '1.0447'),
(4897, 22, '103J', 'New', 2019, '1.0096'),
(4898, 23, '103J', 'New', 2019, '1.0536'),
(4899, 25, '103J', 'New', 2019, '-1.0000'),
(4900, 24, '103J', 'New', 2019, '1.0076'),
(4901, 1, '103K', 'New', 2019, '1.2067'),
(4902, 2, '103K', 'New', 2019, '1.2062'),
(4903, 3, '103K', 'New', 2019, '1.3058'),
(4904, 5, '103K', 'New', 2019, '1.2507'),
(4905, 4, '103K', 'New', 2019, '1.2245'),
(4906, 6, '103K', 'New', 2019, '1.2286'),
(4907, 7, '103K', 'New', 2019, '1.2637'),
(4908, 8, '103K', 'New', 2019, '-1.0000'),
(4909, 9, '103K', 'New', 2019, '1.2246');
INSERT INTO `zscoretable` (`z_id`, `district_id`, `unicode`, `syllabus`, `year`, `z_score`) VALUES
(4910, 10, '103K', 'New', 2019, '1.2848'),
(4911, 14, '103K', 'New', 2019, '-1.0000'),
(4912, 11, '103K', 'New', 2019, '1.2153'),
(4913, 13, '103K', 'New', 2019, '-1.0000'),
(4914, 12, '103K', 'New', 2019, '-1.0000'),
(4915, 17, '103K', 'New', 2019, '1.2730'),
(4916, 15, '103K', 'New', 2019, '1.2228'),
(4917, 16, '103K', 'New', 2019, '1.2121'),
(4918, 19, '103K', 'New', 2019, '1.2608'),
(4919, 18, '103K', 'New', 2019, '1.2074'),
(4920, 20, '103K', 'New', 2019, '1.2612'),
(4921, 21, '103K', 'New', 2019, '1.2314'),
(4922, 22, '103K', 'New', 2019, '1.2692'),
(4923, 23, '103K', 'New', 2019, '1.2478'),
(4924, 25, '103K', 'New', 2019, '1.2097'),
(4925, 24, '103K', 'New', 2019, '1.2550'),
(4926, 1, '103L', 'New', 2019, '1.2840'),
(4927, 2, '103L', 'New', 2019, '1.3125'),
(4928, 3, '103L', 'New', 2019, '1.3062'),
(4929, 5, '103L', 'New', 2019, '-1.0000'),
(4930, 4, '103L', 'New', 2019, '1.2760'),
(4931, 6, '103L', 'New', 2019, '-1.0000'),
(4932, 7, '103L', 'New', 2019, '1.3563'),
(4933, 8, '103L', 'New', 2019, '1.3247'),
(4934, 9, '103L', 'New', 2019, '1.4390'),
(4935, 10, '103L', 'New', 2019, '-1.0000'),
(4936, 14, '103L', 'New', 2019, '-1.0000'),
(4937, 11, '103L', 'New', 2019, '-1.0000'),
(4938, 13, '103L', 'New', 2019, '-1.0000'),
(4939, 12, '103L', 'New', 2019, '-1.0000'),
(4940, 17, '103L', 'New', 2019, '-1.0000'),
(4941, 15, '103L', 'New', 2019, '1.3689'),
(4942, 16, '103L', 'New', 2019, '-1.0000'),
(4943, 19, '103L', 'New', 2019, '1.4127'),
(4944, 18, '103L', 'New', 2019, '1.4091'),
(4945, 20, '103L', 'New', 2019, '1.3113'),
(4946, 21, '103L', 'New', 2019, '1.4799'),
(4947, 22, '103L', 'New', 2019, '1.3006'),
(4948, 23, '103L', 'New', 2019, '1.2952'),
(4949, 25, '103L', 'New', 2019, '1.3286'),
(4950, 24, '103L', 'New', 2019, '1.2732'),
(4951, 1, '103M', 'New', 2019, '1.5173'),
(4952, 2, '103M', 'New', 2019, '1.4496'),
(4953, 3, '103M', 'New', 2019, '-1.0000'),
(4954, 5, '103M', 'New', 2019, '1.4465'),
(4955, 4, '103M', 'New', 2019, '1.4430'),
(4956, 6, '103M', 'New', 2019, '1.4484'),
(4957, 7, '103M', 'New', 2019, '1.4501'),
(4958, 8, '103M', 'New', 2019, '1.5028'),
(4959, 9, '103M', 'New', 2019, '1.4498'),
(4960, 10, '103M', 'New', 2019, '-1.0000'),
(4961, 14, '103M', 'New', 2019, '1.6667'),
(4962, 11, '103M', 'New', 2019, '-1.0000'),
(4963, 13, '103M', 'New', 2019, '-1.0000'),
(4964, 12, '103M', 'New', 2019, '-1.0000'),
(4965, 17, '103M', 'New', 2019, '1.5276'),
(4966, 15, '103M', 'New', 2019, '1.5611'),
(4967, 16, '103M', 'New', 2019, '-1.0000'),
(4968, 19, '103M', 'New', 2019, '1.5488'),
(4969, 18, '103M', 'New', 2019, '1.4418'),
(4970, 20, '103M', 'New', 2019, '1.4374'),
(4971, 21, '103M', 'New', 2019, '1.5335'),
(4972, 22, '103M', 'New', 2019, '1.4418'),
(4973, 23, '103M', 'New', 2019, '1.4497'),
(4974, 25, '103M', 'New', 2019, '1.4692'),
(4975, 24, '103M', 'New', 2019, '1.4752'),
(4976, 1, '103U', 'New', 2019, '1.2453'),
(4977, 2, '103U', 'New', 2019, '1.2400'),
(4978, 3, '103U', 'New', 2019, '1.2881'),
(4979, 5, '103U', 'New', 2019, '1.3543'),
(4980, 4, '103U', 'New', 2019, '1.2452'),
(4981, 6, '103U', 'New', 2019, '1.3375'),
(4982, 7, '103U', 'New', 2019, '1.2262'),
(4983, 8, '103U', 'New', 2019, '1.2302'),
(4984, 9, '103U', 'New', 2019, '1.3817'),
(4985, 10, '103U', 'New', 2019, '1.2676'),
(4986, 14, '103U', 'New', 2019, '1.4152'),
(4987, 11, '103U', 'New', 2019, '1.0000'),
(4988, 13, '103U', 'New', 2019, '1.2542'),
(4989, 12, '103U', 'New', 2019, '-1.0000'),
(4990, 17, '103U', 'New', 2019, '1.2409'),
(4991, 15, '103U', 'New', 2019, '1.2187'),
(4992, 16, '103U', 'New', 2019, '1.4142'),
(4993, 19, '103U', 'New', 2019, '-1.0000'),
(4994, 18, '103U', 'New', 2019, '1.2148'),
(4995, 20, '103U', 'New', 2019, '1.2288'),
(4996, 21, '103U', 'New', 2019, '-1.0000'),
(4997, 22, '103U', 'New', 2019, '1.2242'),
(4998, 23, '103U', 'New', 2019, '-1.0000'),
(4999, 25, '103U', 'New', 2019, '1.2452'),
(5000, 24, '103U', 'New', 2019, '1.2381'),
(5001, 1, '104A', 'New', 2019, '1.6866'),
(5002, 2, '104A', 'New', 2019, '1.8117'),
(5003, 3, '104A', 'New', 2019, '1.6843'),
(5004, 5, '104A', 'New', 2019, '-1.0000'),
(5005, 4, '104A', 'New', 2019, '1.8605'),
(5006, 6, '104A', 'New', 2019, '-1.0000'),
(5007, 7, '104A', 'New', 2019, '2.2385'),
(5008, 8, '104A', 'New', 2019, '1.7647'),
(5009, 9, '104A', 'New', 2019, '1.7743'),
(5010, 10, '104A', 'New', 2019, '1.6954'),
(5011, 14, '104A', 'New', 2019, '-1.0000'),
(5012, 11, '104A', 'New', 2019, '-1.0000'),
(5013, 13, '104A', 'New', 2019, '-1.0000'),
(5014, 12, '104A', 'New', 2019, '-1.0000'),
(5015, 17, '104A', 'New', 2019, '-1.0000'),
(5016, 15, '104A', 'New', 2019, '1.7094'),
(5017, 16, '104A', 'New', 2019, '-1.0000'),
(5018, 19, '104A', 'New', 2019, '1.8267'),
(5019, 18, '104A', 'New', 2019, '1.7316'),
(5020, 20, '104A', 'New', 2019, '-1.0000'),
(5021, 21, '104A', 'New', 2019, '-1.0000'),
(5022, 22, '104A', 'New', 2019, '1.7248'),
(5023, 23, '104A', 'New', 2019, '2.2480'),
(5024, 25, '104A', 'New', 2019, '1.7652'),
(5025, 24, '104A', 'New', 2019, '1.6987'),
(5026, 1, '104C', 'New', 2019, '1.6594'),
(5027, 2, '104C', 'New', 2019, '1.6480'),
(5028, 3, '104C', 'New', 2019, '1.6504'),
(5029, 5, '104C', 'New', 2019, '1.6626'),
(5030, 4, '104C', 'New', 2019, '1.6809'),
(5031, 6, '104C', 'New', 2019, '1.7844'),
(5032, 7, '104C', 'New', 2019, '1.6768'),
(5033, 8, '104C', 'New', 2019, '1.6593'),
(5034, 9, '104C', 'New', 2019, '1.6631'),
(5035, 10, '104C', 'New', 2019, '2.0423'),
(5036, 14, '104C', 'New', 2019, '1.6783'),
(5037, 11, '104C', 'New', 2019, '-1.0000'),
(5038, 13, '104C', 'New', 2019, '-1.0000'),
(5039, 12, '104C', 'New', 2019, '-1.0000'),
(5040, 17, '104C', 'New', 2019, '1.8267'),
(5041, 15, '104C', 'New', 2019, '1.8280'),
(5042, 16, '104C', 'New', 2019, '1.8021'),
(5043, 19, '104C', 'New', 2019, '1.6516'),
(5044, 18, '104C', 'New', 2019, '1.6713'),
(5045, 20, '104C', 'New', 2019, '1.7076'),
(5046, 21, '104C', 'New', 2019, '-1.0000'),
(5047, 22, '104C', 'New', 2019, '1.6880'),
(5048, 23, '104C', 'New', 2019, '-1.0000'),
(5049, 25, '104C', 'New', 2019, '1.6837'),
(5050, 24, '104C', 'New', 2019, '1.6527'),
(5051, 1, '104D', 'New', 2019, '1.4860'),
(5052, 2, '104D', 'New', 2019, '1.4999'),
(5053, 3, '104D', 'New', 2019, '1.4871'),
(5054, 5, '104D', 'New', 2019, '1.6159'),
(5055, 4, '104D', 'New', 2019, '1.5451'),
(5056, 6, '104D', 'New', 2019, '1.5192'),
(5057, 7, '104D', 'New', 2019, '1.5142'),
(5058, 8, '104D', 'New', 2019, '1.4890'),
(5059, 9, '104D', 'New', 2019, '1.5717'),
(5060, 10, '104D', 'New', 2019, '1.4838'),
(5061, 14, '104D', 'New', 2019, '-1.0000'),
(5062, 11, '104D', 'New', 2019, '-1.0000'),
(5063, 13, '104D', 'New', 2019, '-1.0000'),
(5064, 12, '104D', 'New', 2019, '-1.0000'),
(5065, 17, '104D', 'New', 2019, '-1.0000'),
(5066, 15, '104D', 'New', 2019, '1.5488'),
(5067, 16, '104D', 'New', 2019, '-1.0000'),
(5068, 19, '104D', 'New', 2019, '1.4896'),
(5069, 18, '104D', 'New', 2019, '1.5920'),
(5070, 20, '104D', 'New', 2019, '1.6100'),
(5071, 21, '104D', 'New', 2019, '-1.0000'),
(5072, 22, '104D', 'New', 2019, '1.4978'),
(5073, 23, '104D', 'New', 2019, '1.5076'),
(5074, 25, '104D', 'New', 2019, '1.5079'),
(5075, 24, '104D', 'New', 2019, '1.5110'),
(5076, 1, '104F', 'New', 2019, '1.3097'),
(5077, 2, '104F', 'New', 2019, '1.3039'),
(5078, 3, '104F', 'New', 2019, '1.3253'),
(5079, 5, '104F', 'New', 2019, '-1.0000'),
(5080, 4, '104F', 'New', 2019, '1.3122'),
(5081, 6, '104F', 'New', 2019, '1.3246'),
(5082, 7, '104F', 'New', 2019, '1.3935'),
(5083, 8, '104F', 'New', 2019, '1.3028'),
(5084, 9, '104F', 'New', 2019, '1.3272'),
(5085, 10, '104F', 'New', 2019, '-1.0000'),
(5086, 14, '104F', 'New', 2019, '-1.0000'),
(5087, 11, '104F', 'New', 2019, '-1.0000'),
(5088, 13, '104F', 'New', 2019, '-1.0000'),
(5089, 12, '104F', 'New', 2019, '-1.0000'),
(5090, 17, '104F', 'New', 2019, '1.4174'),
(5091, 15, '104F', 'New', 2019, '-1.0000'),
(5092, 16, '104F', 'New', 2019, '-1.0000'),
(5093, 19, '104F', 'New', 2019, '-1.0000'),
(5094, 18, '104F', 'New', 2019, '1.3937'),
(5095, 20, '104F', 'New', 2019, '1.3964'),
(5096, 21, '104F', 'New', 2019, '-1.0000'),
(5097, 22, '104F', 'New', 2019, '1.3924'),
(5098, 23, '104F', 'New', 2019, '1.3454'),
(5099, 25, '104F', 'New', 2019, '1.3266'),
(5100, 24, '104F', 'New', 2019, '1.3964'),
(5101, 1, '104J', 'New', 2019, '0.9706'),
(5102, 2, '104J', 'New', 2019, '0.9692'),
(5103, 3, '104J', 'New', 2019, '1.0601'),
(5104, 5, '104J', 'New', 2019, '1.1092'),
(5105, 4, '104J', 'New', 2019, '0.9718'),
(5106, 6, '104J', 'New', 2019, '0.9831'),
(5107, 7, '104J', 'New', 2019, '0.9767'),
(5108, 8, '104J', 'New', 2019, '-1.0000'),
(5109, 9, '104J', 'New', 2019, '0.9801'),
(5110, 10, '104J', 'New', 2019, '1.1019'),
(5111, 14, '104J', 'New', 2019, '-1.0000'),
(5112, 11, '104J', 'New', 2019, '-1.0000'),
(5113, 13, '104J', 'New', 2019, '-1.0000'),
(5114, 12, '104J', 'New', 2019, '-1.0000'),
(5115, 17, '104J', 'New', 2019, '1.0775'),
(5116, 15, '104J', 'New', 2019, '0.9771'),
(5117, 16, '104J', 'New', 2019, '1.0819'),
(5118, 19, '104J', 'New', 2019, '0.9797'),
(5119, 18, '104J', 'New', 2019, '0.9756'),
(5120, 20, '104J', 'New', 2019, '1.0822'),
(5121, 21, '104J', 'New', 2019, '-1.0000'),
(5122, 22, '104J', 'New', 2019, '0.9700'),
(5123, 23, '104J', 'New', 2019, '-1.0000'),
(5124, 25, '104J', 'New', 2019, '0.9993'),
(5125, 24, '104J', 'New', 2019, '0.9803'),
(5126, 1, '104K', 'New', 2019, '1.0650'),
(5127, 2, '104K', 'New', 2019, '1.0647'),
(5128, 3, '104K', 'New', 2019, '1.0784'),
(5129, 5, '104K', 'New', 2019, '1.1019'),
(5130, 4, '104K', 'New', 2019, '1.0822'),
(5131, 6, '104K', 'New', 2019, '1.3124'),
(5132, 7, '104K', 'New', 2019, '1.1442'),
(5133, 8, '104K', 'New', 2019, '1.2728'),
(5134, 9, '104K', 'New', 2019, '1.2449'),
(5135, 10, '104K', 'New', 2019, '1.1391'),
(5136, 14, '104K', 'New', 2019, '-1.0000'),
(5137, 11, '104K', 'New', 2019, '-1.0000'),
(5138, 13, '104K', 'New', 2019, '-1.0000'),
(5139, 12, '104K', 'New', 2019, '-1.0000'),
(5140, 17, '104K', 'New', 2019, '-1.0000'),
(5141, 15, '104K', 'New', 2019, '1.1184'),
(5142, 16, '104K', 'New', 2019, '1.1006'),
(5143, 19, '104K', 'New', 2019, '1.0859'),
(5144, 18, '104K', 'New', 2019, '1.0688'),
(5145, 20, '104K', 'New', 2019, '1.1033'),
(5146, 21, '104K', 'New', 2019, '1.2560'),
(5147, 22, '104K', 'New', 2019, '1.0908'),
(5148, 23, '104K', 'New', 2019, '1.1158'),
(5149, 25, '104K', 'New', 2019, '1.1205'),
(5150, 24, '104K', 'New', 2019, '1.1165'),
(5151, 1, '104R', 'New', 2019, '0.9457'),
(5152, 2, '104R', 'New', 2019, '0.9166'),
(5153, 3, '104R', 'New', 2019, '-1.0000'),
(5154, 5, '104R', 'New', 2019, '1.2327'),
(5155, 4, '104R', 'New', 2019, '0.9160'),
(5156, 6, '104R', 'New', 2019, '0.5708'),
(5157, 7, '104R', 'New', 2019, '0.8458'),
(5158, 8, '104R', 'New', 2019, '-1.0000'),
(5159, 9, '104R', 'New', 2019, '0.8829'),
(5160, 10, '104R', 'New', 2019, '0.8059'),
(5161, 14, '104R', 'New', 2019, '0.8832'),
(5162, 11, '104R', 'New', 2019, '-0.0883'),
(5163, 13, '104R', 'New', 2019, '9.9999'),
(5164, 12, '104R', 'New', 2019, '-0.0093'),
(5165, 17, '104R', 'New', 2019, '0.7492'),
(5166, 15, '104R', 'New', 2019, '0.9297'),
(5167, 16, '104R', 'New', 2019, '1.1571'),
(5168, 19, '104R', 'New', 2019, '0.8606'),
(5169, 18, '104R', 'New', 2019, '0.9720'),
(5170, 20, '104R', 'New', 2019, '1.1186'),
(5171, 21, '104R', 'New', 2019, '0.7187'),
(5172, 22, '104R', 'New', 2019, '0.9199'),
(5173, 23, '104R', 'New', 2019, '0.6807'),
(5174, 25, '104R', 'New', 2019, '1.0137'),
(5175, 24, '104R', 'New', 2019, '0.9566'),
(5176, 1, '104U', 'New', 2019, '1.0993'),
(5177, 2, '104U', 'New', 2019, '1.0773'),
(5178, 3, '104U', 'New', 2019, '1.0767'),
(5179, 5, '104U', 'New', 2019, '1.2624'),
(5180, 4, '104U', 'New', 2019, '1.1960'),
(5181, 6, '104U', 'New', 2019, '1.1092'),
(5182, 7, '104U', 'New', 2019, '1.2430'),
(5183, 8, '104U', 'New', 2019, '1.2910'),
(5184, 9, '104U', 'New', 2019, '1.2364'),
(5185, 10, '104U', 'New', 2019, '1.1634'),
(5186, 14, '104U', 'New', 2019, '-1.0000'),
(5187, 11, '104U', 'New', 2019, '-1.0000'),
(5188, 13, '104U', 'New', 2019, '-1.0000'),
(5189, 12, '104U', 'New', 2019, '-1.0000'),
(5190, 17, '104U', 'New', 2019, '-1.0000'),
(5191, 15, '104U', 'New', 2019, '-1.0000'),
(5192, 16, '104U', 'New', 2019, '1.1259'),
(5193, 19, '104U', 'New', 2019, '1.3203'),
(5194, 18, '104U', 'New', 2019, '1.0874'),
(5195, 20, '104U', 'New', 2019, '1.1626'),
(5196, 21, '104U', 'New', 2019, '-1.0000'),
(5197, 22, '104U', 'New', 2019, '1.0874'),
(5198, 23, '104U', 'New', 2019, '-1.0000'),
(5199, 25, '104U', 'New', 2019, '1.0857'),
(5200, 24, '104U', 'New', 2019, '1.0841'),
(5201, 1, '108C', 'New', 2019, '1.1037'),
(5202, 2, '108C', 'New', 2019, '1.1031'),
(5203, 3, '108C', 'New', 2019, '1.0740'),
(5204, 5, '108C', 'New', 2019, '1.0819'),
(5205, 4, '108C', 'New', 2019, '1.0874'),
(5206, 6, '108C', 'New', 2019, '-1.0000'),
(5207, 7, '108C', 'New', 2019, '0.8894'),
(5208, 8, '108C', 'New', 2019, '1.0936'),
(5209, 9, '108C', 'New', 2019, '1.1975'),
(5210, 10, '108C', 'New', 2019, '1.1776'),
(5211, 14, '108C', 'New', 2019, '-1.0000'),
(5212, 11, '108C', 'New', 2019, '0.5457'),
(5213, 13, '108C', 'New', 2019, '-1.0000'),
(5214, 12, '108C', 'New', 2019, '-1.0000'),
(5215, 17, '108C', 'New', 2019, '-1.0000'),
(5216, 15, '108C', 'New', 2019, '0.9605'),
(5217, 16, '108C', 'New', 2019, '0.7757'),
(5218, 19, '108C', 'New', 2019, '0.9212'),
(5219, 18, '108C', 'New', 2019, '0.7037'),
(5220, 20, '108C', 'New', 2019, '0.5914'),
(5221, 21, '108C', 'New', 2019, '-1.0000'),
(5222, 22, '108C', 'New', 2019, '0.6668'),
(5223, 23, '108C', 'New', 2019, '-1.0000'),
(5224, 25, '108C', 'New', 2019, '-1.0000'),
(5225, 24, '108C', 'New', 2019, '0.7524'),
(5226, 1, '108D', 'New', 2019, '1.1978'),
(5227, 2, '108D', 'New', 2019, '0.9813'),
(5228, 3, '108D', 'New', 2019, '1.0531'),
(5229, 5, '108D', 'New', 2019, '-1.0000'),
(5230, 4, '108D', 'New', 2019, '0.9398'),
(5231, 6, '108D', 'New', 2019, '0.8153'),
(5232, 7, '108D', 'New', 2019, '-1.0000'),
(5233, 8, '108D', 'New', 2019, '-1.0000'),
(5234, 9, '108D', 'New', 2019, '-1.0000'),
(5235, 10, '108D', 'New', 2019, '1.4905'),
(5236, 14, '108D', 'New', 2019, '0.1998'),
(5237, 11, '108D', 'New', 2019, '-1.0000'),
(5238, 13, '108D', 'New', 2019, '-1.0000'),
(5239, 12, '108D', 'New', 2019, '0.6189'),
(5240, 17, '108D', 'New', 2019, '-1.0000'),
(5241, 15, '108D', 'New', 2019, '-1.0000'),
(5242, 16, '108D', 'New', 2019, '0.3989'),
(5243, 19, '108D', 'New', 2019, '0.9192'),
(5244, 18, '108D', 'New', 2019, '0.8138'),
(5245, 20, '108D', 'New', 2019, '-1.0000'),
(5246, 21, '108D', 'New', 2019, '1.0749'),
(5247, 22, '108D', 'New', 2019, '0.8578'),
(5248, 23, '108D', 'New', 2019, '0.4317'),
(5249, 25, '108D', 'New', 2019, '0.9881'),
(5250, 24, '108D', 'New', 2019, '1.1967'),
(5251, 1, '098D', 'New', 2019, '1.3378'),
(5252, 2, '098D', 'New', 2019, '1.2508'),
(5253, 3, '098D', 'New', 2019, '-1.0000'),
(5254, 5, '098D', 'New', 2019, '-1.0000'),
(5255, 4, '098D', 'New', 2019, '-1.0000'),
(5256, 6, '098D', 'New', 2019, '-1.0000'),
(5257, 7, '098D', 'New', 2019, '1.2973'),
(5258, 8, '098D', 'New', 2019, '-1.0000'),
(5259, 9, '098D', 'New', 2019, '1.2348'),
(5260, 10, '098D', 'New', 2019, '-1.0000'),
(5261, 14, '098D', 'New', 2019, '-1.0000'),
(5262, 11, '098D', 'New', 2019, '-1.0000'),
(5263, 13, '098D', 'New', 2019, '-1.0000'),
(5264, 12, '098D', 'New', 2019, '-1.0000'),
(5265, 17, '098D', 'New', 2019, '-1.0000'),
(5266, 15, '098D', 'New', 2019, '-1.0000'),
(5267, 16, '098D', 'New', 2019, '-1.0000'),
(5268, 19, '098D', 'New', 2019, '1.3397'),
(5269, 18, '098D', 'New', 2019, '1.2556'),
(5270, 20, '098D', 'New', 2019, '1.2415'),
(5271, 21, '098D', 'New', 2019, '-1.0000'),
(5272, 22, '098D', 'New', 2019, '-1.0000'),
(5273, 23, '098D', 'New', 2019, '-1.0000'),
(5274, 25, '098D', 'New', 2019, '-1.0000'),
(5275, 24, '098D', 'New', 2019, '1.2996'),
(5276, 1, '098L', 'New', 2019, '0.8969'),
(5277, 2, '098L', 'New', 2019, '1.2300'),
(5278, 3, '098L', 'New', 2019, '0.8843'),
(5279, 5, '098L', 'New', 2019, '0.6078'),
(5280, 4, '098L', 'New', 2019, '1.1265'),
(5281, 6, '098L', 'New', 2019, '-1.0000'),
(5282, 7, '098L', 'New', 2019, '1.1887'),
(5283, 8, '098L', 'New', 2019, '0.7980'),
(5284, 9, '098L', 'New', 2019, '-1.0000'),
(5285, 10, '098L', 'New', 2019, '-1.0000'),
(5286, 14, '098L', 'New', 2019, '-1.0000'),
(5287, 11, '098L', 'New', 2019, '-1.0000'),
(5288, 13, '098L', 'New', 2019, '-1.0000'),
(5289, 12, '098L', 'New', 2019, '-1.0000'),
(5290, 17, '098L', 'New', 2019, '-1.0000'),
(5291, 15, '098L', 'New', 2019, '-1.0000'),
(5292, 16, '098L', 'New', 2019, '-1.0000'),
(5293, 19, '098L', 'New', 2019, '-1.0000'),
(5294, 18, '098L', 'New', 2019, '-1.0000'),
(5295, 20, '098L', 'New', 2019, '0.7537'),
(5296, 21, '098L', 'New', 2019, '-1.0000'),
(5297, 22, '098L', 'New', 2019, '0.5517'),
(5298, 23, '098L', 'New', 2019, '-1.0000'),
(5299, 25, '098L', 'New', 2019, '1.1007'),
(5300, 24, '098L', 'New', 2019, '1.0864'),
(5301, 1, '098E', 'New', 2019, '0.6638'),
(5302, 2, '098E', 'New', 2019, '0.4913'),
(5303, 3, '098E', 'New', 2019, '0.8635'),
(5304, 5, '098E', 'New', 2019, '1.1590'),
(5305, 4, '098E', 'New', 2019, '0.9521'),
(5306, 6, '098E', 'New', 2019, '0.8930'),
(5307, 7, '098E', 'New', 2019, '-1.0000'),
(5308, 8, '098E', 'New', 2019, '0.8314'),
(5309, 9, '098E', 'New', 2019, '-1.0000'),
(5310, 10, '098E', 'New', 2019, '1.0292'),
(5311, 14, '098E', 'New', 2019, '0.9925'),
(5312, 11, '098E', 'New', 2019, '0.9586'),
(5313, 13, '098E', 'New', 2019, '1.0000'),
(5314, 12, '098E', 'New', 2019, '0.7787'),
(5315, 17, '098E', 'New', 2019, '-1.0000'),
(5316, 15, '098E', 'New', 2019, '1.0367'),
(5317, 16, '098E', 'New', 2019, '0.8916'),
(5318, 19, '098E', 'New', 2019, '0.5752'),
(5319, 18, '098E', 'New', 2019, '0.9868'),
(5320, 20, '098E', 'New', 2019, '0.5756'),
(5321, 21, '098E', 'New', 2019, '-1.0000'),
(5322, 22, '098E', 'New', 2019, '0.5373'),
(5323, 23, '098E', 'New', 2019, '-1.0000'),
(5324, 25, '098E', 'New', 2019, '-1.0000'),
(5325, 24, '098E', 'New', 2019, '-1.0000'),
(5326, 1, '098H', 'New', 2019, '-1.0000'),
(5327, 2, '098H', 'New', 2019, '-1.0000'),
(5328, 3, '098H', 'New', 2019, '1.0908'),
(5329, 5, '098H', 'New', 2019, '1.0688'),
(5330, 4, '098H', 'New', 2019, '0.6913'),
(5331, 6, '098H', 'New', 2019, '0.7140'),
(5332, 7, '098H', 'New', 2019, '-1.0000'),
(5333, 8, '098H', 'New', 2019, '-1.0000'),
(5334, 9, '098H', 'New', 2019, '-1.0000'),
(5335, 10, '098H', 'New', 2019, '-1.0000'),
(5336, 14, '098H', 'New', 2019, '-1.0000'),
(5337, 11, '098H', 'New', 2019, '-1.0000'),
(5338, 13, '098H', 'New', 2019, '-1.0000'),
(5339, 12, '098H', 'New', 2019, '-1.0000'),
(5340, 17, '098H', 'New', 2019, '0.8095'),
(5341, 15, '098H', 'New', 2019, '1.0818'),
(5342, 16, '098H', 'New', 2019, '1.1369'),
(5343, 19, '098H', 'New', 2019, '-1.0000'),
(5344, 18, '098H', 'New', 2019, '0.8666'),
(5345, 20, '098H', 'New', 2019, '0.1602'),
(5346, 21, '098H', 'New', 2019, '1.1170'),
(5347, 22, '098H', 'New', 2019, '-1.0000'),
(5348, 23, '098H', 'New', 2019, '-1.0000'),
(5349, 25, '098H', 'New', 2019, '0.8887'),
(5350, 24, '098H', 'New', 2019, '-1.0000'),
(5351, 1, '100D', 'New', 2019, '1.1573'),
(5352, 2, '100D', 'New', 2019, '0.9210'),
(5353, 3, '100D', 'New', 2019, '0.7875'),
(5354, 5, '100D', 'New', 2019, '1.2176'),
(5355, 4, '100D', 'New', 2019, '1.0525'),
(5356, 6, '100D', 'New', 2019, '-1.0000'),
(5357, 7, '100D', 'New', 2019, '0.8648'),
(5358, 8, '100D', 'New', 2019, '0.8193'),
(5359, 9, '100D', 'New', 2019, '1.0061'),
(5360, 10, '100D', 'New', 2019, '-1.0000'),
(5361, 14, '100D', 'New', 2019, '-1.0000'),
(5362, 11, '100D', 'New', 2019, '-1.0000'),
(5363, 13, '100D', 'New', 2019, '-1.0000'),
(5364, 12, '100D', 'New', 2019, '-1.0000'),
(5365, 17, '100D', 'New', 2019, '1.0054'),
(5366, 15, '100D', 'New', 2019, '-1.0000'),
(5367, 16, '100D', 'New', 2019, '-1.0000'),
(5368, 19, '100D', 'New', 2019, '1.2168'),
(5369, 18, '100D', 'New', 2019, '1.2176'),
(5370, 20, '100D', 'New', 2019, '1.1759'),
(5371, 21, '100D', 'New', 2019, '1.7961'),
(5372, 22, '100D', 'New', 2019, '1.0541'),
(5373, 23, '100D', 'New', 2019, '1.1915'),
(5374, 25, '100D', 'New', 2019, '1.0579'),
(5375, 24, '100D', 'New', 2019, '1.1869'),
(5376, 1, '101R', 'New', 2019, '1.3829'),
(5377, 2, '101R', 'New', 2019, '1.3440'),
(5378, 3, '101R', 'New', 2019, '1.3862'),
(5379, 5, '101R', 'New', 2019, '1.4172'),
(5380, 4, '101R', 'New', 2019, '1.3815'),
(5381, 6, '101R', 'New', 2019, '1.4394'),
(5382, 7, '101R', 'New', 2019, '1.4860'),
(5383, 8, '101R', 'New', 2019, '1.3544'),
(5384, 9, '101R', 'New', 2019, '1.3811'),
(5385, 10, '101R', 'New', 2019, '1.4660'),
(5386, 14, '101R', 'New', 2019, '1.1335'),
(5387, 11, '101R', 'New', 2019, '1.3318'),
(5388, 13, '101R', 'New', 2019, '1.1980'),
(5389, 12, '101R', 'New', 2019, '1.3439'),
(5390, 17, '101R', 'New', 2019, '1.4824'),
(5391, 15, '101R', 'New', 2019, '1.4120'),
(5392, 16, '101R', 'New', 2019, '1.4455'),
(5393, 19, '101R', 'New', 2019, '1.4669'),
(5394, 18, '101R', 'New', 2019, '1.4121'),
(5395, 20, '101R', 'New', 2019, '1.4356'),
(5396, 21, '101R', 'New', 2019, '1.4402'),
(5397, 22, '101R', 'New', 2019, '1.4629'),
(5398, 23, '101R', 'New', 2019, '1.3745'),
(5399, 25, '101R', 'New', 2019, '1.3981'),
(5400, 24, '101R', 'New', 2019, '1.4558'),
(5401, 1, '105D', 'New', 2019, '1.1755'),
(5402, 2, '105D', 'New', 2019, '1.1755'),
(5403, 3, '105D', 'New', 2019, '1.1755'),
(5404, 5, '105D', 'New', 2019, '1.1755'),
(5405, 4, '105D', 'New', 2019, '1.1755'),
(5406, 6, '105D', 'New', 2019, '1.1755'),
(5407, 7, '105D', 'New', 2019, '1.1755'),
(5408, 8, '105D', 'New', 2019, '1.1755'),
(5409, 9, '105D', 'New', 2019, '1.1755'),
(5410, 10, '105D', 'New', 2019, '1.1755'),
(5411, 14, '105D', 'New', 2019, '1.1755'),
(5412, 11, '105D', 'New', 2019, '1.1755'),
(5413, 13, '105D', 'New', 2019, '1.1755'),
(5414, 12, '105D', 'New', 2019, '1.1755'),
(5415, 17, '105D', 'New', 2019, '1.1755'),
(5416, 15, '105D', 'New', 2019, '1.1755'),
(5417, 16, '105D', 'New', 2019, '1.1755'),
(5418, 19, '105D', 'New', 2019, '1.1755'),
(5419, 18, '105D', 'New', 2019, '1.1755'),
(5420, 20, '105D', 'New', 2019, '1.1755'),
(5421, 21, '105D', 'New', 2019, '1.1755'),
(5422, 22, '105D', 'New', 2019, '1.1755'),
(5423, 23, '105D', 'New', 2019, '1.1755'),
(5424, 25, '105D', 'New', 2019, '1.1755'),
(5425, 24, '105D', 'New', 2019, '1.1755'),
(5426, 1, '085Z', 'New', 2019, '0.9358'),
(5427, 2, '085Z', 'New', 2019, '1.2707'),
(5428, 3, '085Z', 'New', 2019, '1.0508'),
(5429, 5, '085Z', 'New', 2019, '1.0746'),
(5430, 4, '085Z', 'New', 2019, '0.7957'),
(5431, 6, '085Z', 'New', 2019, '1.5532'),
(5432, 7, '085Z', 'New', 2019, '0.4376'),
(5433, 8, '085Z', 'New', 2019, '1.2614'),
(5434, 9, '085Z', 'New', 2019, '1.3184'),
(5435, 10, '085Z', 'New', 2019, '-1.0000'),
(5436, 14, '085Z', 'New', 2019, '-1.0000'),
(5437, 11, '085Z', 'New', 2019, '-1.0000'),
(5438, 13, '085Z', 'New', 2019, '-1.0000'),
(5439, 12, '085Z', 'New', 2019, '-1.0000'),
(5440, 17, '085Z', 'New', 2019, '-1.0000'),
(5441, 15, '085Z', 'New', 2019, '-1.0000'),
(5442, 16, '085Z', 'New', 2019, '1.1106'),
(5443, 19, '085Z', 'New', 2019, '1.3716'),
(5444, 18, '085Z', 'New', 2019, '1.1381'),
(5445, 20, '085Z', 'New', 2019, '1.1172'),
(5446, 21, '085Z', 'New', 2019, '1.1309'),
(5447, 22, '085Z', 'New', 2019, '0.9240'),
(5448, 23, '085Z', 'New', 2019, '1.0522'),
(5449, 25, '085Z', 'New', 2019, '1.1077'),
(5450, 24, '085Z', 'New', 2019, '1.3927'),
(5451, 1, '068Z', 'New', 2019, '0.7157'),
(5452, 2, '068Z', 'New', 2019, '0.8201'),
(5453, 3, '068Z', 'New', 2019, '1.0160'),
(5454, 5, '068Z', 'New', 2019, '0.8519'),
(5455, 4, '068Z', 'New', 2019, '1.0009'),
(5456, 6, '068Z', 'New', 2019, '0.7132'),
(5457, 7, '068Z', 'New', 2019, '0.8689'),
(5458, 8, '068Z', 'New', 2019, '1.0616'),
(5459, 9, '068Z', 'New', 2019, '0.5605'),
(5460, 10, '068Z', 'New', 2019, '-1.0000'),
(5461, 14, '068Z', 'New', 2019, '-1.0000'),
(5462, 11, '068Z', 'New', 2019, '-1.0000'),
(5463, 13, '068Z', 'New', 2019, '-1.0000'),
(5464, 12, '068Z', 'New', 2019, '-1.0000'),
(5465, 17, '068Z', 'New', 2019, '0.7011'),
(5466, 15, '068Z', 'New', 2019, '-1.0000'),
(5467, 16, '068Z', 'New', 2019, '0.4921'),
(5468, 19, '068Z', 'New', 2019, '-0.1142'),
(5469, 18, '068Z', 'New', 2019, '0.9860'),
(5470, 20, '068Z', 'New', 2019, '1.0270'),
(5471, 21, '068Z', 'New', 2019, '1.1018'),
(5472, 22, '068Z', 'New', 2019, '0.5489'),
(5473, 23, '068Z', 'New', 2019, '0.8975'),
(5474, 25, '068Z', 'New', 2019, '0.7382'),
(5475, 24, '068Z', 'New', 2019, '0.9244'),
(5476, 1, '069Z', 'New', 2019, '0.9235'),
(5477, 2, '069Z', 'New', 2019, '0.8504'),
(5478, 3, '069Z', 'New', 2019, '1.1598'),
(5479, 5, '069Z', 'New', 2019, '1.0851'),
(5480, 4, '069Z', 'New', 2019, '1.1519'),
(5481, 6, '069Z', 'New', 2019, '1.0434'),
(5482, 7, '069Z', 'New', 2019, '0.1638'),
(5483, 8, '069Z', 'New', 2019, '1.2709'),
(5484, 9, '069Z', 'New', 2019, '0.9749'),
(5485, 10, '069Z', 'New', 2019, '-1.0000'),
(5486, 14, '069Z', 'New', 2019, '-1.0000'),
(5487, 11, '069Z', 'New', 2019, '-1.0000'),
(5488, 13, '069Z', 'New', 2019, '-1.0000'),
(5489, 12, '069Z', 'New', 2019, '1.0455'),
(5490, 17, '069Z', 'New', 2019, '0.9569'),
(5491, 15, '069Z', 'New', 2019, '-1.0000'),
(5492, 16, '069Z', 'New', 2019, '1.0998'),
(5493, 19, '069Z', 'New', 2019, '1.0888'),
(5494, 18, '069Z', 'New', 2019, '1.0687'),
(5495, 20, '069Z', 'New', 2019, '0.9028'),
(5496, 21, '069Z', 'New', 2019, '1.1095'),
(5497, 22, '069Z', 'New', 2019, '1.1312'),
(5498, 23, '069Z', 'New', 2019, '1.2255'),
(5499, 25, '069Z', 'New', 2019, '1.1965'),
(5500, 24, '069Z', 'New', 2019, '1.1185'),
(5501, 1, '071Z', 'New', 2019, '0.5865'),
(5502, 2, '071Z', 'New', 2019, '0.5616'),
(5503, 3, '071Z', 'New', 2019, '0.6111'),
(5504, 5, '071Z', 'New', 2019, '0.4412'),
(5505, 4, '071Z', 'New', 2019, '1.0818'),
(5506, 6, '071Z', 'New', 2019, '-0.0258'),
(5507, 7, '071Z', 'New', 2019, '-1.0000'),
(5508, 8, '071Z', 'New', 2019, '0.8921'),
(5509, 9, '071Z', 'New', 2019, '0.3486'),
(5510, 10, '071Z', 'New', 2019, '-1.0000'),
(5511, 14, '071Z', 'New', 2019, '-1.0000'),
(5512, 11, '071Z', 'New', 2019, '-1.0000'),
(5513, 13, '071Z', 'New', 2019, '-1.0000'),
(5514, 12, '071Z', 'New', 2019, '-1.0000'),
(5515, 17, '071Z', 'New', 2019, '0.3841'),
(5516, 15, '071Z', 'New', 2019, '-1.0000'),
(5517, 16, '071Z', 'New', 2019, '0.6545'),
(5518, 19, '071Z', 'New', 2019, '-1.0000'),
(5519, 18, '071Z', 'New', 2019, '0.1447'),
(5520, 20, '071Z', 'New', 2019, '1.0940'),
(5521, 21, '071Z', 'New', 2019, '0.8820'),
(5522, 22, '071Z', 'New', 2019, '0.9791'),
(5523, 23, '071Z', 'New', 2019, '1.2947'),
(5524, 25, '071Z', 'New', 2019, '1.0833'),
(5525, 24, '071Z', 'New', 2019, '0.8801'),
(5526, 1, '070X', 'New', 2019, '-0.3314'),
(5527, 2, '070X', 'New', 2019, '-1.0000'),
(5528, 3, '070X', 'New', 2019, '0.2525'),
(5529, 5, '070X', 'New', 2019, '1.0954'),
(5530, 4, '070X', 'New', 2019, '0.0578'),
(5531, 6, '070X', 'New', 2019, '0.5425'),
(5532, 7, '070X', 'New', 2019, '1.0351'),
(5533, 8, '070X', 'New', 2019, '-1.0000'),
(5534, 9, '070X', 'New', 2019, '0.8798'),
(5535, 10, '070X', 'New', 2019, '0.6002'),
(5536, 14, '070X', 'New', 2019, '-0.2175'),
(5537, 11, '070X', 'New', 2019, '0.3115'),
(5538, 13, '070X', 'New', 2019, '-1.0000'),
(5539, 12, '070X', 'New', 2019, '0.8598'),
(5540, 17, '070X', 'New', 2019, '0.8837'),
(5541, 15, '070X', 'New', 2019, '0.4694'),
(5542, 16, '070X', 'New', 2019, '0.5379'),
(5543, 19, '070X', 'New', 2019, '0.0302'),
(5544, 18, '070X', 'New', 2019, '0.3259'),
(5545, 20, '070X', 'New', 2019, '0.2802'),
(5546, 21, '070X', 'New', 2019, '-1.0000'),
(5547, 22, '070X', 'New', 2019, '1.0105'),
(5548, 23, '070X', 'New', 2019, '-1.0000'),
(5549, 25, '070X', 'New', 2019, '-0.1697'),
(5550, 24, '070X', 'New', 2019, '1.0341'),
(5551, 1, '068X', 'New', 2019, '-0.0797'),
(5552, 2, '068X', 'New', 2019, '-1.0000'),
(5553, 3, '068X', 'New', 2019, '-1.0000'),
(5554, 5, '068X', 'New', 2019, '0.2488'),
(5555, 4, '068X', 'New', 2019, '0.2481'),
(5556, 6, '068X', 'New', 2019, '0.6033'),
(5557, 7, '068X', 'New', 2019, '-1.0000'),
(5558, 8, '068X', 'New', 2019, '-1.0000'),
(5559, 9, '068X', 'New', 2019, '-1.0000'),
(5560, 10, '068X', 'New', 2019, '0.5852'),
(5561, 14, '068X', 'New', 2019, '0.4932'),
(5562, 11, '068X', 'New', 2019, '0.5897'),
(5563, 13, '068X', 'New', 2019, '0.5842'),
(5564, 12, '068X', 'New', 2019, '0.2739'),
(5565, 17, '068X', 'New', 2019, '-0.1149'),
(5566, 15, '068X', 'New', 2019, '0.3870'),
(5567, 16, '068X', 'New', 2019, '-0.1248'),
(5568, 19, '068X', 'New', 2019, '-1.0000'),
(5569, 18, '068X', 'New', 2019, '-1.0000'),
(5570, 20, '068X', 'New', 2019, '-1.0000'),
(5571, 21, '068X', 'New', 2019, '-1.0000'),
(5572, 22, '068X', 'New', 2019, '0.4313'),
(5573, 23, '068X', 'New', 2019, '-1.0000'),
(5574, 25, '068X', 'New', 2019, '-1.0000'),
(5575, 24, '068X', 'New', 2019, '0.9058'),
(5576, 1, '069X', 'New', 2019, '0.5468'),
(5577, 2, '069X', 'New', 2019, '0.5575'),
(5578, 3, '069X', 'New', 2019, '1.2601'),
(5579, 5, '069X', 'New', 2019, '1.0683'),
(5580, 4, '069X', 'New', 2019, '0.4790'),
(5581, 6, '069X', 'New', 2019, '-0.0706'),
(5582, 7, '069X', 'New', 2019, '-1.0000'),
(5583, 8, '069X', 'New', 2019, '-1.0000'),
(5584, 9, '069X', 'New', 2019, '-1.0000'),
(5585, 10, '069X', 'New', 2019, '0.3037'),
(5586, 14, '069X', 'New', 2019, '0.3794'),
(5587, 11, '069X', 'New', 2019, '0.0071'),
(5588, 13, '069X', 'New', 2019, '0.1419'),
(5589, 12, '069X', 'New', 2019, '0.0883'),
(5590, 17, '069X', 'New', 2019, '0.0725'),
(5591, 15, '069X', 'New', 2019, '0.2104'),
(5592, 16, '069X', 'New', 2019, '-0.3469'),
(5593, 19, '069X', 'New', 2019, '-1.0000'),
(5594, 18, '069X', 'New', 2019, '-1.0000'),
(5595, 20, '069X', 'New', 2019, '-1.0000'),
(5596, 21, '069X', 'New', 2019, '-1.0000'),
(5597, 22, '069X', 'New', 2019, '0.5867'),
(5598, 23, '069X', 'New', 2019, '-1.0000'),
(5599, 25, '069X', 'New', 2019, '-1.0000'),
(5600, 24, '069X', 'New', 2019, '0.2438'),
(5601, 1, '072Y', 'New', 2019, '-1.0000'),
(5602, 2, '072Y', 'New', 2019, '-1.0000'),
(5603, 3, '072Y', 'New', 2019, '-1.0000'),
(5604, 5, '072Y', 'New', 2019, '-0.1356'),
(5605, 4, '072Y', 'New', 2019, '-1.0000'),
(5606, 6, '072Y', 'New', 2019, '-1.0000'),
(5607, 7, '072Y', 'New', 2019, '-1.0000'),
(5608, 8, '072Y', 'New', 2019, '-0.3570'),
(5609, 9, '072Y', 'New', 2019, '0.5252'),
(5610, 10, '072Y', 'New', 2019, '-0.1682'),
(5611, 14, '072Y', 'New', 2019, '-1.0000'),
(5612, 11, '072Y', 'New', 2019, '-1.0000'),
(5613, 13, '072Y', 'New', 2019, '-1.0000'),
(5614, 12, '072Y', 'New', 2019, '0.6031'),
(5615, 17, '072Y', 'New', 2019, '0.0208'),
(5616, 15, '072Y', 'New', 2019, '0.2497'),
(5617, 16, '072Y', 'New', 2019, '-0.3182'),
(5618, 19, '072Y', 'New', 2019, '0.6475'),
(5619, 18, '072Y', 'New', 2019, '0.7619'),
(5620, 20, '072Y', 'New', 2019, '0.2047'),
(5621, 21, '072Y', 'New', 2019, '2.0910'),
(5622, 22, '072Y', 'New', 2019, '0.3510'),
(5623, 23, '072Y', 'New', 2019, '-1.0000'),
(5624, 25, '072Y', 'New', 2019, '0.4717'),
(5625, 24, '072Y', 'New', 2019, '0.1060'),
(5626, 1, '068Y', 'New', 2019, '-0.5249'),
(5627, 2, '068Y', 'New', 2019, '-1.0000'),
(5628, 3, '068Y', 'New', 2019, '-1.0000'),
(5629, 5, '068Y', 'New', 2019, '1.0637'),
(5630, 4, '068Y', 'New', 2019, '-0.3450'),
(5631, 6, '068Y', 'New', 2019, '0.3500'),
(5632, 7, '068Y', 'New', 2019, '-1.0000'),
(5633, 8, '068Y', 'New', 2019, '-1.0000'),
(5634, 9, '068Y', 'New', 2019, '-1.0000'),
(5635, 10, '068Y', 'New', 2019, '0.4760'),
(5636, 14, '068Y', 'New', 2019, '0.3156'),
(5637, 11, '068Y', 'New', 2019, '0.4577'),
(5638, 13, '068Y', 'New', 2019, '0.5227'),
(5639, 12, '068Y', 'New', 2019, '0.2264'),
(5640, 17, '068Y', 'New', 2019, '0.2449'),
(5641, 15, '068Y', 'New', 2019, '0.3956'),
(5642, 16, '068Y', 'New', 2019, '-0.2750'),
(5643, 19, '068Y', 'New', 2019, '-1.0000'),
(5644, 18, '068Y', 'New', 2019, '-1.0000'),
(5645, 20, '068Y', 'New', 2019, '-1.0000'),
(5646, 21, '068Y', 'New', 2019, '-1.0000'),
(5647, 22, '068Y', 'New', 2019, '0.1841'),
(5648, 23, '068Y', 'New', 2019, '-1.0000'),
(5649, 25, '068Y', 'New', 2019, '-1.0000'),
(5650, 24, '068Y', 'New', 2019, '-0.1825'),
(5651, 1, '069Y', 'New', 2019, '-0.4221'),
(5652, 2, '069Y', 'New', 2019, '-0.1858'),
(5653, 3, '069Y', 'New', 2019, '0.0331'),
(5654, 5, '069Y', 'New', 2019, '-0.4590'),
(5655, 4, '069Y', 'New', 2019, '-0.0739'),
(5656, 6, '069Y', 'New', 2019, '0.6510'),
(5657, 7, '069Y', 'New', 2019, '-1.0000'),
(5658, 8, '069Y', 'New', 2019, '-1.0000'),
(5659, 9, '069Y', 'New', 2019, '-1.0000'),
(5660, 10, '069Y', 'New', 2019, '0.4741'),
(5661, 14, '069Y', 'New', 2019, '0.6594'),
(5662, 11, '069Y', 'New', 2019, '0.5174'),
(5663, 13, '069Y', 'New', 2019, '0.6384'),
(5664, 12, '069Y', 'New', 2019, '0.3673'),
(5665, 17, '069Y', 'New', 2019, '0.6335'),
(5666, 15, '069Y', 'New', 2019, '0.6787'),
(5667, 16, '069Y', 'New', 2019, '0.6665'),
(5668, 19, '069Y', 'New', 2019, '0.4870'),
(5669, 18, '069Y', 'New', 2019, '-1.0000'),
(5670, 20, '069Y', 'New', 2019, '-1.0000'),
(5671, 21, '069Y', 'New', 2019, '-1.0000'),
(5672, 22, '069Y', 'New', 2019, '0.6173'),
(5673, 23, '069Y', 'New', 2019, '-1.0000'),
(5674, 25, '069Y', 'New', 2019, '0.1758'),
(5675, 24, '069Y', 'New', 2019, '-1.0000'),
(5676, 1, '071Y', 'New', 2019, '-0.1472'),
(5677, 2, '071Y', 'New', 2019, '-1.0000'),
(5678, 3, '071Y', 'New', 2019, '-1.0000'),
(5679, 5, '071Y', 'New', 2019, '0.0411'),
(5680, 4, '071Y', 'New', 2019, '-0.1318'),
(5681, 6, '071Y', 'New', 2019, '0.9323'),
(5682, 7, '071Y', 'New', 2019, '-1.0000'),
(5683, 8, '071Y', 'New', 2019, '-1.0000'),
(5684, 9, '071Y', 'New', 2019, '-1.0000'),
(5685, 10, '071Y', 'New', 2019, '0.9244'),
(5686, 14, '071Y', 'New', 2019, '0.9554'),
(5687, 11, '071Y', 'New', 2019, '0.7080'),
(5688, 13, '071Y', 'New', 2019, '0.8571'),
(5689, 12, '071Y', 'New', 2019, '0.5914'),
(5690, 17, '071Y', 'New', 2019, '0.8790'),
(5691, 15, '071Y', 'New', 2019, '0.8879'),
(5692, 16, '071Y', 'New', 2019, '0.8890'),
(5693, 19, '071Y', 'New', 2019, '0.8182'),
(5694, 18, '071Y', 'New', 2019, '-1.0000'),
(5695, 20, '071Y', 'New', 2019, '-1.0000'),
(5696, 21, '071Y', 'New', 2019, '-1.0000'),
(5697, 22, '071Y', 'New', 2019, '0.6636'),
(5698, 23, '071Y', 'New', 2019, '-1.0000'),
(5699, 25, '071Y', 'New', 2019, '0.8511'),
(5700, 24, '071Y', 'New', 2019, '0.8615');

-- --------------------------------------------------------

--
-- Structure for view `v_community`
--
DROP TABLE IF EXISTS `v_community`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_community`  AS SELECT `users`.`id` AS `user_id`, `users`.`profile_image` AS `profile_image`, `users`.`first_name` AS `first_name`, `users`.`last_name` AS `last_name`, `users`.`actor_type` AS `actor_type`, `users`.`specialized_actor_type` AS `specialized_actor_type`, `users`.`status` AS `status`, `community`.`thread_id` AS `thread_id`, `community`.`title` AS `title`, `community`.`body` AS `body`, `community`.`views` AS `views`, `community`.`created_at` AS `created_at` FROM (`users` join `community` on(`users`.`id` = `community`.`user_id`)) ORDER BY `community`.`created_at` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `v_complete_posts`
--
DROP TABLE IF EXISTS `v_complete_posts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_complete_posts`  AS SELECT `v_posts_with_users`.`postId` AS `postId`, `v_posts_with_users`.`userId` AS `userId`, `v_posts_with_users`.`type` AS `type`, `v_posts_with_users`.`image` AS `image`, `v_posts_with_users`.`actor_type` AS `actor_type`, `v_posts_with_users`.`specialized_actor_type` AS `specialized_actor_type`, `v_posts_with_users`.`profile_image` AS `profile_image`, `v_posts_with_users`.`first_name` AS `first_name`, `v_posts_with_users`.`last_name` AS `last_name`, `v_posts_with_users`.`status` AS `status`, `v_posts_with_users`.`postCreated` AS `postCreated`, `v_posts_with_users`.`title` AS `title`, `v_posts_with_users`.`body` AS `body`, `v_posts_with_users`.`applied` AS `applied`, `v_posts_with_users`.`capacity` AS `capacity`, `v_posts_with_users`.`ups` AS `ups`, `v_posts_with_users`.`downs` AS `downs`, `v_posts_with_users`.`payed` AS `payed`, `v_posts_with_comments`.`comment_count` AS `comment_count`, ifnull(`v_posts_with_rates`.`rate1`,0) AS `rate1`, ifnull(`v_posts_with_rates`.`rate2`,0) AS `rate2`, ifnull(`v_posts_with_rates`.`rate3`,0) AS `rate3`, ifnull(`v_posts_with_rates`.`rate4`,0) AS `rate4`, ifnull(`v_posts_with_rates`.`rate5`,0) AS `rate5`, `v_posts_with_reviews`.`review_count` AS `review_count` FROM (((`v_posts_with_users` join `v_posts_with_rates` on(`v_posts_with_users`.`postId` = `v_posts_with_rates`.`postId`)) join `v_posts_with_reviews` on(`v_posts_with_users`.`postId` = `v_posts_with_reviews`.`postId`)) join `v_posts_with_comments` on(`v_posts_with_reviews`.`postId` = `v_posts_with_comments`.`postId`)) ORDER BY `v_posts_with_users`.`postCreated` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `v_enrol_student_list`
--
DROP TABLE IF EXISTS `v_enrol_student_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enrol_student_list`  AS SELECT `profguiderenrollments`.`post_id` AS `post_id`, `profguiderenrollments`.`user_id` AS `user_id`, `users`.`first_name` AS `first_name`, `users`.`last_name` AS `last_name`, `users`.`profile_image` AS `profile_image`, `users`.`actor_type` AS `actor_type` FROM (`profguiderenrollments` join `users` on(`profguiderenrollments`.`user_id` = `users`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_gov_course_and_university`
--
DROP TABLE IF EXISTS `v_gov_course_and_university`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_gov_course_and_university`  AS SELECT `governmentcourseofferedbygovermentuniversity`.`id` AS `id`, `governmentcourse`.`gov_course_id` AS `gov_course_id`, `governmentcourse`.`gov_course_name` AS `gov_course_name`, `govermentuniversity`.`gov_uni_id` AS `gov_uni_id`, `govermentuniversity`.`uni_name` AS `uni_name`, `governmentcourseofferedbygovermentuniversity`.`unicode` AS `unicode`, `governmentcourseofferedbygovermentuniversity`.`purposed_intake` AS `purposed_intake`, `governmentcourseofferedbygovermentuniversity`.`duration` AS `duration`, `governmentcourseofferedbygovermentuniversity`.`description` AS `description`, `governmentcourse`.`stream_id` AS `stream_id` FROM ((`governmentcourseofferedbygovermentuniversity` join `governmentcourse` on(`governmentcourseofferedbygovermentuniversity`.`gov_course_id` = `governmentcourse`.`gov_course_id`)) join `govermentuniversity` on(`governmentcourseofferedbygovermentuniversity`.`gov_uni_id` = `govermentuniversity`.`gov_uni_id`)) ORDER BY `governmentcourseofferedbygovermentuniversity`.`id` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_banners`
--
DROP TABLE IF EXISTS `v_posts_banners`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_banners`  AS SELECT `v_complete_posts`.`postId` AS `post_id`, `v_complete_posts`.`userId` AS `userId`, `v_complete_posts`.`type` AS `type`, `v_complete_posts`.`image` AS `image`, `v_complete_posts`.`actor_type` AS `actor_type`, `v_complete_posts`.`specialized_actor_type` AS `specialized_actor_type`, `v_complete_posts`.`profile_image` AS `profile_image`, `v_complete_posts`.`first_name` AS `first_name`, `v_complete_posts`.`last_name` AS `last_name`, `v_complete_posts`.`status` AS `status`, `v_complete_posts`.`postCreated` AS `postCreated`, `v_complete_posts`.`title` AS `title`, `v_complete_posts`.`body` AS `body`, `v_complete_posts`.`applied` AS `applied`, `v_complete_posts`.`capacity` AS `capacity`, `banner`.`session_fee` AS `session_fee`, `v_complete_posts`.`ups` AS `ups`, `v_complete_posts`.`downs` AS `downs`, `v_complete_posts`.`comment_count` AS `comment_count`, ifnull(`v_complete_posts`.`rate1`,0) AS `rate1`, ifnull(`v_complete_posts`.`rate2`,0) AS `rate2`, ifnull(`v_complete_posts`.`rate3`,0) AS `rate3`, ifnull(`v_complete_posts`.`rate4`,0) AS `rate4`, ifnull(`v_complete_posts`.`rate5`,0) AS `rate5`, `v_complete_posts`.`review_count` AS `review_count`, `v_complete_posts`.`payed` AS `payed` FROM (`v_complete_posts` join `banner` on(`banner`.`banner_id` = `v_complete_posts`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_courses`
--
DROP TABLE IF EXISTS `v_posts_courses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_courses`  AS SELECT `v_complete_posts`.`postId` AS `post_id`, `v_complete_posts`.`userId` AS `private_uni_id`, `v_complete_posts`.`type` AS `type`, `v_complete_posts`.`image` AS `image`, `v_complete_posts`.`actor_type` AS `actor_type`, `v_complete_posts`.`specialized_actor_type` AS `specialized_actor_type`, `v_complete_posts`.`profile_image` AS `profile_image`, `v_complete_posts`.`first_name` AS `first_name`, `v_complete_posts`.`last_name` AS `last_name`, `v_complete_posts`.`status` AS `status`, `v_complete_posts`.`postCreated` AS `postCreated`, `v_complete_posts`.`title` AS `courseName`, `v_complete_posts`.`body` AS `courseContent`, `privatecourses`.`provide_degree` AS `provide_degree`, `privatecourses`.`course_fee` AS `course_fee`, `v_complete_posts`.`applied` AS `applied`, `v_complete_posts`.`capacity` AS `capacity`, `v_complete_posts`.`ups` AS `ups`, `v_complete_posts`.`downs` AS `downs`, `v_complete_posts`.`comment_count` AS `comment_count`, ifnull(`v_complete_posts`.`rate1`,0) AS `rate1`, ifnull(`v_complete_posts`.`rate2`,0) AS `rate2`, ifnull(`v_complete_posts`.`rate3`,0) AS `rate3`, ifnull(`v_complete_posts`.`rate4`,0) AS `rate4`, ifnull(`v_complete_posts`.`rate5`,0) AS `rate5`, `v_complete_posts`.`review_count` AS `review_count` FROM (`v_complete_posts` join `privatecourses` on(`privatecourses`.`post_id` = `v_complete_posts`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_jobs`
--
DROP TABLE IF EXISTS `v_posts_jobs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_jobs`  AS SELECT `v_complete_posts`.`postId` AS `post_id`, `v_complete_posts`.`userId` AS `company_id`, `v_complete_posts`.`type` AS `type`, `v_complete_posts`.`image` AS `image`, `v_complete_posts`.`actor_type` AS `actor_type`, `v_complete_posts`.`specialized_actor_type` AS `specialized_actor_type`, `v_complete_posts`.`profile_image` AS `profile_image`, `v_complete_posts`.`first_name` AS `first_name`, `v_complete_posts`.`last_name` AS `last_name`, `v_complete_posts`.`status` AS `status`, `v_complete_posts`.`postCreated` AS `postCreated`, `jobs`.`paid_date` AS `paid_date`, `v_complete_posts`.`title` AS `jobName`, `v_complete_posts`.`body` AS `jobContent`, `v_complete_posts`.`applied` AS `applied`, `v_complete_posts`.`capacity` AS `capacity`, `v_complete_posts`.`ups` AS `ups`, `v_complete_posts`.`downs` AS `downs`, `v_complete_posts`.`comment_count` AS `comment_count`, ifnull(`v_complete_posts`.`rate1`,0) AS `rate1`, ifnull(`v_complete_posts`.`rate2`,0) AS `rate2`, ifnull(`v_complete_posts`.`rate3`,0) AS `rate3`, ifnull(`v_complete_posts`.`rate4`,0) AS `rate4`, ifnull(`v_complete_posts`.`rate5`,0) AS `rate5`, `v_complete_posts`.`review_count` AS `review_count`, `v_complete_posts`.`payed` AS `payed` FROM (`v_complete_posts` join `jobs` on(`jobs`.`post_id` = `v_complete_posts`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_link`
--
DROP TABLE IF EXISTS `v_posts_link`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_link`  AS SELECT `posts`.`id` AS `post_id`, `users`.`id` AS `user_id`, `posts`.`title` AS `title`, `sessionlink`.`date` AS `date`, `sessionlink`.`time` AS `time`, `sessionlink`.`body` AS `body` FROM ((`posts` join `users` on(`posts`.`user_id` = `users`.`id`)) join `sessionlink` on(`posts`.`id` = `sessionlink`.`post_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_notices`
--
DROP TABLE IF EXISTS `v_posts_notices`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_notices`  AS SELECT `v_complete_posts`.`postId` AS `post_id`, `v_complete_posts`.`userId` AS `private_uni_id`, `v_complete_posts`.`type` AS `type`, `v_complete_posts`.`image` AS `image`, `v_complete_posts`.`actor_type` AS `actor_type`, `v_complete_posts`.`specialized_actor_type` AS `specialized_actor_type`, `v_complete_posts`.`profile_image` AS `profile_image`, `v_complete_posts`.`first_name` AS `first_name`, `v_complete_posts`.`last_name` AS `last_name`, `v_complete_posts`.`status` AS `status`, `v_complete_posts`.`postCreated` AS `postCreated`, `intakenotices`.`paid_date` AS `paid_date`, `v_complete_posts`.`title` AS `noticeName`, `v_complete_posts`.`body` AS `noticeContent`, `v_complete_posts`.`applied` AS `applied`, `v_complete_posts`.`capacity` AS `capacity`, `v_complete_posts`.`ups` AS `ups`, `v_complete_posts`.`downs` AS `downs`, `v_complete_posts`.`comment_count` AS `comment_count`, ifnull(`v_complete_posts`.`rate1`,0) AS `rate1`, ifnull(`v_complete_posts`.`rate2`,0) AS `rate2`, ifnull(`v_complete_posts`.`rate3`,0) AS `rate3`, ifnull(`v_complete_posts`.`rate4`,0) AS `rate4`, ifnull(`v_complete_posts`.`rate5`,0) AS `rate5`, `v_complete_posts`.`review_count` AS `review_count`, `v_complete_posts`.`payed` AS `payed` FROM (`v_complete_posts` join `intakenotices` on(`intakenotices`.`post_id` = `v_complete_posts`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_posters`
--
DROP TABLE IF EXISTS `v_posts_posters`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_posters`  AS SELECT `v_complete_posts`.`postId` AS `post_id`, `v_complete_posts`.`userId` AS `userId`, `v_complete_posts`.`type` AS `type`, `v_complete_posts`.`image` AS `image`, `v_complete_posts`.`actor_type` AS `actor_type`, `v_complete_posts`.`specialized_actor_type` AS `specialized_actor_type`, `v_complete_posts`.`profile_image` AS `profile_image`, `v_complete_posts`.`first_name` AS `first_name`, `v_complete_posts`.`last_name` AS `last_name`, `v_complete_posts`.`status` AS `status`, `v_complete_posts`.`postCreated` AS `postCreated`, `v_complete_posts`.`title` AS `title`, `v_complete_posts`.`body` AS `body`, `v_complete_posts`.`applied` AS `applied`, `v_complete_posts`.`capacity` AS `capacity`, `poster`.`session_fee` AS `session_fee`, `v_complete_posts`.`ups` AS `ups`, `v_complete_posts`.`downs` AS `downs`, `v_complete_posts`.`comment_count` AS `comment_count`, ifnull(`v_complete_posts`.`rate1`,0) AS `rate1`, ifnull(`v_complete_posts`.`rate2`,0) AS `rate2`, ifnull(`v_complete_posts`.`rate3`,0) AS `rate3`, ifnull(`v_complete_posts`.`rate4`,0) AS `rate4`, ifnull(`v_complete_posts`.`rate5`,0) AS `rate5`, `v_complete_posts`.`review_count` AS `review_count`, `v_complete_posts`.`payed` AS `payed` FROM (`v_complete_posts` join `poster` on(`poster`.`poster_id` = `v_complete_posts`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_rate1`
--
DROP TABLE IF EXISTS `v_posts_rate1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_rate1`  AS SELECT `review`.`post_id` AS `postId`, count(`review`.`review_id`) AS `rate1` FROM `review` WHERE `review`.`rate` = 1 GROUP BY `review`.`post_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_rate2`
--
DROP TABLE IF EXISTS `v_posts_rate2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_rate2`  AS SELECT `review`.`post_id` AS `postId`, count(`review`.`review_id`) AS `rate2` FROM `review` WHERE `review`.`rate` = 2 GROUP BY `review`.`post_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_rate3`
--
DROP TABLE IF EXISTS `v_posts_rate3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_rate3`  AS SELECT `review`.`post_id` AS `postId`, count(`review`.`review_id`) AS `rate3` FROM `review` WHERE `review`.`rate` = 3 GROUP BY `review`.`post_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_rate4`
--
DROP TABLE IF EXISTS `v_posts_rate4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_rate4`  AS SELECT `review`.`post_id` AS `postId`, count(`review`.`review_id`) AS `rate4` FROM `review` WHERE `review`.`rate` = 4 GROUP BY `review`.`post_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_rate5`
--
DROP TABLE IF EXISTS `v_posts_rate5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_rate5`  AS SELECT `review`.`post_id` AS `postId`, count(`review`.`review_id`) AS `rate5` FROM `review` WHERE `review`.`rate` = 5 GROUP BY `review`.`post_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_rates`
--
DROP TABLE IF EXISTS `v_posts_rates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_rates`  AS SELECT `posts`.`id` AS `postId`, `v_posts_rate1`.`rate1` AS `rate1`, `v_posts_rate2`.`rate2` AS `rate2`, `v_posts_rate3`.`rate3` AS `rate3`, `v_posts_rate4`.`rate4` AS `rate4`, `v_posts_rate5`.`rate5` AS `rate5` FROM (((((`posts` left join `v_posts_rate1` on(`posts`.`id` = `v_posts_rate1`.`postId`)) left join `v_posts_rate2` on(`posts`.`id` = `v_posts_rate2`.`postId`)) left join `v_posts_rate3` on(`posts`.`id` = `v_posts_rate3`.`postId`)) left join `v_posts_rate4` on(`posts`.`id` = `v_posts_rate4`.`postId`)) left join `v_posts_rate5` on(`posts`.`id` = `v_posts_rate5`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_transactions`
--
DROP TABLE IF EXISTS `v_posts_transactions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_transactions`  AS SELECT `transactions`.`transaction_id` AS `transaction_id`, `transactions`.`post_id` AS `post_id`, `transactions`.`user_id` AS `user_id`, `v_complete_posts`.`type` AS `type`, `v_complete_posts`.`first_name` AS `first_name`, `v_complete_posts`.`last_name` AS `last_name`, `v_complete_posts`.`actor_type` AS `actor_type`, `v_complete_posts`.`specialized_actor_type` AS `specialized_actor_type`, `transactions`.`amount` AS `amount` FROM (`transactions` join `v_complete_posts` on(`transactions`.`post_id` = `v_complete_posts`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_with_comments`
--
DROP TABLE IF EXISTS `v_posts_with_comments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_with_comments`  AS SELECT `posts`.`id` AS `postId`, count(`comments`.`comment_id`) AS `comment_count` FROM (`posts` left join `comments` on(`posts`.`id` = `comments`.`post_id`)) GROUP BY `posts`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_with_rates`
--
DROP TABLE IF EXISTS `v_posts_with_rates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_with_rates`  AS SELECT `posts`.`id` AS `postId`, `v_posts_rates`.`rate1` AS `rate1`, `v_posts_rates`.`rate2` AS `rate2`, `v_posts_rates`.`rate3` AS `rate3`, `v_posts_rates`.`rate4` AS `rate4`, `v_posts_rates`.`rate5` AS `rate5` FROM (`posts` left join `v_posts_rates` on(`posts`.`id` = `v_posts_rates`.`postId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_with_reviews`
--
DROP TABLE IF EXISTS `v_posts_with_reviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_with_reviews`  AS SELECT `posts`.`id` AS `postId`, count(`review`.`review_id`) AS `review_count` FROM (`posts` left join `review` on(`posts`.`id` = `review`.`post_id`)) GROUP BY `posts`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_posts_with_users`
--
DROP TABLE IF EXISTS `v_posts_with_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_posts_with_users`  AS SELECT `posts`.`image` AS `image`, `posts`.`type` AS `type`, `users`.`first_name` AS `first_name`, `users`.`last_name` AS `last_name`, `users`.`profile_image` AS `profile_image`, `users`.`actor_type` AS `actor_type`, `users`.`specialized_actor_type` AS `specialized_actor_type`, `users`.`status` AS `status`, `posts`.`id` AS `postId`, `users`.`id` AS `userId`, `posts`.`created_at` AS `postCreated`, `posts`.`title` AS `title`, `posts`.`body` AS `body`, `posts`.`applied` AS `applied`, `posts`.`capacity` AS `capacity`, `posts`.`ups` AS `ups`, `posts`.`downs` AS `downs`, `posts`.`payed` AS `payed` FROM (`posts` join `users` on(`posts`.`user_id` = `users`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_received_cv`
--
DROP TABLE IF EXISTS `v_received_cv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_received_cv`  AS SELECT `cvsenttoapost`.`post_id` AS `post_id`, `users`.`id` AS `user_id`, `users`.`first_name` AS `first_name`, `users`.`last_name` AS `last_name`, `cv`.`cv_file_name` AS `cv_file_name` FROM ((`cvsenttoapost` join `users` on(`cvsenttoapost`.`user_id` = `users`.`id`)) join `cv` on(`cvsenttoapost`.`cv_id` = `cv`.`cv_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_zscore_table`
--
DROP TABLE IF EXISTS `v_zscore_table`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_zscore_table`  AS SELECT `district`.`district_name` AS `district_name`, `v_gov_course_and_university`.`gov_course_name` AS `gov_course_name`, `v_gov_course_and_university`.`uni_name` AS `uni_name`, `v_gov_course_and_university`.`unicode` AS `unicode`, `v_gov_course_and_university`.`stream_id` AS `stream_id`, `zscoretable`.`syllabus` AS `syllabus`, `zscoretable`.`year` AS `year`, `zscoretable`.`z_score` AS `z_score` FROM ((`zscoretable` join `district` on(`zscoretable`.`district_id` = `district`.`district_id`)) left join `v_gov_course_and_university` on(`zscoretable`.`unicode` = `v_gov_course_and_university`.`unicode`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additionalsettings`
--
ALTER TABLE `additionalsettings`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `adminoffersgovernmentcourse`
--
ALTER TABLE `adminoffersgovernmentcourse`
  ADD PRIMARY KEY (`admin_id`,`gov_course_id`),
  ADD KEY `gov_course_id` (`gov_course_id`);

--
-- Indexes for table `aladmissiblestreamsubject`
--
ALTER TABLE `aladmissiblestreamsubject`
  ADD PRIMARY KEY (`stream_sbj_id`),
  ADD KEY `sub1_id` (`sub1_id`),
  ADD KEY `sub2_id` (`sub2_id`),
  ADD KEY `sub3_id` (`sub3_id`),
  ADD KEY `stream_id` (`stream_id`);

--
-- Indexes for table `aladmissiblestreamsubjectselected`
--
ALTER TABLE `aladmissiblestreamsubjectselected`
  ADD PRIMARY KEY (`stu_id`,`stream_sbj_id`),
  ADD KEY `stream_sbj_id` (`stream_sbj_id`),
  ADD KEY `ol_sub1_id` (`ol_sub1_id`),
  ADD KEY `ol_sub2_id` (`ol_sub2_id`),
  ADD KEY `ol_sub3_id` (`ol_sub3_id`);

--
-- Indexes for table `alqualifiedstudent`
--
ALTER TABLE `alqualifiedstudent`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `al_sub1_id` (`al_sub1_id`),
  ADD KEY `al_sub2_id` (`al_sub2_id`),
  ADD KEY `al_sub3_id` (`al_sub3_id`);

--
-- Indexes for table `alsubject`
--
ALTER TABLE `alsubject`
  ADD PRIMARY KEY (`al_sub_id`),
  ADD KEY `al_stream_id` (`al_stream_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `beginnerstudent`
--
ALTER TABLE `beginnerstudent`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `commentinteractions`
--
ALTER TABLE `commentinteractions`
  ADD PRIMARY KEY (`comment_interaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`thread_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `communitycommentinteractions`
--
ALTER TABLE `communitycommentinteractions`
  ADD PRIMARY KEY (`comment_interaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `communitycomments`
--
ALTER TABLE `communitycomments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `complaintsender_id` (`complaintsender_id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`connection_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`cv_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cvsenttoapost`
--
ALTER TABLE `cvsenttoapost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `govermentuniversity`
--
ALTER TABLE `govermentuniversity`
  ADD PRIMARY KEY (`gov_uni_id`);

--
-- Indexes for table `govermentuniversityrankings`
--
ALTER TABLE `govermentuniversityrankings`
  ADD PRIMARY KEY (`gov_uni_id`,`year`,`edition`);

--
-- Indexes for table `governmentcourse`
--
ALTER TABLE `governmentcourse`
  ADD PRIMARY KEY (`gov_course_id`),
  ADD KEY `stream_id` (`stream_id`);

--
-- Indexes for table `governmentcourseminimumeligibilityrequsingalsubjects`
--
ALTER TABLE `governmentcourseminimumeligibilityrequsingalsubjects`
  ADD PRIMARY KEY (`min_req_id`),
  ADD KEY `al_sub1_id` (`al_sub1_id`),
  ADD KEY `al_sub2_id` (`al_sub2_id`),
  ADD KEY `al_sub3_id` (`al_sub3_id`);

--
-- Indexes for table `governmentcourseofferedbygovermentuniversity`
--
ALTER TABLE `governmentcourseofferedbygovermentuniversity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gov_course_id` (`gov_course_id`),
  ADD KEY `gov_uni_id` (`gov_uni_id`);

--
-- Indexes for table `intakenotices`
--
ALTER TABLE `intakenotices`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `private_uni_id` (`private_uni_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `jobapplicants`
--
ALTER TABLE `jobapplicants`
  ADD PRIMARY KEY (`job_apply_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`mentor_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `olqualifiedstudent`
--
ALTER TABLE `olqualifiedstudent`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `ol_sub1_id` (`ol_sub1_id`),
  ADD KEY `ol_sub2_id` (`ol_sub2_id`),
  ADD KEY `ol_sub3_id` (`ol_sub3_id`),
  ADD KEY `ol_sub4_id` (`ol_sub4_id`),
  ADD KEY `ol_sub5_id` (`ol_sub5_id`),
  ADD KEY `ol_sub6_id` (`ol_sub6_id`),
  ADD KEY `ol_sub7_id` (`ol_sub7_id`),
  ADD KEY `ol_sub8_id` (`ol_sub8_id`),
  ADD KEY `ol_sub9_id` (`ol_sub9_id`);

--
-- Indexes for table `olsubject`
--
ALTER TABLE `olsubject`
  ADD PRIMARY KEY (`ol_sub_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`poster_id`);

--
-- Indexes for table `postinteractions`
--
ALTER TABLE `postinteractions`
  ADD PRIMARY KEY (`interaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `privatecourses`
--
ALTER TABLE `privatecourses`
  ADD PRIMARY KEY (`privatecourse_id`),
  ADD KEY `private_uni_id` (`private_uni_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `privateuniversity`
--
ALTER TABLE `privateuniversity`
  ADD PRIMARY KEY (`privateuni_id`);

--
-- Indexes for table `profguide`
--
ALTER TABLE `profguide`
  ADD PRIMARY KEY (`guider_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `profguiderenrollments`
--
ALTER TABLE `profguiderenrollments`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`reported_id`,`reporter_id`),
  ADD KEY `reporter_id` (`reporter_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `sessionlink`
--
ALTER TABLE `sessionlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `socialprofiles`
--
ALTER TABLE `socialprofiles`
  ADD PRIMARY KEY (`profile_record_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `steamselectedbyalqualifiedstudent`
--
ALTER TABLE `steamselectedbyalqualifiedstudent`
  ADD PRIMARY KEY (`stu_id`,`stream_id`),
  ADD KEY `stream_id` (`stream_id`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`stream_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `teacherenrollments`
--
ALTER TABLE `teacherenrollments`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `undergraduategraduate`
--
ALTER TABLE `undergraduategraduate`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `unicodes`
--
ALTER TABLE `unicodes`
  ADD PRIMARY KEY (`uni_code`),
  ADD KEY `gov_uni_id` (`gov_uni_id`),
  ADD KEY `gov_course_id` (`gov_course_id`);

--
-- Indexes for table `universitytype`
--
ALTER TABLE `universitytype`
  ADD PRIMARY KEY (`uni_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zscoretable`
--
ALTER TABLE `zscoretable`
  ADD PRIMARY KEY (`z_id`),
  ADD KEY `district_id` (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alsubject`
--
ALTER TABLE `alsubject`
  MODIFY `al_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `commentinteractions`
--
ALTER TABLE `commentinteractions`
  MODIFY `comment_interaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `communitycommentinteractions`
--
ALTER TABLE `communitycommentinteractions`
  MODIFY `comment_interaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `communitycomments`
--
ALTER TABLE `communitycomments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `connection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cv`
--
ALTER TABLE `cv`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cvsenttoapost`
--
ALTER TABLE `cvsenttoapost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `govermentuniversity`
--
ALTER TABLE `govermentuniversity`
  MODIFY `gov_uni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `governmentcourseminimumeligibilityrequsingalsubjects`
--
ALTER TABLE `governmentcourseminimumeligibilityrequsingalsubjects`
  MODIFY `min_req_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `governmentcourseofferedbygovermentuniversity`
--
ALTER TABLE `governmentcourseofferedbygovermentuniversity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `intakenotices`
--
ALTER TABLE `intakenotices`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobapplicants`
--
ALTER TABLE `jobapplicants`
  MODIFY `job_apply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `mentor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `olsubject`
--
ALTER TABLE `olsubject`
  MODIFY `ol_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `postinteractions`
--
ALTER TABLE `postinteractions`
  MODIFY `interaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `privatecourses`
--
ALTER TABLE `privatecourses`
  MODIFY `privatecourse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profguide`
--
ALTER TABLE `profguide`
  MODIFY `guider_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profguiderenrollments`
--
ALTER TABLE `profguiderenrollments`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `sessionlink`
--
ALTER TABLE `sessionlink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socialprofiles`
--
ALTER TABLE `socialprofiles`
  MODIFY `profile_record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `stream_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacherenrollments`
--
ALTER TABLE `teacherenrollments`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `universitytype`
--
ALTER TABLE `universitytype`
  MODIFY `uni_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zscoretable`
--
ALTER TABLE `zscoretable`
  MODIFY `z_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5701;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `additionalsettings`
--
ALTER TABLE `additionalsettings`
  ADD CONSTRAINT `additionalsettings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adminoffersgovernmentcourse`
--
ALTER TABLE `adminoffersgovernmentcourse`
  ADD CONSTRAINT `adminoffersgovernmentcourse_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `adminoffersgovernmentcourse_ibfk_2` FOREIGN KEY (`gov_course_id`) REFERENCES `governmentcourse` (`gov_course_id`);

--
-- Constraints for table `aladmissiblestreamsubject`
--
ALTER TABLE `aladmissiblestreamsubject`
  ADD CONSTRAINT `aladmissiblestreamsubject_ibfk_1` FOREIGN KEY (`sub1_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `aladmissiblestreamsubject_ibfk_2` FOREIGN KEY (`sub2_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `aladmissiblestreamsubject_ibfk_3` FOREIGN KEY (`sub3_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `aladmissiblestreamsubject_ibfk_4` FOREIGN KEY (`stream_id`) REFERENCES `stream` (`stream_id`);

--
-- Constraints for table `aladmissiblestreamsubjectselected`
--
ALTER TABLE `aladmissiblestreamsubjectselected`
  ADD CONSTRAINT `aladmissiblestreamsubjectselected_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `alqualifiedstudent` (`stu_id`),
  ADD CONSTRAINT `aladmissiblestreamsubjectselected_ibfk_2` FOREIGN KEY (`stream_sbj_id`) REFERENCES `aladmissiblestreamsubject` (`stream_sbj_id`),
  ADD CONSTRAINT `aladmissiblestreamsubjectselected_ibfk_3` FOREIGN KEY (`ol_sub1_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `aladmissiblestreamsubjectselected_ibfk_4` FOREIGN KEY (`ol_sub2_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `aladmissiblestreamsubjectselected_ibfk_5` FOREIGN KEY (`ol_sub3_id`) REFERENCES `olsubject` (`ol_sub_id`);

--
-- Constraints for table `alqualifiedstudent`
--
ALTER TABLE `alqualifiedstudent`
  ADD CONSTRAINT `alqualifiedstudent_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  ADD CONSTRAINT `alqualifiedstudent_ibfk_2` FOREIGN KEY (`al_sub1_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `alqualifiedstudent_ibfk_3` FOREIGN KEY (`al_sub2_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `alqualifiedstudent_ibfk_4` FOREIGN KEY (`al_sub3_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `alqualifiedstudent_ibfk_5` FOREIGN KEY (`stu_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alsubject`
--
ALTER TABLE `alsubject`
  ADD CONSTRAINT `alsubject_ibfk_1` FOREIGN KEY (`al_stream_id`) REFERENCES `stream` (`stream_id`);

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `beginnerstudent`
--
ALTER TABLE `beginnerstudent`
  ADD CONSTRAINT `beginnerstudent_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `commentinteractions`
--
ALTER TABLE `commentinteractions`
  ADD CONSTRAINT `commentinteractions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commentinteractions_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `community`
--
ALTER TABLE `community`
  ADD CONSTRAINT `community_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `communitycommentinteractions`
--
ALTER TABLE `communitycommentinteractions`
  ADD CONSTRAINT `communitycommentinteractions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communitycommentinteractions_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `communitycomments` (`comment_id`) ON DELETE CASCADE;

--
-- Constraints for table `communitycomments`
--
ALTER TABLE `communitycomments`
  ADD CONSTRAINT `communitycomments_ibfk_1` FOREIGN KEY (`thread_id`) REFERENCES `community` (`thread_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communitycomments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `organization` (`org_id`) ON DELETE CASCADE;

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`complaintsender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `connections_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `connections_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `cv_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cvsenttoapost`
--
ALTER TABLE `cvsenttoapost`
  ADD CONSTRAINT `cvsenttoapost_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cvsenttoapost_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cvsenttoapost_ibfk_3` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `governmentcourse`
--
ALTER TABLE `governmentcourse`
  ADD CONSTRAINT `governmentcourse_ibfk_1` FOREIGN KEY (`stream_id`) REFERENCES `stream` (`stream_id`);

--
-- Constraints for table `governmentcourseminimumeligibilityrequsingalsubjects`
--
ALTER TABLE `governmentcourseminimumeligibilityrequsingalsubjects`
  ADD CONSTRAINT `governmentcourseminimumeligibilityrequsingalsubjects_ibfk_1` FOREIGN KEY (`al_sub1_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `governmentcourseminimumeligibilityrequsingalsubjects_ibfk_2` FOREIGN KEY (`al_sub2_id`) REFERENCES `alsubject` (`al_sub_id`),
  ADD CONSTRAINT `governmentcourseminimumeligibilityrequsingalsubjects_ibfk_3` FOREIGN KEY (`al_sub3_id`) REFERENCES `alsubject` (`al_sub_id`);

--
-- Constraints for table `governmentcourseofferedbygovermentuniversity`
--
ALTER TABLE `governmentcourseofferedbygovermentuniversity`
  ADD CONSTRAINT `governmentcourseofferedbygovermentuniversity_ibfk_1` FOREIGN KEY (`gov_course_id`) REFERENCES `governmentcourse` (`gov_course_id`),
  ADD CONSTRAINT `governmentcourseofferedbygovermentuniversity_ibfk_2` FOREIGN KEY (`gov_uni_id`) REFERENCES `govermentuniversity` (`gov_uni_id`);

--
-- Constraints for table `intakenotices`
--
ALTER TABLE `intakenotices`
  ADD CONSTRAINT `intakenotices_ibfk_1` FOREIGN KEY (`private_uni_id`) REFERENCES `privateuniversity` (`privateuni_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `intakenotices_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobapplicants`
--
ALTER TABLE `jobapplicants`
  ADD CONSTRAINT `jobapplicants_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobapplicants_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `olqualifiedstudent`
--
ALTER TABLE `olqualifiedstudent`
  ADD CONSTRAINT `olqualifiedstudent_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_10` FOREIGN KEY (`ol_sub9_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_11` FOREIGN KEY (`stu_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `olqualifiedstudent_ibfk_2` FOREIGN KEY (`ol_sub1_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_3` FOREIGN KEY (`ol_sub2_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_4` FOREIGN KEY (`ol_sub3_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_5` FOREIGN KEY (`ol_sub4_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_6` FOREIGN KEY (`ol_sub5_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_7` FOREIGN KEY (`ol_sub6_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_8` FOREIGN KEY (`ol_sub7_id`) REFERENCES `olsubject` (`ol_sub_id`),
  ADD CONSTRAINT `olqualifiedstudent_ibfk_9` FOREIGN KEY (`ol_sub8_id`) REFERENCES `olsubject` (`ol_sub_id`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poster`
--
ALTER TABLE `poster`
  ADD CONSTRAINT `poster_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postinteractions`
--
ALTER TABLE `postinteractions`
  ADD CONSTRAINT `postinteractions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postinteractions_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `privatecourses`
--
ALTER TABLE `privatecourses`
  ADD CONSTRAINT `privatecourses_ibfk_1` FOREIGN KEY (`private_uni_id`) REFERENCES `privateuniversity` (`privateuni_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `privatecourses_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `privateuniversity`
--
ALTER TABLE `privateuniversity`
  ADD CONSTRAINT `privateuniversity_ibfk_1` FOREIGN KEY (`privateuni_id`) REFERENCES `organization` (`org_id`) ON DELETE CASCADE;

--
-- Constraints for table `profguide`
--
ALTER TABLE `profguide`
  ADD CONSTRAINT `profguide_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`mentor_id`);

--
-- Constraints for table `profguiderenrollments`
--
ALTER TABLE `profguiderenrollments`
  ADD CONSTRAINT `profguiderenrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `profguiderenrollments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`reported_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`);

--
-- Constraints for table `sessionlink`
--
ALTER TABLE `sessionlink`
  ADD CONSTRAINT `sessionlink_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `socialprofiles`
--
ALTER TABLE `socialprofiles`
  ADD CONSTRAINT `socialprofiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `steamselectedbyalqualifiedstudent`
--
ALTER TABLE `steamselectedbyalqualifiedstudent`
  ADD CONSTRAINT `steamselectedbyalqualifiedstudent_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `alqualifiedstudent` (`stu_id`),
  ADD CONSTRAINT `steamselectedbyalqualifiedstudent_ibfk_2` FOREIGN KEY (`stream_id`) REFERENCES `stream` (`stream_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`mentor_id`);

--
-- Constraints for table `teacherenrollments`
--
ALTER TABLE `teacherenrollments`
  ADD CONSTRAINT `teacherenrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacherenrollments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `undergraduategraduate`
--
ALTER TABLE `undergraduategraduate`
  ADD CONSTRAINT `undergraduategraduate_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unicodes`
--
ALTER TABLE `unicodes`
  ADD CONSTRAINT `unicodes_ibfk_1` FOREIGN KEY (`gov_uni_id`) REFERENCES `govermentuniversity` (`gov_uni_id`),
  ADD CONSTRAINT `unicodes_ibfk_2` FOREIGN KEY (`gov_course_id`) REFERENCES `governmentcourse` (`gov_course_id`);

--
-- Constraints for table `zscoretable`
--
ALTER TABLE `zscoretable`
  ADD CONSTRAINT `zscoretable_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
