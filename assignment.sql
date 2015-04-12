-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2015 at 07:03 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `class_id` varchar(8) NOT NULL,
  `class` varchar(50) NOT NULL,
  `dept_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class`, `dept_id`) VALUES
('BT101', 'B.Tech', 101),
('BT102', 'B.Tech', 102),
('MC101', 'M.C.A', 101);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
`dept_id` int(3) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `department`) VALUES
(101, 'department of computer science and engineering'),
(102, 'department of electronics engineering'),
(103, 'department of architecture'),
(104, 'department of physics');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `roll no` varchar(11) NOT NULL DEFAULT '',
  `name` varchar(24) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `class_id` varchar(5) DEFAULT NULL,
  `section` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`roll no`, `name`, `password`, `class_id`, `section`) VALUES
('2010CSC1001', 'Manbir Singh', '04e7082b4c7f5c9b408eefc3da064001', 'MC101', '0'),
('2010CSC1002', 'Akshay', 'db86b7bbbc528c6f041a01c8454008a7', 'MC101', '0'),
('2010CSC1003', 'Deepali Bassi', '4528ad2a365af7e9c025d8bb3f2ea3aa', 'MC101', '0'),
('2010CSC1004', 'Amrit Singh Mahal', '247ca39f94a35bca03e834cae00319ea', 'MC101', '0'),
('2010CSC1005', 'Amanpreet Singh', '6691091fa64794c82fe2c0a7defeeffa', 'MC101', '0'),
('2010CSC1007', 'Abhilash ', '505974bcb45211f06619de30ab2e30f2', 'MC101', '0'),
('2010CSC1009', 'Lukesh ', '978ef0d06f741d2cb5dacba6a66f41dc', 'MC101', '0'),
('2010CSC1010', 'Gursimranjit Singh', 'ecc85526b039f08d2e32909358a11463', 'MC101', '0'),
('2010CSC1014', 'Jaskarandeep Singh ', '967e051359a58f6d6340b1f80d0e7e32', 'MC101', '0'),
('2010CSC1015', 'Japinder Kaur', 'e67e967217d0f75c60314115a70d8ef5', 'MC101', '0'),
('2010CSC1017', 'Manpreet Singh', '5f8d512c36c4a49a18c7e34b3554dfe2', 'MC101', '0'),
('2010CSC1018', 'Madhuri Sharma', '4e562f326c7df067575d503b0b175779', 'MC101', '0'),
('2010CSC1019', 'Navdeep ', 'e85c75a77bc12320c92f70ee662745d6', 'MC101', '0'),
('2010CSC1020', 'Navrooz Singh Dhot', 'b54e53e59deb490075c963f670c76493', 'MC101', '0'),
('2010CSC1021', 'Dolly', '15468a3e6e382b6b3f322bf51a0a5622', 'MC101', '0'),
('2010CSC1022', 'Ravbir Singh Sidhu', 'b6c658adc2faa7d7cb47d06fe2ad6ba0', 'MC101', '0'),
('2010CSC1025', 'Sahil Tiwari', 'ed976377785b344eb6c464e29d765840', 'MC101', '0'),
('2010CSC1027', 'Nidhi Mehra', '87cf7743d0c0a62170617cbc1b12323b', 'MC101', '0'),
('2010CSC1028', 'Sarabjeet Singh', '6387d339e84fdd780f241a42f98fcc92', 'MC101', '0'),
('2010CSC1029', 'Saurabh Behl', '789b0073934551e77c3bf093bd4a4bda', 'MC101', '0'),
('2010CSC1030', 'Rajdeep Kaur', '178e8d0a79372dfa5bd1b8c2a73437a7', 'MC101', '0'),
('2010CSC1031', 'Sauravdeep Singh', 'f4351c984329fa878dfa24448e37f176', 'MC101', '0'),
('2010CSC1032', 'Shivam Kapoor', '8fdd359ed92253cd6bc4d112fe452ef9', 'MC101', '0'),
('2010CSC1033', 'Ruchi Bawa', '064c386e32a37d8189ac0eb459faba21', 'MC101', '0'),
('2010CSC1034', 'Supneet Saini', '572b1acb3aebf91e75983333a430bd5b', 'MC101', '0'),
('2010CSC1035', 'Vishal Arora', '423f37155990600e30e075cd2f0b305d', 'MC101', '0'),
('2010CSC1036', 'Shagun Arora', '6b9ad7d6141f804c1fe28a830c647191', 'MC101', '0'),
('2010CSC1037', 'Shaleen Kaur', 'a5d39f051fa4471e7c60373e46474888', 'MC101', '0'),
('2010CSC1038', 'Sabina', '2abd44a54330a90d973f015a8a1b74df', 'MC101', '0'),
('2010CSC1039', 'Smilee Makkar', 'f6856c0b3438ebadb58e3cfbb8255d3b', 'MC101', '0'),
('2010CSC1040', 'Sukhmanjit Kaur', '0e67093ac14296ccbf04fcad74ca048b', 'MC101', '0'),
('2010CSC1042', 'Supreet Sekhon', 'd7837a11242428aa9fc81f9bb5b22ff2', 'MC101', '0'),
('2010CSC1043', 'Tamana', 'a6fcbbd7dc67dd0e9019b57bfc5f5a07', 'MC101', '0'),
('2010CSC1044', 'Tarunjot Kaur', 'e0032b5877c602a02b9829a9e54fd01f', 'MC101', '0'),
('2010CSC1045', 'Tavleen Kaur', '31792f769f3e19885c0e186b9d4e39e1', 'MC101', '0'),
('2010CSC1046', 'Vanica Varmani', '79edd697a9df777010de132235567554', 'MC101', '0'),
('2010CSC1048', 'Anureet Kaur', '7c47d3f9b02210f4107384c71899610a', 'MC101', '0'),
('2010CSC1050', 'Diksha', 'a00fece8e660889d02dab5a4766c8e83', 'MC101', '0'),
('2010CSC1051', 'Jashanpreet Kaur', 'd8223f7611fd86a6e29dd6252e495d37', 'MC101', '0'),
('2010CSC1052', 'Gurvinder Kaur', '4ee9da3b528638984ab173450aec80ac', 'MC101', '0'),
('2010CSC1053', 'Jyotika Attwal', '9e178d904b87ecba6362580ac89f20e4', 'MC101', '0'),
('2010CSC1054', 'Kawaljit Kaur', '151d29bb4aa02076342008d8be1e6ab2', 'MC101', '0'),
('2010CSC1055', 'Manpreet Kaur', 'f33cbb05e7126626044cd16b322723ac', 'MC101', '0'),
('2010CSC1056', 'Mandeep Kaur', '3c91fc2faa0373c72d9428cbda030f68', 'MC101', '0'),
('2010CSC1057', 'Monika Yadav', 'f36e5e8004eae5daf8ccce4f93198c74', 'MC101', '0'),
('2010CSC1058', 'Navpreet Kaur', '2d3955a369ca5c991b4bda5821801dd0', 'MC101', '0'),
('2010CSC1059', 'Ridhi', '513b84f85fc6b6e927f246056afd594e', 'MC101', '0'),
('2010CSC1060', 'Bakshdeep Singh', '4bf9dc0f5c2ecd204f6a5e5407fa9a2d', 'MC101', '0'),
('2010CSC1061', 'Ravi Raj Singh Bhomrah', '3c1224edcba2ddaab8d6072a0dcc5fae', 'MC101', '0'),
('2010CSC1062', 'Kriti Khanna', '32bdec615ec7636794f476f6ae259e07', 'MC101', '0'),
('2010CSC1063', 'Himanshu Mahajan', '407f80c1507c14a3efa37575a02a60df', 'MC101', '0'),
('2010CSC1064', 'Kiranpreet Singh', '417215b43dfca95b07b275529288ac1a', 'MC101', '0'),
('2010CSC1065', 'Nikhita Zulka', '047662414d34fa09c2bf3a583c18e990', 'MC101', '0'),
('2010CSC1067', 'Abhishek Diwan', '3bd28526cb70d9b9bb5044c2098650b0', 'MC101', '0'),
('2010CSC1070', 'Gursimran Singh Bhangu', 'ddbc18c2afe26c7f55b23ffba1ec35ad', 'MC101', '0'),
('2010CSC1071', 'Shilpa Sharma', '433cb1bdc938ba4def5c14f518b2232c', 'MC101', '0'),
('2010CSC1073', 'Sandeep Rana', '251c7aff899dd5ec2f9ddcc6934163a1', 'MC101', '0'),
('2010CSC1074', 'Navpreet kaur Bains', 'db3fb951faadbdade8bb25872244fb2b', 'MC101', '0'),
('2010CSC1077', 'Navpreet Kaur Bath', '7f54689a9648ac7a66a61180d61f0831', 'MC101', '0'),
('2010CSC1078', 'Mehardeep Singh Arora', 'bbc120f8b3dc6efede3a89b5d05dec35', 'MC101', '0'),
('2010CSC1079', 'Ranjit Singh', '2bbbd4d5cfa0f2fd1ec0ca8b54e5ff82', 'MC101', '0'),
('2010CSC1080', 'Kinny Grover', '4e086fd94fa3791f81b01b512ac5cb26', 'MC101', '0'),
('2010CSC1082', 'Gursher Singh', '1cae9acaaaf6a357d8889e3f25913318', 'MC101', '0'),
('2010CSC1083', 'Sandeep Kaur', '068250d3cc853e204e0c45053fe8814d', 'MC101', '0'),
('2010CSC1085', 'Kanishak Mahajan', '2b0ecc87b9f75720a79c7ec4353cb253', 'MC101', '0'),
('2010CSC1086', 'Shilpa Sharma', '183279d587802be4e38bc5ed5854550e', 'MC101', '0'),
('2010CSC1087', 'Gagandeep Singh', 'e57359a5d1d2645ea7b6841b47cbfc68', 'MC101', '0'),
('2010CSC1088', 'Lakhwinder Singh', '548d7333b5f1b926771f79d1a46741c6', 'MC101', '0'),
('2010CSC1089', 'Sahiba Arora', '7395ac3ec309f7a954d9800248cb14ea', 'MC101', '0'),
('2010CSC1091', 'Manjot Singh ', 'ae4f1e2196ecdcfc2df485f073146418', 'MC101', '0'),
('2010CSC1092', 'Sehajdeep Kaur', '1e4edebbb5ead23aeb01ce459e70d6d4', 'MC101', '0'),
('2010CSC1093', 'Navroop Singh', 'aa83de8fe8a31e6147365f848f4704f6', 'MC101', '0'),
('2010CSC1094', 'Akshdeep Singh', 'a5a28689d76160590405e958ace860be', 'MC101', '0'),
('2010CSC1095', 'Shelly Marwaha', '2e91238b4b8ef3c4e8b185cc11ed2c93', 'MC101', '0'),
('2010CSC1096', 'Hardip Singh', 'a60a40ed313dae5c1723aa12f9bc570b', 'MC101', '0'),
('2010CSC1097', 'Dilpreet Singh Dhillon', '276128ca1e008074eed368b8c027f7d9', 'MC101', '0'),
('2010CSC1098', 'Surabhi Jhingan', 'db457b8b1e31c92451f984b1ba2ce3b8', 'MC101', '0'),
('2010CSC1099', 'Pawandeep Kaur', '99973723556a080448524e6bbafc59c0', 'MC101', '0'),
('2010CSC1100', 'Madhurpreet Arora', 'bad3a4f30eb49307d64aeb007f0640af', 'MC101', '0'),
('2010CSC1101', 'Sofia Arora ', 'a0eb5cd5af1f51977a4421403c2888d0', 'MC101', '0'),
('2010CSC1102', 'Tarannum', 'bfffbbbdb9a85d6abb5cab95aed75f85', 'MC101', '0'),
('2010CSC1104', 'Nupur', '2864001fec9347db90744688bd68d9b6', 'MC101', '0'),
('2010CSC1105', 'Shipra', 'ed1f88580afd86bdd1577ea8f8881151', 'MC101', '0'),
('2010CSC1106', 'Amandeep Kaur', '84c116a8bc8a4ac6a974b40ce8cf546c', 'MC101', '0'),
('2010CSC1107', 'Mehak Khanna', 'af14c954f98d2824bd9e7218f6e960af', 'MC101', '0'),
('2010CSC1108', 'Raminder Kaur', 'd1d640148f373368bb86058c49ef1714', 'MC101', '0'),
('2010CSC1109', 'Sunaina', '2d76c1a6418fa97de7338cd918c1f9f1', 'MC101', '0'),
('2010CSC1110', 'Ravneet kaur', '6550e12e1b2f864d8910b85d000be5ab', 'MC101', '0'),
('2010CSC1111', 'Ridhima Dhawan', 'd181c726a475c40b928d1991071743ff', 'MC101', '0'),
('2010CSC1112', 'Kulwinder Kaur', '97dff7ff9f8e73a9f6cc0e2a87ac84b5', 'MC101', '0'),
('2010CSC1113', 'Shant Rakshit Sharma', '074a54aa938eac5a1aebdead713ceb14', 'MC101', '0'),
('2010CSC1114', 'Gaganpreet Kaur', '59e844b44f92e1c35acc32e531f5a914', 'MC101', '0'),
('2010CSC1115', 'Shiffali ', '3cb962ea67c2f2a602eeaca9fe18187e', 'MC101', '0'),
('2010CSC1118', 'Poonam Angurala', 'cbd15ec8f5d3e2c90cef56f7c8367e3f', 'MC101', '0'),
('2010CSC1119', 'Princy Shori', '6f166f637310ef1f0ed1531ab42d3fe7', 'MC101', '0'),
('2010CSC1404', 'Sandeep Kaur', 'b0cfc9295c4c062e10f751518ca55681', 'MC101', '0'),
('2010CSC1423', 'Chetan Mahajan', '1a19192c3ab9ded603f8f972a71631d0', 'MC101', '0'),
('2010CSC1424', 'Manoj Bhatia ', 'f0b82c2d3aab62262d2c8cda6e279723', 'MC101', '0'),
('2010CSC1432', 'Amandeep Singh', '53f7a1457bf62401832e77bae1932412', 'MC101', '0'),
('2012CSA1009', 'Aayush Goel', '4e8f59270ab661f3283b2e38637010ba', 'BT101', 'A'),
('2013CSA1001', 'AAKASH SINGH', '15e306d1d5ba98a79e8854cd2ae29ca3', 'BT101', 'A'),
('2013CSA1003', 'AAYUSH KOHLI', '006a5448e1817d992abacd01caf811d1', 'BT101', 'A'),
('2013CSA1006', 'ABHISHEK ', '8823e58791ace2622016c5ea4ade7ecc', 'BT101', 'A'),
('2013CSA1009', 'Vinayak Sharda', '804b629ef3cdeb1451115d539960aa31', 'BT101', 'A'),
('2013CSA1010', 'ADITYA RAJ', '33f0b6139f15fa360ed7c686b4fa3eed', 'BT101', 'A'),
('2013CSA1011', 'AGAM SHARMA', '74065b8680053b5e8012f65b7a46db8b', 'BT101', 'A'),
('2013CSA1012', 'Akanksha', '0722881111383e7e61c2524950418a66', 'BT101', 'A'),
('2013CSA1013', 'Akanksha Nayer', '3e24e685aefb369d42f4002ec1e53b15', 'BT101', 'A'),
('2013CSA1014', 'AKSHAY  KWATRA', '4a7f819a6757b7ddd73fd9f2abca96a0', 'BT101', 'A'),
('2013CSA1015', 'Akshay Mahendru', '048fec8f7045af6418de683e0193701b', 'BT101', 'A'),
('2013CSA1016', 'ALISHA KHUNGER', 'ff6f5e3520d2c1ae45210b49b5a670c2', 'BT101', 'A'),
('2013CSA1017', 'Abhishek Sharma', '705959cd112b5692ef0453ff07e7537d', 'BT101', 'A'),
('2013CSA1018', 'Gaurav Dhir', '6e9f2ccdd343d2dd1f959dff53dab7cb', 'BT101', 'A'),
('2013CSA1019', 'AMARENDRA BAITHA', 'fda7ab315975e692188d65afff972591', 'BT101', 'A'),
('2013CSA1020', 'Amit Chawla', '51c04351b245c62e5b340dbde9047b26', 'BT101', 'A'),
('2013CSA1021', 'AMIT MAHEY', '8d8ee31dd67d35bfac574de7fb5d7d83', 'BT101', 'A'),
('2013CSA1022', 'Amrit pal', '3cc61a7d3fd6b96e6169868e51d9554c', 'BT101', 'A'),
('2013CSA1025', 'Ankita Dhingra', 'd397d8b294af63f1c8d5a8f2985d2173', 'BT101', 'A'),
('2013CSA1026', 'Akshay Sharda', 'f2c653dd112ab7a48b2d4f267649357a', 'BT101', 'A'),
('2013CSA1027', 'Manmeet singh', '4a079532d7bcb0e131daa1ba84182de7', 'BT101', 'A'),
('2013CSA1029', 'Arshdeep SIngh', 'c0d76f617be785be4438fdc2a3a52acf', 'BT101', 'A'),
('2013CSA1030', 'Arshpreet Singh', '495c22cf82ad6a17a55fd1d2151f1f8f', 'BT101', 'A'),
('2013CSA1034', 'Avneet Sidhu', 'fb7e8297e6563c5ab893d0e4dca80b06', 'BT101', 'A'),
('2013CSA1035', 'Ayush Jain', 'a57d9ad11e63d7b7d839134e1adf070f', 'BT101', 'A'),
('2013CSA1036', 'Balraj Inder Kaur Mahal', '38b5c04db32325917c0aa800ab161bd9', 'BT101', 'A'),
('2013CSA1038', 'Charan Kamal', 'f94b4fdace2257b5e246aa82748b46c2', 'BT101', 'A'),
('2013CSA1039', 'Chirag Goyal', '84321184a955f58b62993c85258781c4', 'BT101', 'A'),
('2013CSA1040', 'DEEPAK JASSI', '5b9da4d19eb91f4470265c723dde68b7', 'BT101', 'A'),
('2013CSA1041', 'Diksha', '9e9f378ba8bbfdea3aa9bcf13deabdcc', 'BT101', 'A'),
('2013CSA1042', 'Dinesh Bhagat', '25f8b5aa3c0a95382f3e75f24adc82d7', 'BT101', 'A'),
('2013CSA1043', 'Anandpreet Kaur', '5ba4343cb626f999c59f68ae2161e05d', 'BT101', 'A'),
('2013CSA1045', 'Kajal Puri', '34188a08afc1cb507855556136ec9ca3', 'BT101', 'A'),
('2013CSA1046', 'Dharambir Singh', 'eca0ddd7e3a2b560bb0fa73c1af4e3fd', 'BT101', 'A'),
('2013CSA1048', 'Gagandeep Singh Deol', '7d6262d0b8f204451d6063b89f3a3dd4', 'BT101', 'A'),
('2013CSA1050', 'Geetanjali Chaudhary', '402db6fd277bba967e267d8c8b3a69b4', 'BT101', 'A'),
('2013CSA1051', 'Gourav Jindal', '492a8fa8f8ba891e0bdb5eda8e1f79c7', 'BT101', 'A'),
('2013CSA1052', 'Vikas Abrol', '319074cd741547af085416f6a3b67631', 'BT101', 'A'),
('2013CSA1053', 'Pranav ', 'ac356ddef19c5dd2e30ab6dbbd623a1f', 'BT101', 'A'),
('2013CSA1054', 'Hardeep Singh', 'e30ee5f55ce4e4a520cd11a6be5d6366', 'BT101', 'A'),
('2013CSA1055', 'HARJAS SINGH', '548cb64baab84034bc7724aa5c36bcd2', 'BT101', 'A'),
('2013CSA1056', 'Harjashanpreet Kaur', '92e8458b1d3318f30e895c0b7a0e54a6', 'BT101', 'A'),
('2013CSA1057', 'HARJINDER SINGH', 'd933d0c4ea148d9f3a777b2ab0fa1003', 'BT101', 'A'),
('2013CSA1059', 'HARMEET KAUR CHUMBER', 'fdd9ad3fd9f0b3714eab5464284058a1', 'BT101', 'A'),
('2013CSA1060', 'Harmeet Kumar', 'dd0bd69dee7d080a896a8038fcc025f1', 'BT101', 'A'),
('2013CSA1062', 'Himanshu Gupta', '57be86b8cc062a60a5ed72d277bdd5e2', 'BT101', 'A'),
('2013CSA1063', 'jaansher singh bal', 'c129b5ef07b5d88764135c737bba46b7', 'BT101', 'A'),
('2013CSA1064', 'JAGROOP SINGH', '53aebe6a77eae644b026e7b6e68ad615', 'BT101', 'A'),
('2013CSA1066', 'jaskaranpal Singh', '4772998db6711a7f08f4b5f5a98bb30d', 'BT101', 'A'),
('2013CSA1067', 'Jaskaranpreet Kaur', 'bbe54b15af80f1842a5805447c2409b3', 'BT101', 'A'),
('2013CSA1068', 'Jasmeet Bhagat', 'a9e8c61cac4eef5081491c89e89871ae', 'BT101', 'A'),
('2013CSA1070', 'Kanika', 'cfe7c38d07525652f58abcb961ee12c8', 'BT101', 'A'),
('2013CSA1071', 'Karamjeet  Ram', '694781ed9d0486c8f74598345b46d478', 'BT101', 'A'),
('2013CSA1072', 'Harleen Kaur', 'ba9d30a606a3709b6c89aa35e2dda350', 'BT101', 'A'),
('2013CSA1073', 'karanbir singh gill', '01cef5ac775dcc10f3b550c2e3cf5bd0', 'BT101', 'A'),
('2013CSA1074', 'KASHISH MALHOTRA', '8f85e3da524a87e186a81566a3d78d13', 'BT101', 'A'),
('2013CSA1075', 'Kulvinder Kakar', '82abcf436b2f8750e9f01d19ae87de22', 'BT101', 'A'),
('2013CSA1079', 'LEHAR SAINI', '75b122929104fabc6bbf4eb5d642f59a', 'BT101', 'A'),
('2013CSA1081', 'Lovepreet Singh', 'fd110e1ae67f71e11dd395a59f6e64c1', 'BT101', 'A'),
('2013CSA1082', 'LUVPREET SINGH', '8bc80d37964d3525a475a25a0f24645c', 'BT101', 'A'),
('2013CSA1084', 'Mahiyal B Singh', '9d2192dd845b3135c71f79847bc8e488', 'BT101', 'A'),
('2013CSA1085', 'Manveer Singh', 'eab489dbc03d758f6b68d0248ce5b93a', 'BT101', 'A'),
('2013CSA1086', 'Mohit Mehra', 'af5ba43b163ea9fbf3d8a6430d0d4483', 'BT101', 'A'),
('2013CSA1087', 'Money Sood', 'b7772d997f020a0ed2b33fd131245964', 'BT101', 'A'),
('2013CSA1088', 'Mosin Mahajan', 'b17e837d977d87427c06c29ad8e8686d', 'BT101', 'A'),
('2013CSA1090', 'MUKESH KUMAR', 'a0c327f185accdd00dde44b1e56a81ab', 'BT101', 'A'),
('2013CSA1091', 'Nandan Kumar Chaudhary', 'e445900c1cadd9578b11f213a2c08f44', 'BT101', 'B'),
('2013CSA1092', 'NAVDEEP KUMAR', '26115f24045c2dab166bc5d7d18cb348', 'BT101', 'B'),
('2013CSA1093', 'NAVLEEN', '24147afadd2ced187208676fcf38d564', 'BT101', 'B'),
('2013CSA1094', 'Navneet Babool', '04315c63e63dbf8f41992964b26ba4f1', 'BT101', 'B'),
('2013CSA1095', 'NEERAJ BANSAL', '8a173d0870f88e4dadb46af374d9f3f7', 'BT101', 'B'),
('2013CSA1096', 'Nidhi Tandon', '1dfac4bb051048f40fcf22a7a4295a8a', 'BT101', 'B'),
('2013CSA1097', 'Nikhil Datta', '26304035029f33164a1ffb433791d7c7', 'BT101', 'B'),
('2013CSA1098', 'Jaskaran Singh Saini', '10f81b11229ee7f9ad411af9492c9bd5', 'BT101', 'B'),
('2013CSA1099', 'NITESH KUMAR', '472f5c9c7e6ce7eb16ee5e05454e6e91', 'BT101', 'B'),
('2013CSA1100', 'NITIKA MEHTA', 'c429acb2d6059f67e3ee360d15df5638', 'BT101', 'B'),
('2013CSA1101', 'Pahuldeep Singh Sidhu', 'f9077e596483692406f01b38f6060b57', 'BT101', 'B'),
('2013CSA1102', 'Palak Sharma', 'ac5ff0c8b010809672432919c0249096', 'BT101', 'B'),
('2013CSA1103', 'Pallavi Manan', 'c070b60e7cea386fab7cdaeabeedd4a1', 'BT101', 'B'),
('2013CSA1104', 'Harpreet Singh Sodhi', 'b02308e522a485553063c949d6c0e49c', 'BT101', 'B'),
('2013CSA1106', 'Parul', '1923518b2b5b882f6b312dfe9c45cc2c', 'BT101', 'B'),
('2013CSA1107', 'Pooja', '971443baea1a8fdc3bda6c6ce8d61e8d', 'BT101', 'B'),
('2013CSA1109', 'POOJA MATTOO', '05171b72a7c5d52988fb2f8902a2a311', 'BT101', 'B'),
('2013CSA1110', 'Navrattan Parmar', '06493c96c399a848eff3abee08dd5958', 'BT101', 'B'),
('2013CSA1111', 'Prajwal Sharma', '4715c64f164d78f2a811628a0d14489c', 'BT101', 'B'),
('2013CSA1113', 'Prince', '845eceae283573da57e6ff0ba274978f', 'BT101', 'B'),
('2013CSA1114', 'Pritpal Singh', '2e961670efc052a46facf55ae8b5320b', 'BT101', 'B'),
('2013CSA1115', 'RAGHAV DODA', '0a7538c0f9d203b9526f301c406458d3', 'BT101', 'B'),
('2013CSA1116', 'Raghav Mahajan', 'c151da103995e6c10bd1acf3829b7a75', 'BT101', 'B'),
('2013CSA1118', 'Rahul Singla', '4fff58f57adabdfc506a8e79bacbb27f', 'BT101', 'B'),
('2013CSA1120', 'Ravneet Singh Brar', '3eb6d9cbb7552428a635747e90820902', 'BT101', 'B'),
('2013CSA1121', 'Rhythm nagpal', 'dc8e42e7dff69d6b9239fd5f303d7cf2', 'BT101', 'B'),
('2013CSA1123', 'Nitish Kumar Arora', '030fd606952ff6236e7f0532f47b99c6', 'BT101', 'B'),
('2013CSA1124', 'Rishab Kumar', '36f5f58f4c626513472691a4d3511b92', 'BT101', 'B'),
('2013CSA1127', 'Ritesh Kumar', 'e214c38bceffb877e1cfbe1c4645683a', 'BT101', 'B'),
('2013CSA1128', 'RUPESH KUMAR', 'eb98b18dc63bcb0e621495d4b3455211', 'BT101', 'B'),
('2013CSA1129', 'Sahil', '3f2db3e1e51a73f572c17aaea8d0ca6c', 'BT101', 'B'),
('2013CSA1130', 'Sahil Julka', '637c46530346c5ca68301c4dc0de8584', 'BT101', 'B'),
('2013CSA1131', 'Sahil Sharma', 'bb0152e1fe2e78b90af5b24b98ac962f', 'BT101', 'B'),
('2013CSA1133', 'Sakshi Gupta', 'c3440396278fbb430ba924cc1c6dd930', 'BT101', 'B'),
('2013CSA1136', 'Samridhi', 'd9736fa6a5685b3debcc2c76452fdfe4', 'BT101', 'B'),
('2013CSA1138', 'Sanju Singh', 'f14d99b2926fd599327923a1cd771dd8', 'BT101', 'B'),
('2013CSA1139', 'Sanyam Bhardwaj', 'ba5124ec7ced50ffcdc337b4b859865a', 'BT101', 'B'),
('2013CSA1141', 'Divya', 'b0b4fba3bef14d7647513e579d7a6b4b', 'BT101', 'B'),
('2013CSA1143', 'Saurav Kumar', 'a6dc2ffa24d24c6001c653f08ff25a93', 'BT101', 'B'),
('2013CSA1144', 'Sonali Bajaj', '270e727c476d21ecebadcfb411b99cc9', 'BT101', 'B'),
('2013CSA1146', 'Shivam Sehgal', 'c7ac86734e9726741bad2735c9969f93', 'BT101', 'B'),
('2013CSA1147', 'SHUBAM SACHDEVA', '230f4092d7539937aa2e0843ffd2c9ad', 'BT101', 'B'),
('2013CSA1151', 'SHUBHAM MITTAL', '8fceaaf3196c93fa5df81a89a2ab1f9c', 'BT101', 'B'),
('2013CSA1152', 'Shubhdeep Kaur', '76d9ab10fd0dbe3895873c1f9c760e9c', 'BT101', 'B'),
('2013CSA1153', 'Simmipreet Kaur', '610b4ba654e6a909aa173098ea705083', 'BT101', 'B'),
('2013CSA1154', 'Sonali Garg', '331c4b9435254ed0fe6604dc3c28b774', 'BT101', 'B'),
('2013CSA1155', 'SOURAV MAHAJAN', '840069293e45dc65e0d68a4655ddc39d', 'BT101', 'B'),
('2013CSA1156', 'AAYU BAJAJ', 'ee636df378195671079e010d0381cd20', 'BT101', 'B'),
('2013CSA1158', 'SUMAN BISHNOI', '1d67419899575bbd4a45473aa0bed0ce', 'BT101', 'B'),
('2013CSA1159', 'Sumit Chadha', '5c4444a95b04d8367f52e44cd5ad4bcd', 'BT101', 'B'),
('2013CSA1161', 'Sushank Saini', 'cd1065a4414065ad5a8e2760a53147d0', 'BT101', 'B'),
('2013CSA1163', 'TALWINDER SINGH', 'f240d53d76678f538eec5952e133d781', 'BT101', 'B'),
('2013CSA1164', 'Tanaya', '863556b11a5b6d42eaa9140c83767c6d', 'BT101', 'B'),
('2013CSA1165', 'Tanisha Kothari', '58372019b9c3bc39141df3b1d266715f', 'BT101', 'B'),
('2013CSA1166', 'Tanya Sood', 'a1e8ee6219f4deb0d144f57e41d2d93d', 'BT101', 'B'),
('2013CSA1167', 'Taru Metla', '52253140a49ab2c755627d9b88ab31b4', 'BT101', 'B'),
('2013CSA1168', 'TUSHAR MAHAJAN', 'd96803fd631151206d81175a6256e2f4', 'BT101', 'B'),
('2013CSA1173', 'Vikramjit Singh', '4179a380f842fc11ae07edd49735e789', 'BT101', 'B'),
('2013CSA1174', 'VIVEK JASSI', 'f5a968a0e5bb82c7b44bdcd989392f40', 'BT101', 'B'),
('2013CSA1175', 'Yashika Goyal', '047736c0966c09ebc9d00b560cb62502', 'BT101', 'B'),
('2013CSA1176', 'YOGESH KUMAR', 'f0027c8e75cdef0ec133e0c5bba6726d', 'BT101', 'B'),
('2013CSA1177', 'YUVRAJ MONGA', 'dc8a6c204a3b7814324a7d34f1e294ee', 'BT101', 'B'),
('2013CSA1433', 'Supriya', '27f137d53ce382c81df93b16120a453a', 'BT101', 'A'),
('2013CSA1457', 'Germanjit Singh', 'f318b09847a7295571cce72b265f5551', 'BT101', 'A'),
('2013CSA1472', ' Mayank Mahajan', 'c28bf3819cc1063bbc3068697ce5a294', 'BT101', 'A'),
('2013CSA1473', 'Mridhul Sethi', '91809e222a46099d3c246917412cd094', 'BT101', 'A'),
('2013CSA1476', 'Pancham Aggawal', '996617e2508bfc9893dc2245ffd98a4b', 'BT101', 'A'),
('2013CSA1491', 'Sahil Seth', 'e697d957ed1e60c3094eb2b01608f668', 'BT101', 'A'),
('2013CSA1502', 'Vivek Sharma', '3ef95c9c160240bde9932bf04470452b', 'BT101', 'A'),
('2013CSA1553', 'Amandeep Kaur', 'ad0cd5544576359843b9c569642cb750', 'BT101', 'A'),
('2013CSA1559', 'Jyoti', 'fb4a25cc0700cca62fc62c4ffd24fafe', 'BT101', 'A'),
('2013CSA1562', 'Manjot Kaur', '4faefb65334b94e6fd092943bd50ca92', 'BT101', 'A'),
('2013CSA1602', 'Tarun', 'f319f9ac3f738f7af8c7aa4fb2df3e63', 'BT101', 'A'),
('2013CSA1723', 'Danish Thukral', '7f1652ae6cadf154d281c6a3cb2453e7', 'BT101', 'A'),
('2013CSA1726', 'Debojyoti Dey', 'b52a538d34a9db4513fa728dcbbea3ef', 'BT101', 'A'),
('2013CSA1747', 'Kritika', 'e8731817fb1f0e7d10760691663d570c', 'BT101', 'A'),
('2013CSA1765', 'Priti', '47a216d8d2627f97b1a655aac0905f85', 'BT101', 'A'),
('2013CSA1767', 'Raghav Sharma', '2da358be59acb4d4129a18b51b69e7e9', 'BT101', 'A'),
('2013CSA1779', 'Sahil Kumar', '39ac05558592416f58dc8479b5cbed5b', 'BT101', 'A'),
('2013CSA1792', 'Simran Kaur Bajwa', 'ad92df2ab25b4a22b04b4983d93267b5', 'BT101', 'A'),
('2013CSA1795', 'Sukhpreet Kaur', '7ce7d984877e2e7c0cea84e851c4d7b2', 'BT101', 'A'),
('2013CSA1851', 'Adhish Mahajan', '0ee68c3ab2351ada88e9c02dbeab825f', 'BT101', 'B'),
('2013CSA1852', 'Aditi Sood', '24823a99902ac478a0edef3a0f54086e', 'BT101', 'B'),
('2013CSA1854', 'Amandeep Singh', '27910d0f3616ccc2cf2cf00d4768ee57', 'BT101', 'B'),
('2013CSA1857', 'Ashna Aggarwal', '657add461e75eb7ca24578e56b4f3268', 'BT101', 'B'),
('2013CSA1859', 'Damul Khurana', '90d05c839c65d4f97cf6a3236d39c928', 'BT101', 'B'),
('2013CSA1860', 'Dev Kumar', 'febef9be654e207d42cc681fcb534fcc', 'BT101', 'B'),
('2013CSA1861', 'Etish Mahajan', '2dc2cdac3ee760560bbf65af5c4d25fb', 'BT101', 'B'),
('2013CSA1862', 'G.B.Lokesh', 'd82b4214fabbb8d088dd72b479196470', 'BT101', 'B'),
('2013CSA1863', 'Gagandeep Singh Saini', '59b42b25c85bee5fa9e900f22e8eaba8', 'BT101', 'B'),
('2013CSA1864', 'Garima Bhala', '126efe3678ecf1e40b8f3f5882c6503d', 'BT101', 'B'),
('2013CSA1865', 'Gurdarshan Singh', '58414414ac26d301c0c1865107e18dc8', 'BT101', 'B'),
('2013CSA1868', 'Jasmeet Kaur Walia', '3af236a059a09c465337c7798486d44c', 'BT101', 'B'),
('2013CSA1869', 'Jaspreet Kaur', 'c491e9ea4f60276f4d1636b25ed1f3b0', 'BT101', 'B'),
('2013CSA1870', 'Jobandeep Kaur', 'b52c5a4b312e933a2777afef3528ec66', 'BT101', 'B'),
('2013CSA1874', 'Manpreet Kaur', 'a929bdb66b0c8ca176e3f3d13e8c22a8', 'BT101', 'B'),
('2013CSA1882', 'Rajvir Kaur', '4e2c9e3c67a10dba80247e5e39f2c5dd', 'BT101', 'B'),
('2013CSA1893', 'Sourav ', '401587679b54c5fa34c1d7c3c934f67f', 'BT101', 'B'),
('2013CSA1894', 'Varindha Arora', 'd99636793f451ca7a17e49f1ccb89b73', 'BT101', 'B'),
('2013CSA1895', 'Vibhuti Dhir', '932436c7e3d96581583b1e578731790f', 'BT101', 'B'),
('2013CSA1897', 'Palika Arora', 'd2826be52947b6885fd2da52483da91e', 'BT101', 'B'),
('2013CSA2001', 'AAYAN BAJAJ', '1a46fe74ad8c365d39ad2e5a9e3a746e', 'BT101', 'C'),
('2013CSA2003', 'ABHINANDAN BHARDWAJ', '2a5cd63751fe7faf45b9acdab047d3ea', 'BT101', 'C'),
('2013CSA2004', 'ABHINANDAN PUNJ', '746ef5e1a3794ca8c7ce0288fb08daed', 'BT101', 'C'),
('2013CSA2008', 'BHAVIKA PATHRIA', 'f0d9461daecde38435d0810276549f54', 'BT101', 'C'),
('2013CSA2009', 'Bikramjit Singh', 'd5936135971c907d4a291fa75d705bc7', 'BT101', 'C'),
('2013CSA2010', 'Lakshit Sharma', '378eba16b1dbeeea9c2fd41df38c5160', 'BT101', 'C'),
('2013CSA2011', 'DIKSHA MAHAJAN', 'b2bb8a9bc5f082a73eb76da3c4dbfe5e', 'BT101', 'C'),
('2013CSA2012', 'GOURI MUNJAL', '367746b5be7e01edab00c650d81bc1dd', 'BT101', 'C'),
('2013CSA2013', 'GURNOOR SINGH', '4939b1ffa38f8508a402f76bc3cd0181', 'BT101', 'C'),
('2013CSA2014', 'GURSANGEET SINGH', '38bf3fe84bfe1d52d606bb16ab487edd', 'BT101', 'C'),
('2013CSA2015', 'HARNEET KAUR', 'edbc9e8db7649b3dda757b4564fd1506', 'BT101', 'C'),
('2013CSA2016', 'HARSHDEEP SINGH', '64a9d32f91ca5170c75858a95bca60a1', 'BT101', 'C'),
('2013CSA2017', 'ISHERPREET SINGH', 'e81182440624ffaec883546b60fd3d6f', 'BT101', 'C'),
('2013CSA2018', 'JAIDEEP SINGH KAINTH', 'a1e60705d79a764e52901cf7e916a2e1', 'BT101', 'C'),
('2013CSA2021', 'KARAN BALI', '1b062c6e9eb08b7addb97e0b8b19b980', 'BT101', 'C'),
('2013CSA2022', 'KOMAL NAYYAR', '6d1dcb14e48ce0a489551c8745752d6c', 'BT101', 'C'),
('2013CSA2024', 'NAVNEET GULATI', 'ee52a32f95f3a6173f1bf8b7a60662ea', 'BT101', 'C'),
('2013CSA2025', 'NAVNEET KAUR', '1b73b967df56ae3175228738fe749176', 'BT101', 'C'),
('2013CSA2026', 'NAVRISHAM BHULLAR', '628d8a53172a452899e2e0d52349c5f2', 'BT101', 'C'),
('2013CSA2027', 'NEELAKSH  SHARMA', 'e1bbe44d95358f7756b61ddaf2e39fa6', 'BT101', 'C'),
('2013CSA2029', 'PARSHANT', '12f65e7d409e22d48f6896c793123cfa', 'BT101', 'C'),
('2013CSA2030', 'PARTEEK SINGH BEDI', '4b5ebd54071f010a18b0aa4a12e15dbb', 'BT101', 'C'),
('2013CSA2031', 'RAGHAV VERMA', '9f361eacda67562d185d2b3c8b4dd545', 'BT101', 'C'),
('2013CSA2033', 'Ravish Dhawan', '11baf41a8399df051e847faa07a82522', 'BT101', 'C'),
('2013CSA2035', 'ROBINDER J SINGH DHILLON', '47a5484f6f760c9b0f0966d6c8165438', 'BT101', 'C'),
('2013CSA2036', 'SHAGUN SABHARWAL', '5faf06a17364a62a018c1289280764a6', 'BT101', 'C'),
('2013CSA2037', 'SHEENA SHARMA', '9b0423672a802dc4023edb37e97d91b6', 'BT101', 'C'),
('2013CSA2039', 'SIMRANJIT KAUR', '608596111d8fb2c8550fb0b74e3ac0c0', 'BT101', 'C'),
('2013CSA2040', 'AanchalSharma', '7347eda2ec7c856a1851d6ff0027d376', 'BT101', 'C'),
('2013CSA2041', 'SPARSH SEHGAL', '2221c02180742769c12ac9fb9e6cca11', 'BT101', 'C'),
('2013CSA2042', 'Sukhpreet Kaur', '8f0504a0a0a9c93d793fb2aa70c6d330', 'BT101', 'C'),
('2013CSA2044', 'SURAJ MAHAJAN', 'ba42ae56d664c736541de1f3042917bc', 'BT101', 'C'),
('2013CSA2045', 'SURLEEN KAUR', 'eca12cc22c256b5b84befc91c469024e', 'BT101', 'C'),
('2013CSA2046', 'SUSHANT THAKUR', '295082d44f27cc3247538b2d91a9e9a4', 'BT101', 'C'),
('2013CSA2047', 'TANYA  ROY PRABHAKAR', '1b40723665a3053b4d14b4b6aa284bf1', 'BT101', 'C'),
('2013CSA2048', 'TARANBIR SINGH KAHLON', 'a2d76b5a8d9ff537e70306ad3d2b644b', 'BT101', 'C'),
('2013CSA2050', 'TRISHA SEHGAL', '469077ef294fc22373597ce10ea243c5', 'BT101', 'C'),
('2013CSA2051', 'Udhay Arora', '9f3b9cf95af820ea43d6f4d6408e3e63', 'BT101', 'C'),
('2013CSA2054', 'Aviteshwar  Singh', 'd98ec696232c632be15c89e214b8a012', 'BT101', 'C'),
('2013CSA2055', 'Agam Malhotra', '09828bc950deeead9d0a599c836f472c', 'BT101', 'C'),
('2013CSA2056', 'Ria Khanna', '6106da8b7b78f305e1259822e096d4cd', 'BT101', 'C'),
('2013CSA2057', 'Tejpartap Singh Sandhu', '0443e15d74a58869ff454b2957fde780', 'BT101', 'C'),
('2013CSA2058', 'Harmeet Kaur', '48164cb212b780852ea809afcfc113b6', 'BT101', 'C'),
('2013CSA2059', 'Sargun Kaur Dhanju', 'f50e73a94020705927c43211abfeaa91', 'BT101', 'C'),
('2013CSA2060', 'Isha Goyal', '201162567fee6758237efbb0a815f345', 'BT101', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `sub_id` varchar(6) NOT NULL,
  `subject` varchar(70) NOT NULL,
  `teacher_id` varchar(5) NOT NULL,
  `class_id` varchar(8) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `subject`, `teacher_id`, `class_id`, `semester`) VALUES
('CSL242', 'Microprocessor and assembly language programming', 'jsb', 'BT101', 4);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE IF NOT EXISTS `submissions` (
  `id` varchar(21) NOT NULL,
  `topic_id` varchar(10) NOT NULL,
  `rollno` varchar(11) NOT NULL,
  `teacher_id` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` varchar(5) NOT NULL,
  `teacher` varchar(30) NOT NULL,
  `dept_id` varchar(5) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher`, `dept_id`, `password`) VALUES
('jsb', 'Jaspreet sing baath', '101', 'aed32f5fffcfe750aaecdfca61773909');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` varchar(10) NOT NULL,
  `topic` varchar(30) NOT NULL,
  `sub_id` varchar(6) NOT NULL,
  `due_date` date NOT NULL,
  `filetype` varchar(40) NOT NULL DEFAULT 'docx',
  `class_id` varchar(8) NOT NULL,
  `section` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
 ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`roll no`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`sub_id`,`class_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
 ADD PRIMARY KEY (`topic_id`,`sub_id`,`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
