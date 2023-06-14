-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 09:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apartment sales system`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `aprtID` int(11) NOT NULL,
  `adType` varchar(5) NOT NULL,
  `beds` int(11) NOT NULL,
  `baths` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `addrs` varchar(250) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(350) NOT NULL,
  `price` int(11) NOT NULL,
  `negotiable` tinyint(1) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `approved` varchar(5) NOT NULL DEFAULT 'NULL',
  `sellerMail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`aprtID`, `adType`, `beds`, `baths`, `size`, `country`, `city`, `town`, `addrs`, `title`, `description`, `price`, `negotiable`, `img1`, `img2`, `img3`, `approved`, `sellerMail`) VALUES
(1, 'sale', 4, 2, 1500, 'Sri Lanka', 'GAMPAHA', 'GAMPAHA', '138/k, Ihalayagoda Gampaha\r\nIhalayagoda Gampaha', 'Spacious house for sale', 'Situated in a quiet residential area in the suburbs.\n\n20-Foot Access Road to the House.\n\nClose to Gateway College and President&#039;s College.\n\n5-10 mins away from Major Hospitals like Aasiri Surgical, King&#039;s, Nine-wells, etc.', 1500000, 1, 'images/Apartments/1_WhatsApp-Image-2021-08-10-at-3.04.49-PM-1-641x785.jpeg', '', '', '1', 'hulk54@gmail.com'),
(2, 'sale', 2, 2, 1150, 'Sri Lanka', 'Rajagiriya', '', 'Rajagiriya', 'Apartment for Sale in Rajagiriya', 'A brand new luxurious apartment at Iconic Galaxy in Rajagiriya up for sale by November  2022\n\n2 Bedrooms Apartment for urgent sales on the following floor\n\n23 floor - BC1 type Apartment.', 50000000, 0, 'images/Apartments/2_1_3_554659609.jpg', '', '', 'NULL', 'hulk54@gmail.com'),
(3, 'sale', 5, 3, 2100, 'Sri Lanka', 'Kottawa', 'Makumbura', 'Maya Mawatha, Makumbura, Kottawa.', 'House for Sale in Kottawa', '2-storey house (two stories with external entrance and separate Electricity &amp; Water) | 2000 + sq.ft | 1000L water tanks each | Fully tiled | Covered Rooftop | Car porch for 2 vehicles | 20 ft access road', 27000000, 1, 'images/Apartments/3_441609742722FoyL2qywvzXyD6T.jpg', '', '', '0', 'hulk54@gmail.com'),
(4, 'sale', 4, 2, 10000, 'Sri lanka', 'matara', 'godagama', 'kamil lane, nupe, matara.', 'House for sale in matara', 'Two sotry house, with furniture, hot water showers.', 25000000, 1, 'images/Apartments/4_HouseMtara.png', '', '', '1', 'james@gmail.com'),
(5, 'sale', 5, 2, 6000, 'Sri lanka', 'Matara', 'Walgama', 'sumana road, walgama, matara.', 'Luxury house for sale', 'Big ground area, Tv Room, With electric Equipments.', 8000000, 1, 'images/Apartments/5_houseMtara20.jpg', '', '', '0', 'james@gmail.com'),
(6, 'sale', 3, 1, 5000, 'sri lanka', 'matara', 'matara', 'meera road, matara.', 'one story house for sale', 'A brand new luxurious apartment for sale  in matara ', 6000000, 1, 'images/Apartments/6_download.jpg', '', '', '1', 'james@gmail.com'),
(7, 'sale', 4, 2, 2500, 'Sri Lanka', 'Colombo', 'kalaniye', 'NO.56 Peliyagoda,Kalaniya', 'House for Sale', 'Peaceful neighbors\r\nColorful Background', 25000000, 1, 'images/Apartments/1_download (1).jpg', '', '', 'NULL', 'johndoe@gmail.com'),
(8, 'sale', 5, 4, 35000, 'Sri Lanka', 'Galle', '', 'No.45 wakwella road,Galle', 'Home for sale', 'colorful garden\r\nNear to Town\r\n', 4500000, 1, 'images/Apartments/2_images.jpg', '', '', '1', 'johndoe@gmail.com'),
(9, 'sale', 3, 2, 1200, 'Sri Lanka', 'Galle', 'Elpitiya', 'No.22, Ambalangoda road, Elpitiya', 'Brand New House for Sale in Galle', '3 Bedrooms, 2 Bathrooms, Garden with Parking area.', 36000000, 1, 'images/Apartments/3_Galle1.jpeg', '', '', 'NULL', 'devinnawod@gmail.com'),
(10, 'sale', 5, 4, 2300, 'Sri Lanka', 'Malabe', 'Isurupura', 'No.11, Isurupura road, Malabe.', 'House for sale in Malabe', '5 Bedrooms, 4 Bathrooms, Kitchen &amp; Storeroom, Parking area.', 56000000, 1, 'images/Apartments/4_negambo.jpeg', '', '', '1', 'devinnawod@gmail.com'),
(11, 'rent', 4, 1, 1500, 'Srilanka', 'Matara', '', 'No.25, Galle road, Matara.', 'House for rent in Matara', '4 Bedrooms, 1 Bathroom, Kitchen, Garden.', 60000, 0, 'images/Apartments/5_3_1_inside.jpg', '', '', 'NULL', 'devinnawod@gmail.com'),
(12, 'sale', 3, 2, 1200, 'Sri Lanka', 'Chilaw', 'Chilaw', '35/10 Henegadara Rd Godigamuwa Chilaw', 'House for sell ', '2 bathrooms\r\n3 bedrooms\r\n', 220000, 1, 'images/Apartments/6_download69.jpg', '', '', 'NULL', 'tonyrulez@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `email` varchar(250) NOT NULL,
  `firstName` varchar(150) NOT NULL,
  `lastName` varchar(150) NOT NULL,
  `message` varchar(500) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`email`, `firstName`, `lastName`, `message`, `id`) VALUES
