-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2019 at 12:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `globalmusicagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `second_name` varchar(64) NOT NULL,
  `phone_no` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `post_code` varchar(32) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `first_name`, `second_name`, `phone_no`, `email`, `address`, `post_code`, `date_of_birth`) VALUES
(1, 'Daisy', 'Hanson', '077 4348 2346', 'daisyHanson@teleworm.us', '42 Ash Lane', 'SA8 5TQ', '1980-12-05'),
(2, 'Ellis', 'Rogers', '070 3022 9922', 'ellis.rogers@teleworm.us\r\n', '72 Bullwood Rd', 'CW6 8LL', '1968-07-12'),
(3, 'Grace', 'Foster', '070 3673 7199', 'grace_foster@jourrapide.com', '9 Colorado Way', 'SA8 8LX', '1976-04-11'),
(4, 'Victor', 'Hugo', '07491614212', 'victor@gmail.com', '43 James Newton', 'LN33 2BN', '1978-04-03'),
(5, 'John', 'Smith', '07493241124', 'smith.jo@gmail.com', '43 London Road', 'NW32 3NN', '1969-01-18'),
(6, 'Mike', 'Johnsons ', '0748922121', 'johnsonsm@yahoo.com', '44 Rosse Street', 'LU3 22RW', '1988-01-10'),
(7, 'Mike', 'Newman', '0786553213', 'newman.m@yahoo.com', '34 Portland Road', 'NW3 2DS', '1976-01-30'),
(13, 'mihail ', 'tudos', '0987523412', 'mihai@gmail.com', 'pacii', 'lu5 6gt', '2019-00-17');

-- --------------------------------------------------------

--
-- Table structure for table `bands`
--

CREATE TABLE `bands` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `bio` varchar(5120) NOT NULL,
  `town` varchar(64) NOT NULL,
  `facebook` varchar(64) NOT NULL,
  `instagram` varchar(64) NOT NULL,
  `website` varchar(128) NOT NULL,
  `agent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bands`
--

INSERT INTO `bands` (`id`, `name`, `bio`, `town`, `facebook`, `instagram`, `website`, `agent`) VALUES
(1, 'AJJ', 'AJJ is an American band. Regarded as one of the most significant cultural icons of the 21st century, they are often referred to as the “Kings of Rock and Roll” or simply “the Kings”.', 'ARIZONA', 'ajjtheband', 'ajjtheband', 'ajjtheband.com', 1),
(2, 'FRESH', 'Punx from London who love emo, shredding, touring, oat milk, and using friendship to fill a gaping uncertain hole inside of yourself.', 'LONDON', 'freshpunks', 'freshpunks', 'freshpunks.bandcamp.com', 2),
(3, 'WERECATS', 'pinning punk rock tales from the underside of life on the mean streets of South London, Werecats specialise in hooky and harmony-ridden slices of garage-inflected punk rock. Having sharpened their skills (and claws) on stages from Plymouth (UK) to Innsbruck (Austria), their debut album “Destined for the Outside” was released in 2018 on Household Name Records. Conjuring up catchy, punky powerpop odes to werewolves, dogs, zombies and a cherished catmobile, this record will put a smile on your face and a spring in your step. Featuring current/former members of such fabulous bands as the Zatopeks, The Pukes, The Blankheads and Reptile Masters. For fans of The Muffs, The Fastbacks and the Ramones.', 'LONDON', 'werecatsband', 'werecats_punk', 'werecatsband.co.uk', 5),
(4, 'THE RUN UP', 'The Run Up are 5friends from Bristol (UK) who have carved out a strong reputation in their homeland UK scene, based on their fun, energetic and passionate live shows.\r\n\r\nAfter releasing a demo; an EP (via Paper+Plastick) and single, the band released their debut LP via Real Ghost Records (EU) & Get Party Records (North America).\r\n\r\nIn 2018 The Run Up released ‘Good Friends, Bad Luck’ EP via Uncle M and Real Ghost records??.\r\n\r\n2018 saw The Run Up play 75 shows across 10 countries , playing with bands such as A Wilhelm Scream, Red City Radio, Iron Chic, No Trigger, Such Gold, Spanish Love Songs, Bad Cop / Bad Cop, Such Gold and Pkew Pkew Pkew.', 'BRISTOL', 'therunupuk', 'therunupuk', 'therunupuk.com', 1),
(5, 'CHLOE HAWES', 'Chloe Hawes is a singer/songwriter from the UK blending folk, punk and Americana music. She has toured the UK and Europe relentlessly over the last few years, sharing stages with the likes of Jared Hart and playing at venues such as Berlin’s famous Ramones Museum. 2019 will see her play in the US for the first time, and following 3 EP releases, will begin work on her debut album.', 'MANCHESTER', 'ChloeHawesMusic', 'ChloeHawes01', 'chloehawes.bandcamp.com', 4),
(6, 'NERVUS', 'Melodic heavy indie punk about being queer and the failures of capitalism. Big hooks and great dancing.', 'WATFORD', 'nervusmusic', 'nervusmusic', 'nervusmusic.com/', 6),
(9, 'NEW BAND', 'dsadas', 'LUTON', 'sa', 'dsd', 'www.dsa.com', 13);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `full_description` varchar(5120) NOT NULL,
  `venue` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `full_description`, `venue`) VALUES
(1, 'PORT FAIRY FOLK FESTIVAL', 'So-called because it takes place in the artsy little town of Port Fairy, a stop on the stunning Great Ocean Road, this four-day folk-music fest combines delightful scenery with hundreds of acts ranging across roots, Celtic, folk, country, bluegrass, blues, jazz, rock, crossover and world music, as well as children\'s entertainment, workshops and fringe acts.', 'Hyde Park Corner'),
(7, 'toan', 'sad', 'sda'),
(8, 'Vin', 'dsa sad LONDON', 'London');

-- --------------------------------------------------------

--
-- Table structure for table `festival_members`
--

CREATE TABLE `festival_members` (
  `id` int(11) NOT NULL,
  `performance` int(11) NOT NULL,
  `band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `festival_members`
