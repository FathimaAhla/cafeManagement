-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 07:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

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
(1, 'Rameez', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b');

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
  `booked` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_tables`
--

INSERT INTO `booked_tables` (`id`, `user_id`, `tid`, `name`, `email`, `number`, `table_name`, `t_size`, `book_time`, `booked`) VALUES
(39, 4, 108, 'abc@mail.com', 'Table 1', 712345678, 'Rameez', '2 Chairs', '12.00 P.M to 2.00 P.M', 'booked'),
(40, 4, 109, 'Rameez', 'abc@mail.com', 712345678, 'Table 2', '2 Chairs', '12.00 P.M to 2.00 P.M', 'booked'),
(41, 4, 110, 'Rameez', 'abc@mail.com', 712345678, 'Table 1', '2 Chairs', '12.00 P.M to 2.00 P.M', 'booked'),
(42, 4, 111, 'Rameez', 'abc@mail.com', 712345678, 'Table 6', '2 Chairs', '12.00 P.M to 2.00 P.M', 'booked'),
(43, 4, 112, 'Rameez', 'abc@mail.com', 712345678, 'Table 5', '2 Chairs', '6.00 P.M to 9.00 P.M', 'booked');

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
(108, 'Table 1', 'Lunch Table', '2 Chairs', 'booked', '12.00 P.M to 2.00 P.M'),
(109, 'Table 2', 'Lunch Table', '2 Chairs', 'booked', '12.00 P.M to 2.00 P.M'),
(110, 'Table 1', 'Dinner Table', '2 Chairs', 'booked', '12.00 P.M to 2.00 P.M'),
(111, 'Table 6', 'Dinner Table', '2 Chairs', 'booked', '12.00 P.M to 2.00 P.M'),
(112, 'Table 5', 'Lunch Table', '2 Chairs', 'booked', '6.00 P.M to 9.00 P.M'),
(113, 'Table 4', 'Lunch Table', '2 Chairs', 'booked', '6.00 P.M to 9.00 P.M'),
(114, 'Table 6', 'Lunch Table', '2 Chairs', '', '12.00 P.M to 11.00 P.M'),
(115, 'Table 2', 'Lunch Table', '2 Chairs', '', '6.00 P.M to 9.00 P.M'),
(116, 'Table 1', 'Lunch Table', '2 Chairs', '', '12.00 P.M to 11.00 P.M'),
(117, 'Table 1', 'Lunch Table', '2 Chairs', '', '6.00 P.M to 9.00 P.M');

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
(2, 1, 1, 'pizza', 750, 1, 'blackbugger.png'),
(25, 4, 3, 'Drink', 500, 1, 'drink-5.png');

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
(5, 4, 'Rameez', 877667899, 'abc@mail.com', 100, '2022-12-29', '23:25:00', 'wedding', 'booked'),
(6, 4, 'Rameez', 2147483647, 'binthfayis2321@gmail.com', 100, '2022-12-14', '12:54:00', 'event', 'booked'),
(7, 0, 'Ahla', 0, '', 100, '2022-12-14', '12:28:00', 'WEDDING', 'booked'),
(8, 0, 'Ahla', 0, '', 100, '2022-12-14', '12:28:00', 'WEDDING', 'booked'),
(9, 2, 'Ahla', 0, '', 100, '2022-12-14', '22:30:00', 'hskakm', 'booked');

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
(2, 2, 'Ahla', 'binthfayis2321@gmail.com', '0772466033', 'good'),
(3, 2, 'Ahla', 'binthfayis2321@gmail.com', '43454', 'hfvdzv'),
(4, 2, 'Ahla', 'binthfayis2321@gmail.com', '7899090', 'gtfhjsak');

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
(2, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'cash on delivery', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'Drink (500 x 1) - burger (900 x 1) - ', 1400, '0000-00-00', ''),
(3, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'credit card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'burger (900 x 1) - Drink (500 x 1) - ', 1400, '0000-00-00', ''),
(4, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'credit card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'burger (900 x 1) - ', 900, '0000-00-00', 'credit card'),
(5, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'Drink (500 x 1) - burger (900 x 1) - ', 1400, '0000-00-00', 'card'),
(6, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'burger (900 x 1) - ', 900, '0000-00-00', 'card'),
(7, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'cash', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'Drink (500 x 1) - ', 500, '0000-00-00', 'cash'),
(8, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'Drink (500 x 1) - burger (900 x 1) - ', 1400, '0000-00-00', 'card'),
(9, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'Credit Card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'Drink (500 x 1) - burger (900 x 1) - ', 1400, '0000-00-00', 'Credit Card'),
(10, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'Credit Card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'burger (900 x 1) - ', 900, '0000-00-00', 'Credit Card'),
(11, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'Credit Card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'burger (900 x 1) - ', 900, '0000-00-00', 'Credit Card'),
(12, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'Credit Card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'burger (900 x 1) - ', 900, '0000-00-00', 'Credit Card'),
(13, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'Credit Card', '5, 4, kahatowita, nitambuva, ...., ..., srilanka - 435', 'burger (900 x 1) - ', 900, '0000-00-00', 'Credit Card'),
(14, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', 'Credit Card', '4, ...., ......., .........., ...........,1111', 'burger (900 x 1) - Drink (500 x 1) - ', 1400, '0000-00-00', 'Credit Card'),
(15, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', ''),
(16, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', ''),
(17, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', 'Credit Card'),
(18, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', 'Credit Card'),
(19, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', 'Credit Card'),
(20, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', '\r\nWarning:  Undefine'),
(21, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', '\r\nWarning:  Undefine'),
(22, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', 'Cash on Delivery'),
(23, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', 'Cash on Delivery'),
(24, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 1) - ', 500, '0000-00-00', 'Cash on Delivery'),
(25, 2, 'Ahla', '0772466033', 'binthfayis2321@gmail.com', '', '4, ...., ......., .........., ...........,1111', 'Drink (500 x 2) - burger (900 x 4) - ', 4600, '0000-00-00', 'Cash on Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `cardname` varchar(100) NOT NULL,
  `cusname` varchar(100) NOT NULL,
  `cardnum` int(16) NOT NULL,
  `emonth` varchar(100) NOT NULL,
  `eyear` int(4) NOT NULL,
  `cvn` int(3) NOT NULL,
  `tot_payment` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `user_id`, `cardname`, `cusname`, `cardnum`, `emonth`, `eyear`, `cvn`, `tot_payment`) VALUES
(1, 1, 'visa', 'ahla', 325796421, 'january', 2022, 342, 1000),
(2, 2, 'Mastercard', '526ef4078d67dcbfa90132b8937d728cee7be38d', 8979, '3b885d31803c0de5f251388bfe16c6b4e955ea0c', 356, 35139, 0),
(3, 2, 'Mastercard', '526ef4078d67dcbfa90132b8937d728cee7be38d', 592, '5c3a35ef85f22d508f90171bdcb2e6d820731d20', 0, 51, 0);

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
(1, 'pizza', 'fast food', 750, 'pizza-4.png'),
(2, 'burger', 'fast food', 900, 'burger-2.png'),
(3, 'Drink', 'drinks', 500, 'drink-5.png');

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
(1, 2, 'Ahla', 'binthfayis2321@gmail.com', 'dhhjkjkkkakak', 4, ''),
(2, 2, 'Ahla', 'binthfayis2321@gmail.com', 'ggggggggghhjkkllafds', 4, ''),
(3, 2, 'Ahla', 'binthfayis2321@gmail.com', 'ghjkllajhsh', 5, ''),
(4, 2, 'Ahla', 'binthfayis2321@gmail.com', 'ggghj', 5, ''),
(5, 4, 'Rameez', 'abc@mail.com', 'hfjkalsjdtrjfusnh', 4, '');

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

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `user_id`, `tid`, `table_name`, `t_size`, `book_time`, `t_category`, `status`) VALUES
(58, 2, 113, 'Table 4', '2 Chairs', '6.00 P.M to 9.00 P.M', 'Lunch Table', 'booked');

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
(3, 'Rameez', 'mirrorpiealha201@gmail.com', '0761580602', '9195f873d1715b7575f88118db6dc42a91137874', ''),
(4, 'Rameez', 'abc@mail.com', '0712345678', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '');

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
  ADD PRIMARY KEY (`pay_id`);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booked_tables`
--
ALTER TABLE `booked_tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `book_tables`
--
ALTER TABLE `book_tables`
  MODIFY `table_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
