-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 03:49 PM
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
(4, 'Rameez', '1fd3e2d48590185306853b5f5c11d6e1eac35d07'),
(5, 'Rifad', '12345'),
(6, 'Rameezz', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

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
(7, 7, 20, 'Fathima Ahla', 'ahla@gmail.com', 715468524, 'Table 2', '4 Chairs', '12.00PM - 2.00 PM', 'book', '0000-00-00'),
(8, 9, 24, 'Rifad', 'rifad@gmail.com', 766124223, 'Table 3', '6 Chairs', '6.30PM - 9.00 PM', 'book', '0000-00-00'),
(9, 9, 19, 'Rifad', 'rifad@gmail.com', 766124223, 'Table 1', '4 Chairs', '12.00PM - 2.00 PM', 'book', '0000-00-00');

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
(19, 'Table 1', 'Lunch Table', '4 Chairs', 'booked', '12.00PM - 2.00 PM'),
(20, 'Table 2', 'Lunch Table', '4 Chairs', 'booked', '12.00PM - 2.00 PM'),
(21, 'Table 3', 'Lunch Table', '6 Chairs', '', '12.00PM - 2.00 PM'),
(22, 'Table 1', 'Dinner Table', '4 Chairs', '', '6.30PM - 9.00 PM'),
(23, 'Table 2', 'Dinner Table', '4 chairs', '', '6.30PM - 9.00 PM'),
(24, 'Table 3', 'Dinner Table', '6 Chairs', 'booked', '6.30PM - 9.00 PM');

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

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(59, 9, 27, 'Zinger Burger', 1000, 1, 'burger-1.png'),
(60, 10, 25, 'Burger', 2000, 2, 'burger-2.png'),
(61, 10, 27, 'Zinger Burger', 1000, 2, 'burger-1.png'),
(62, 11, 27, 'Zinger Burger', 1000, 1, 'burger-1.png'),
(63, 2, 25, 'Burger', 2000, 1, 'burger-2.png'),
(64, 2, 27, 'Zinger Burger', 1000, 1, 'burger-1.png');

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
(8, 9, 'Rifad', 'rifad@mail.com', '0755241588', 'Hi , can you update order'),
(9, 0, 'Rameez', 'abc@gamil.com', '7515555555', 'Hello......');

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
(37, 4, 'Rameez', '0712345678', 'abc@mail.com', '', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527', 'Burger (750 x 1) - ', 750, '0000-00-00', 'completed'),
(38, 9, 'Rifad', '0766124223', 'rifad@gmail.com', '', '61, Marawa, Mawanella, Kegalle, Sabragamuva,750000', 'Zinger Burger (800 x 2) - ', 1600, '0000-00-00', 'completed'),
(39, 9, 'Rifad', '0766124223', 'rifad@gmail.com', '', '61, Marawa, Mawanella, Kegalle, Sabragamuva,750000', 'Zinger Burger (800 x 1) - ', 800, '0000-00-00', 'completed'),
(40, 9, 'Rifad', '0766124223', 'rifad@gmail.com', '', '61, Marawa, Mawanella, Kegalle, Sabragamuva,750000', 'Submarine (650 x 1) - ', 650, '0000-00-00', 'completed'),
(41, 9, 'Rifad', '0766124223', 'rifad@gmail.com', '', '61, Marawa, Mawanella, Kegalle, Sabragamuva,750000', 'Zinger Burger (800 x 1) - ', 800, '0000-00-00', 'Credit Card'),
(42, 9, 'Rifad', '0766124223', 'rifad@gmail.com', '', '61, Marawa, Mawanella, Kegalle, Sabragamuva,750000', 'Zinger Burger (800 x 1) - ', 800, '0000-00-00', 'completed'),
(43, 9, 'Rifad', '0766124223', 'rifad@gmail.com', '', '61, Marawa, Mawanella, Kegalle, Sabragamuva,750000', 'Burger (750 x 5) - Zinger Burger (800 x 1) - ', 4550, '0000-00-00', 'Cash on Delivery'),
(44, 11, 'Ram', '1240843248', '1234@mail.com', '', '3, agcjv, trdfyuk, ytdu,, fcjhv,4653', 'Zinger Burger (1000 x 1) - ', 1000, '0000-00-00', 'Credit Card');

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
(29, 4, 'Visa', '526ef4078d67dcbfa90132b8937d728cee7be38d', 'b08fa15dc4f488c8d5c746bb82854959c7cc8480', '5c3a35ef85f22d508f90171bdcb2e6d820731d20', '445cd2fd32', '0fb914ab018d3fbf1e69f5bcd0caa0559f47fe0c', 2300),
(30, 9, 'Visa', 'cd061f343f6334c0a88404f51e6a62b2ac03bf97', '61a0280646e784e317a3fa87eaafd8531b92805d', 'a0393902db1f516ef5f95f6830938558a88fb23c', '004be89dd9', '6643521711328a1e282daf5a5da43970eb11a089', 650);

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
(25, 'Burger', 'fast food', 2000, 'burger-2.png'),
(27, 'Zinger Burger', 'fast food', 1000, 'burger-1.png'),
(28, 'Submarine', 'fast food', 650, 'submarine-1.png'),
(29, 'Pizza', 'fast food', 900, 'pizza-1.png'),
(30, 'Drinks', 'drinks', 100, 'drink-1.png');

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
(4, 2, 'Shafra', 'shafra@gmail.com', 'I would be lost without restaurant. I would like to personally thank you for your outstanding produc', 4, ''),
(5, 4, 'Rameez', 'abc@mail.com', 'I recently made a reservation at here for a dinner with my family, and I was very impressed with the', 4, ''),
(6, 7, 'Fathima Ahla', 'ahla@gmail.com', 'I had wonderful day here, foods are delicious. Highly recommended', 4, ''),
(7, 9, 'Rifad ', 'rifad@mail.com', 'Wonderful foods, quick delivery thank you for your services', 4, '');

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
(7, 'Fathima Ahla', 'ahla@gmail.com', '0715468524', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '20, Kahatovitta, Nittambuva, Gamphaha, Western Province,754444'),
(9, 'Rifad', 'rifad@gmail.com', '0766124223', '6c35fcc3080a7adc947ee3e5a6bc2a5b1351cffe', '61, Marawa, Mawanella, Kegalle, Sabragamuva,750000'),
(10, 'Rameez', 'asdf@gmail.com', '0763392222', '7c4a8d09ca3762af61e59520943dc26494f8941b', ''),
(11, 'Ram', '1234@mail.com', '1240843248', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '3, agcjv, trdfyuk, ytdu,, fcjhv,4653');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booked_tables`
--
ALTER TABLE `booked_tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book_tables`
--
ALTER TABLE `book_tables`
  MODIFY `table_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