--

INSERT INTO `festival_members` (`id`, `performance`, `band`) VALUES
(1, 5, 2),
(2, 5, 5),
(8, 5, 2),
(9, 7, 9),
(11, 5, 9),
(12, 7, 6),
(13, 8, 5),
(14, 8, 1),
(15, 5, 1),
(16, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

CREATE TABLE `performances` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `date` date NOT NULL,
  `first_class_ticket_price` double NOT NULL,
  `second_class_ticket_price` double NOT NULL,
  `corporate_ticket_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performances`
--

INSERT INTO `performances` (`id`, `event`, `date`, `first_class_ticket_price`, `second_class_ticket_price`, `corporate_ticket_price`) VALUES
(5, 1, '2019-05-18', 33, 34, 32),
(7, 8, '2019-05-16', 32323, 32, 32),
(8, 1, '2019-05-10', 22, 22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `second_name` varchar(128) NOT NULL,
  `address_1` varchar(256) NOT NULL,
  `address_2` varchar(256) DEFAULT NULL,
  `town` varchar(48) NOT NULL,
  `post_code` varchar(48) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone_no` varchar(32) NOT NULL,
  `user_name` varchar(48) NOT NULL,
  `password` varchar(128) NOT NULL,
  `security_code` int(8) NOT NULL,
  `org_type` varchar(48) DEFAULT NULL,
  `account_no` varchar(48) DEFAULT NULL,
  `account_postcode` varchar(48) DEFAULT NULL,
  `org_name` varchar(128) DEFAULT NULL,
  `user_level` varchar(16) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `first_name`, `second_name`, `address_1`, `address_2`, `town`, `post_code`, `email`, `phone_no`, `user_name`, `password`, `security_code`, `org_type`, `account_no`, `account_postcode`, `org_name`, `user_level`) VALUES
(1, 'Mr.', 'Mihail', 'Tudos', '258 High St N', 'da', 'LU6 1BE', 'LU6 1BE', 'mihairmcr7@gmail.com', '07491648162', 'd1', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 5896, NULL, NULL, NULL, NULL, 'user'),
(5, 'Mr.', 'Mihail', 'Tudos', '31', '21', '13', '1111', '1', '1', 'd', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1551, 'part', 'NULL', 'NULL', 'NULL', 'user'),
(6, 'Mr.', 'Mihail', 'Tudos', '346 Luton rd', '', 'LU54LG', 'LU6 1BE\r\n\r\n', 'mihairmcr7@gmail.com', '07492313213', 'organiser', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1234, NULL, NULL, NULL, NULL, 'organiser'),
(12, 'Mr.', '321', '321', '321', '31', '321', '321', '321', '321', '321', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 321, 'NULL', 'NULL', 'NULL', 'NULL', 'admin'),
(31, 'Mr.', 'D', 'Dd', '31', '21', '13', '1111', '1', '1', 'd', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1551, 'part', 'NULL', 'NULL', 'NULL', 'admin'),
(32, 'Mr.', 'D', 'D', 'd', 'd', 'd', 'D', 'sada', 'd', 'das', '18ac3e7343f016890c510e93f935261169d9e3f565436429830faf0934f4f8e4', 1, 'NULL', 'NULL', 'NULL', 'NULL', 'admin'),
(33, 'Mr.', 'Sebastian', 'Smith', 'd', 'd', 'd', 'D', 'ddddd', 'd', 'org', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1214, 'Partnership', '9859352', 'LU41DD', 'Pacific', 'corporation'),
(34, 'Mr.', 'Mihail', 'Triboi', 'pacii 11 b', '', 'Nisporeni', 'LU51BF', '1', '0986786', '1', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 5896, 'Partnership', '9859352', 'LU41DD', 'Pacific', 'corporation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_no` (`phone_no`,`email`);

--
-- Indexes for table `bands`
--
ALTER TABLE `bands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent` (`agent`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `festival_members`
--
ALTER TABLE `festival_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `performance` (`performance`),
  ADD KEY `band` (`band`);

--
-- Indexes for table `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bands`
--
ALTER TABLE `bands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `festival_members`
--
ALTER TABLE `festival_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `performances`
--
ALTER TABLE `performances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bands`
--
ALTER TABLE `bands`
  ADD CONSTRAINT `band_agent` FOREIGN KEY (`agent`) REFERENCES `agents` (`id`);

--
-- Constraints for table `festival_members`
--
ALTER TABLE `festival_members`
  ADD CONSTRAINT `bandToPerform` FOREIGN KEY (`band`) REFERENCES `bands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `performance` FOREIGN KEY (`performance`) REFERENCES `performances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `performances`
--
ALTER TABLE `performances`
  ADD CONSTRAINT `event` FOREIGN KEY (`event`) REFERENCES `events` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
