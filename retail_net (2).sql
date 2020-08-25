-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 05:38 PM
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
-- Database: `retail_net`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `state_id`, `status`) VALUES
(1, 'North and Middle Andaman', 32, 0),
(2, 'South Andaman', 32, 0),
(3, 'Nicobar', 32, 0),
(4, 'Adilabad', 1, 0),
(5, 'Anantapur', 1, 0),
(6, 'Chittoor', 1, 0),
(7, 'East Godavari', 1, 0),
(8, 'Guntur', 1, 0),
(9, 'Hyderabad', 1, 0),
(10, 'Kadapa', 1, 0),
(11, 'Karimnagar', 1, 0),
(12, 'Khammam', 1, 0),
(13, 'Krishna', 1, 0),
(14, 'Kurnool', 1, 0),
(15, 'Mahbubnagar', 1, 0),
(16, 'Medak', 1, 0),
(17, 'Nalgonda', 1, 0),
(18, 'Nellore', 1, 0),
(19, 'Nizamabad', 1, 0),
(20, 'Prakasam', 1, 0),
(21, 'Rangareddi', 1, 0),
(22, 'Srikakulam', 1, 0),
(23, 'Vishakhapatnam', 1, 0),
(24, 'Vizianagaram', 1, 0),
(25, 'Warangal', 1, 0),
(26, 'West Godavari', 1, 0),
(27, 'Anjaw', 3, 1),
(28, 'Changlang', 3, 0),
(29, 'East Kameng', 3, 0),
(30, 'Lohit', 3, 0),
(31, 'Lower Subansiri', 3, 0),
(32, 'Papum Pare', 3, 0),
(33, 'Tirap', 3, 0),
(34, 'Dibang Valley', 3, 0),
(35, 'Upper Subansiri', 3, 0),
(36, 'West Kameng', 3, 0),
(37, 'Barpeta', 2, 0),
(38, 'Bongaigaon', 2, 0),
(39, 'Cachar', 2, 0),
(40, 'Darrang', 2, 0),
(41, 'Dhemaji', 2, 0),
(42, 'Dhubri', 2, 0),
(43, 'Dibrugarh', 2, 0),
(44, 'Goalpara', 2, 0),
(45, 'Golaghat', 2, 0),
(46, 'Hailakandi', 2, 0),
(47, 'Jorhat', 2, 0),
(48, 'Karbi Anglong', 2, 0),
(49, 'Karimganj', 2, 0),
(50, 'Kokrajhar', 2, 0),
(51, 'Lakhimpur', 2, 0),
(52, 'Marigaon', 2, 0),
(53, 'Nagaon', 2, 0),
(54, 'Nalbari', 2, 0),
(55, 'North Cachar Hills', 2, 0),
(56, 'Sibsagar', 2, 0),
(57, 'Sonitpur', 2, 0),
(58, 'Tinsukia', 2, 0),
(59, 'Araria', 4, 0),
(60, 'Aurangabad', 4, 0),
(61, 'Banka', 4, 0),
(62, 'Begusarai', 4, 0),
(63, 'Bhagalpur', 4, 0),
(64, 'Bhojpur', 4, 0),
(65, 'Buxar', 4, 0),
(66, 'Darbhanga', 4, 0),
(67, 'Purba Champaran', 4, 0),
(68, 'Gaya', 4, 0),
(69, 'Gopalganj', 4, 0),
(70, 'Jamui', 4, 0),
(71, 'Jehanabad', 4, 0),
(72, 'Khagaria', 4, 0),
(73, 'Kishanganj', 4, 0),
(74, 'Kaimur', 4, 0),
(75, 'Katihar', 4, 0),
(76, 'Lakhisarai', 4, 0),
(77, 'Madhubani', 4, 0),
(78, 'Munger', 4, 0),
(79, 'Madhepura', 4, 0),
(80, 'Muzaffarpur', 4, 0),
(81, 'Nalanda', 4, 0),
(82, 'Nawada', 4, 0),
(83, 'Patna', 4, 0),
(84, 'Purnia', 4, 0),
(85, 'Rohtas', 4, 0),
(86, 'Saharsa', 4, 0),
(87, 'Samastipur', 4, 0),
(88, 'Sheohar', 4, 0),
(89, 'Sheikhpura', 4, 0),
(90, 'Saran', 4, 0),
(91, 'Sitamarhi', 4, 0),
(92, 'Supaul', 4, 0),
(93, 'Siwan', 4, 0),
(94, 'Vaishali', 4, 0),
(95, 'Pashchim Champaran', 4, 0),
(96, 'Bastar', 35, 0),
(97, 'Bilaspur', 35, 0),
(98, 'Dantewada', 35, 0),
(99, 'Dhamtari', 35, 0),
(100, 'Durg', 35, 0),
(101, 'Jashpur', 35, 0),
(102, 'Janjgir-Champa', 35, 0),
(103, 'Korba', 35, 0),
(104, 'Koriya', 35, 0),
(105, 'Kanker', 35, 0),
(106, 'Kawardha', 35, 0),
(107, 'Mahasamund', 35, 0),
(108, 'Raigarh', 35, 0),
(109, 'Rajnandgaon', 35, 0),
(110, 'Raipur', 35, 0),
(111, 'Surguja', 35, 0),
(112, 'Diu', 29, 0),
(113, 'Daman', 29, 0),
(114, 'Central Delhi', 25, 0),
(115, 'East Delhi', 25, 0),
(116, 'New Delhi', 25, 0),
(117, 'North Delhi', 25, 0),
(118, 'North East Delhi', 25, 0),
(119, 'North West Delhi', 25, 0),
(120, 'South Delhi', 25, 0),
(121, 'South West Delhi', 25, 0),
(122, 'West Delhi', 25, 0),
(123, 'North Goa', 26, 0),
(124, 'South Goa', 26, 0),
(125, 'Ahmedabad', 5, 1),
(126, 'Amreli District', 5, 0),
(127, 'Anand', 5, 0),
(128, 'Banaskantha', 5, 0),
(129, 'Bharuch', 5, 0),
(130, 'Bhavnagar', 5, 0),
(131, 'Dahod', 5, 0),
(132, 'The Dangs', 5, 0),
(133, 'Gandhinagar', 5, 0),
(134, 'Jamnagar', 5, 0),
(135, 'Junagadh', 5, 0),
(136, 'Kutch', 5, 0),
(137, 'Kheda', 5, 0),
(138, 'Mehsana', 5, 0),
(139, 'Narmada', 5, 0),
(140, 'Navsari', 5, 0),
(141, 'Patan', 5, 0),
(142, 'Panchmahal', 5, 0),
(143, 'Porbandar', 5, 0),
(144, 'Rajkot', 5, 0),
(145, 'Sabarkantha', 5, 0),
(146, 'Surendranagar', 5, 0),
(147, 'Surat', 5, 0),
(148, 'Vadodara', 5, 0),
(149, 'Valsad', 5, 0),
(150, 'Ambala', 6, 0),
(151, 'Bhiwani', 6, 0),
(152, 'Faridabad', 6, 0),
(153, 'Fatehabad', 6, 0),
(154, 'Gurgaon', 6, 0),
(155, 'Hissar', 6, 0),
(156, 'Jhajjar', 6, 0),
(157, 'Jind', 6, 0),
(158, 'Karnal', 6, 0),
(159, 'Kaithal', 6, 0),
(160, 'Kurukshetra', 6, 0),
(161, 'Mahendragarh', 6, 0),
(162, 'Mewat', 6, 0),
(163, 'Panchkula', 6, 0),
(164, 'Panipat', 6, 0),
(165, 'Rewari', 6, 0),
(166, 'Rohtak', 6, 0),
(167, 'Sirsa', 6, 0),
(168, 'Sonepat', 6, 0),
(169, 'Yamuna Nagar', 6, 0),
(170, 'Palwal', 6, 0),
(171, 'Bilaspur', 7, 0),
(172, 'Chamba', 7, 0),
(173, 'Hamirpur', 7, 0),
(174, 'Kangra', 7, 0),
(175, 'Kinnaur', 7, 0),
(176, 'Kulu', 7, 0),
(177, 'Lahaul and Spiti', 7, 0),
(178, 'Mandi', 7, 0),
(179, 'Shimla', 7, 0),
(180, 'Sirmaur', 7, 0),
(181, 'Solan', 7, 0),
(182, 'Una', 7, 0),
(183, 'Anantnag', 8, 0),
(184, 'Badgam', 8, 0),
(185, 'Bandipore', 8, 0),
(186, 'Baramula', 8, 0),
(187, 'Doda', 8, 0),
(188, 'Jammu', 8, 0),
(189, 'Kargil', 8, 0),
(190, 'Kathua', 8, 0),
(191, 'Kupwara', 8, 0),
(192, 'Leh', 8, 0),
(193, 'Poonch', 8, 0),
(194, 'Pulwama', 8, 0),
(195, 'Rajauri', 8, 0),
(196, 'Srinagar', 8, 0),
(197, 'Samba', 8, 0),
(198, 'Udhampur', 8, 0),
(199, 'Bokaro', 34, 0),
(200, 'Chatra', 34, 0),
(201, 'Deoghar', 34, 0),
(202, 'Dhanbad', 34, 0),
(203, 'Dumka', 34, 0),
(204, 'Purba Singhbhum', 34, 0),
(205, 'Garhwa', 34, 0),
(206, 'Giridih', 34, 0),
(207, 'Godda', 34, 0),
(208, 'Gumla', 34, 0),
(209, 'Hazaribagh', 34, 0),
(210, 'Koderma', 34, 0),
(211, 'Lohardaga', 34, 0),
(212, 'Pakur', 34, 0),
(213, 'Palamu', 34, 0),
(214, 'Ranchi', 34, 0),
(215, 'Sahibganj', 34, 0),
(216, 'Seraikela and Kharsawan', 34, 0),
(217, 'Pashchim Singhbhum', 34, 0),
(218, 'Ramgarh', 34, 0),
(219, 'Bidar', 9, 0),
(220, 'Belgaum', 9, 0),
(221, 'Bijapur', 9, 0),
(222, 'Bagalkot', 9, 0),
(223, 'Bellary', 9, 0),
(224, 'Bangalore Rural District', 9, 0),
(225, 'Bangalore Urban District', 9, 0),
(226, 'Chamarajnagar', 9, 0),
(227, 'Chikmagalur', 9, 0),
(228, 'Chitradurga', 9, 0),
(229, 'Davanagere', 9, 0),
(230, 'Dharwad', 9, 0),
(231, 'Dakshina Kannada', 9, 0),
(232, 'Gadag', 9, 0),
(233, 'Gulbarga', 9, 0),
(234, 'Hassan', 9, 0),
(235, 'Haveri District', 9, 0),
(236, 'Kodagu', 9, 0),
(237, 'Kolar', 9, 0),
(238, 'Koppal', 9, 0),
(239, 'Mandya', 9, 0),
(240, 'Mysore', 9, 0),
(241, 'Raichur', 9, 0),
(242, 'Shimoga', 9, 0),
(243, 'Tumkur', 9, 0),
(244, 'Udupi', 9, 0),
(245, 'Uttara Kannada', 9, 0),
(246, 'Ramanagara', 9, 0),
(247, 'Chikballapur', 9, 0),
(248, 'Yadagiri', 9, 0),
(249, 'Alappuzha', 10, 0),
(250, 'Ernakulam', 10, 0),
(251, 'Idukki', 10, 0),
(252, 'Kollam', 10, 0),
(253, 'Kannur', 10, 0),
(254, 'Kasaragod', 10, 0),
(255, 'Kottayam', 10, 0),
(256, 'Kozhikode', 10, 0),
(257, 'Malappuram', 10, 0),
(258, 'Palakkad', 10, 0),
(259, 'Pathanamthitta', 10, 0),
(260, 'Thrissur', 10, 0),
(261, 'Thiruvananthapuram', 10, 0),
(262, 'Wayanad', 10, 0),
(263, 'Alirajpur', 11, 0),
(264, 'Anuppur', 11, 0),
(265, 'Ashok Nagar', 11, 0),
(266, 'Balaghat', 11, 0),
(267, 'Barwani', 11, 0),
(268, 'Betul', 11, 0),
(269, 'Bhind', 11, 0),
(270, 'Bhopal', 11, 0),
(271, 'Burhanpur', 11, 0),
(272, 'Chhatarpur', 11, 0),
(273, 'Chhindwara', 11, 0),
(274, 'Damoh', 11, 0),
(275, 'Datia', 11, 0),
(276, 'Dewas', 11, 0),
(277, 'Dhar', 11, 0),
(278, 'Dindori', 11, 0),
(279, 'Guna', 11, 0),
(280, 'Gwalior', 11, 0),
(281, 'Harda', 11, 0),
(282, 'Hoshangabad', 11, 0),
(283, 'Indore', 11, 0),
(284, 'Jabalpur', 11, 0),
(285, 'Jhabua', 11, 0),
(286, 'Katni', 11, 0),
(287, 'Khandwa', 11, 0),
(288, 'Khargone', 11, 0),
(289, 'Mandla', 11, 0),
(290, 'Mandsaur', 11, 0),
(291, 'Morena', 11, 0),
(292, 'Narsinghpur', 11, 0),
(293, 'Neemuch', 11, 0),
(294, 'Panna', 11, 0),
(295, 'Rewa', 11, 0),
(296, 'Rajgarh', 11, 0),
(297, 'Ratlam', 11, 0),
(298, 'Raisen', 11, 0),
(299, 'Sagar', 11, 0),
(300, 'Satna', 11, 0),
(301, 'Sehore', 11, 0),
(302, 'Seoni', 11, 0),
(303, 'Shahdol', 11, 0),
(304, 'Shajapur', 11, 0),
(305, 'Sheopur', 11, 0),
(306, 'Shivpuri', 11, 0),
(307, 'Sidhi', 11, 0),
(308, 'Singrauli', 11, 0),
(309, 'Tikamgarh', 11, 0),
(310, 'Ujjain', 11, 0),
(311, 'Umaria', 11, 0),
(312, 'Vidisha', 11, 0),
(313, 'Ahmednagar', 12, 0),
(314, 'Akola', 12, 0),
(315, 'Amrawati', 12, 0),
(316, 'Aurangabad', 12, 0),
(317, 'Bhandara', 12, 0),
(318, 'Beed', 12, 0),
(319, 'Buldhana', 12, 0),
(320, 'Chandrapur', 12, 0),
(321, 'Dhule', 12, 0),
(322, 'Gadchiroli', 12, 0),
(323, 'Gondiya', 12, 0),
(324, 'Hingoli', 12, 0),
(325, 'Jalgaon', 12, 0),
(326, 'Jalna', 12, 0),
(327, 'Kolhapur', 12, 0),
(328, 'Latur', 12, 0),
(329, 'Mumbai City', 12, 0),
(330, 'Mumbai suburban', 12, 0),
(331, 'Nandurbar', 12, 0),
(332, 'Nanded', 12, 0),
(333, 'Nagpur', 12, 0),
(334, 'Nashik', 12, 0),
(335, 'Osmanabad', 12, 0),
(336, 'Parbhani', 12, 0),
(337, 'Pune', 12, 0),
(338, 'Raigad', 12, 0),
(339, 'Ratnagiri', 12, 0),
(340, 'Sindhudurg', 12, 0),
(341, 'Sangli', 12, 0),
(342, 'Solapur', 12, 0),
(343, 'Satara', 12, 0),
(344, 'Thane', 12, 0),
(345, 'Wardha', 12, 0),
(346, 'Washim', 12, 0),
(347, 'Yavatmal', 12, 0),
(348, 'Bishnupur', 13, 0),
(349, 'Churachandpur', 13, 0),
(350, 'Chandel', 13, 0),
(351, 'Imphal East', 13, 0),
(352, 'Senapati', 13, 0),
(353, 'Tamenglong', 13, 0),
(354, 'Thoubal', 13, 0),
(355, 'Ukhrul', 13, 0),
(356, 'Imphal West', 13, 0),
(357, 'East Garo Hills', 14, 0),
(358, 'East Khasi Hills', 14, 0),
(359, 'Jaintia Hills', 14, 0),
(360, 'Ri-Bhoi', 14, 0),
(361, 'South Garo Hills', 14, 0),
(362, 'West Garo Hills', 14, 0),
(363, 'West Khasi Hills', 14, 0),
(364, 'Aizawl', 15, 0),
(365, 'Champhai', 15, 0),
(366, 'Kolasib', 15, 0),
(367, 'Lawngtlai', 15, 0),
(368, 'Lunglei', 15, 0),
(369, 'Mamit', 15, 0),
(370, 'Saiha', 15, 0),
(371, 'Serchhip', 15, 0),
(372, 'Dimapur', 16, 0),
(373, 'Kohima', 16, 0),
(374, 'Mokokchung', 16, 0),
(375, 'Mon', 16, 0),
(376, 'Phek', 16, 0),
(377, 'Tuensang', 16, 0),
(378, 'Wokha', 16, 0),
(379, 'Zunheboto', 16, 0),
(380, 'Angul', 17, 0),
(381, 'Boudh', 17, 0),
(382, 'Bhadrak', 17, 0),
(383, 'Bolangir', 17, 0),
(384, 'Bargarh', 17, 0),
(385, 'Baleswar', 17, 0),
(386, 'Cuttack', 17, 0),
(387, 'Debagarh', 17, 0),
(388, 'Dhenkanal', 17, 0),
(389, 'Ganjam', 17, 0),
(390, 'Gajapati', 17, 0),
(391, 'Jharsuguda', 17, 0),
(392, 'Jajapur', 17, 0),
(393, 'Jagatsinghpur', 17, 0),
(394, 'Khordha', 17, 0),
(395, 'Kendujhar', 17, 0),
(396, 'Kalahandi', 17, 0),
(397, 'Kandhamal', 17, 0),
(398, 'Koraput', 17, 0),
(399, 'Kendrapara', 17, 0),
(400, 'Malkangiri', 17, 0),
(401, 'Mayurbhanj', 17, 0),
(402, 'Nabarangpur', 17, 0),
(403, 'Nuapada', 17, 0),
(404, 'Nayagarh', 17, 0),
(405, 'Puri', 17, 0),
(406, 'Rayagada', 17, 0),
(407, 'Sambalpur', 17, 0),
(408, 'Subarnapur', 17, 0),
(409, 'Sundargarh', 17, 0),
(410, 'Karaikal', 27, 0),
(411, 'Mahe', 27, 0),
(412, 'Puducherry', 27, 0),
(413, 'Yanam', 27, 0),
(414, 'Amritsar', 18, 0),
(415, 'Bathinda', 18, 0),
(416, 'Firozpur', 18, 0),
(417, 'Faridkot', 18, 0),
(418, 'Fatehgarh Sahib', 18, 0),
(419, 'Gurdaspur', 18, 0),
(420, 'Hoshiarpur', 18, 0),
(421, 'Jalandhar', 18, 0),
(422, 'Kapurthala', 18, 0),
(423, 'Ludhiana', 18, 0),
(424, 'Mansa', 18, 0),
(425, 'Moga', 18, 0),
(426, 'Mukatsar', 18, 0),
(427, 'Nawan Shehar', 18, 0),
(428, 'Patiala', 18, 0),
(429, 'Rupnagar', 18, 1),
(430, 'Sangrur', 18, 0),
(431, 'Ajmer', 19, 0),
(432, 'Alwar', 19, 0),
(433, 'Bikaner', 19, 0),
(434, 'Barmer', 19, 0),
(435, 'Banswara', 19, 0),
(436, 'Bharatpur', 19, 0),
(437, 'Baran', 19, 0),
(438, 'Bundi', 19, 0),
(439, 'Bhilwara', 19, 0),
(440, 'Churu', 19, 0),
(441, 'Chittorgarh', 19, 0),
(442, 'Dausa', 19, 0),
(443, 'Dholpur', 19, 0),
(444, 'Dungapur', 19, 0),
(445, 'Ganganagar', 19, 0),
(446, 'Hanumangarh', 19, 0),
(447, 'Juhnjhunun', 19, 0),
(448, 'Jalore', 19, 0),
(449, 'Jodhpur', 19, 0),
(450, 'Jaipur', 19, 0),
(451, 'Jaisalmer', 19, 0),
(452, 'Jhalawar', 19, 0),
(453, 'Karauli', 19, 0),
(454, 'Kota', 19, 0),
(455, 'Nagaur', 19, 0),
(456, 'Pali', 19, 0),
(457, 'Pratapgarh', 19, 0),
(458, 'Rajsamand', 19, 0),
(459, 'Sikar', 19, 0),
(460, 'Sawai Madhopur', 19, 0),
(461, 'Sirohi', 19, 0),
(462, 'Tonk', 19, 0),
(463, 'Udaipur', 19, 0),
(464, 'East Sikkim', 20, 0),
(465, 'North Sikkim', 20, 0),
(466, 'South Sikkim', 20, 0),
(467, 'West Sikkim', 20, 0),
(468, 'Ariyalur', 21, 0),
(469, 'Chennai', 21, 0),
(470, 'Coimbatore', 21, 0),
(471, 'Cuddalore', 21, 0),
(472, 'Dharmapuri', 21, 0),
(473, 'Dindigul', 21, 0),
(474, 'Erode', 21, 0),
(475, 'Kanchipuram', 21, 0),
(476, 'Kanyakumari', 21, 0),
(477, 'Karur', 21, 0),
(478, 'Madurai', 21, 0),
(479, 'Nagapattinam', 21, 0),
(480, 'The Nilgiris', 21, 0),
(481, 'Namakkal', 21, 0),
(482, 'Perambalur', 21, 0),
(483, 'Pudukkottai', 21, 0),
(484, 'Ramanathapuram', 21, 0),
(485, 'Salem', 21, 0),
(486, 'Sivagangai', 21, 0),
(487, 'Tiruppur', 21, 0),
(488, 'Tiruchirappalli', 21, 0),
(489, 'Theni', 21, 0),
(490, 'Tirunelveli', 21, 0),
(491, 'Thanjavur', 21, 0),
(492, 'Thoothukudi', 21, 0),
(493, 'Thiruvallur', 21, 0),
(494, 'Thiruvarur', 21, 0),
(495, 'Tiruvannamalai', 21, 0),
(496, 'Vellore', 21, 0),
(497, 'Villupuram', 21, 0),
(498, 'Dhalai', 22, 0),
(499, 'North Tripura', 22, 0),
(500, 'South Tripura', 22, 0),
(501, 'West Tripura', 22, 0),
(502, 'Almora', 33, 0),
(503, 'Bageshwar', 33, 0),
(504, 'Chamoli', 33, 0),
(505, 'Champawat', 33, 0),
(506, 'Dehradun', 33, 0),
(507, 'Haridwar', 33, 0),
(508, 'Nainital', 33, 0),
(509, 'Pauri Garhwal', 33, 0),
(510, 'Pithoragharh', 33, 0),
(511, 'Rudraprayag', 33, 0),
(512, 'Tehri Garhwal', 33, 0),
(513, 'Udham Singh Nagar', 33, 0),
(514, 'Uttarkashi', 33, 0),
(515, 'Agra', 23, 0),
(516, 'Allahabad', 23, 0),
(517, 'Aligarh', 23, 0),
(518, 'Ambedkar Nagar', 23, 0),
(519, 'Auraiya', 23, 0),
(520, 'Azamgarh', 23, 0),
(521, 'Barabanki', 23, 0),
(522, 'Badaun', 23, 0),
(523, 'Bagpat', 23, 0),
(524, 'Bahraich', 23, 0),
(525, 'Bijnor', 23, 0),
(526, 'Ballia', 23, 0),
(527, 'Banda', 23, 0),
(528, 'Balrampur', 23, 0),
(529, 'Bareilly', 23, 0),
(530, 'Basti', 23, 0),
(531, 'Bulandshahr', 23, 0),
(532, 'Chandauli', 23, 0),
(533, 'Chitrakoot', 23, 0),
(534, 'Deoria', 23, 0),
(535, 'Etah', 23, 0),
(536, 'Kanshiram Nagar', 23, 0),
(537, 'Etawah', 23, 0),
(538, 'Firozabad', 23, 0),
(539, 'Farrukhabad', 23, 0),
(540, 'Fatehpur', 23, 0),
(541, 'Faizabad', 23, 0),
(542, 'Gautam Buddha Nagar', 23, 0),
(543, 'Gonda', 23, 0),
(544, 'Ghazipur', 23, 0),
(545, 'Gorkakhpur', 23, 0),
(546, 'Ghaziabad', 23, 0),
(547, 'Hamirpur', 23, 0),
(548, 'Hardoi', 23, 0),
(549, 'Mahamaya Nagar', 23, 0),
(550, 'Jhansi', 23, 0),
(551, 'Jalaun', 23, 0),
(552, 'Jyotiba Phule Nagar', 23, 0),
(553, 'Jaunpur District', 23, 0),
(554, 'Kanpur Dehat', 23, 0),
(555, 'Kannauj', 23, 0),
(556, 'Kanpur Nagar', 23, 0),
(557, 'Kaushambi', 23, 0),
(558, 'Kushinagar', 23, 0),
(559, 'Lalitpur', 23, 0),
(560, 'Lakhimpur Kheri', 23, 0),
(561, 'Lucknow', 23, 0),
(562, 'Mau', 23, 0),
(563, 'Meerut', 23, 0),
(564, 'Maharajganj', 23, 0),
(565, 'Mahoba', 23, 0),
(566, 'Mirzapur', 23, 0),
(567, 'Moradabad', 23, 0),
(568, 'Mainpuri', 23, 0),
(569, 'Mathura', 23, 0),
(570, 'Muzaffarnagar', 23, 0),
(571, 'Pilibhit', 23, 0),
(572, 'Pratapgarh', 23, 0),
(573, 'Rampur', 23, 0),
(574, 'Rae Bareli', 23, 0),
(575, 'Saharanpur', 23, 0),
(576, 'Sitapur', 23, 0),
(577, 'Shahjahanpur', 23, 0),
(578, 'Sant Kabir Nagar', 23, 0),
(579, 'Siddharthnagar', 23, 0),
(580, 'Sonbhadra', 23, 0),
(581, 'Sant Ravidas Nagar', 23, 0),
(582, 'Sultanpur', 23, 0),
(583, 'Shravasti', 23, 0),
(584, 'Unnao', 23, 0),
(585, 'Varanasi', 23, 0),
(586, 'Birbhum', 24, 0),
(587, 'Bankura', 24, 0),
(588, 'Bardhaman', 24, 0),
(589, 'Darjeeling', 24, 0),
(590, 'Dakshin Dinajpur', 24, 0),
(591, 'Hooghly', 24, 0),
(592, 'Howrah', 24, 0),
(593, 'Jalpaiguri', 24, 0),
(594, 'Cooch Behar', 24, 0),
(595, 'Kolkata', 24, 0),
(596, 'Malda', 24, 0),
(597, 'Midnapore', 24, 0),
(598, 'Murshidabad', 24, 0),
(599, 'Nadia', 24, 0),
(600, 'North 24 Parganas', 24, 0),
(601, 'South 24 Parganas', 24, 0),
(602, 'Purulia', 24, 0),
(603, 'Uttar Dinajpur', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `inquiry_id` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_specifications` text NOT NULL,
  `more_detail` text NOT NULL,
  `inquiry_date` text NOT NULL,
  `table_id` int(11) NOT NULL,
  `seller_firm_id` int(11) NOT NULL,
  `buyer_firm_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_cart`
--

CREATE TABLE `master_cart` (
  `cart_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_firm_detail`
--

CREATE TABLE `master_firm_detail` (
  `firm_id` int(11) NOT NULL,
  `firm_name` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `gst_no` varchar(20) NOT NULL,
  `pan_no` varchar(15) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firm_location` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_firm_detail`
--

INSERT INTO `master_firm_detail` (`firm_id`, `firm_name`, `email_id`, `gst_no`, `pan_no`, `contact_number`, `user_id`, `firm_location`, `status`) VALUES
(6, 'J.K. Scrap Traders', 'jkscrap2154@gmail.com', 'HGFUEDN004753', 'CGERVJN1645', '9978673103', 62, 125, 1),
(7, 'ADINATH EQUIPMENTS PVT. LTD.', 'adinathequipments.com', 'IVSI684CSUG', 'JHSNVVISN32', '07925897744', 63, 125, 1),
(8, 'Halston Distributors', 'conveyor@halstondistributors.in', 'DJV5635VD', 'FHVBIDFVN2565', '07929708235', 64, 125, 1),
(9, 'Sunshine Rotary', 'sunshinerotary@gmail.com', 'VUEHBV6565', 'JUHDFCGBUSH651', '9825107644', 65, 147, 1),
(10, 'MR.BIN', 'info@mrbin', 'VIEVN6846', 'ICJJNDCI64646', '8000931748', 66, 125, 1),
(11, 'JAIRAM PLASTIC INDUSTRIES', 'info@jairamplastic.com', 'HBWUVH616416', 'IVNEIRVN684464', '9725900100', 67, 144, 1),
(12, 'Craftzone', 'craftszone@yahoo.co.in', 'CSDICHNIHC651', 'UDHSBU65191', '9737155999', 68, 144, 1),
(13, 'MANN ENTERPRISE', 'mannenterprise9@gmail.com', 'VRUVHNI191', 'UFHVBUH141', '9909281699', 69, 144, 1),
(14, 'SAMIR JARI WORKS', 'samirjari@gmail.com', 'UUVSHBDC65168', 'KIDFVISNV6561', '9377746201', 70, 147, 1),
(15, 'SHK pipes & fittings', 'info@shreeharikrishna.net', 'UHFY654', 'IDSB68464', '9825064012', 71, 125, 1),
(16, 'Shiwkon Mircoweigh Products', 'shiwkonscale@gmail.com', 'JHBDC65484', 'IBCB6849841', '9825025409', 72, 125, 1),
(17, 'Global Technologies', 'vkaria67@gmail.com', 'ISBCI44984', 'KJDCNSIC684985', '7600076576', 73, 144, 1),
(18, 'SHYAM TIMBERS', 'shyamtimbers@yahoo.in', 'HUDSBUYSDH694961', 'IUUREHFN561', '9898078810', 74, 144, 1),
(19, 'Perfect Steel Products', 'siddhpurajitendra@gmail.com', 'BIVK646', 'KJJNVJS656', '9825211129', 75, 144, 1),
(20, 'Gopi Enterprise', 'manish.khiani@yahoo.com', 'JHDSBUS5984', 'SUIVBUSH6511', '9825030670', 76, 125, 1),
(21, 'SUPERTECH AGRO INDUSTRIES', 'www.supertechagroindustries.com', 'URFUB454', 'UYGCWI68496', '9426008329', 77, 125, 1),
(22, 'WORLD OF ELECTRONICS', 'www.saffronair.in', 'HBCWB35974', 'FICYIDCN65498', '9227451070', 78, 125, 1),
(23, 'AMARDEEP INDUSTRIES', 'amardeepindustries@yahoo.in', 'IVYBUEB68', 'WECYGWIBHC26598', '9898476511', 79, 144, 1),
(24, 'Aditya Plastic Industries', 'www.adityaplasticindustries.in', 'IHVNIUE6146', 'OJCFDNVI651847', '9925043580', 80, 125, 1),
(25, 'KEI Wires and Cables', 'www.kei-ind.com', 'KJNFVK6941', 'IFVUND6494', '9824087943', 81, 148, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_firm_image_mapping`
--

CREATE TABLE `master_firm_image_mapping` (
  `mapping_id` int(11) NOT NULL,
  `firm_id` int(11) NOT NULL,
  `file_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_firm_image_mapping`
--

INSERT INTO `master_firm_image_mapping` (`mapping_id`, `firm_id`, `file_name`) VALUES
(1, 6, 'JK.png'),
(2, 7, 'unnamed.png'),
(3, 8, 'logo.gif'),
(4, 10, 'images.png');

-- --------------------------------------------------------

--
-- Table structure for table `master_gst`
--

CREATE TABLE `master_gst` (
  `gst_id` int(11) NOT NULL,
  `gst_slab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_gst`
--

INSERT INTO `master_gst` (`gst_id`, `gst_slab`) VALUES
(1, 0),
(2, 5),
(3, 12),
(4, 18),
(5, 28);

-- --------------------------------------------------------

--
-- Table structure for table `master_help`
--

CREATE TABLE `master_help` (
  `table_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_sector`
--

CREATE TABLE `master_sector` (
  `sector_id` int(11) NOT NULL,
  `sector_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_sector`
--

INSERT INTO `master_sector` (`sector_id`, `sector_name`) VALUES
(1, 'Agriculture'),
(2, 'Food and Beverages'),
(3, 'Apparel'),
(4, 'Textile and Leather Product'),
(5, 'Fashion Accessories'),
(6, 'Timepieces, Jewelry, Eyewear'),
(7, 'Vehicles and Accessories'),
(8, 'Luggage, Bags and Cases'),
(9, 'Shoes and Accessories'),
(10, 'Consumer Electronics'),
(11, 'Home appliances'),
(12, 'Security and Protection'),
(13, 'Electrical Equipment and Supplies'),
(14, 'Sports and Entertainment'),
(15, 'Gifts and Crafts'),
(16, 'Toys and Hobbies'),
(17, 'Health and Medical'),
(18, 'Beauty and Personal Care'),
(19, 'Construction and Real Estate'),
(20, 'Home and Garden'),
(21, 'Lights and Lighting'),
(22, 'Furniture'),
(23, 'Machinery'),
(24, 'Fabrication Services'),
(25, 'Tools and hardware'),
(26, 'Minerals and Metallurgy'),
(27, 'Chemicals'),
(28, 'Rubber and Plastics'),
(29, 'Energy'),
(30, 'Packaging and Printing'),
(31, 'Office and School Supplies'),
(32, 'Service Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `master_units`
--

CREATE TABLE `master_units` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_units`
--

INSERT INTO `master_units` (`unit_id`, `name`) VALUES
(1, 'Acre/Acres\r\n'),
(2, 'Ampere/Amperes\r\n'),
(3, 'Bag/Bags\r\n'),
(4, 'Barrel/Barrels\r\n'),
(5, 'Blade/Blades\r\n'),
(6, 'Box/Boxes\r\n'),
(7, 'Bushel/Bushels\r\n'),
(8, 'buyer/buyers\r\n'),
(9, 'Carat/Carats\r\n'),
(10, 'Carton/Cartons\r\n'),
(11, 'Case/Cases\r\n'),
(12, 'Centimeter/Centimeters\r\n'),
(13, 'Chain/Chains\r\n'),
(14, 'Combo/Combos\r\n'),
(15, 'Cubic Centimeter/Cubic Centimeters\r\n'),
(16, 'Cubic Foot/Cubic Feet\r\n'),
(17, 'Cubic Inch/Cubic Inches\r\n'),
(18, 'Cubic Meter/Cubic Meters\r\n'),
(19, 'Cubic Yard/Cubic Yards\r\n'),
(20, 'Day/Days\r\n'),
(21, 'Degrees Celsius\r\n'),
(22, 'Degrees Fahrenheit\r\n'),
(23, 'Dozen/Dozens\r\n'),
(24, 'Dram/Drams\r\n'),
(25, 'Fluid Ounce/Fluid Ounces\r\n'),
(26, 'Foot/Feet\r\n'),
(27, 'Forty-Foot Container\r\n'),
(28, 'Furlong/Furlongs\r\n'),
(29, 'Gallon/Gallons\r\n'),
(30, 'Gill/Gills\r\n'),
(31, 'Grain/Grains\r\n'),
(32, 'Gram/Grams\r\n'),
(33, 'Gross\r\n'),
(34, 'Hectare/Hectares\r\n'),
(35, 'Hertz\r\n'),
(36, 'Hour/Hours\r\n'),
(37, 'Inch/Inches\r\n'),
(38, 'Kiloampere/Kiloamperes\r\n'),
(39, 'Kilogram/Kilograms\r\n'),
(40, 'Kilohertz\r\n'),
(41, 'Kilometer/Kilometers\r\n'),
(42, 'Kiloohm/Kiloohms\r\n'),
(43, 'Kilovolt/Kilovolts\r\n'),
(44, 'Kilowatt/Kilowatts\r\n'),
(45, 'Liter/Liters\r\n'),
(46, 'Long Ton/Long Tons\r\n'),
(47, 'Megahertz\r\n'),
(48, 'Meter/Meters\r\n'),
(49, 'Metric Ton/Metric Tons\r\n'),
(50, 'Mile/Miles\r\n'),
(51, 'Milliampere/Milliamperes\r\n'),
(52, 'Milligram/Milligrams\r\n'),
(53, 'Millihertz\r\n'),
(54, 'Milliliter/Milliliters\r\n'),
(55, 'Millimeter/Millimeters\r\n'),
(56, 'Milliohm/Milliohms\r\n'),
(57, 'Millivolt/Millivolts\r\n'),
(58, 'Milliwatt/Milliwatts\r\n'),
(59, 'Month/Months\r\n'),
(60, 'Nautical Mile/Nautical Miles\r\n'),
(61, 'Ohm/Ohms\r\n'),
(62, 'Ounce/Ounces\r\n'),
(63, 'Pack/Packs\r\n'),
(64, 'Pair/Pairs\r\n'),
(65, 'Pallet/Pallets\r\n'),
(66, 'Parcel/Parcels\r\n'),
(67, 'Perch/Perches\r\n'),
(68, 'Piece/Pieces\r\n'),
(69, 'Pint/Pints\r\n'),
(70, 'Plant/Plants\r\n'),
(71, 'Pole/Poles\r\n'),
(72, 'Pound/Pounds\r\n'),
(73, 'Quart/Quarts\r\n'),
(74, 'Quarter/Quarters\r\n'),
(75, 'Quarter/Quarters\r\n'),
(76, 'Rod/Rods\r\n'),
(77, 'Roll/Rolls\r\n'),
(78, 'Set/Sets\r\n'),
(79, 'Sheet/Sheets\r\n'),
(80, 'Short Ton/Short Tons\r\n'),
(81, 'Square Centimeter/Square Centimeters\r\n'),
(82, 'Square Foot/Square Feet\r\n'),
(83, 'Square Inch/Square Inches\r\n'),
(84, 'Square Meter/Square Meters\r\n'),
(85, 'Square Mile/Square Miles\r\n'),
(86, 'Square Yard/Square Yards\r\n'),
(87, 'Stone/Stones\r\n'),
(88, 'Strand/Strands\r\n'),
(89, 'Ton/Tons\r\n'),
(90, 'Tonne/Tonnes\r\n'),
(91, 'Tray/Trays\r\n'),
(92, 'Twenty-Foot Container\r\n'),
(93, 'Unit/Units\r\n'),
(94, 'Volt/Volts\r\n'),
(95, 'Watt/Watts\r\n'),
(96, 'Week/Weeks\r\n'),
(97, 'Wp'),
(98, 'Yard/Yards\r\n'),
(99, 'Year/Years');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email_id` varchar(70) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`user_id`, `first_name`, `last_name`, `email_id`, `contact_no`, `user_type_id`, `username`, `password`, `status`) VALUES
(62, 'Mukesh', 'Mali', 'jkscrap2154@gmail.com', '9978673103', 1, 'JK', 'JK', 1),
(63, 'Adinath', 'Adinath', 'aadinathequipments@yahoo.com', '07925897744', 1, 'Adinath', 'Adinath', 1),
(64, 'Halston', 'Halston', 'conveyor@halstondistributors.in', '07929708235', 2, 'Halston', 'Halston', 1),
(65, 'Sunshine', 'Rotary', 'sunshinerotary@gmail.com', '9825107644', 1, 'Sunshine', 'Sunshine', 1),
(66, 'MR', 'BIN', 'info@mrbin', '8000931748', 1, 'MR', 'MR', 1),
(67, 'Jairam', 'Plastic', 'info@jairamplastic.com', '9725900100', 1, 'Jairam', 'Jairam', 1),
(68, 'Jayesh', 'Gajjar', 'craftszone@yahoo.co.in', '9737155999', 1, 'Jayesh', 'Jayesh', 1),
(69, 'Mann', 'Mann', 'mannenterprise9@gmail.com', '9909281699', 1, 'Mann', 'Mann', 1),
(70, 'Samir ', 'Jari', 'samirjari@gmail.com', '9377746201', 1, 'Samir', 'Samir', 1),
(71, 'SHK', 'SHK', 'info@shreeharikrishna.net', '9825064012', 1, 'SHK', 'SHK', 1),
(72, 'SHIWKON', 'SHIWKON', 'shiwkonscale@gmail.com', '9825025409', 2, 'Shiwkon', 'Shiwkon', 1),
(73, 'Vivek', 'Karia', 'vkaria67@yahoo.com', '7600076576', 4, 'Vivek', 'Vivek', 1),
(74, 'Bharat', 'bhai', 'shyamtimbers@yahoo.in', '9898078810', 4, 'Shyam', 'Shyam', 1),
(75, 'Jitendra', 'Siddhpura', 'siddhpurajitendra@gmail.com', '9825211129', 1, 'Perfect', 'Perfect', 1),
(76, 'Manish', 'Khiani', 'manish.khiani@yahoo.com', '9825030670', 3, 'Manish', 'Manish', 1),
(77, 'Suresh', 'Patel', 'supertech_suresh@yahoo.co.in', '9574008329', 1, 'Suresh', 'Suresh', 1),
(78, 'Samip', 'Shah', 'samipshah_1975@yahoo.com', '9979881070', 4, 'samip', 'samip', 1),
(79, 'Amardeep', 'Bhai', 'amardeepindustries@yahoo.in', '9898476511', 1, 'Amardeep', 'Amardeep', 1),
(80, 'Aditya', 'bhai', 'adityaplasticInd@gmail.com', '9925043580', 1, 'Aditya', 'Aditya', 1),
(81, 'KEI', 'KEI', 'baroda@kei-ind.com', '9909013378', 1, 'KEI', 'KEI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_user_type`
--

CREATE TABLE `master_user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_text` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_user_type`
--

INSERT INTO `master_user_type` (`user_type_id`, `user_type_text`) VALUES
(1, 'Manufacturer'),
(2, 'Distributer'),
(3, 'WholeSeller'),
(4, 'Retailer'),
(5, 'Customers');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_place_date` date NOT NULL COMMENT 'date when order gets placed',
  `order_date` date NOT NULL COMMENT 'decided when order status changes to accepted',
  `amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `firm_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `price` int(11) NOT NULL,
  `date_of_manufacturing` date NOT NULL,
  `gst_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `product_specification` text NOT NULL,
  `product_status` int(1) NOT NULL,
  `product_availability` int(1) NOT NULL,
  `sorting` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `firm_id`, `quantity`, `rate`, `product_name`, `description`, `price`, `date_of_manufacturing`, `gst_id`, `unit_id`, `category_id`, `brand_name`, `product_specification`, `product_status`, `product_availability`, `sorting`) VALUES
(22, 6, 1, 25000, 'Lathe Machine', '  We are a unique entity in the industry, actively committed towards offering the best quality range of Lathe Machine.						', 25000, '2020-05-21', 1, 68, 486, 'J.K.', '', 1, 1, 0),
(23, 6, 1, 20000, 'High Speed Agitator', 'Our company has sculpted a remarkable place in the market as a reputed firm of High Speed Agitator.   								', 20000, '2020-05-21', 1, 68, 486, 'J.K.', '', 1, 1, 0),
(24, 6, 1, 5500, 'Gear Motor', 'By utilizing our years of experience and in depth knowledge of this domain, we bring forth a qualitative array of Industrial Gear motor.   								', 5500, '2020-05-21', 1, 68, 486, 'J.K.', '', 1, 1, 0),
(25, 6, 1, 5000, 'INDUSTRIAL CHAIN PULLEY BLOCK', 'Our organization is widely acknowledged in this domain as the leading firm of Industrial Chain Pulley Block.   								', 5000, '2020-05-21', 1, 68, 486, 'J.K.', '', 1, 1, 0),
(26, 6, 1, 95000, 'HELICAL GEAR BOX', '  Our organization is engaged in offering a wide range of Helical Gear box to our valuable clients. 								', 95000, '2020-05-21', 1, 68, 486, 'J.K.', '', 1, 1, 0),
(27, 6, 1, 35000, 'SHEARING MACHINE', 'Riding on unfathomable volumes of industrial expertise, we are offering best in class Shearing Machine.   								', 35000, '2020-05-21', 1, 68, 486, 'J.K.', '', 1, 1, 0),
(28, 7, 1, 450, 'Face Shield Carrier with A3 Wisor Udyogi', 'Protections against high-speed impact (120 m/s) at extreme temperature, penetration, splash of liquids and heat.\r\n99.9 % UV protection.\r\nBest optical quality (highest ranking at the tests of spherical refractive power, astigmatic refractive power, prismatic refractive power, and light diffusion).\r\nProtective films on both sides (prevent damages and scratches during transportation).\r\nEdges fitted with aluminum beading for easy adjustment to face contour.\r\nConforms to EN166.   								', 450, '2020-05-22', 1, 68, 214, 'Udyogi', '', 1, 1, 0),
(30, 7, 1, 8960, 'First Aid Kit Plastic Box Handy - SJF M1', 'St JohnsFirst Aid Kits professionally managed company engaged in manufacturing high quality first aid kits for various industries. The Brand ST JOHNS stands for the quality. ST JOHNS Industrial Kit(Large) is well designed for all kinds of industries. This model contains a very basic first aid components which are easily understand and used by the common man. A complete Industrial kit contains more than 246 components. This Industrial kit contains a specialized product called Haemostatic gelatine sponge which arrests the blood immediately and save the victim. The First Industrial Kit comes with a soft stretcher, highly useful to ship the victim from one place to other. It is suitable for 50 persons. Specifications: Metal Cabinet Large SJF M1 - 1, Compartment 1: Sterile Dressing - Small - 15, Sterile Dressing - Medium - 10, Compartment 2: Sterile Dressing - Large - 8, Sterile Oval Eye Pad - 10, Compartment 3: Sterilised Burn Dressing L - 10, Triangular Bandage - 5, Compartment 4: Roller Bandage 7.5cmx3mtr - 8, Roller Bandage, 10cmx3mtr - 8, Compartment 5: Soft Stretcher - 1, Industrial Goggles - 1, Kidney Tray Plastic - 1, Adhesive Plaster 5cmx1mtr - 1, Adhesive Plaster 2.5cmx1mtr - 2, Adhesive Plaster Assorted - 25, Eye Wash Cup - 1, Tourniquet - 1, Wooden Splint - 3, Safety Pins - 10, Blood Lancet - 1, Gloves Examination - 2, Haemostatic Absorbable Sponge - 1, Tough Cut Scissor 5.5\" - 1, Compartment 6: Ns for Eye Cleaning 100ml - 2, Antiseptic Solution 100ml - 1, Asprin Tablet - 75mg - 56, Tincture Iodine 20ml - 2, Eye/Ear Drops - 1, Merbromin Solution - 5, Electrolyte Powder 4.2gms - 5, Potassium Perm Crystal 5gms - 5, Compartment 7: Absorbent Cotton Roll, 15g - 12, First Aid Book/Leaflet - 1, Amputation Care Pack - 1, Rescue Sheet ? 1   								', 8960, '2020-05-23', 1, 68, 328, '	St Johns First Aid', '[{\"name\":\"Categories\",\"value\":\"Industrial First Aid Boxes\"},{\"name\":\"Model Number\",\"value\":\"SJF M1\"},{\"name\":\"Material\",\"value\":\"Steel\"},{\"name\":\"Color\",\"value\":\"White/Red\"},{\"name\":\"Number of Items\",\"value\":\"246\"}]', 1, 1, 0),
(31, 7, 1, 1050, 'First Aid Kit Plastic Box Handy - SJF P4', 'St Johns Workplace Kit has been well designed as multipurpose kit. Workplace kit perfectly suits for office/Industries/Home/Travel/Institutions/Vehicle. Work place kit consists of a components can be easily understood and used in panic situation by everyone. ST JOHNS FIRST AID KITS provides you quality products which ensures value of your money. It contains 77 components and suitable for 10 persons.   Specifications: Plastic Cabinet Medium SJF P4 - 1, Small Wound: Antiseptic Cream 10g - 1, Safety Pin - 10, Adhesive Plaster 19 X 72mm - 10, Adhesive Plaster 25 X 72mm - 5, Adhesive Plaster Round - 3, Wound Cleaning Wipes - ALC - 5, Antiseptic Wipes - 5, Sterile Gauze Swab 10 Cm - 2, Sterile Gauze Swab 7.5cm - 2, Sterile Gauze Swab 5cm - 2, Burn Dressing Small 5cm - 1, Burn Dressing Medium 10cm - 1, Sterile Adhesive Plaster 6x10cm - 1, Microporous Tape 1.25x5mt - 1, Medium and Major Wound: Gauze Bandage 7.5cmx3mtr - 1, Elastic Gauze Bandage 6x1m - 1, Triangular Bandage - 1, Sterile Dressing Medium - 1, Sterile Oval Eye Pad - 2, General Medicine: Dusting Powder 10g - 1, Tincture Iodine 20ml - 1, Crystal Violet 10ml - 1, Eye/Ear Drops - 1, Electrolyte Powder 4.2gms - 3, Sugar Sachet - 3, Common Salt - 3, General Items: First Aid Book - 1, Antiseptic Lotion 50ml - 1, Tweezer Plastic - 1, Scissor 7cm - 1, Absorbent Cotton 15gms - 1, Instant Cool Pack 50g - 1, Pen Light - 1, Tourniquet - 1   								', 1050, '2020-05-23', 1, 68, 328, '	St Johns First Aid', '[{\"name\":\"Type\",\"value\":\"Box B\"},{\"name\":\"Categories\",\"value\":\"Industrial First Aid Boxes\"},{\"name\":\"Model Number\",\"value\":\"Plastic box Wall Mounted - SJF-P4\"},{\"name\":\"Material\",\"value\":\"Plastic\"},{\"name\":\"Color\",\"value\":\"White/Red\"},{\"name\":\"Number Of Items\",\"value\":\"77\"}]', 1, 1, 0),
(32, 7, 5, 4000, 'IFR Boiler Suit Udyogi', ' IFR suit coverall protect from industrial flash fires. The aramid fibers used in the garment provides superior flame resistance. The fibers will not melt, burn, drip or support combustion in air. It is inherently flame resistant and this property cannot be degraded by laundering.   								', 20000, '2020-05-16', 1, 68, 214, 'Udyogi', '[{\"name\":\"Product Type\",\"value\":\"Overalls\"},{\"name\":\"Usage/Application\",\"value\":\"Safety\"},{\"name\":\"Size\",\"value\":\"All Sizes\"},{\"name\":\"Color\",\"value\":\"KHAKEE\"},{\"name\":\"Model Name/Number\",\"value\":\"IFR\"},{\"name\":\"Wear Type\",\"value\":\"Reflective\"},{\"name\":\"Do You Fulfil Sample Orders\",\"value\":\"Paid Basis\"},{\"name\":\"Material\",\"value\":\"IFR suit  \"},{\"name\":\"Weight\",\"value\":\"150 ± 5% g/m² (4.42 ± 5% Oz/Yd²) or custom weight.\"},{\"name\":\"Sizes\",\"value\":\"Small, medium, large and extra large or custom size.\"},{\"name\":\"Colour\",\"value\":\"Orange and blue.\"},{\"name\":\"Standard\",\"value\":\"	Flame resistance.\"},{\"name\":\"Anti-static\",\"value\":\"	EN1149-5.\"},{\"name\":\"Application\",\"value\":\"Petrochemicals, utilities, military, firefighter.\"}]', 1, 1, 0),
(33, 8, 50, 1100, 'Rubber Conveyor Belts', ' We are counted amongst the foremost organizations of superior quality Rubber Conveyor Belts. The offered belt is manufactured by using high quality material and latest technology at our vendors\' end in order to meet the industry quality norms. The belt we offer to client is highly efficient and is of low wear and tear. Our valuable client\'s can avail this belt at market leading prices.  								', 55000, '2020-05-23', 1, 48, 480, 'Indus', '[{\"name\":\"Structure\",\"value\":\"Belt Conveyor\"},{\"name\":\"Type\",\"value\":\"General Purpose Belts\"},{\"name\":\"Condition\",\"value\":\"New\"},{\"name\":\"Automation Grade\",\"value\":\"Manual\"},{\"name\":\"Color\",\"value\":\"Black\"},{\"name\":\"Cover Type\",\"value\":\"Grade M-24\"},{\"name\":\"Material\",\"value\":\"Rubber\"}]', 1, 1, 0),
(34, 8, 50, 1000, 'Special Purpose Conveyor Belt', ' Backed by a team of experienced and dedicated professionals, we are able to offer an exclusive range of Special Purpose Conveyor Belt that are highly appreciated in many industries. Offered product is accurately manufactured by our vendors\' adroit professionals making use of the finest quality raw material and contemporary technology in adherence with the international quality standards.  								', 50000, '2020-05-23', 1, 48, 480, '	INDUS', '[{\"name\":\"Type\",\"value\":\"General Purpose Belts\"},{\"name\":\"Condition\",\"value\":\"New\"},{\"name\":\"Structure Type\",\"value\":\"Belt Conveyor\"},{\"name\":\"Grade\",\"value\":\"M 24\"},{\"name\":\"Cover Type\",\"value\":\"Grade M24\"}]', 1, 1, 0),
(35, 8, 90, 44, 'PVC Duct Hose', 'We are a well-known organization of premium quality PVC Duct Hose. These hoses are in compliance with the international quality standards. They are available in different models and sizes as per the requirement and specifications of the customers. Our duct hoses are highly flexible and have good resistance to chemicals and mineral oils. These are available at market leading price.   								', 3960, '2020-05-23', 1, 48, 583, '	FLYING FLEX', '[{\"name\":\"Single Hose Length\",\"value\":\"30 MTR\"},{\"name\":\"Size\",\"value\":\"16MM-300MM\"},{\"name\":\"unit Length\",\"value\":\"30m\"},{\"name\":\"Color\",\"value\":\"GREY\"},{\"name\":\"Material\",\"value\":\"PVC\"}]', 1, 1, 0),
(36, 9, 1, 6000000, 'Automatic Rotary Screen Printing Machine', '   			In order to cater the variegated demands of our clients, we are offering an excellent quality range of Rotary Screen Printing Machine.\r\n					', 6000000, '2020-05-29', 1, 93, 492, '	Sunshine Engineering', '[{\"name\":\"Voltage\",\"value\":\"	220-440V\"},{\"name\":\"Power Source	\",\"value\":\"	Electric\"},{\"name\":\"	Phase\",\"value\":\"	Three Phase\"},{\"name\":\"Frequency	\",\"value\":\"	50Hz\"},{\"name\":\"Automation Grade\",\"value\":\"	Automatic\"},{\"name\":\"Usage/Application	\",\"value\":\"	Screen Printing\"},{\"name\":\"Material\",\"value\":\"Stainless Steel, Mild Steel, Aluminium, Cast Iron and Magnet\"}]', 1, 1, 0),
(37, 6, 400, 1000, 'sampleproduct', ' for sample						', 400000, '2020-05-20', 2, 39, 4, 'beans.Inc', '[{\"name\":\"colour\",\"value\":\"green\"},{\"name\":\"calorific\",\"value\":\"high\"}]', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `sector_id`, `category_name`) VALUES
(1, 1, 'Agricultural Waste'),
(2, 1, 'Animal Products'),
(3, 1, 'Beans'),
(4, 1, 'Cocoa Beans'),
(5, 1, 'Coffee Beans'),
(6, 1, 'Farm Machinery and Equipment'),
(7, 1, 'Feed'),
(8, 1, 'Fresh Seafood'),
(9, 1, 'Fruit'),
(10, 1, 'Grain'),
(11, 1, 'Herbals Cigars and Cigaretts'),
(12, 1, 'Mushrooms and Truffles'),
(13, 1, 'Nuts and Kernels'),
(14, 1, 'Ornamental Plants'),
(15, 1, 'Others Agriculture Products'),
(16, 1, 'Plants and Animal Oil'),
(17, 1, 'Plant Seeds and Bulbs'),
(18, 1, 'Timber Raw Materials'),
(19, 1, 'Vanilla Beans'),
(20, 1, 'Vegetables'),
(21, 2, 'Alcoholic Beverages'),
(22, 2, 'Baby Food'),
(23, 2, 'Baked Goods'),
(24, 2, 'Canned Food'),
(25, 2, 'Coffee'),
(26, 2, 'Confectionery'),
(27, 2, 'Dairy'),
(28, 2, 'Drinking Water'),
(29, 2, 'Egg and Egg Products'),
(30, 2, 'Food Ingredients'),
(31, 2, 'Fruit Products'),
(32, 2, 'Grain Products'),
(33, 2, 'Honey Products'),
(34, 2, 'Instant Food'),
(35, 2, 'Meat and Poultry'),
(36, 2, 'Other Food and beverages'),
(37, 2, 'Seafood'),
(38, 2, 'Seasonings & Condiments'),
(39, 2, 'Snack Food'),
(40, 2, 'Soft Drinks'),
(41, 2, 'Tea'),
(42, 2, 'Vegetable Products'),
(43, 3, 'Apparel Design Services\r\n\r\n'),
(44, 3, 'Apparel Processing Services\r\n'),
(45, 3, 'Apparel Stock\r\n'),
(46, 3, 'Boy\'s Clothing\r\n'),
(47, 3, 'Costumes\r\n'),
(48, 3, 'Ethnic Clothing\r\n'),
(49, 3, 'Garment Accessories\r\n'),
(50, 3, 'Girl‘s Clothing\r\n'),
(51, 3, 'Infant & Toddlers Clothing\r\n'),
(52, 3, 'Mannequins\r\n'),
(53, 3, 'Maternity Clothing\r\n'),
(54, 3, 'Men‘s Clothing\r\n'),
(55, 3, 'Sewing Supplies\r\n'),
(56, 3, 'Sportswear\r\n'),
(57, 3, 'Stage & Dance Wear\r\n'),
(58, 3, 'Tag Guns\r\n'),
(59, 3, 'Uniforms\r\n'),
(60, 3, 'Used Clothes'),
(61, 3, 'Wedding Apparel & Accessories\r\n'),
(62, 3, 'Women\'s Clothing'),
(63, 4, 'Down & Feather\r\n\r\n'),
(64, 4, 'Fabric\r\n'),
(65, 4, 'Fiber\r\n'),
(66, 4, 'Fur\r\n'),
(67, 4, 'Grey Fabric\r\n'),
(68, 4, 'Home Textile\r\n'),
(69, 4, 'Leather\r\n'),
(70, 4, 'Leather Product\r\n'),
(71, 4, 'Other Textiles & Leather Products\r\n'),
(72, 4, 'Textile Accessories\r\n'),
(73, 4, 'Textile Processing\r\n'),
(74, 4, 'Thread\r\n'),
(75, 4, 'Yarn\r\n'),
(76, 4, '100% Cotton Fabric\r\n'),
(77, 4, '100% Polyester Fabric\r\n'),
(78, 4, 'Bedding Set\r\n'),
(79, 4, 'Towel'),
(80, 4, 'Chair Cover\r\n'),
(81, 4, 'Genuine Leather'),
(82, 5, 'Belt Accessories\r\n\r\n'),
(83, 5, 'Belts\r\n'),
(84, 5, 'Fashion Accessories Design Services\r\n'),
(85, 5, 'Fashion Accessories Processing Services\r\n'),
(86, 5, 'Gloves & Mittens\r\n'),
(87, 5, 'Scarf, Hat & Glove Sets\r\n'),
(88, 5, 'Hats & Caps\r\n'),
(89, 5, 'Scarves & Shawls\r\n'),
(90, 5, 'Hair Accessories\r\n'),
(91, 5, 'Genuine Leather Belts\r\n'),
(92, 5, 'Leather Gloves & Mittens\r\n'),
(93, 5, 'Ties & Accessories\r\n'),
(94, 5, 'Belt Buckles\r\n'),
(95, 5, 'PU Belts\r\n'),
(96, 5, 'Belt Chains\r\n'),
(97, 5, 'Metal Belts\r\n'),
(98, 5, 'Suspenders'),
(99, 6, 'Eyewear\r\n\r\n'),
(100, 6, 'Jewelry\r\n'),
(101, 6, 'Watches\r\n'),
(102, 6, 'Eyeglasses Frames\r\n'),
(103, 6, 'Sunglasses\r\n'),
(104, 6, 'Sports Eyewear\r\n'),
(105, 6, 'Body Jewelry\r\n'),
(106, 6, 'Bracelets & Bangles\r\n'),
(107, 6, 'Brooches\r\n'),
(108, 6, 'Cuff Links & Tie Clips\r\n'),
(109, 6, 'Earrings\r\n'),
(110, 6, 'Jewelry Boxes\r\n'),
(111, 6, 'Jewelry Sets\r\n'),
(112, 6, 'Jewelry Tools & Equipment\r\n'),
(113, 6, 'Loose Beads\r\n'),
(114, 6, 'Loose Gemstone\r\n'),
(115, 6, 'Necklaces\r\n'),
(116, 6, 'Pendants & Charms\r\n'),
(117, 6, 'Rings\r\n'),
(118, 6, 'Wristwatches'),
(119, 7, 'Automobiles\r\n\r\n'),
(120, 7, 'Trailers\r\n\r\n'),
(121, 7, 'Trucks\r\n'),
(122, 7, 'Golf Carts\r\n'),
(123, 7, 'Marine Parts & Accessories\r\n'),
(124, 7, 'Truck Parts & Accessories\r\n'),
(125, 7, 'Trains\r\n'),
(126, 7, 'Motorcycles & Scooters\r\n'),
(127, 7, 'Auto Parts & Accessories\r\n'),
(128, 7, 'Emergency Vehicles\r\n'),
(129, 7, 'Bus Parts & Accessories\r\n'),
(130, 7, 'ATVs & UTVs\r\n'),
(131, 7, 'Bus\r\n'),
(132, 7, 'Containers\r\n'),
(133, 7, 'Other Vehicle Parts & Accessories\r\n'),
(134, 7, 'Other Vehicles'),
(135, 8, 'Bag & Luggage Making Materials\r\n\r\n'),
(136, 8, 'Bag Parts & Accessories\r\n'),
(137, 8, 'Business Bags & Cases\r\n'),
(138, 8, 'Digital Gear & Camera Bags\r\n'),
(139, 8, 'Handbags & Messenger Bags\r\n'),
(140, 8, 'Luggage & Travel Bags\r\n'),
(141, 8, 'Luggage Cart\r\n'),
(142, 8, 'Other Luggage, Bags & Cases\r\n'),
(143, 8, 'Special Purpose Bags & Cases\r\n'),
(144, 8, 'Sports & Leisure Bags\r\n'),
(145, 8, 'Wallets & Holders\r\n'),
(146, 8, 'Carry-on Luggage\r\n'),
(147, 8, 'Luggage Sets\r\n'),
(148, 8, 'Trolley Bags\r\n'),
(149, 8, 'Briefcases\r\n'),
(150, 8, 'Cosmetic Bags & Cases\r\n'),
(151, 8, 'Shopping Bags\r\n'),
(152, 8, 'Handbags\r\n'),
(153, 8, 'Backpacks\r\n'),
(154, 8, 'Wallets'),
(155, 9, 'Baby Shoes\r\n\r\n'),
(156, 9, 'Children\'s Shoes\r\n'),
(157, 9, 'Dance Shoes\r\n'),
(158, 9, 'Genuine Leather Shoes\r\n'),
(159, 9, 'Men\'s Shoes\r\n'),
(160, 9, 'Other Shoes\r\n'),
(161, 9, 'Shoe Materials\r\n'),
(162, 9, 'Shoe Parts & Accessories\r\n'),
(163, 9, 'Shoe Repairing Equipment\r\n'),
(164, 9, 'Shoes Design Services\r\n'),
(165, 9, 'Shoes Processing Services\r\n'),
(166, 9, 'Shoes Stock\r\n'),
(167, 9, 'Special Purpose Shoes\r\n'),
(168, 9, 'Sports Shoes\r\n'),
(169, 9, 'Used Shoes\r\n'),
(170, 9, 'Women\'s Shoes'),
(171, 10, 'Computer Hardware & Software\r\n\r\n'),
(172, 10, 'Electronic Cigarettes\r\n'),
(173, 10, 'Accessories & Parts\r\n'),
(174, 10, 'Camera, Photo & Accessories\r\n'),
(175, 10, 'Electronic Publications\r\n'),
(176, 10, 'Home Audio, Video & Accessories\r\n'),
(177, 10, 'Mobile Phone & Accessories\r\n'),
(178, 10, 'Other Consumer Electronics\r\n'),
(179, 10, 'Portable Audio, Video & Accessories\r\n'),
(180, 10, 'Video Game & Accessories\r\n'),
(181, 10, 'Mobile Phones\r\n'),
(182, 10, 'Earphone & Headphone\r\n'),
(183, 10, 'Power Banks\r\n'),
(184, 10, 'Digital Camera\r\n'),
(185, 10, 'Radio & TV Accessories\r\n'),
(186, 10, 'Speaker\r\n'),
(187, 10, 'Television\r\n'),
(188, 10, 'Cables\r\n'),
(189, 10, 'Charger\r\n'),
(190, 10, 'Digital Battery\r\n'),
(191, 10, 'Digital Photo Frame\r\n'),
(192, 10, '3D Glasses'),
(193, 11, 'Air Conditioning Appliances\r\n\r\n'),
(194, 11, 'Cleaning Appliances\r\n'),
(195, 11, 'Hand Dryers\r\n'),
(196, 11, 'Home Appliance Parts\r\n'),
(197, 11, 'Home Appliances Stocks\r\n'),
(198, 11, 'Home Heaters\r\n'),
(199, 11, 'Kitchen Appliances\r\n'),
(200, 11, 'Laundry Appliances\r\n'),
(201, 11, 'Other Home Appliances\r\n'),
(202, 11, 'Refrigerators & Freezers\r\n'),
(203, 11, 'Water Heaters\r\n'),
(204, 11, 'Water Treatment Appliances\r\n'),
(205, 11, 'Wet Towel Dispensers\r\n'),
(206, 11, 'Air Conditioners\r\n'),
(207, 11, 'Fans\r\n'),
(208, 11, 'Vacuum Cleaners\r\n'),
(209, 11, 'Solar Water Heaters\r\n'),
(210, 11, 'Cooking Appliances\r\n'),
(211, 11, 'Coffee Makers\r\n'),
(212, 11, 'Blenders'),
(213, 12, 'Locks & Keys\r\n\r\n'),
(214, 12, 'Personal Protective Equipment\r\n'),
(215, 12, 'Access Control Systems & Products\r\n'),
(216, 12, 'Alarm\r\n'),
(217, 12, 'CCTV Products\r\n'),
(218, 12, 'Firefighting Supplies\r\n'),
(219, 12, 'Locksmith Supplies\r\n'),
(220, 12, 'Other Security & Protection Products\r\n'),
(221, 12, 'Police & Military Supplies\r\n'),
(222, 12, 'Roadway Safety\r\n'),
(223, 12, 'Safes\r\n'),
(224, 12, 'Safes\r\n'),
(225, 12, 'Security Services\r\n'),
(226, 12, 'Self Defense Supplies\r\n'),
(227, 12, 'Water Safety Products\r\n'),
(228, 12, 'CCTV Camera\r\n'),
(229, 12, 'Bullet Proof Vest\r\n'),
(230, 12, 'Alcohol Tester\r\n'),
(231, 12, 'Fire Alarm'),
(232, 13, 'Solar Energy Products\r\n\r\n'),
(233, 13, 'Batteries\r\n'),
(234, 13, 'Electrical Instruments\r\n'),
(235, 13, 'Circuit Breakers\r\n'),
(236, 13, 'Connectors & Terminals\r\n'),
(237, 13, 'Industrial Controls\r\n'),
(238, 13, 'Contactors\r\n'),
(239, 13, 'Motors\r\n'),
(240, 13, 'Electrical Supplies\r\n'),
(241, 13, 'Electronic & Instrument Enclosures\r\n'),
(242, 13, 'Fuse Components\r\n'),
(243, 13, 'Fuses\r\n'),
(244, 13, 'Generators\r\n'),
(245, 13, 'Power Accessories\r\n'),
(246, 13, 'Power Distribution Equipment\r\n'),
(247, 13, 'Power Distribution Equipment\r\n'),
(248, 13, 'Power Supplies\r\n'),
(249, 13, 'Professional Audio, Video & Lighting\r\n'),
(250, 13, 'Relays\r\n'),
(251, 13, 'Switches\r\n'),
(252, 13, 'Transformers\r\n'),
(253, 13, 'Wires, Cables & Cable Assemblies\r\n'),
(254, 13, 'Wiring Accessories\r\n'),
(255, 13, 'Solar Cells, Solar Panel'),
(256, 14, 'Amusement Park\r\n\r\n'),
(257, 14, 'Artificial Grass & Sports Flooring\r\n'),
(258, 14, 'Fitness & Body Building\r\n'),
(259, 14, 'Gambling\r\n'),
(260, 14, 'Golf\r\n'),
(261, 14, 'Indoor Sports\r\n'),
(262, 14, 'Musical Instruments\r\n'),
(263, 14, 'Other Sports & Entertainment Products\r\n'),
(264, 14, 'Outdoor Sports\r\n'),
(265, 14, 'Sports Gloves\r\n'),
(266, 14, 'Sports Safety\r\n'),
(267, 14, 'Sports Souvenirs\r\n'),
(268, 14, 'Team Sports\r\n'),
(269, 14, 'Tennis\r\n'),
(270, 14, 'Water Sports\r\n'),
(271, 14, 'Winter Sports\r\n'),
(272, 14, 'Camping & Hiking\r\n'),
(273, 14, 'Scooters\r\n'),
(274, 14, 'Gym Equipment\r\n'),
(275, 14, 'Swimming & Diving'),
(276, 15, 'Art & Collectible\r\n\r\n'),
(277, 15, 'Crafts\r\n'),
(278, 15, 'Arts & Crafts Stocks\r\n'),
(279, 15, 'Cross Stitch\r\n'),
(280, 15, 'Festive & Party Supplies\r\n'),
(281, 15, 'Flags, Banners & Accessories\r\n'),
(282, 15, 'Gift Sets\r\n'),
(283, 15, 'Holiday Gifts\r\n'),
(284, 15, 'Home Decoration\r\n'),
(285, 15, 'Key Chains\r\n'),
(286, 15, 'Knitting & Crocheting\r\n'),
(287, 15, 'Lacquerware\r\n'),
(288, 15, 'Lacquerware\r\n'),
(289, 15, 'Lanyard\r\n'),
(290, 15, 'Money Boxes\r\n'),
(291, 15, 'Money Boxes\r\n'),
(292, 15, 'Music Boxes\r\n'),
(293, 15, 'Pottery & Enamel\r\n'),
(294, 15, 'Sculptures\r\n'),
(295, 15, 'Souvenirs\r\n'),
(296, 15, 'Stickers\r\n'),
(297, 15, 'Wedding Decorations & Gifts'),
(298, 16, 'Action Figure\r\n\r\n'),
(299, 16, 'Baby Toys\r\n'),
(300, 16, 'Balloons\r\n'),
(301, 16, 'Candy Toys\r\n'),
(302, 16, 'Classic Toys\r\n'),
(303, 16, 'Dolls\r\n'),
(304, 16, 'Educational Toys\r\n'),
(305, 16, 'Electronic Toys\r\n'),
(306, 16, 'Glass Marbles\r\n'),
(307, 16, 'Glass Marbles\r\n'),
(308, 16, 'Inflatable Toys\r\n'),
(309, 16, 'Light-Up Toys\r\n'),
(310, 16, 'Noise Maker\r\n'),
(311, 16, 'Other Toys & Hobbies\r\n'),
(312, 16, 'Outdoor Toys & Structures\r\n'),
(313, 16, 'Plastic Toys\r\n'),
(314, 16, 'Pretend Play & Preschool\r\n'),
(315, 16, 'Solar Toys\r\n'),
(316, 16, 'Toy Accessories\r\n'),
(317, 16, 'Toy Animal\r\n'),
(318, 16, 'Toy Guns\r\n'),
(319, 16, 'Toy Parts\r\n'),
(320, 16, 'Toy Robots\r\n'),
(321, 16, 'Toy Vehicle\r\n'),
(322, 16, 'Wind Up Toys\r\n'),
(323, 16, 'Wooden Toys'),
(324, 17, 'Animal Extract\r\n\r\n'),
(325, 17, 'Plant Extracts\r\n\r\n'),
(326, 17, 'Body Weight\r\n'),
(327, 17, 'Health Care Supplement\r\n'),
(328, 17, 'Health Care Supplies\r\n'),
(329, 17, 'Crude Medicine\r\n'),
(330, 17, 'Prepared Drugs In Pieces\r\n'),
(331, 17, 'Traditional Patented Medicines\r\n'),
(332, 17, 'Body Fluid-Processing & Circulation Devices\r\n'),
(333, 17, 'Clinical Analytical Instruments\r\n'),
(334, 17, 'Dental Equipment\r\n'),
(335, 17, 'Emergency & Clinics Apparatuses\r\n'),
(336, 17, 'Equipments of Traditional Chinese Medicine\r\n'),
(337, 17, 'General Assay & Diagnostic Apparatuses\r\n'),
(338, 17, 'Medical Consumable\r\n'),
(339, 17, 'Medical Cryogenic Equipments\r\n'),
(340, 17, 'Medical Software\r\n'),
(341, 17, 'Physical Therapy Equipments\r\n'),
(342, 17, 'Radiology Equipment & Accessories\r\n'),
(343, 17, 'Sterilization Equipments\r\n'),
(344, 17, 'Surgical Instrument\r\n'),
(345, 17, 'Ultrasonic, Optical, Electronic Equipment\r\n'),
(346, 17, 'Ward Nursing Equipments\r\n'),
(347, 17, 'Medicines'),
(348, 18, 'Baby Care\r\n\r\n'),
(349, 18, 'Bath Supplies\r\n'),
(350, 18, 'Beauty Equipment\r\n'),
(351, 18, 'Body Art\r\n'),
(352, 18, 'Breast Care\r\n'),
(353, 18, 'Feminine Hygiene\r\n'),
(354, 18, 'Fragrance & Deodorant\r\n'),
(355, 18, 'Hair Care\r\n'),
(356, 18, 'Hair Extensions & Wigs\r\n'),
(357, 18, 'Hair Salon Equipment\r\n'),
(358, 18, 'Makeup\r\n'),
(359, 18, 'Makeup Tools\r\n'),
(360, 18, 'Men Care\r\n'),
(361, 18, 'Nail Supplies\r\n'),
(362, 18, 'Oral Hygiene\r\n'),
(363, 18, 'Other Beauty & Personal Care Products\r\n'),
(364, 18, 'Sanitary Paper\r\n'),
(365, 18, 'Shaving & Hair Removal\r\n'),
(366, 18, 'Skin Care\r\n'),
(367, 18, 'Skin Care Tool'),
(368, 19, 'Aluminum Composite Panels\r\n\r\n'),
(369, 19, 'Balustrades & Handrails\r\n'),
(370, 19, 'Bathroom\r\n'),
(371, 19, 'Boards\r\n'),
(372, 19, 'Building Glass\r\n'),
(373, 19, 'Ceilings\r\n'),
(374, 19, 'Corner Guards\r\n'),
(375, 19, 'Countertops,Vanity Tops & Table Tops\r\n'),
(376, 19, 'Curtain Walls & Accessories\r\n'),
(377, 19, 'Decorative Films\r\n'),
(378, 19, 'Door & Window Accessories\r\n'),
(379, 19, 'Doors & Windows\r\n'),
(380, 19, 'Earthwork Products\r\n'),
(381, 19, 'Elevators & Elevator Parts\r\n'),
(382, 19, 'Escalators & Escalator Parts\r\n'),
(383, 19, 'Faucets, Mixers & Taps\r\n'),
(384, 19, 'Fiberglass Wall Meshes\r\n'),
(385, 19, 'Fireplaces,Stoves\r\n'),
(386, 19, 'Fireproofing Materials\r\n'),
(387, 19, 'Floor Heating Systems & Parts\r\n'),
(388, 19, 'Flooring & Accessories\r\n'),
(389, 19, 'Formwork\r\n'),
(390, 19, 'Gates\r\n'),
(391, 19, 'Heat Insulation Materials\r\n'),
(392, 19, 'HVAC Systems & Parts\r\n'),
(393, 19, 'Kitchen\r\n'),
(394, 19, 'Ladders & Scaffoldings\r\n'),
(395, 19, 'Landscaping Stone\r\n'),
(396, 19, 'Masonry Materials\r\n'),
(397, 19, 'Metal Building Materials\r\n'),
(398, 19, 'Mosaics\r\n'),
(399, 19, 'Mouldings\r\n'),
(400, 19, 'Multifunctional Materials\r\n'),
(401, 19, 'Other Construction & Real Estate\r\n'),
(402, 19, 'Plastic Building Materials\r\n'),
(403, 19, 'Quarry Stone & Slabs\r\n'),
(404, 19, 'Real Estate\r\n'),
(405, 19, 'Soundproofing Materials\r\n'),
(406, 19, 'Stairs & Stair Parts\r\n'),
(407, 19, 'Stone Carvings and Sculptures\r\n'),
(408, 19, 'Sunrooms & Glass Houses\r\n'),
(409, 19, 'Tiles & Accessories\r\n'),
(410, 19, 'Timber\r\n'),
(411, 19, 'Tombstones and Monuments\r\n'),
(412, 19, 'Wallpapers/Wall Coating\r\n'),
(413, 19, 'Waterproofing Materials'),
(414, 20, 'Bakeware\r\n\r\n'),
(415, 20, 'Barware\r\n'),
(416, 20, 'Bathroom Products\r\n'),
(417, 20, 'Cooking Tools\r\n'),
(418, 20, 'Cookware\r\n'),
(419, 20, 'Garden Supplies\r\n'),
(420, 20, 'Home Decor\r\n'),
(421, 20, 'Home Storage & Organization\r\n'),
(422, 20, 'Household Chemicals\r\n'),
(423, 20, 'Household Cleaning Tools & Accessories\r\n'),
(424, 20, 'Household Sundries\r\n'),
(425, 20, 'Kitchen Knives & Accessories\r\n'),
(426, 20, 'Laundry Products\r\n'),
(427, 20, 'Pet Products\r\n'),
(428, 20, 'Kitchen,Dining,Bar & Tableware\r\n'),
(429, 20, 'Dinnerware\r\n'),
(430, 20, 'Drinkware\r\n'),
(431, 20, 'Baby Supplies & Products\r\n'),
(432, 20, 'Rain Gear\r\n'),
(433, 20, 'Lighters & Smoking Accessories'),
(434, 21, 'Emergency Lighting\r\n\r\n'),
(435, 21, 'Holiday Lighting\r\n'),
(436, 21, 'Indoor Lighting\r\n'),
(437, 21, 'LED Lighting\r\n'),
(438, 21, 'Lighting Accessories\r\n'),
(439, 21, 'Lighting Bulbs & Tubes\r\n'),
(440, 21, 'Other Lights & Lighting Products\r\n'),
(441, 21, 'Outdoor Lighting\r\n'),
(442, 21, 'Professional Lighting\r\n'),
(443, 21, 'LED Residential Lighting\r\n'),
(444, 21, 'LED Outdoor Lighting\r\n'),
(445, 21, 'Chandeliers & Pendant Lights\r\n'),
(446, 21, 'Ceiling Lights\r\n'),
(447, 21, 'Crystal Lights\r\n'),
(448, 21, 'Stage Lights\r\n'),
(449, 21, 'Street Lights\r\n'),
(450, 21, 'Energy Saving & Fluorescent\r\n'),
(451, 21, 'LED Landscape Lamps\r\n'),
(452, 21, 'LED Professional Lighting\r\n'),
(453, 21, 'LED Encapsulation Series'),
(454, 22, 'Antique Furniture\r\n\r\n'),
(455, 22, 'Baby Furniture\r\n'),
(456, 22, 'Bamboo Furniture\r\n'),
(457, 22, 'Children Furniture\r\n'),
(458, 22, 'Commercial Furniture\r\n'),
(459, 22, 'Folding Furniture\r\n'),
(460, 22, 'Furniture Accessories\r\n'),
(461, 22, 'Furniture Hardware\r\n'),
(462, 22, 'Furniture Parts\r\n'),
(463, 22, 'Glass Furniture\r\n'),
(464, 22, 'Home Furniture\r\n'),
(465, 22, 'Inflatable Furniture\r\n'),
(466, 22, 'Metal Furniture\r\n'),
(467, 22, 'Other Furniture\r\n'),
(468, 22, 'Outdoor Furniture\r\n'),
(469, 22, 'Plastic Furniture\r\n'),
(470, 22, 'Rattan / Wicker Furniture\r\n'),
(471, 22, 'Wood Furniture\r\n'),
(472, 22, 'Living Room Furniture\r\n'),
(473, 22, 'Bedroom Furniture'),
(474, 23, 'Agriculture Machinery & Equipment\r\n\r\n'),
(475, 23, 'Apparel & Textile Machinery\r\n'),
(476, 23, 'Building Material Machinery\r\n'),
(477, 23, 'Chemical Machinery & Equipment\r\n'),
(478, 23, 'Electronic Products Machinery\r\n'),
(479, 23, 'Energy & Mineral Equipment\r\n'),
(480, 23, 'Engineering & Construction Machinery\r\n'),
(481, 23, 'Food & Beverage Machinery\r\n'),
(482, 23, 'General Industrial Equipment\r\n'),
(483, 23, 'Home Product Making Machinery\r\n'),
(484, 23, 'Industry Laser Equipment\r\n'),
(485, 23, 'Machine Tool Equipment\r\n'),
(486, 23, 'Metal & Metallurgy Machinery\r\n'),
(487, 23, 'Other Machinery & Industry Equipment\r\n'),
(488, 23, 'Packaging Machine\r\n'),
(489, 23, 'Paper Production Machinery\r\n'),
(490, 23, 'Pharmaceutical Machinery\r\n'),
(491, 23, 'Plastic & Rubber Machinery\r\n'),
(492, 23, 'Printing Machine\r\n'),
(493, 23, 'Refrigeration & Heat Exchange Equipment\r\n'),
(494, 23, 'Used Machinery & Equipment\r\n'),
(495, 23, 'Woodworking Machinery'),
(496, 24, 'Custom Fabrication Services\r\n\r\n'),
(497, 24, 'General Mechanical Components Design Services\r\n'),
(498, 24, 'General Mechanical Components Stock\r\n'),
(499, 24, 'Industrial Brake\r\n'),
(500, 24, 'Machine Tools Accessory\r\n'),
(501, 24, 'Moulds\r\n'),
(502, 24, 'Other General Mechanical Components\r\n'),
(503, 24, 'Other Mechanical Parts\r\n'),
(504, 24, 'Used General Mechanical Components\r\n'),
(505, 24, 'Coating Services'),
(506, 25, 'Hardware\r\n\r\n'),
(507, 25, 'Hand Tools\r\n'),
(508, 25, 'Material Handling Tools\r\n'),
(509, 25, 'Power Tool Accessories\r\n'),
(510, 25, 'Power Tools\r\n'),
(511, 25, 'Tool Design Services\r\n'),
(512, 25, 'Tool Parts\r\n'),
(513, 25, 'Tool Processing Services\r\n'),
(514, 25, 'Tool Sets\r\n'),
(515, 25, 'Tool Stock\r\n'),
(516, 25, 'Knife\r\n'),
(517, 25, 'Hand Carts & Trolleys\r\n'),
(518, 25, 'Lawn Mower\r\n'),
(519, 25, 'Sander'),
(520, 26, 'Aluminum\r\n\r\n'),
(521, 26, 'Barbed Wire\r\n'),
(522, 26, 'Billets\r\n'),
(523, 26, 'Carbon\r\n'),
(524, 26, 'Carbon Fiber\r\n'),
(525, 26, 'Cast & Forged\r\n'),
(526, 26, 'Cemented Carbide\r\n'),
(527, 26, 'Ceramic Fiber Products\r\n'),
(528, 26, 'Ceramics\r\n'),
(529, 26, 'Copper\r\n'),
(530, 26, 'Copper Forged\r\n'),
(531, 26, 'Fiberglass Products\r\n'),
(532, 26, 'Glass\r\n'),
(533, 26, 'Graphite Products\r\n'),
(534, 26, 'Ingots\r\n'),
(535, 26, 'Iron\r\n'),
(536, 26, 'Lead\r\n'),
(537, 26, 'Lime\r\n'),
(538, 26, 'Magnetic Materials\r\n'),
(539, 26, 'Metal Scrap\r\n'),
(540, 26, 'Metal Slabs\r\n'),
(541, 26, 'Mineral Wool\r\n'),
(542, 26, 'Molybdenum\r\n'),
(543, 26, 'Nickel\r\n'),
(544, 26, 'Non-Metallic Mineral Deposit\r\n'),
(545, 26, 'Ore\r\n'),
(546, 26, 'Other Metals & Metal Products\r\n'),
(547, 26, 'Other Non-Metallic Minerals & Products\r\n'),
(548, 26, 'Pig Iron\r\n'),
(549, 26, 'Quartz Products\r\n'),
(550, 26, 'Rare Earth & Products\r\n'),
(551, 26, 'Rare Earth Magnets\r\n'),
(552, 26, 'Refractory\r\n'),
(553, 26, 'Steel\r\n'),
(554, 26, 'Titanium\r\n'),
(555, 26, 'Tungsten\r\n'),
(556, 26, 'Wire Mesh\r\n'),
(557, 26, 'Zinc'),
(558, 27, 'Gas Disposal\r\n\r\n'),
(559, 27, 'Noise Reduction Device\r\n'),
(560, 27, 'Other Environmental Products\r\n'),
(561, 27, 'Other Excess Inventory\r\n'),
(562, 27, 'Recycling\r\n'),
(563, 27, 'Sewer\r\n'),
(564, 27, 'Waste Management\r\n'),
(565, 27, 'Water Treatment\r\n'),
(566, 27, 'Textile Waste\r\n'),
(567, 27, 'Waste Paper\r\n'),
(568, 27, 'Other Recycling Products'),
(569, 28, 'Plastic Processing Service\r\n\r\n'),
(570, 28, 'Plastic Products\r\n'),
(571, 28, 'Plastic Projects\r\n'),
(572, 28, 'Plastic Raw Materials\r\n'),
(573, 28, 'Plastic Stocks\r\n'),
(574, 28, 'Recycled Plastic\r\n'),
(575, 28, 'Recycled Rubber\r\n'),
(576, 28, 'Rubber Processing Service\r\n'),
(577, 28, 'Rubber Products\r\n'),
(578, 28, 'Rubber Projects\r\n'),
(579, 28, 'Rubber Raw Materials\r\n'),
(580, 28, 'Rubber Stocks\r\n'),
(581, 28, 'Plastic Cards\r\n'),
(582, 28, 'PVC\r\n'),
(583, 28, 'Plastic Tubes\r\n'),
(584, 28, 'HDPE\r\n'),
(585, 28, 'Rubber Hoses\r\n'),
(586, 28, 'Plastic Sheets\r\n'),
(587, 28, 'LDPE\r\n'),
(588, 28, 'Agricultural Rubber'),
(589, 29, 'Biodiesel\r\n\r\n'),
(590, 29, 'Biogas\r\n'),
(591, 29, 'Charcoal\r\n'),
(592, 29, 'Coal\r\n'),
(593, 29, 'Coal Gas\r\n'),
(594, 29, 'Coke Fuel\r\n'),
(595, 29, 'Crude Oil\r\n'),
(596, 29, 'Electricity Generation\r\n'),
(597, 29, 'Petrochemical Products\r\n'),
(598, 29, 'Solar Energy Products\r\n'),
(599, 29, 'Industrial Fuel\r\n'),
(600, 29, 'Natural Gas\r\n'),
(601, 29, 'Other Energy Related Products\r\n'),
(602, 29, 'Wood Pellets'),
(603, 29, 'Solar Energy Systems\r\n'),
(604, 29, 'Lubricant\r\n'),
(605, 29, 'Diesel Fuel\r\n'),
(606, 29, 'Solar Collectors'),
(607, 30, 'Adhesive Tape\r\n\r\n'),
(608, 30, 'Agricultural Packaging\r\n'),
(609, 30, 'Aluminum Foil\r\n'),
(610, 30, 'Apparel Packaging\r\n'),
(611, 30, 'Blister Cards\r\n'),
(612, 30, 'Bottles\r\n'),
(613, 30, 'Cans\r\n'),
(614, 30, 'Chemical Packaging\r\n'),
(615, 30, 'Composite Packaging Materials\r\n'),
(616, 30, 'Cosmetics Packaging\r\n'),
(617, 30, 'Electronics Packaging\r\n'),
(618, 30, 'Food Packaging\r\n'),
(619, 30, 'Gift Packaging\r\n'),
(620, 30, 'Handles\r\n'),
(621, 30, 'Hot Stamping Foil\r\n'),
(622, 30, 'Jars\r\n'),
(623, 30, 'Lids, Bottle Caps, Closures\r\n'),
(624, 30, 'Media Packaging\r\n'),
(625, 30, 'Metallized Film\r\n'),
(626, 30, 'Other Packaging Applications\r\n'),
(627, 30, 'Other Packaging Materials\r\n'),
(628, 30, 'Packaging Bags\r\n'),
(629, 30, 'Packaging Boxes\r\n'),
(630, 30, 'Packaging Labels\r\n'),
(631, 30, 'Packaging Trays\r\n'),
(632, 30, 'Packaging Tubes\r\n'),
(633, 30, 'Paper & Paperboard\r\n'),
(634, 30, 'Paper Packaging\r\n'),
(635, 30, 'Pharmaceutical Packaging\r\n'),
(636, 30, 'Plastic Film\r\n'),
(637, 30, 'Plastic Packaging\r\n'),
(638, 30, 'Printing Materials\r\n'),
(639, 30, 'Printing Services\r\n'),
(640, 30, 'Protective Packaging\r\n'),
(641, 30, 'Pulp\r\n'),
(642, 30, 'Shrink Film\r\n'),
(643, 30, 'Strapping\r\n'),
(644, 30, 'Stretch Film\r\n'),
(645, 30, 'Tobacco Packaging\r\n'),
(646, 30, 'Transport Packaging'),
(647, 31, 'Art Supplies\r\n\r\n'),
(648, 31, 'Badge Holder & Accessories\r\n'),
(649, 31, 'Board\r\n'),
(650, 31, 'Board Eraser\r\n'),
(651, 31, 'Book Cover\r\n'),
(652, 31, 'Books\r\n'),
(653, 31, 'Calculator\r\n'),
(654, 31, 'Calendar\r\n'),
(655, 31, 'Clipboard\r\n'),
(656, 31, 'Correction Supplies\r\n'),
(657, 31, 'Desk Organizer\r\n'),
(658, 31, 'Drafting Supplies\r\n'),
(659, 31, 'Easels\r\n'),
(660, 31, 'Educational Supplies\r\n'),
(661, 31, 'Filing Products\r\n'),
(662, 31, 'Letter Pad / Paper\r\n'),
(663, 31, 'Magazines\r\n'),
(664, 31, 'Map\r\n'),
(665, 31, 'Notebooks & Writing Pads\r\n'),
(666, 31, 'Office Adhesives & Tapes\r\n'),
(667, 31, 'Office Binding Supplies\r\n'),
(668, 31, 'Office Cutting Supplies\r\n'),
(669, 31, 'Office Equipment\r\n'),
(670, 31, 'Office Paper\r\n'),
(671, 31, 'Other Office & School Supplies\r\n'),
(672, 31, 'Paper Envelopes\r\n'),
(673, 31, 'Pencil Cases & Bags\r\n'),
(674, 31, 'Pencil Sharpeners\r\n'),
(675, 31, 'Printer Supplies\r\n'),
(676, 31, 'Stamps\r\n'),
(677, 31, 'Stationery Set\r\n'),
(678, 31, 'Stencils\r\n'),
(679, 31, 'Writing Accessories\r\n'),
(680, 31, 'Writing Instruments\r\n'),
(681, 31, 'Yellow Pages'),
(682, 32, 'Advertising Equipment\r\n\r\n'),
(683, 32, 'Cargo & Storage Equipment\r\n'),
(684, 32, 'Commercial Laundry Equipment\r\n'),
(685, 32, 'Financial Equipment\r\n'),
(686, 32, 'Funeral Supplies\r\n'),
(687, 32, 'Other Service Equipment\r\n'),
(688, 32, 'Restaurant & Hotel Supplies\r\n'),
(689, 32, 'Store & Supermarket Supplies\r\n'),
(690, 32, 'Trade Show Equipment\r\n'),
(691, 32, 'Vending Machines\r\n'),
(692, 32, 'Wedding Supplies\r\n'),
(693, 32, 'Display Racks\r\n'),
(694, 32, 'Advertising Players\r\n'),
(695, 32, 'Advertising Light Boxes\r\n'),
(696, 32, 'Hotel Amenities\r\n'),
(697, 32, 'POS Systems\r\n'),
(698, 32, 'Supermarket Shelves\r\n'),
(699, 32, 'Stacking Racks & Shelves\r\n'),
(700, 32, 'Refrigeration Equipment\r\n'),
(701, 32, 'Trade Show Tent');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `product_id`, `image_name`) VALUES
(23, 22, 'lathe-machine.jpg'),
(24, 23, 'high-speed-agitator.jpg'),
(25, 24, 'industrial-gear-motor.jpg'),
(26, 25, 'industrial-chain-pulley-block.jpg'),
(27, 26, 'helical-gear-box.jpg'),
(28, 27, 'shearing-machine.jpg'),
(29, 28, 'face-shield-carrier-500x500.png'),
(30, 30, 'first-aid-kit-plastic-box-handy-sjf-m1-500x500 (1).jpg'),
(31, 31, 'first-aid-kit-plastic-box-handy-sjf-p4-500x500.jpg'),
(32, 32, 'ifr-boiler-suit-udyogi-500x500.jpg'),
(33, 32, 'ifr-boiler-suit-udyogi-500x500 (1).jpg'),
(34, 32, 'ifr-boiler-suit-udyogi-500x500 (2).jpg'),
(35, 33, 'rubber-conveyor-belts-500x500.jpg'),
(36, 35, 'pvc-duct-hose-500x500.jpg'),
(37, 34, 'special-purpose-conveyor-belt-500x500.jpg'),
(38, 36, 'automatic-rotary-screen-printing-machine-500x500.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `search_keywords`
--

CREATE TABLE `search_keywords` (
  `search_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state`) VALUES
(1, 'ANDHRA PRADESH'),
(2, 'ASSAM'),
(3, 'ARUNACHAL PRADESH'),
(4, 'BIHAR'),
(5, 'GUJARAT'),
(6, 'HARYANA'),
(7, 'HIMACHAL PRADESH'),
(8, 'JAMMU & KASHMIR'),
(9, 'KARNATAKA'),
(10, 'KERALA'),
(11, 'MADHYA PRADESH'),
(12, 'MAHARASHTRA'),
(13, 'MANIPUR'),
(14, 'MEGHALAYA'),
(15, 'MIZORAM'),
(16, 'NAGALAND'),
(17, 'ORISSA'),
(18, 'PUNJAB'),
(19, 'RAJASTHAN'),
(20, 'SIKKIM'),
(21, 'TAMIL NADU'),
(22, 'TRIPURA'),
(23, 'UTTAR PRADESH'),
(24, 'WEST BENGAL'),
(25, 'DELHI'),
(26, 'GOA'),
(27, 'PONDICHERY'),
(28, 'LAKSHDWEEP'),
(29, 'DAMAN & DIU'),
(30, 'DADRA & NAGAR'),
(31, 'CHANDIGARH'),
(32, 'ANDAMAN & NICOBAR'),
(33, 'UTTARANCHAL'),
(34, 'JHARKHAND'),
(35, 'CHATTISGARH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_state_id_cities_states` (`state_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`table_id`),
  ADD KEY `FK_product_id_invoice_products` (`product_id`),
  ADD KEY `FK_buyer_firm_id_inquiries_master_firm_detail` (`buyer_firm_id`),
  ADD KEY `FK_seller_firm_id_inquiries_master_user` (`seller_firm_id`);

--
-- Indexes for table `master_cart`
--
ALTER TABLE `master_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `FK_product_id_master_cart_products.` (`product_id`),
  ADD KEY `FK_user_id_master_cart_master_user` (`user_id`);

--
-- Indexes for table `master_firm_detail`
--
ALTER TABLE `master_firm_detail`
  ADD PRIMARY KEY (`firm_id`),
  ADD KEY `FK_user_id_master_firm_detail_master_user` (`user_id`),
  ADD KEY `FK_firm_location_master_firm_detail_cities` (`firm_location`);

--
-- Indexes for table `master_firm_image_mapping`
--
ALTER TABLE `master_firm_image_mapping`
  ADD PRIMARY KEY (`mapping_id`),
  ADD KEY `FK_firm_id_master_firm_image_mapping_master_firm_detail` (`firm_id`);

--
-- Indexes for table `master_gst`
--
ALTER TABLE `master_gst`
  ADD PRIMARY KEY (`gst_id`);

--
-- Indexes for table `master_help`
--
ALTER TABLE `master_help`
  ADD PRIMARY KEY (`table_id`),
  ADD KEY `FK_user_id_master_help_master_user` (`user_id`);

--
-- Indexes for table `master_sector`
--
ALTER TABLE `master_sector`
  ADD PRIMARY KEY (`sector_id`);

--
-- Indexes for table `master_units`
--
ALTER TABLE `master_units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UQ_Master_User_username` (`username`),
  ADD KEY `FK_user_type_id_master_user_master_user_type` (`user_type_id`);

--
-- Indexes for table `master_user_type`
--
ALTER TABLE `master_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_product_id_orders_master_user` (`product_id`),
  ADD KEY `FK_buyer_id_orders_master_firm_details` (`buyer_id`),
  ADD KEY `FK_seller_id_orders_master_firm_details` (`seller_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_gst_id_products_master_gst` (`gst_id`),
  ADD KEY `FK_category_id_products_product_category` (`category_id`),
  ADD KEY `FK_unit_id_products_master_units` (`unit_id`),
  ADD KEY `FK_firm_id_products_master_user` (`firm_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `FK_sector_id_product_category_master_sector` (`sector_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FK_product_id_product_images_products` (`product_id`);

--
-- Indexes for table `search_keywords`
--
ALTER TABLE `search_keywords`
  ADD PRIMARY KEY (`search_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `master_cart`
--
ALTER TABLE `master_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `master_firm_detail`
--
ALTER TABLE `master_firm_detail`
  MODIFY `firm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `master_firm_image_mapping`
--
ALTER TABLE `master_firm_image_mapping`
  MODIFY `mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_gst`
--
ALTER TABLE `master_gst`
  MODIFY `gst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_help`
--
ALTER TABLE `master_help`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_sector`
--
ALTER TABLE `master_sector`
  MODIFY `sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `master_units`
--
ALTER TABLE `master_units`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `master_user_type`
--
ALTER TABLE `master_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `search_keywords`
--
ALTER TABLE `search_keywords`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `FK_state_id_cities_states` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`);

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `FK_buyer_firm_id_inquiries_master_firm_detail` FOREIGN KEY (`buyer_firm_id`) REFERENCES `master_firm_detail` (`firm_id`),
  ADD CONSTRAINT `FK_product_id_inquiries_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FK_seller_firm_id_inquiries_master_user` FOREIGN KEY (`seller_firm_id`) REFERENCES `master_firm_detail` (`firm_id`);

--
-- Constraints for table `master_cart`
--
ALTER TABLE `master_cart`
  ADD CONSTRAINT `FK_product_id_master_cart_products.` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FK_user_id_master_cart_master_user` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`user_id`);

--
-- Constraints for table `master_firm_detail`
--
ALTER TABLE `master_firm_detail`
  ADD CONSTRAINT `FK_firm_location_master_firm_detail_cities` FOREIGN KEY (`firm_location`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `FK_user_id_master_firm_detail_master_user` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`user_id`);

--
-- Constraints for table `master_firm_image_mapping`
--
ALTER TABLE `master_firm_image_mapping`
  ADD CONSTRAINT `FK_firm_id_master_firm_image_mapping_master_firm_detail` FOREIGN KEY (`firm_id`) REFERENCES `master_firm_detail` (`firm_id`);

--
-- Constraints for table `master_help`
--
ALTER TABLE `master_help`
  ADD CONSTRAINT `FK_user_id_master_help_master_user` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`user_id`);

--
-- Constraints for table `master_user`
--
ALTER TABLE `master_user`
  ADD CONSTRAINT `FK_user_type_id_master_user_master_user_type` FOREIGN KEY (`user_type_id`) REFERENCES `master_user_type` (`user_type_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_buyer_id_orders_master_firm_details` FOREIGN KEY (`buyer_id`) REFERENCES `master_firm_detail` (`firm_id`),
  ADD CONSTRAINT `FK_product_id_orders_master_user` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FK_seller_id_orders_master_firm_details` FOREIGN KEY (`seller_id`) REFERENCES `master_firm_detail` (`firm_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_category_id_products_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`category_id`),
  ADD CONSTRAINT `FK_firm_id_products_master_user` FOREIGN KEY (`firm_id`) REFERENCES `master_firm_detail` (`firm_id`),
  ADD CONSTRAINT `FK_gst_id_products_master_gst` FOREIGN KEY (`gst_id`) REFERENCES `master_gst` (`gst_id`),
  ADD CONSTRAINT `FK_unit_id_products_master_units` FOREIGN KEY (`unit_id`) REFERENCES `master_units` (`unit_id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK_sector_id_product_category_master_sector` FOREIGN KEY (`sector_id`) REFERENCES `master_sector` (`sector_id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `FK_product_id_product_images_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
