-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 07:24 AM
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
-- Database: `foodie_hoodie_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'Rameez', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b'),
(3, 'Ahla', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `booked_tables`
--

CREATE TABLE `booked_tables` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `tid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `t_size` varchar(100) NOT NULL,
  `book_time` varchar(100) NOT NULL,
  `booked` varchar(6) NOT NULL,
  `placed_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_tables`
--

INSERT INTO `booked_tables` (`id`, `user_id`, `tid`, `name`, `email`, `number`, `table_name`, `t_size`, `book_time`, `booked`, `placed_on`) VALUES
(1, 4, 8, 'Rameez', 'abc@mail.com', 712345678, 'Table 6', '6 Chairs', '12.00 PM- 2.00 PM', 'booked', '0000-00-00'),
(2, 4, 14, 'Rameez', 'abc@mail.com', 712345678, 'Table 6', '6 Chairs', '6.30 PM - 9.30 PM', 'booked', '0000-00-00'),
(3, 4, 6, 'Rameez', 'abc@mail.com', 712345678, 'Table 4', '6 Chairs', '12.00 PM- 2.00 PM', 'booked', '0000-00-00'),
(4, 4, 9, 'Rameez', 'abc@mail.com', 712345678, 'Table 1', '4 Chairs', '6.30 PM - 9.30 PM', 'booked', '0000-00-00'),
(5, 4, 15, 'Rameez', 'abc@mail.com', 712345678, 'Table 1', '4 Chairs', '12.00PM - 2.00 PM', 'book', '0000-00-00'),
(6, 4, 15, 'Rameez', 'abc@mail.com', 712345678, 'Table 1', '4 Chairs', '12.00PM - 2.00 PM', 'book', '0000-00-00'),
(7, 7, 20, 'Fathima Ahla', 'ahla@gmail.com', 715468524, 'Table 2', '4 Chairs', '12.00PM - 2.00 PM', 'book', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `book_tables`
--

CREATE TABLE `book_tables` (
  `table_id` int(100) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `t_category` varchar(100) NOT NULL,
  `t_size` varchar(100) NOT NULL,
  `status` varchar(6) NOT NULL,
  `book_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_tables`
--

INSERT INTO `book_tables` (`table_id`, `table_name`, `t_category`, `t_size`, `status`, `book_time`) VALUES
(19, 'Table 1', 'Lunch Table', '4 Chairs', '', '12.00PM - 2.00 PM'),
(20, 'Table 2', 'Lunch Table', '4 Chairs', 'booked', '12.00PM - 2.00 PM'),
(21, 'Table 3', 'Lunch Table', '6 Chairs', '', '12.00PM - 2.00 PM'),
(22, 'Table 1', 'Dinner Table', '4 Chairs', '', '6.30PM - 9.00 PM'),
(23, 'Table 2', 'Dinner Table', '4 chairs', '', '6.30PM - 9.00 PM'),
(24, 'Table 3', 'Dinner Table', '6 Chairs', '', '6.30PM - 9.00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `seat` int(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `details` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `user_id`, `name`, `number`, `email`, `seat`, `date`, `time`, `details`, `method`) VALUES
(12, 7, 'Fathima Ahla', 754862488, 'ahla@gmail.com', 25, '2022-12-25', '19:00:00', 'I need to arrange birthday party at your café. every participants gets burger or pizza and drinks or', 'book');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(5, 7, 'Fathima Ahla', 'ahla@gmail.com', '0758469222', 'Can we arrange a party in your restaurant ?'),
(6, 7, 'ada', 'Avcae@gmail.com', '6451224786', 'sdsgjhaosngkfnsgwrnasf');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(32, 4, 'Rameez', '0712345678', 'abc@mail.com', '', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527', 'Zinger Burger (650 x 1) - Mushroom Pizza (950 x 1) - Burger (700 x 1) - ', 2300, '0000-00-00', 'completed'),
(33, 4, 'Rameez', '0712345678', 'abc@mail.com', '', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527', 'Burger (700 x 1) - ', 700, '0000-00-00', 'completed'),
(36, 4, 'Rameez', '0712345678', 'abc@mail.com', '', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527', 'Burger (750 x 1) - ', 750, '0000-00-00', 'completed'),
(37, 4, 'Rameez', '0712345678', 'abc@mail.com', '', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527', 'Burger (750 x 1) - ', 750, '0000-00-00', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `card_holder` varchar(100) NOT NULL,
  `card_num` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cvn` varchar(100) NOT NULL,
  `total_price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `card_name`, `card_holder`, `card_num`, `month`, `year`, `cvn`, `total_price`) VALUES
(20, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(21, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(22, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(23, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(24, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(25, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(26, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(27, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(28, 2, 'Mastercard', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '314b98fa2025f3f043a74767a3a6b1129c9de917', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '7e79a3af26', '35139ef894b28b73bea022755166a23933c7d9cb', 500),
(29, 4, 'Visa', '526ef4078d67dcbfa90132b8937d728cee7be38d', 'b08fa15dc4f488c8d5c746bb82854959c7cc8480', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '445cd2fd32', '0fb914ab018d3fbf1e69f5bcd0caa0559f47fe0c', 2300);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(25, 'Burger', 'fast food', 750, 'burger-2.png'),
(26, 'Zinger Burger', 'fast food', 800, 'burger-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `rate` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `name`, `email`, `review`, `rate`, `image`) VALUES
(1, 2, 'Ahla', 'binthfayis2321@gmail.com', 'Excellent food. Menu is extensive and seasonal to a particularly high standard. Definitely fine dini', 4, ''),
(2, 2, 'Manzir', 'manzir@gmail.com', 'When we think about celebrations, cafe is always our first option and it never disappoints. From the', 5, ''),
(3, 2, 'Rifad', 'rifad@gmail.com', 'This spot gives extraordinary service and yummy meals. One of my favorites\' café around town. The me', 4, ''),
(4, 2, 'Shafra', 'shafra@gmail.com', 'I would be lost without restaurant. I would like to personally thank you for your outstanding produc', 4, ''),
(5, 4, 'Rameez', 'abc@mail.com', 'I recently made a reservation at here for a dinner with my family, and I was very impressed with the', 4, ''),
(6, 7, 'Fathima Ahla', 'ahla@gmail.com', 'I had wonderful day here, foods are delicious. Highly recommended', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `tid` int(100) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `t_size` varchar(100) NOT NULL,
  `book_time` varchar(100) NOT NULL,
  `t_category` varchar(100) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(2, 'Ahla', 'binthfayis2321@gmail.com', '0772466033', '1fd3e2d48590185306853b5f5c11d6e1eac35d07', '4, ...., ......., .........., ...........,1111'),
(4, 'Rameez', 'abc@mail.com', '0712345678', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527'),
(7, 'Fathima Ahla', 'ahla@gmail.com', '0715468524', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '20, Kahatovitta, Nittambuva, Gamphaha, Western Province,754444');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_tables`
--
ALTER TABLE `booked_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_tables`
--
ALTER TABLE `book_tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booked_tables`
--
ALTER TABLE `booked_tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `book_tables`
--
ALTER TABLE `book_tables`
  MODIFY `table_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
