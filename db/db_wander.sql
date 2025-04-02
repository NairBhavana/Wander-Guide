-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 07:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wander`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `id` int(25) NOT NULL,
  `cab_id` int(25) NOT NULL,
  `login_id` int(25) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `start_point` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `cab_id`, `login_id`, `date_time`, `start_point`, `destination`, `status`) VALUES
(1, 2, 12, '2025-02-21 15:34:12', '1', '3', 'completed'),
(2, 2, 12, '2025-02-21 22:19:34', '1', '6', 'completed'),
(3, 2, 12, '2025-02-21 22:19:34', '1', '6', 'cancelled'),
(4, 2, 12, '2025-02-21 22:19:34', '1', '6', 'cancelled'),
(5, 2, 12, '2025-02-21 22:19:34', '1', '6', 'cancelled'),
(6, 2, 12, '2025-03-06 22:33:10', '1', '3', 'cancelled'),
(7, 1, 12, '2025-03-08 23:40:28', '1', '5', 'ongoing'),
(8, 2, 12, '2025-03-09 00:03:28', '1', '3', 'cancelled'),
(9, 2, 12, '2025-03-09 00:09:53', '1', '5', 'cancelled'),
(10, 1, 12, '2025-03-10 23:03:33', '1', '3', 'completed'),
(11, 2, 12, '2025-03-10 23:03:48', '1', '2', 'cancelled'),
(12, 1, 12, '2025-03-16 16:06:30', '1', '5', 'completed'),
(13, 2, 12, '2025-03-16 19:49:33', '1', '12', 'ongoing'),
(14, 2, 12, '2025-03-16 20:43:59', '1', '6', 'booked');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cab`
--