('sachinthaka60@gmail.com', 'Sachinthaka', 'Ayeshmantha', 'qwertyuiop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payID` int(11) NOT NULL,
  `paymentType` varchar(20) NOT NULL,
  `package` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `cardNo` int(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `expiryDate` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userfavs`
--

CREATE TABLE `userfavs` (
  `email` varchar(250) NOT NULL,
  `accType` varchar(10) NOT NULL,
  `aprtID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userfavs`
--

INSERT INTO `userfavs` (`email`, `accType`, `aprtID`) VALUES
('drstrange@gmail.com ', 'buyer ', 6),
('drstrange@gmail.com ', 'buyer ', 8),
('drstrange@gmail.com ', 'buyer ', 10),
('kaja@gmail.com ', 'buyer ', 1),
('kaja@gmail.com ', 'buyer ', 8),
('paba@gmail.com ', 'buyer ', 6),
('paba@gmail.com ', 'buyer ', 10),
('sadee@gmail.com ', 'buyer ', 6),
('wanda@gmail.com ', 'buyer ', 6),
('wanda@gmail.com ', 'buyer ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(250) NOT NULL,
  `fName` varchar(200) NOT NULL,
  `lName` varchar(200) NOT NULL,
  `addrs` varchar(500) DEFAULT NULL,
  `accType` varchar(10) NOT NULL,
  `phoneNo` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `profile` varchar(100) NOT NULL DEFAULT 'images/user.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fName`, `lName`, `addrs`, `accType`, `phoneNo`, `password`, `profile`) VALUES
('devin@gmail.com', 'Devin', 'Navod', 'No10 , new street, jaffna', 'staff', 724680245, 'Devin123', 'images/user.png'),
('devinnawod@gmail.com', 'Peter', 'Parker', 'No28 , Suhada Road, Anuradhapura', 'seller', 712527457, '19293949', 'images/user.png'),
('dewmina@gmail.com', 'Dewmina', 'Rathnayaka', 'No678 , 3rd new lane, Maharahgama', 'staff', 759354836, 'Dewmina123', 'images/user.png'),
('drstrange@gmail.com', 'Doctor', 'Strange', '177A Bleecker Street, New York City', 'buyer', 775682874, 'Doc24', 'images/user.png'),
('hulk54@gmail.com', 'Bruce', 'Banner', '123 Smith Avenue', 'seller', 769876543, 'Bruce49', 'images/user.png'),
('james@gmail.com', 'James', 'Andrew', 'No35 , new street, colombo', 'seller', 778579362, 'James1234', 'images/user.png'),
('janul@gmail.com', 'Janul', 'Walpalage', 'No234, Walgama, Matara', 'staff', 767894378, 'Janul123', 'images/user.png'),
('johndoe@gmail.com', 'John', 'Doe', 'No15 , old street, jaffna', 'seller', 712279990, 'John342', 'images/user.png'),
('kaja@gmail.com', 'Kaja', 'Sooriarachchi', '266 , Temple Rd Kadawatha', 'buyer', 769464825, 'Kaja', 'images/user.png'),
('kavishmi@gmail.com', 'Kavishmi', 'Fernando', 'No12, Kings street, colombo', 'staff', 711234567, 'Kavishmi123', 'images/user.png'),
('paba@gmail.com', 'Pabasara', 'Munasinghe', '116 , kahanthota Rd, Malabe', 'buyer', 769464825, 'Paba', 'images/user.png'),
('sachi@gmail.com', 'Sachinthaka', 'Ayeshmantha', 'No08 , Gamini Road, Anuradhapura', 'staff', 778463976, 'Sachi123', 'images/user.png'),
('sadee@gmail.com', 'Sadeesha', 'Isuranga', 'No55 , meera road, Anuradapura', 'buyer', 769464825, 'sadee2468', 'images/user.png'),
('tonyrulez@gmail.com', 'Tony', 'Stark', '10880 Malibu Point, 90265', 'seller', 113487646, 'Tony3000', 'images/user.png'),
('wanda@gmail.com', 'Wanda', 'Maximoff', '2800 Sherwood Drive, Westview, New Jersey', 'buyer', 116972145, 'Wanda', 'images/user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`aprtID`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payID`);

--
-- Indexes for table `userfavs`
--
ALTER TABLE `userfavs`
  ADD PRIMARY KEY (`email`,`accType`,`aprtID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`,`accType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `aprtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