CREATE TABLE `tbl_cab` (
  `id` int(25) NOT NULL,
  `driver_id` int(25) NOT NULL,
  `cab_details` varchar(100) NOT NULL,
  `location_id` int(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cab`
--

INSERT INTO `tbl_cab` (`id`, `driver_id`, `cab_details`, `location_id`, `status`) VALUES
(1, 13, 'Gfghg', 1, ''),
(2, 15, 'Surah', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver`
--

CREATE TABLE `tbl_driver` (
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(2) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `license_no` varchar(25) NOT NULL,
  `login_id` int(25) NOT NULL,
  `location_id` int(5) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `cab_no` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_driver`
--

INSERT INTO `tbl_driver` (`id`, `name`, `age`, `phone`, `license_no`, `login_id`, `location_id`, `gender`, `cab_no`) VALUES
(2, 'Alan', 26, '2585258528', '8765575566', 13, 0, '', ''),
(4, 'Sooraj', 26, '8567492357', '4596128', 0, 1, 'Male', '5432'),
(6, 'Rahul', 25, '6492186745', '4862197', 0, 165, 'Male', '46852');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id` int(25) NOT NULL,
  `title` varchar(25) NOT NULL,
  `details` varchar(500) NOT NULL,
  `time` time(6) NOT NULL,
  `date` date NOT NULL,
  `location_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`id`, `title`, `details`, `time`, `date`, `location_id`) VALUES
(7, 'Monsoon Music Festival', 'The festival celebrates the monsoon season and is dedicated to promoting local music and musicians. It features various performances, including classical, folk and contemporary music.', '18:00:00.000000', '2025-01-07', 1),
(9, 'Dasara', 'Dasara is celebrated on a very grand scale at Proddatur, the center of the Visya community which has organised itself well. It is known as the second Mysore for Dasara celebrations and about Rs.30,000 is spent during the ten days. Over two lakhs of people are said to visit the place from far and near. Vasanthosthavam during the day and Ammavari procession during the night are attractive, with keelugurrams and dance parties. Jammalamdugu also celebrates Dasara eith more eclat than oter places.', '09:07:00.000000', '2025-06-19', 14),
(10, 'Painkuni Festival', 'The Painkuni Festival, a 10-day celebration held in Thiruvananthapuram, Kerala, features rituals like the Pallivetta (royal hunt) and concludes with the Aarattu procession to Shanghumugham Beach, showcasing royal traditions and spiritual devotion', '09:00:00.000000', '2025-04-12', 205),
(11, 'Attukal Pongala', 'This festival is celebrated around February, every year, at Attukal Bhagavati Temple in the city. The uniqueness of this festival is that it is that only women are allowed to do the offering on that day. The long line of women absorbed in devotion and also preparing this ritual offering can be seen all the way till the East Fort and farther.  As it is a ‘Ladies Special’ festival, men are not supposed be in the proximity.', '17:00:00.000000', '2025-02-20', 205),
(12, 'Kovalam Festivals', 'The rich culture and uniqueness of Kerala  is well reflected in the Kovalam Festivals and fairs held here.  The main festivals here start in January and ends in March. The The festivals held here echoes a lot about the tradition and also the friendliness of  people of Kerala .  The best thing about the festival is that there are several elements in a festival which pleases everyone.', '09:00:00.000000', '2025-01-20', 205),
(13, 'Shigmo', 'A spring festival celebrated with cultural performances, music, and traditional dances, taking place in March.', '10:00:00.000000', '2025-03-15', 529),
(14, 'Goa carnival', 'A vibrant pre-Lenten festival with parades, music, and street performances, known for its blend of Portuguese and Indian culture, typically held in February or March.', '12:00:00.000000', '2025-03-01', 529),
(15, 'Feast of St. Francis Xavi', 'A religious festival held on December 3rd, honoring the patron saint of Goa, with celebrations and veneration of his relics.', '08:00:00.000000', '2025-12-03', 529),
(16, 'Pongal', 'This is a significant harvest festival celebrated across Tamil Nadu, including Chennai, with events like Jallikattu (bull-taming)', '11:00:00.000000', '2025-05-16', 363);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guide`
--

CREATE TABLE `tbl_guide` (
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `phone_no` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `location_id` int(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guide`
--

INSERT INTO `tbl_guide` (`id`, `name`, `age`, `gender`, `phone_no`, `email`, `location_id`, `status`) VALUES
(1, 'unni', 22, 'Male', '977885846', 'unni112@gmail.com', 1, 'Available'),
(2, 'siraj', 24, 'Male', '988956478', 'siraj11@gmail.com', 1, 'Not Available'),
(3, 'helan', 45, 'Male', '45875', 'jfry', 0, 'Available'),
(6, 'Muhammad', 45, 'Male', '8756234354', 'bag', 0, 'Available'),
(7, 'Shikar', 40, 'Male', '8976564323', 'shikar43@gmail.com', 529, 'Available'),
(8, 'Joe', 30, 'Male', '7654128956', 'joe23@gmail.com', 165, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel`
--

CREATE TABLE `tbl_hotel` (
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `contact` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_1` varchar(100) NOT NULL,
  `image_2` varchar(100) NOT NULL,
  `image_3` varchar(100) NOT NULL,
  `location_id` int(25) NOT NULL,
  `available_rooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`id`, `name`, `contact`, `email`, `address`, `image`, `image_1`, `image_2`, `image_3`, `location_id`, `available_rooms`) VALUES
(1, 'rajarajeshwari', '9955776644', 'hotel@gmail.com', 'klm', 'hotel_uploads/Yellow Inspiration Modern Instagram Profile Picture.png', 'hotel_uploads/41_000000-1.png', 'hotel_uploads/construction-concept-engineering-tools.jpg', 'hotel_uploads/freepik__the-style-is-candid-image-photography-with-natural__44923.jpg', 1, 1),
(2, 'miracle', '9955776644', 'hotel@gmail.com', 'klm', 'hotel_uploads/place2.jpeg', 'hotel_uploads/Interior Designer Logo in Black White Clean Minimalist Style.png', 'hotel_uploads/image-removebg.png', 'hotel_uploads/image-removebg-preview (1).png', 1, 6),
(4, 'new hotel', '9977664455', 'hotel1@gmail.com', 'dummy', 'hotel_uploads/construction-concept-engineering-tools.jpg', 'hotel_uploads/construction-concept-engineering-tools.jpg', 'hotel_uploads/construction-concept-engineering-tools.jpg', 'hotel_uploads/construction-concept-engineering-tools.jpg', 0, 3),
(5, 'Brindavan', '8756234354', 'brindavan@gmail.com', 'Guntur', 'hotel_uploads/guntur1.jpg', '', '', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel_review`
--

CREATE TABLE `tbl_hotel_review` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `review` varchar(500) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hotel_review`
--

INSERT INTO `tbl_hotel_review` (`id`, `hotel_id`, `review`, `rating`, `image_url`, `user_id`, `date`) VALUES
(1, 2, 'Clean', '3', 'hotel_review_uploads/a09a4108-8021-4a44-8faa-5631fadac564.jpeg', 12, '2025-03-07 20:24:37'),
(2, 2, 'Excellent', '3', 'hotel_review_uploads/70e5022a-67c8-4ef5-8354-3ec8fa705843.jpeg', 12, '2025-03-14 06:41:41'),
(3, 2, 'Really good', '3', 'hotel_review_uploads/7ba6c475-5a2f-4792-ae88-80cad79d93b8.jpeg', 16, '2025-03-14 06:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin123', 'admin'),
(12, 'user', '123', 'Traveller'),
(13, 'Alan', '123', 'Driver'),
(14, 'Siraj', '1234', 'Driver'),
(15, 'test', '1234', 'Driver'),
(16, 'Betsy', 'B123', 'Traveller');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `id` int(25) NOT NULL,
  `place_name` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `popular` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`id`, `place_name`, `longitude`, `latitude`, `popular`) VALUES
(1, 'Port Blair', '92.7264828', '11.6233774', 'false'),
(2, 'Adoni', '77.2728368', '15.6322227', 'false'),
(3, 'Amaravati', '80.359012', '16.574517', 'false'),
(4, 'Anantapur', '77.6005911', '14.6818877', 'false'),
(5, 'Bhimavaram', '81.520593', '16.544709', 'false'),
(6, 'Chilakaluripet', '80.1623948', '16.0924301', 'false'),
(7, 'Chittoor', '79.1003289', '13.217176', 'false'),
(8, 'Dharmavaram', '77.721472', '14.422733', 'false'),
(9, 'Eluru', '81.0952431', '16.7106604', 'false'),
(10, 'Gudivada', '80.9926327', '16.4410255', 'false'),
(11, 'Guntakal', '77.3736238', '15.1674091', 'false'),
(12, 'Guntur', '80.4365402', '16.3066525', 'false'),
(13, 'Hindupur', '77.491835', '13.829069', 'true'),
(14, 'Kadapa', '78.8241339', '14.4673541', 'false'),
(15, 'Kakinada', '82.2474648', '16.9890648', 'false'),
(16, 'Kurnool', '78.0372792', '15.8281257', 'false'),
(17, 'Machilipatnam', '81.1361543', '16.1905457', 'false'),
(18, 'Madanapalle', '78.5036065', '13.5603491', 'false'),
(19, 'Nandyal', '78.4830934', '15.4785694', 'false'),
(20, 'Narasaraopet', '80.0479039', '16.2353506', 'false'),
(21, 'Nellore', '79.986456', '14.4425987', 'false'),
(22, 'Ongole', '80.049922', '15.5057232', 'false'),
(23, 'Proddatur', '78.5531577', '14.7491864', 'false'),
(24, 'Rajamahendravaram', '81.8040345', '17.0005383', 'false'),
(25, 'Srikakulam', '83.8967813', '18.2969747', 'false'),
(26, 'Tadepalligudem', '81.521241', '16.8138415', 'false'),
(27, 'Tadipatri', '78.0092703', '14.9070274', 'false'),
(28, 'Tenali', '80.6493396', '16.2395313', '0'),
(29, 'Tirupati', '79.4191795', '13.6287557', '0'),
(30, 'Vijayawada', '80.6480153', '16.5061743', 'false'),
(31, 'Visakhapatnam', '83.2184815', '17.6868159', '0'),
(32, 'Vizianagaram', '83.3955506', '18.1066576', '0'),
(33, 'Itanagar', '93.6027', '27.081581', '0'),
(34, 'Bongaigaon', '90.5352356', '26.5009992', '0'),
(35, 'Dhubri', '89.9743463', '26.0206982', '0'),
(36, 'Dibrugarh', '94.9119621', '27.4728327', '0'),
(37, 'Guwahati', '91.7362365', '26.1445169', '0'),
(38, 'Jorhat', '94.2025859', '26.7465203', '0'),
(39, 'Nagaon', '92.6840426', '26.3463713', '0'),
(40, 'Silchar', '92.7789054', '24.8332708', '0'),
(41, 'Tezpur', '92.7925592', '26.6528495', '0'),
(42, 'Tinsukia', '95.346775', '27.4921909', '0'),
(43, 'Arrah', '84.6603307', '25.5560443', '0'),
(44, 'Aurangabad', '84.3804888', '24.7457189', '0'),
(45, 'Bagaha', '84.062203', '27.128635', '0'),
(46, 'Begusarai', '86.1293792', '25.416675', '0'),
(47, 'Bettiah', '84.5169757', '26.8028048', '0'),
(48, 'Bhagalpur', '86.9924358', '25.2414303', '0'),
(49, 'Bihar Sharif', '85.5148735', '25.1982147', '0'),
(50, 'Buxar', '83.9777482', '25.5647103', '0'),
(51, 'Chhapra', '84.7498886', '25.7795649', '0'),
(52, 'Darbhanga', '85.896004', '26.111868', '0'),
(53, 'Dehri', '84.1909841', '24.9277351', '0'),
(54, 'Gaya', '84.999431', '24.7954523', '0'),
(55, 'Hajipur', '85.208369', '25.692562', '0'),
(56, 'Jamalpur', '86.4906091', '25.312717', '0'),
(57, 'Jehanabad', '84.9895549', '25.2139287', '0'),
(58, 'Katihar', '87.567953', '25.542424', '0'),
(59, 'Kishanganj', '87.9383822', '26.0917422', '0'),
(60, 'Lakhisarai', '86.0988253', '25.1673614', '0'),
(61, 'Motihari', '84.9088938', '26.6469624', '0'),
(62, 'Munger', '86.476588', '25.376505', '0'),
(63, 'Muzaffarpur', '85.3647201', '26.1208876', '0'),
(64, 'Nawada', '85.538434', '24.877299', '0'),
(65, 'Patna', '85.1375645', '25.5940947', '0'),
(66, 'Purnia', '87.4752551', '25.7771391', '0'),
(67, 'Saharsa', '86.6006249', '25.8834961', '0'),
(68, 'Sasaram', '84.0314295', '24.949036', '0'),
(69, 'Sitamarhi', '85.4808393', '26.5952476', '0'),
(70, 'Siwan', '84.3566593', '26.2196205', '0'),
(71, 'Chandigarh', '76.7567368', '30.7399738', '0'),
(72, 'Ambikapur', '83.1817856', '23.1354921', '0'),
(73, 'Bilaspur', '82.1391412', '22.0796251', '0'),
(74, 'Chirmiri', '82.354162', '23.1879502', '0'),
(75, 'Dhamtari', '81.5541579', '20.7014999', '0'),
(76, 'Durg', '81.2849169', '21.1904494', '0'),
(77, 'Jagdalpur', '82.008014', '19.0740973', '0'),
(78, 'Korba', '82.7500595', '22.3594501', '0'),
(79, 'Mahasamund', '82.0979023', '21.1091317', '0'),
(80, 'Naya Raipur', '81.7753055', '21.1649932', '0'),
(81, 'Pakhanjore', '80.6271415', '20.0399913', '0'),
(82, 'Raigarh', '83.3949632', '21.8974003', '0'),
(83, 'Raipur', '81.6296413', '21.2513844', '0'),
(84, 'Rajnandgaon', '81.0302222', '21.0971034', '0'),
(85, 'Daman', '72.8327991', '20.3973736', '0'),
(86, 'Silvassa', '73.0083061', '20.2762659', '0'),
(87, 'Delhi', '77.2090212', '28.6139391', '0'),
(88, 'Margao', '73.986191', '15.2832187', '0'),
(89, 'Mormugao', '73.8154394', '15.3874352', '0'),
(90, 'Panaji', '73.8278496', '15.4909301', '0'),
(91, 'Vasco', '73.8440398', '15.3860329', '0'),
(92, 'Ahmedabad', '72.5713621', '23.022505', '0'),
(93, 'Amreli', '71.2220832', '21.6031774', '0'),
(94, 'Amreli', '71.2220832', '21.6031774', '0'),
(95, 'Anand', '72.928871', '22.5645175', '0'),
(96, 'Ankleshwar', '73.0151984', '21.6264236', '0'),
(97, 'Bharuch', '72.99996', '21.701963', '0'),
(98, 'Bhavnagar', '72.147388', '21.768064', '0'),
(99, 'Bhuj', '69.6669324', '23.2419997', '0'),
(100, 'Botad', '71.6684269', '22.1704232', '0'),
(101, 'Dahod', '74.2531465', '22.8379314', '0'),
(102, 'Deesa', '72.1906721', '24.2585031', '0'),
(103, 'Gandhidham', '70.133673', '23.075297', '0'),
(104, 'Gandhinagar', '72.6369415', '23.2156354', '0'),
(105, 'Godhra', '73.6142795', '22.7788044', '0'),
(106, 'Gondal', '70.792297', '21.9619463', '0'),
(107, 'Jamnagar', '70.05773', '22.4707019', '0'),
(108, 'Jetpur', '70.621101', '21.761778', '0'),
(109, 'Junagadh', '70.4578768', '21.522184', '0'),
(110, 'Kalol', '72.5086513', '23.2463895', '0'),
(111, 'Khambhat', '72.624144', '22.316748', '0'),
(112, 'Mahuva', '71.7563169', '21.0902193', '0'),
(113, 'Mehsana', '72.3693252', '23.5879607', '0'),
(114, 'Morbi', '70.8236195', '22.8119895', '0'),
(115, 'Nadiad', '72.8633635', '22.6915853', '0'),
(116, 'Navsari', '72.9520348', '20.9467019', '0'),
(117, 'Palanpur', '72.4330989', '24.174051', '0'),
(118, 'Patan', '72.1266255', '23.8493246', '0'),
(119, 'Porbandar', '69.6292654', '21.6417069', '0'),
(120, 'Rajkot', '70.8021599', '22.3038945', '0'),
(121, 'Surat', '72.8310607', '21.1702401', '0'),
(122, 'Surendranagar', '71.649536', '22.7201319', '0'),
(123, 'Vadodara', '73.1812187', '22.3071588', '0'),
(124, 'Valsad', '72.9342451', '20.5992349', '0'),
(125, 'Vapi', '72.9106202', '20.3893155', '0'),
(126, 'Veraval', '70.3611', '20.91424', '0'),
(127, 'Ambala', '76.7766974', '30.3781788', '0'),
(128, 'Bahadurgarh', '76.9239727', '28.6924464', '0'),
(129, 'Bhiwani', '76.1335112', '28.7990445', '0'),
(130, 'Faridabad', '77.3177894', '28.4089123', '0'),
(131, 'Gurgaon', '77.0266383', '28.4594965', '0'),
(132, 'Hisar', '75.7216527', '29.1491875', '0'),
(133, 'Jind', '76.3058328', '29.3211153', '0'),
(134, 'Kaithal', '76.3984537', '29.7856734', '0'),
(135, 'Karnal', '76.9904825', '29.6856929', '0'),
(136, 'Palwal', '77.3320262', '28.1487362', '0'),
(137, 'Panchkula', '76.860565', '30.6942091', '0'),
(138, 'Panipat', '76.9635023', '29.3909464', '0'),
(139, 'Rewari', '76.6239423', '28.1927631', '0'),
(140, 'Rohtak', '76.606611', '28.8955152', '0'),
(141, 'Sirsa', '75.0177029', '29.5335931', '0'),
(142, 'Sonipat', '77.091281', '28.9287735', '0'),
(143, 'Thanesar', '76.8197522', '29.9696148', '0'),
(144, 'Yamunanagar', '77.2673901', '30.1290485', '0'),
(145, 'Shimla', '77.1734033', '31.1048145', '0'),
(146, 'Anantnag', '75.247874', '33.704949', '0'),
(147, 'Jammu', '74.857031', '32.726601', '0'),
(148, 'Srinagar', '74.807591', '34.081413', '0'),
(149, 'Bokaro Steel City', '86.151112', '23.6692956', '0'),
(150, 'Chirkunda', '86.7868768', '23.747887', '0'),
(151, 'Deoghar', '86.6913222', '24.4763201', '0'),
(152, 'Dhanbad', '86.4303859', '23.7956531', '0'),
(153, 'Giridih', '86.2869507', '24.1821391', '0'),
(154, 'Hazaribagh', '85.3691068', '23.9966213', '0'),
(155, 'Jamshedpur', '86.2028754', '22.8045665', '0'),
(156, 'Jhumri Telaiya', '85.5354724', '24.4289365', '0'),
(157, 'Medininagar', '84.0907246', '24.0420432', '0'),
(158, 'Phusro', '86.0020693', '23.7622641', '0'),
(159, 'Ramgarh', '85.5148735', '23.6332243', '0'),
(160, 'Ranchi', '85.334521', '23.349649', '0'),
(161, 'Sahibganj', '87.6453592', '25.2381216', '0'),
(162, 'Bagalkot', '75.6557206', '16.1725355', '0'),
(163, 'Belgaum', '74.4976741', '15.8496953', '0'),
(164, 'Bellary', '76.9214428', '15.1393932', '0'),
(165, 'Bengaluru', '77.5945627', '12.9715987', '0'),
(166, 'Bhadravati', '75.7080727', '13.8329901', '0'),
(167, 'Bidar', '77.5046101', '17.9148799', '0'),
(168, 'Bijapur', '75.710031', '16.8301708', '0'),
(169, 'Chikkamagallooru', '75.7754018', '13.315258', '0'),
(170, 'Chikmagalur', '75.7754018', '13.315258', '0'),
(171, 'Chitradurga', '76.3984537', '14.2305594', '0'),
(172, 'Davangere', '75.9238397', '14.4663438', '0'),
(173, 'Gadag', '75.6380337', '15.4324651', '0'),
(174, 'Gangawati', '76.5314817', '15.431874', '0'),
(175, 'Gulbarga', '76.8342957', '17.329731', '0'),
(176, 'Harihar', '75.8010962', '14.5304566', '0'),
(177, 'Hassan', '76.0995519', '13.0068142', '0'),
(178, 'Hospet', '76.3909241', '15.2688542', '0'),
(179, 'Hubli', '75.1239547', '15.3647083', '0'),
(180, 'Kolar', '78.1325611', '13.1357446', '0'),
(181, 'Mandya', '76.9009191', '12.5221567', '0'),
(182, 'Mangalore', '74.8559568', '12.9141417', '0'),
(183, 'Mysore', '76.6393805', '12.2958104', '0'),
(184, 'Raichur', '77.3439283', '16.2120031', '0'),
(185, 'Ramanagara', '77.2807423', '12.7094487', '0'),
(186, 'Ranebennuru', '75.6382657', '14.6113428', '0'),
(187, 'Robertsonpet', '78.2698622', '12.9551189', '0'),
(188, 'Shimoga', '75.568101', '13.9299299', '0'),
(189, 'Tumkur', '77.101945', '13.345018', '0'),
(190, 'Udupi', '74.746596', '13.3371151', '0'),
(191, 'Alappuzha', '76.3388484', '9.4980667', '0'),
(192, 'Alappuzha', '76.3388484', '9.4980667', '0'),
(193, 'Calicut', '75.78041', '11.2587531', '0'),
(194, 'Kannur', '75.3703662', '11.8744775', '0'),
(195, 'Kasaragod', '74.9851678', '12.5102239', '0'),
(196, 'Kochi', '76.2673041', '9.9312328', '0'),
(197, 'Kollam', '76.6141396', '8.8932118', '0'),
(198, 'Kothamangalam', '76.6350827', '10.0601903', '0'),
(199, 'Kottayam', '76.5221531', '9.5915668', '0'),
(200, 'Malappuram', '76.0739999', '11.0731819', '0'),
(201, 'Manjeri', '76.1199677', '11.1202984', '0'),
(202, 'Palakkad', '76.6547932', '10.7867303', '0'),
(203, 'Ponnani', '75.9259013', '10.7677201', '0'),
(204, 'Thalassery', '75.4928777', '11.7532878', '0'),
(205, 'Thiruvananthapuram', '76.9366376', '8.5241391', 'true'),
(206, 'Thrissur', '76.2144349', '10.5276416', '0'),
(207, 'Kavaratti', '72.6358134', '10.5593204', '0'),
(208, 'Balaghat', '80.1838293', '21.812876', '0'),
(209, 'Betul', '77.9011842', '21.9108031', '0'),
(210, 'Bhind', '78.7872876', '26.5587354', '0'),
(211, 'Bhopal', '77.412615', '23.2599333', '0'),
(212, 'Burhanpur', '76.2224273', '21.3193875', '0'),
(213, 'Chhatarpur', '79.5811827', '24.9163562', '0'),
(214, 'Chhindwara', '78.9381729', '22.057437', '0'),
(215, 'Damoh', '79.4421731', '23.8380986', '0'),
(216, 'Datia', '78.4609393', '25.6653262', '0'),
(217, 'Dewas', '76.0507949', '22.9622672', '0'),
(218, 'Dhanpuri', '81.4690932', '23.2307927', '0'),
(219, 'Dhar', '75.3024655', '22.6012922', '0'),
(220, 'Guna', '77.2979782', '24.6348197', '0'),
(221, 'Gwalior', '78.1828308', '26.2182871', '0'),
(222, 'Hoshangabad', '77.736967', '22.744108', '0'),
(223, 'Indore', '75.8577258', '22.7195687', '0'),
(224, 'Itarsi', '77.753544', '22.6054858', '0'),
(225, 'Jabalpur', '79.9864071', '23.181467', '0'),
(226, 'Katni', '80.4072255', '23.8308453', '0'),
(227, 'Khandwa', '76.352571', '21.8257334', '0'),
(228, 'Khargone', '75.6149893', '21.8335244', '0'),
(229, 'Mandsaur', '75.0692952', '24.076836', '0'),
(230, 'Morena', '77.9909949', '26.4933562', '0'),
(231, 'Nagda', '75.4169918', '23.4454599', '0'),
(232, 'Neemuch', '74.8624092', '24.4763852', '0'),
(233, 'Pithampur', '75.6822899', '22.613252', '0'),
(234, 'Ratlam', '75.0376325', '23.3341696', '0'),
(235, 'Rewa', '81.30418', '24.5372927', '0'),
(236, 'Sagar', '78.7378068', '23.838805', '0'),
(237, 'Satna', '80.8322428', '24.6005075', '0'),
(238, 'Sehore', '77.0850781', '23.205012', '0'),
(239, 'Seoni', '79.5434841', '22.0868691', '0'),
(240, 'Shivpuri', '77.665066', '25.4357869', '0'),
(241, 'Singrauli', '82.663989', '24.200261', '0'),
(242, 'Ujjain', '75.7849097', '23.1793013', '0'),
(243, 'Vidisha', '77.8081363', '23.5251102', '0'),
(244, 'Achalpur', '77.5086754', '21.257584', '0'),
(245, 'Ahmednagar', '74.7495916', '19.0952075', '0'),
(246, 'Akola', '77.0219019', '20.7059345', '0'),
(247, 'Akot', '77.053568', '21.0973361', '0'),
(248, 'Amalner', '75.0581943', '21.0419208', '0'),
(249, 'Amravati', '77.7795513', '20.9374238', '0'),
(250, 'Aurangabad', '75.3433139', '19.8761653', '0'),
(251, 'Barshi', '75.6941478', '18.2333856', '0'),
(252, 'Beed', '75.7600785', '18.9890893', '0'),
(253, 'Bhandara', '79.6558242', '21.1750113', '0'),
(254, 'Bhiwandi', '73.0482912', '19.2812547', '0'),
(255, 'Bhusawal', '75.8010962', '21.0455204', '0'),
(256, 'Chalisgaon', '74.9968543', '20.4640778', '0'),
(257, 'Chandrapur', '79.3014845', '19.9704597', '0'),
(258, 'Dhule', '74.7748979', '20.9042201', '0'),
(259, 'Gondia', '80.2209773', '21.4624491', '0'),
(260, 'Hinganghat', '78.8411405', '20.5505728', '0'),
(261, 'Ichalkaranji', '74.4560807', '16.7090008', '0'),
(262, 'Jalgaon', '75.5626039', '21.0076578', '0'),
(263, 'Jalna', '75.894805', '19.842614', '0'),
(264, 'Kamptee', '79.1900834', '21.2275312', '0'),
(265, 'Khamgaon', '76.571995', '20.707117', '0'),
(266, 'Kolhapur', '74.2432527', '16.7049873', '0'),
(267, 'Latur', '76.5603828', '18.4087934', '0'),
(268, 'Malegaon', '74.525989', '20.554554', '0'),
(269, 'Mumbai', '72.8776559', '19.0759837', '0'),
(270, 'Nagpur', '79.0881546', '21.1458004', '0'),
(271, 'Nanded', '77.3209555', '19.1382514', '0'),
(272, 'Nandurbar', '74.2427644', '21.3755507', '0'),
(273, 'Nashik', '73.7898023', '19.9974533', '0'),
(274, 'Osmanabad', '76.0419409', '18.1860659', '0'),
(275, 'Pandharpur', '75.3237262', '17.6745535', '0'),
(276, 'Parbhani', '76.776665', '19.2609958', '0'),
(277, 'Parli', '76.5198462', '18.8453169', '0'),
(278, 'Pimpri-Chinchwad', '73.807873', '18.62354', '0'),
(279, 'Pune', '73.8567437', '18.5204303', '0'),
(280, 'Sangli-Miraj-Kupwad', '74.6049061', '16.8541887', '0'),
(281, 'Satara', '74.018261', '17.6804639', '0'),
(282, 'Solapur', '75.9063906', '17.6599188', '0'),
(283, 'Udgir', '77.1126009', '18.3942882', '0'),
(284, 'Wardha', '78.6021946', '20.745319', '0'),
(285, 'Yavatmal', '78.1204073', '20.3887937', '0'),
(286, 'Imphal', '93.9368439', '24.8170111', '0'),
(287, 'Shillong', '91.893187', '25.578765', '0'),
(288, 'Aizawl', '92.7176389', '23.727107', '0'),
(289, 'Dimapur', '93.7536663', '25.8629885', '0'),
(290, 'Kohima', '94.1053307', '25.6585963', '0'),
(291, 'Balangir', '83.4842725', '20.7074234', '0'),
(292, 'Balasore', '86.922227', '21.504467', '0'),
(293, 'Baripada', '86.7516942', '21.9322338', '0'),
(294, 'Berhampur', '84.794244', '19.314914', '0'),
(295, 'Bhadrak', '86.4958396', '21.0582737', '0'),
(296, 'Bhubaneswar', '85.824797', '20.295515', '0'),
(297, 'Cuttack', '85.8829895', '20.462521', '0'),
(298, 'Jeypore', '82.5510469', '18.8606126', '0'),
(299, 'Jharsuguda', '84.0061661', '21.8554375', '0'),
(300, 'Puri', '85.8314655', '19.8133822', '0'),
(301, 'Rourkela', '84.8535844', '22.260423', '0'),
(302, 'Sambalpur', '83.9811665', '21.4668716', '0'),
(303, 'Karaikal', '79.8380056', '10.9254398', '0'),
(304, 'Ozhukarai', '79.712141', '11.94888', '0'),
(305, 'Puducherry', '79.8144722', '11.9138598', '0'),
(306, 'Abohar', '74.1993043', '30.1452928', '0'),
(307, 'Amritsar', '74.8722642', '31.6339793', '0'),
(308, 'Barnala', '75.5467979', '30.3819446', '0'),
(309, 'Batala', '75.2070644', '31.8183238', '0'),
(310, 'Bathinda', '74.9454745', '30.210994', '0'),
(311, 'Firozpur', '74.6224755', '30.9331348', '0'),
(312, 'Hoshiarpur', '75.911483', '31.5143178', '0'),
(313, 'Jalandhar', '75.5761829', '31.3260152', '0'),
(314, 'Kapurthala', '75.374504', '31.367197', '0'),
(315, 'Khanna', '76.2112286', '30.697852', '0'),
(316, 'Ludhiana', '75.8572758', '30.900965', '0'),
(317, 'Malerkotla', '75.8882508', '30.5232076', '0'),
(318, 'Moga', '75.1717093', '30.8164603', '0'),
(319, 'Mohali', '76.7178726', '30.7046486', '0'),
(320, 'Muktasar', '74.511289', '30.476681', '0'),
(321, 'Pathankot', '75.6421121', '32.2643375', '0'),
(322, 'Patiala', '76.3868797', '30.3397809', '0'),
(323, 'Phagwara', '75.7708013', '31.2240198', '0'),
(324, 'Rajpura', '76.5939516', '30.483997', '0'),
(325, 'Zirakpur', '76.8173359', '30.6425496', '0'),
(326, 'Ajmer', '74.6399163', '26.4498954', '0'),
(327, 'Alwar', '76.6345735', '27.5529907', '0'),
(328, 'Banswara', '74.4349761', '23.5461394', '0'),
(329, 'Baran', '76.5131637', '25.1011438', '0'),
(330, 'Barmer', '71.4180622', '25.7531537', '0'),
(331, 'Beawar', '74.3190747', '26.1007337', '0'),
(332, 'Bharatpur', '77.489515', '27.216981', '0'),
(333, 'Bhilwara', '74.586953', '25.321377', '0'),
(334, 'Bhiwadi', '76.8445999', '28.2088218', '0'),
(335, 'Bikaner', '73.3119159', '28.0229348', '0'),
(336, 'Bundi', '75.6499025', '25.4305144', '0'),
(337, 'Chittorgarh', '74.6269216', '24.8887435', '0'),
(338, 'Churu', '74.9617924', '28.2920484', '0'),
(339, 'Dausa', '76.3375284', '26.8931931', '0'),
(340, 'Dholpur', '77.893391', '26.7025181', '0'),
(341, 'Fatehpur', '74.9617924', '27.9950204', '0'),
(342, 'Gangapur', '76.732222', '26.478446', '0'),
(343, 'Hanumangarh', '74.2858121', '29.614436', '0'),
(344, 'Hindaun', '77.0330481', '26.7454967', '0'),
(345, 'Jaipur', '75.7872709', '26.9124336', '0'),
(346, 'Jhunjhunu', '75.3995089', '28.1288747', '0'),
(347, 'Jodhpur', '73.0243094', '26.2389469', '0'),
(348, 'Karauli', '77.0161436', '26.488323', '0'),
(349, 'Kishangarh', '74.856397', '26.5870344', '0'),
(350, 'Kota', '75.8647527', '25.2138156', '0'),
(351, 'Makrana', '74.714621', '27.0285581', '0'),
(352, 'Nagaur', '73.740924', '27.1991222', '0'),
(353, 'Pali', '73.3234478', '25.7710893', '0'),
(354, 'Sardarshahar', '74.493705', '28.440419', '0'),
(355, 'Sawai Madhopur', '76.3521514', '26.0377772', '0'),
(356, 'Sikar', '75.139911', '27.6094', '0'),
(357, 'Sri Ganganagar', '73.875212', '29.912527', '0'),
(358, 'Sujangarh', '74.4642861', '27.7044756', '0'),
(359, 'Tonk', '75.7894716', '26.1620402', '0'),
(360, 'Udaipur', '73.694395', '24.595745', '0'),
(361, 'Gangtok', '88.6065035', '27.3389356', '0'),
(362, 'Ambur', '78.7166084', '12.7903613', '0'),
(363, 'Chennai', '80.2707184', '13.0826802', 'true'),
(364, 'Coimbatore', '76.9558321', '11.0168445', '0'),
(365, 'Cuddalore', '79.7680243', '11.744699', '0'),
(366, 'Dindigul', '77.9802906', '10.3673123', '0'),
(367, 'Erode', '77.7171642', '11.3410364', '0'),
(368, 'Gudiyatham', '78.8709019', '12.9447361', '0'),
(369, 'Hosur', '77.8252923', '12.7409127', '0'),
(370, 'Kadayanallur', '77.3451861', '9.0778543', '0'),
(371, 'Kanchipuram', '79.7036402', '12.8341735', '0'),
(372, 'Karaikudi', '78.7801544', '10.0731315', '0'),
(373, 'Komarapalayam', '77.6943353', '11.4466642', '0'),
(374, 'Kovilpatti', '77.8767442', '9.1674144', '0'),
(375, 'Kumbakonam', '79.3881132', '10.9616945', '0'),
(376, 'Madurai', '78.1197754', '9.9252007', '0'),
(377, 'Nagapattinam', '79.8423888', '10.7656082', '0'),
(378, 'Nagercoil', '77.4118996', '8.1832857', '0'),
(379, 'Neyveli', '79.4760133', '11.5432364', '0'),
(380, 'Ooty', '76.6932438', '11.4064138', '0'),
(381, 'Paramakudi', '78.5916335', '9.5483949', '0'),
(382, 'Pollachi', '77.0106693', '10.6572737', '0'),
(383, 'Pudukkottai', '78.8208454', '10.379663', '0'),
(384, 'Rajapalayam', '77.554355', '9.451559', '0'),
(385, 'Salem', '78.1460142', '11.664325', '0'),
(386, 'Thanjavur', '79.1378274', '10.7869994', '0'),
(387, 'Theni-Allinagaram', '77.476819', '10.010262', '0'),
(388, 'Tiruchengode', '77.894975', '11.378665', '0'),
(389, 'Tiruchirappalli', '78.7046725', '10.7904833', '0'),
(390, 'Tirunelveli', '77.7566523', '8.7139126', '0'),
(391, 'Tirupur', '77.3410656', '11.1085242', '0'),
(392, 'Tiruvannamalai', '79.0746957', '12.2252841', '0'),
(393, 'Tuticorin', '78.1348361', '8.7641661', '0'),
(394, 'Vaniyambadi', '78.6218853', '12.6950325', '0'),
(395, 'Vellore', '79.1324986', '12.9165167', '0'),
(396, 'Viluppuram', '79.4872619', '11.9368897', '0'),
(397, 'Adilabad', '78.532194', '19.676527', '0'),
(398, 'Hyderabad', '78.486616', '17.384934', '0'),
(399, 'Jagtial', '78.913899', '18.788321', '0'),
(400, 'Karimnagar', '79.128931', '18.438485', '0'),
(401, 'Khammam', '80.151443', '17.247318', '0'),
(402, 'Kothagudem', '81.0395821', '17.6335295', '0'),
(403, 'Mahbubnagar', '78.003626', '16.748788', '0'),
(404, 'Mancherial', '79.446944', '18.868797', '0'),
(405, 'Miryalaguda', '79.554051', '16.862087', '0'),
(406, 'Nalgonda', '79.268649', '17.057358', '0'),
(407, 'Nizamabad', '78.092593', '18.673421', '0'),
(408, 'Ramagundam', '79.473362', '18.762412', '0'),
(409, 'Siddipet', '78.851948', '18.101864', '0'),
(410, 'Suryapet', '79.630418', '17.143132', '0'),
(411, 'Warangal', '79.601212', '17.975762', '0'),
(412, 'Agartala', '91.2867777', '23.831457', '0'),
(413, 'Agra', '78.0080745', '27.1766701', '0'),
(414, 'Akbarpur', '82.5537514', '26.4407468', '0'),
(415, 'Aligarh', '78.0880129', '27.8973944', '0'),
(416, 'Allahabad', '81.846311', '25.4358011', '0'),
(417, 'Amroha', '78.4673426', '28.9043537', '0'),
(418, 'Auraiya', '79.5097549', '26.4625957', '0'),
(419, 'Azamgarh', '83.1859458', '26.0737044', '0'),
(420, 'Bahraich', '81.5980246', '27.5708377', '0'),
(421, 'Ballia', '84.1487319', '25.7584381', '0'),
(422, 'Banda', '80.3380213', '25.4796224', '0'),
(423, 'Barabanki', '81.19', '26.9400001', '0'),
(424, 'Baraut', '77.256551', '29.099112', '0'),
(425, 'Bareilly', '79.4304381', '28.3670355', '0'),
(426, 'Basti', '82.7633133', '26.8176796', '0'),
(427, 'Bhadohi', '82.5680309', '25.38727', '0'),
(428, 'Bijnor', '78.1358472', '29.3724422', '0'),
(429, 'Budaun', '79.1205419', '28.0337088', '0'),
(430, 'Bulandshahr', '77.8498292', '28.406963', '0'),
(431, 'Chandausi', '78.7796105', '28.4480507', '0'),
(432, 'Dadri', '77.55621', '28.5461902', '0'),
(433, 'Deoband', '77.6822442', '29.6910213', '0'),
(434, 'Deoria', '83.784454', '26.505358', '0'),
(435, 'Etah', '78.662567', '27.5587505', '0'),
(436, 'Etawah', '79.021451', '26.784784', '0'),
(437, 'Faizabad', '82.1441643', '26.7732476', '0'),
(438, 'Farrukhabad', '79.5940544', '27.3826126', '0'),
(439, 'Fatehpur', '80.8099941', '25.9200736', '0'),
(440, 'Firozabad', '78.3957574', '27.1591006', '0'),
(441, 'Ghaziabad', '77.4537578', '28.6691565', '0'),
(442, 'Ghazipur', '83.5770202', '25.5840419', '0'),
(443, 'Gonda', '81.9618968', '27.1339913', '0'),
(444, 'Gorakhpur', '83.3731675', '26.7605545', '0'),
(445, 'Greater Noida', '77.5039904', '28.4743879', '0'),
(446, 'Hapur', '77.7758825', '28.7305798', '0'),
(447, 'Hardoi', '80.1316927', '27.3986345', '0'),
(448, 'Hathras', '78.0537813', '27.6056212', '0'),
(449, 'Jaunpur', '82.6987002', '25.7490034', '0'),
(450, 'Jhansi', '78.5684594', '25.4484257', '0'),
(451, 'Kanpur', '80.330572', '26.447965', '0'),
(452, 'Kasganj', '78.649785', '27.8129344', '0'),
(453, 'Khair', '77.8424456', '27.9391956', '0'),
(454, 'Khatauli', '77.7309012', '29.2758596', '0'),
(455, 'Khurja', '77.8538797', '28.2513538', '0'),
(456, 'Lakhimpur', '80.7824012', '27.9490794', '0'),
(457, 'Lalitpur', '78.4120206', '24.6878597', '0'),
(458, 'Lucknow', '80.946166', '26.8466937', '0'),
(459, 'Mahoba', '79.8724168', '25.2920964', '0'),
(460, 'Mainpuri', '79.0249516', '27.2284986', '0'),
(461, 'Mathura', '77.673673', '27.4924134', '0'),
(462, 'Mau', '83.5586445', '25.9496379', '0'),
(463, 'Meerut', '77.7064137', '28.9844618', '0'),
(464, 'Mirzapur', '82.5644344', '25.1336987', '0'),
(465, 'Modinagar', '77.5779592', '28.8316307', '0'),
(466, 'Moradabad', '78.7733286', '28.8386481', '0'),
(467, 'Mubarakpur', '83.2987576', '26.0809431', '0'),
(468, 'Mughalsarai', '83.1198203', '25.2814947', '0'),
(469, 'Muradnagar', '77.4988753', '28.7703752', '0'),
(470, 'Muzaffarnagar', '77.7085091', '29.4726817', '0'),
(471, 'Nagina', '78.4326638', '29.4426409', '0'),
(472, 'Najibabad', '78.3446003', '29.6127789', '0'),
(473, 'Noida', '77.351504', '28.600032', '0'),
(474, 'Orai', '79.4478858', '26.00864', '0'),
(475, 'Pilibhit', '79.8128649', '28.6207939', '0'),
(476, 'Pratapgarh', '81.9452981', '25.8973038', '0'),
(477, 'Raebareli', '81.2408689', '26.2345298', '0'),
(478, 'Rampur', '79.0249516', '28.7893041', '0'),
(479, 'Saharanpur', '77.5510172', '29.967079', '0'),
(480, 'Sahaswan', '78.7561222', '28.0724712', '0'),
(481, 'Sambhal', '78.5717631', '28.5903614', '0'),
(482, 'Shahjahanpur', '79.9122455', '27.883744', '0'),
(483, 'Shamli', '77.3152116', '29.4507575', '0'),
(484, 'Shikohabad', '78.573784', '27.110254', '0'),
(485, 'Sitapur', '80.688511', '27.561892', '0'),
(486, 'Sultanpur', '82.0727061', '26.2647757', '0'),
(487, 'Tanda', '82.6645469', '26.5432647', '0'),
(488, 'Ujhani', '79.0051685', '28.0003235', '0'),
(489, 'Unnao', '80.4878195', '26.5393449', '0'),
(490, 'Varanasi', '82.9739144', '25.3176452', '0'),
(491, 'Dehradun', '78.0321918', '30.3164945', '0'),
(492, 'Haldwani', '79.5129767', '29.2182644', '0'),
(493, 'Haridwar', '78.1642478', '29.9456906', '0'),
(494, 'Kashipur', '78.9618845', '29.2104232', '0'),
(495, 'Rishikesh', '78.2676116', '30.0869281', '0'),
(496, 'Roorkee', '77.8880002', '29.8542626', '0'),
(497, 'Rudrapur', '79.4141214', '28.9875082', '0'),
(498, 'Alipurduar', '89.5271026', '26.4918891', '0'),
(499, 'Asansol', '86.9523954', '23.6739452', '0'),
(500, 'Baharampur', '88.274906', '24.164895', '0'),
(501, 'Balurghat', '88.7830612', '25.2372834', '0'),
(502, 'Bangaon', '88.827703', '23.0440381', '0'),
(503, 'Bankura', '87.0786044', '23.2324146', '0'),
(504, 'Bardhaman', '87.8614793', '23.2324214', '0'),
(505, 'Basirhat', '88.8671766', '22.6574017', '0'),
(506, 'Bolpur', '87.6827676', '23.6686892', '0'),
(507, 'Chakdaha', '88.5130144', '23.047858', '0'),
(508, 'Cooch Behar', '89.445851', '26.3356861', '0'),
(509, 'Dankuni', '88.2929313', '22.6808348', '0'),
(510, 'Darjeeling', '88.2626751', '27.0360066', '0'),
(511, 'Dhulian', '87.9481846', '24.6706654', '0'),
(512, 'Durgapur', '87.3119227', '23.5204443', '0'),
(513, 'Habra', '88.6639591', '22.8488542', '0'),
(514, 'Haldia', '88.0698118', '22.0666742', '0'),
(515, 'Jalpaiguri', '88.7205256', '26.5434772', '0'),
(516, 'Jangipur', '88.1047287', '24.4589833', '0'),
(517, 'Kanthi', '87.7450379', '21.7811343', '0'),
(518, 'Kharagpur', '87.2319753', '22.34601', '0'),
(519, 'Kolkata', '88.363895', '22.572646', '0'),
(520, 'Krishnanagar', '88.5013962', '23.4008744', '0'),
(521, 'Malda', '88.1410967', '25.0108408', '0'),
(522, 'Midnapore', '87.3214908', '22.4308892', '0'),
(523, 'Nabadwip', '88.3676393', '23.4036446', '0'),
(524, 'Purulia', '86.365208', '23.3320779', '0'),
(525, 'Raiganj', '88.1255837', '25.6185295', '0'),
(526, 'Ranaghat', '88.5639352', '23.17405', '0'),
(527, 'Shantipur', '88.4380966', '23.2645399', '0'),
(528, 'Siliguri', '88.4268741', '26.7083818', '0'),
(529, 'Goa', '73.827827', '15.496777', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place_photo`
--

CREATE TABLE `tbl_place_photo` (
  `id` int(11) NOT NULL,
  `place_photo` varchar(100) NOT NULL,
  `place_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place_photo`
--

INSERT INTO `tbl_place_photo` (`id`, `place_photo`, `place_id`) VALUES
(5, 'place_uploads/pexels-photo-673803 (1).jpeg', '2'),
(6, 'place_uploads/360_F_562993122_e7pGkeY8yMfXJcRmclsoIjtOoVDDgIlh.jpg', '5'),
(7, 'place_uploads/rajamahendravaram.jpg', '24'),
(8, 'place_uploads/rajamahendravaram1.jpg', '24'),
(9, 'place_uploads/rajamahendravaram2.jpg', '24'),
(10, 'place_uploads/guntur.jpg', '12'),
(11, 'place_uploads/portblair.jpg', '1'),
(12, 'place_uploads/hintupur1.jpg', '13'),
(13, 'place_uploads/hintupur.jpg', '13'),
(14, 'place_uploads/kadapa.jpg', '14'),
(15, 'place_uploads/kakinada.jpg', '15'),
(16, 'place_uploads/kurnool.jpg', '16'),
(17, 'place_uploads/machilipatanam1.jpg', '17'),
(18, 'place_uploads/madanapple.jpg', '18'),
(19, 'place_uploads/nandyal.jpg', '19'),
(20, 'place_uploads/narasarapet.jpg', '20'),
(21, 'place_uploads/nellore.jpg', '21'),
(22, 'place_uploads/ongole.jpg', '22'),
(23, 'place_uploads/prodattur.jpg', '23'),
(24, 'place_uploads/vijayavada.jpg', '30'),
(25, 'place_uploads/adoni.jpg', '2'),
(26, 'place_uploads/srikakulam.jpg', '25'),
(27, 'place_uploads/tadepalligudem.jpg', '26'),
(28, 'place_uploads/tadipatri.jpg', '27'),
(29, 'place_uploads/chennai1.jpg', '363'),
(30, 'place_uploads/chennai2.jpg', '363'),
(31, 'place_uploads/chennai3.jpg', '363'),
(32, 'place_uploads/trivandrum.jpg', '205'),
(33, 'place_uploads/trivandrum1.jpg', '205'),
(34, 'place_uploads/trivandrum2.jpg', '205'),
(35, 'place_uploads/trivandrum3.jpg', '205'),
(36, 'place_uploads/trivandrum4.jpg', '205'),
(37, 'place_uploads/goa.jpg', '530'),
(38, 'place_uploads/goa1.jpg', '529'),
(39, 'place_uploads/goa2.jpg', '529'),
(40, 'place_uploads/goa.jpg', '529'),
(41, 'place_uploads/goa3.jpg', '529'),
(42, 'place_uploads/amaravati.jpg', '3'),
(43, 'place_uploads/anantapur.jpg', '4'),
(44, 'place_uploads/chilalalerpet.jpg', '6'),
(45, 'place_uploads/chittor.jpg', '7'),
(46, 'place_uploads/dharmavaramm.jpg', '8'),
(47, 'place_uploads/eluru.jpg', '9'),
(48, 'place_uploads/gudivada.jpg', '10'),
(49, 'place_uploads/guntakal.jpg', '11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` int(25) NOT NULL,
  `place_id` int(25) NOT NULL,
  `user_id` int(25) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `image_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`id`, `place_id`, `user_id`, `comment`, `rating`, `date`, `image_url`) VALUES
(2, 1, 12, 'Good', 4, '2025-02-22', ''),
(3, 1, 12, 'New', 3, '2025-03-07', 'review_uploads/846f7732-b11c-4b1c-aab3-3cdfb7aa73b0.jpeg'),
(4, 1, 12, 'Good place', 3, '2025-03-14', 'review_uploads/d0b5695e-b349-4815-a97b-7ebe5c4d7dee.jpeg'),
(5, 1, 16, 'Best one', 3, '2025-03-14', 'review_uploads/ff500286-c6a3-46e8-be10-13a7d6a7f8e6.png'),
(6, 2, 12, 'Good', 4, '2025-03-16', 'review_uploads/b22e714c-a6f4-4785-84c7-85c948c53c6a.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spot`
--

CREATE TABLE `tbl_spot` (
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `details` varchar(10000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `place_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_spot`
--

INSERT INTO `tbl_spot` (`id`, `name`, `details`, `image`, `place_id`) VALUES
(4, 'Marina Beach', 'Marina Beach, or simply the Marina, is a natural urban beach in Chennai, Tamil Nadu, India, along the Bay of Bengal. The beach runs from near Fort St. George in the north to Foreshore Estate in the south, a distance of 6.0 km, making it the second longest urban beach in the world.', 'spot_uploads/marina.jpg', 363),
(5, 'Kapaleeshwarar Temple', 'The Kapaleeshwarar temple is of typical Tamil architectural style, with the gopuram overpowering the street on which the temple sits. This temple is also a testimonial for the vishwakarmas sthapathis. There are two entrances to the temple marked by the gopuram on either side. The east gopuram is about 40 m high, while the smaller western gopuram faces the sacred tank', 'spot_uploads/Kapaleeshwarar Temple.jpg', 363),
(6, 'Mylapore', 'Mylapore is located a few kilometres to the south of the British-built Chennai city. The neighborhood is bordered by Triplicane in the north, Royapettah in the northwest, Alwarpet in the west, and Mandaveli in the south. The Bay of Bengal coast is in the east of Mylapore. It extends for around 4 km from north to south and 2 km from east to west', 'spot_uploads/Mylapore.jpg', 363),
(7, 'Padmanabhaswamy Temple', 'The Sree Padmanabhaswamy Temple, a prominent Hindu temple in Thiruvananthapuram, Kerala, is dedicated to Lord Vishnu, specifically in his \"Anantha Shayanam\" (reclined) posture, and is known for its rich history, architecture, and the discovery of a vast treasure.', 'spot_uploads/Padmanabhaswamy Temple.jpg', 205),
(8, 'Marine Aquarium Museum', 'The Vizhinjam Marine Aquarium is a popular tourist attraction located in the picturesque coastal town of Vizhinjam near Thiruvananthapuram, known primarily for its fishing harbour. The aquarium, managed by the Department of Fisheries, Government of Kerala, is one of the oldest public aquariums in the country. It serves not only as a recreational space but also as an educational facility by offering a fascinating, ringside view into the underwater world while teaching the importance of marine conservation.', 'spot_uploads/Marine Aquarium Museum Vizhinjam.jpg', 205),
(9, 'Azhimala Shiva statue', 'The Aazhimala Shiva Temple is a Hindu temple located on the coast of the Arabian Sea near Vizhinjam in the Thiruvananthapuram district of Kerala, India. Dedicated to Shiva, the temple is known for the 18 m (58 ft) tall Gangadhareshwara sculpture, which is the tallest Shiva sculpture in Kerala.[1] The temple is built in a style resembling the architecture of Tamil Nadu. It is governed by the Aazhimala Shiva Temple Devaswom Trust', 'spot_uploads/Azhimala Shiva statue.jpg', 205),
(10, 'Varkala Beach', 'Varkala Beach, also known as Papanasam Beach, is a popular beach in Kerala, India, characterized by its red laterite cliffs, the belief that its waters wash away sins, and proximity to the Janardanaswamy Temple.', 'spot_uploads/Varkala Beach.jpg', 205),
(11, 'Olg Goa Church', 'The basilica is located in Old Goa, the former capital of Portuguese India, and holds the mortal remains of St Francis Xavier. The Baroque style main altar is gilded and bears the statue of Ignatius of Loyola standing between Solomonic pillars above which is the name of Jesus in the IHS monogram and the Holy Trinity.', 'spot_uploads/Old goa church.jpg', 529),
(12, 'Baga Beach', 'Baga is a seaside town located in Bardez, Goa, India. It comes under the jurisdiction of Calangute, which is 2 km south. Baga is known for its popular beach and Baga Creek. It is visited by thousands of tourists annually. ', 'spot_uploads/baga.jpg', 529),
(13, 'Dudhsagar Falls', 'Dudhsagar Falls is a four-tiered waterfall on the Mahadayi River in the Indian state of Goa. It is 60km from Panaji by road and is located on the Belagavi–Vasco Da Gama rail route about 46km east of Madgaon and 80km south of Belagavi', 'spot_uploads/dudhsagar.jpg', 529),
(14, 'Aguada Fort', 'Fort Aguada is a seventeenth-century Portuguese-era fort, along with a lighthouse, standing in Goa, India, on Sinquerim Beach, overlooking the Arabian Sea. It is an ASI protected Monument of National Importance in Goa.', 'spot_uploads/aguada.jpg', 529);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tracking`
--

CREATE TABLE `tbl_tracking` (
  `id` int(25) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `booking_id` int(25) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `updated_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tracking`
--

INSERT INTO `tbl_tracking` (`id`, `latitude`, `longitude`, `booking_id`, `driver_id`, `updated_at`) VALUES
(15, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:02:50'),
(16, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:02:50'),
(17, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:02:50'),
(18, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:02:55'),
(19, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:02:55'),
(20, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:02:55'),
(21, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:03:00'),
(22, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:03:00'),
(23, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:03:05'),
(24, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:03:05'),
(25, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:03:05'),
(26, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:03:10'),
(27, '10.170684', '76.5627307', 2, 15, '2025-02-22 01:03:10'),
(28, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:18'),
(29, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:20'),
(30, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:48'),
(31, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:48'),
(32, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:48'),
(33, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:48'),
(34, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:48'),
(35, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:48'),
(36, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:00:48'),
(37, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:05:19'),
(38, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:05:19'),
(39, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:05:19'),
(40, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:05:19'),
(41, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:05:19'),
(42, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:05:19'),
(43, '10.170684', '76.5627307', 2, 15, '2025-02-22 03:05:20'),
(44, '10.1642', '76.5627307', 2, 15, '2025-02-22 03:05:22'),
(45, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(46, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(47, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(48, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(49, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(50, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(51, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(52, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:13'),
(53, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:15'),
(54, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(55, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(56, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(57, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(58, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(59, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(60, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(61, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(62, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(63, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:38'),
(64, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:43'),
(65, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:43'),
(66, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:43'),
(67, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:48'),
(68, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:48'),
(69, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:48'),
(70, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:53'),
(71, '10.170684', '76.5627307', 2, 15, '2025-02-22 04:54:53'),
(72, '10.1119157', '76.5197535', 2, 15, '2025-03-08 23:25:33'),
(73, '10.1119157', '76.5197535', 2, 15, '2025-03-08 23:25:35'),
(74, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(75, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(76, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(77, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(78, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(79, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(80, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(81, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:51'),
(82, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:25:53'),
(83, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(84, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(85, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(86, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(87, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(88, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(89, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(90, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(91, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(92, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(93, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(94, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(95, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(96, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:21'),
(97, '10.1119196', '76.5197499', 2, 15, '2025-03-08 23:26:23'),
(98, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(99, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(100, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(101, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(102, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(103, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(104, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(105, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(106, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:41'),
(107, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:26:43'),
(108, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(109, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(110, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(111, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(112, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(113, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(114, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(115, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(116, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(117, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(118, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(119, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(120, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(121, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:11'),
(122, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:13'),
(123, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(124, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(125, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(126, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(127, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(128, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(129, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(130, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(131, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(132, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(133, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(134, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(135, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(136, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:41'),
(137, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:27:43'),
(138, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(139, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(140, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(141, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(142, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(143, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(144, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(145, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(146, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(147, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(148, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(149, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(150, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(151, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:12'),
(152, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:13'),
(153, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(154, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(155, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(156, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(157, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(158, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(159, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(160, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(161, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:41'),
(162, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:42'),
(163, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:42'),
(164, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:42'),
(165, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:42'),
(166, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:42'),
(167, '10.1119207', '76.5197489', 2, 15, '2025-03-08 23:28:43'),
(168, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(169, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(170, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(171, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(172, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(173, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(174, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(175, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(176, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(177, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(178, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(179, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:08'),
(180, '10.1119118', '76.5197566', 2, 15, '2025-03-08 23:29:11'),
(181, '9.9928328', '76.6703279', 7, 13, '2025-03-16 18:39:40'),
(182, '9.9928328', '76.6703279', 7, 13, '2025-03-16 18:39:40'),
(183, '9.9984502', '76.6703076', 7, 13, '2025-03-16 18:39:46'),
(184, '9.9984502', '76.6703076', 7, 13, '2025-03-16 18:39:46'),
(185, '9.9984502', '76.6703076', 7, 13, '2025-03-16 18:39:46'),
(186, '9.9984502', '76.6703076', 7, 13, '2025-03-16 18:39:46'),
(187, '9.9985005', '76.6699957', 7, 13, '2025-03-16 18:40:05'),
(188, '9.9985005', '76.6699957', 7, 13, '2025-03-16 18:40:05'),
(189, '9.9985005', '76.6699957', 7, 13, '2025-03-16 18:40:05'),
(190, '9.9985005', '76.6699957', 7, 13, '2025-03-16 18:40:05'),
(191, '9.9986079', '76.6699348', 7, 13, '2025-03-16 18:40:20'),
(192, '9.9986079', '76.6699348', 7, 13, '2025-03-16 18:40:20'),
(193, '9.9986079', '76.6699348', 7, 13, '2025-03-16 18:40:20'),
(194, '9.9989273', '76.6701108', 7, 13, '2025-03-16 18:40:35'),
(195, '9.9989273', '76.6701108', 7, 13, '2025-03-16 18:40:35'),
(196, '9.9989273', '76.6701108', 7, 13, '2025-03-16 18:40:35'),
(197, '9.9989747', '76.6700138', 7, 13, '2025-03-16 18:40:52'),
(198, '9.9989747', '76.6700138', 7, 13, '2025-03-16 18:40:52'),
(199, '9.9989747', '76.6700138', 7, 13, '2025-03-16 18:40:52'),
(200, '9.9986061', '76.6700376', 7, 13, '2025-03-16 18:41:46'),
(201, '9.9986005', '76.6700351', 7, 13, '2025-03-16 18:41:56'),
(202, '9.9986005', '76.6700351', 7, 13, '2025-03-16 18:41:56'),
(203, '9.9986044', '76.6700263', 7, 13, '2025-03-16 18:42:03'),
(204, '9.9986048', '76.6700255', 7, 13, '2025-03-16 18:42:09'),
(205, '9.9986048', '76.6700257', 7, 13, '2025-03-16 18:42:14'),
(206, '9.9986047', '76.6700258', 7, 13, '2025-03-16 18:42:19'),
(207, '9.9986047', '76.6700258', 7, 13, '2025-03-16 18:42:24'),
(208, '9.9986047', '76.6700258', 7, 13, '2025-03-16 18:42:29'),
(209, '9.9986047', '76.6700258', 7, 13, '2025-03-16 18:42:34'),
(210, '9.9986047', '76.6700258', 7, 13, '2025-03-16 18:42:39'),
(211, '9.9986047', '76.6700258', 7, 13, '2025-03-16 18:42:44'),
(212, '9.9986047', '76.6700258', 7, 13, '2025-03-16 18:43:04'),
(213, '9.9987616', '76.6698798', 7, 13, '2025-03-16 18:43:04'),
(214, '9.9987616', '76.6698798', 7, 13, '2025-03-16 18:43:04'),
(215, '9.9987616', '76.6698798', 7, 13, '2025-03-16 18:43:04'),
(216, '9.9985397', '76.6699105', 7, 13, '2025-03-16 18:43:11'),
(217, '9.9985397', '76.6699105', 7, 13, '2025-03-16 18:43:12'),
(218, '9.9987671', '76.6699943', 7, 13, '2025-03-16 18:43:26'),
(219, '9.9987671', '76.6699943', 7, 13, '2025-03-16 18:43:26'),
(220, '9.9987671', '76.6699943', 7, 13, '2025-03-16 18:43:27'),
(221, '9.9983953', '76.6701069', 7, 13, '2025-03-16 18:43:41'),
(222, '9.9983953', '76.6701069', 7, 13, '2025-03-16 18:43:41'),
(223, '9.9983953', '76.6701069', 7, 13, '2025-03-16 18:43:42'),
(224, '9.9985302', '76.6698805', 7, 13, '2025-03-16 18:44:03'),
(225, '9.9985302', '76.6698805', 2, 15, '2025-03-16 18:44:03'),
(226, '9.9985302', '76.6698805', 7, 13, '2025-03-16 18:44:03'),
(227, '9.9985302', '76.6698805', 2, 15, '2025-03-16 18:44:03'),
(228, '9.9985302', '76.6698805', 7, 13, '2025-03-16 18:44:03'),
(229, '9.9985302', '76.6698805', 7, 13, '2025-03-16 18:44:04'),
(230, '9.9985302', '76.6698805', 2, 15, '2025-03-16 18:44:04'),
(231, '9.9985302', '76.6698805', 2, 15, '2025-03-16 18:44:04'),
(232, '9.9987245', '76.6697972', 7, 13, '2025-03-16 18:44:13'),
(233, '9.9987245', '76.6697972', 2, 15, '2025-03-16 18:44:13'),
(234, '9.9987245', '76.6697972', 7, 13, '2025-03-16 18:44:13'),
(235, '9.9987245', '76.6697972', 2, 15, '2025-03-16 18:44:13'),
(236, '9.9987165', '76.6699178', 7, 13, '2025-03-16 18:44:23'),
(237, '9.9987165', '76.6699178', 7, 13, '2025-03-16 18:44:23'),
(238, '9.9987165', '76.6699178', 2, 15, '2025-03-16 18:44:23'),
(239, '9.9987165', '76.6699178', 2, 15, '2025-03-16 18:44:23'),
(240, '9.9986706', '76.6700175', 2, 15, '2025-03-16 18:44:37'),
(241, '9.9986706', '76.6700175', 7, 13, '2025-03-16 18:44:37'),
(242, '9.9986706', '76.6700175', 2, 15, '2025-03-16 18:44:37'),
(243, '9.9986706', '76.6700175', 7, 13, '2025-03-16 18:44:37'),
(244, '9.9987459', '76.6700339', 7, 13, '2025-03-16 18:44:55'),
(245, '9.9987459', '76.6700339', 7, 13, '2025-03-16 18:44:55'),
(246, '9.9987459', '76.6700339', 7, 13, '2025-03-16 18:44:55'),
(247, '9.9987459', '76.6700339', 2, 15, '2025-03-16 18:44:55'),
(248, '9.9987459', '76.6700339', 2, 15, '2025-03-16 18:44:55'),
(249, '9.9987459', '76.6700339', 2, 15, '2025-03-16 18:44:56'),
(250, '9.9987459', '76.6700339', 2, 15, '2025-03-16 18:44:56'),
(251, '9.9987459', '76.6700339', 7, 13, '2025-03-16 18:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(2) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `login_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `age`, `phone`, `email`, `login_id`) VALUES
(3, 'Fddg', 25, '3535353535', 'fsa@gmail.com', 12),
(4, 'Betsy', 22, '8451755174', 'betsyeldhose2002@gmail.co', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cab`
--
ALTER TABLE `tbl_cab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_guide`
--
ALTER TABLE `tbl_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hotel_review`
--
ALTER TABLE `tbl_hotel_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_place_photo`
--
ALTER TABLE `tbl_place_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_spot`
--
ALTER TABLE `tbl_spot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tracking`
--
ALTER TABLE `tbl_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_cab`
--
ALTER TABLE `tbl_cab`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_guide`
--
ALTER TABLE `tbl_guide`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_hotel_review`
--
ALTER TABLE `tbl_hotel_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `tbl_place_photo`
--
ALTER TABLE `tbl_place_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_spot`
--
ALTER TABLE `tbl_spot`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_tracking`
--
ALTER TABLE `tbl_tracking`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
