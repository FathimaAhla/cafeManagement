-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 11:29 AM
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
(4, 4, 9, 'Rameez', 'abc@mail.com', 712345678, 'Table 1', '4 Chairs', '6.30 PM - 9.30 PM', 'booked', '0000-00-00');

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
(3, 'Table 1', 'Lunch Table', '4 Chairs', '', '12.00 PM- 2.00 PM'),
(4, 'Table 2', 'Lunch Table', '4 Chairs', '', '12.00 PM- 2.00 PM'),
(5, 'Table 3', 'Lunch Table', '4 Chairs', '', '12.00 PM- 2.00 PM'),
(6, 'Table 4', 'Lunch Table', '6 Chairs', 'booked', '12.00 PM- 2.00 PM'),
(7, 'Table 5', 'Lunch Table', '6 Chairs', '', '12.00 PM- 2.00 PM'),
(8, 'Table 6', 'Lunch Table', '6 Chairs', 'booked', '12.00 PM- 2.00 PM'),
(9, 'Table 1', 'Dinner Table', '4 Chairs', 'booked', '6.30 PM - 9.30 PM'),
(10, 'Table 2', 'Dinner Table', '4 Chairs', '', '6.30 PM - 9.30 PM'),
(11, 'Table 3', 'Dinner Table', '4 Chairs', '', '6.30 PM - 9.30 PM'),
(12, 'Table 4', 'Dinner Table', '6 Chairs', '', '6.30 PM - 9.30 PM'),
(13, 'Table 5 ', 'Dinner Table', '6 Chairs', '', '6.30 PM - 9.30 PM'),
(14, 'Table 6', 'Dinner Table', '6 Chairs', 'booked', '6.30 PM - 9.30 PM');

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
(2, 2, 'Ahla', 'binthfayis2321@gmail.com', '0772466033', 'good');

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
(32, 4, 'Rameez', '0712345678', 'abc@mail.com', '', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527', 'Zinger Burger (650 x 1) - Mushroom Pizza (950 x 1) - Burger (700 x 1) - ', 2300, '0000-00-00', 'Credit Card'),
(33, 4, 'Rameez', '0712345678', 'abc@mail.com', '', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527', 'Burger (700 x 1) - ', 700, '0000-00-00', 'Cash on Delivery');

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
(4, 'Zinger Burger', 'fast food', 650, 'burger-1.png'),
(5, 'Burger', 'fast food', 700, 'burger-2.png'),
(6, 'Submarine', 'fast food', 650, 'submarine-1.png'),
(7, 'Pizza', 'fast food', 900, 'pizza-4.png'),
(8, 'Mushroom Pizza', 'fast food', 950, 'pizza-5.png'),
(9, 'Beef Shawarma', 'fast food', 650, 'shawarma-1.png'),
(10, 'Greek Salad', 'fresh food', 500, 'greek-salad.jpg'),
(11, 'Vegetable Salad', 'fresh food', 450, 'salad.png'),
(12, 'French Salad', 'fresh food', 580, 'food-img-1.png'),
(13, 'Orange Juice', 'drinks', 200, 'drink-1.png'),
(14, 'Lemon Juice', 'drinks', 200, 'drink-2.png'),
(17, 'Cherry Juice', 'drinks', 250, 'drink-4.png'),
(18, 'Strawberry IceCream', 'desserts', 300, 'icecream-1.png'),
(19, 'Chocolate Mix Icecream', 'desserts', 320, 'icecream-3.png'),
(20, 'Mix Icecream', 'desserts', 320, 'icecream-2.png'),
(21, 'Strawberry Cake', 'desserts', 380, 'dessert-6.png'),
(22, 'Cream Cake', 'desserts', 360, 'dessert-3.png'),
(23, 'Cup Cake', 'desserts', 350, 'dessert-4.png');

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
(5, 4, 'Rameez', 'abc@mail.com', 'I recently made a reservation at here for a dinner with my family, and I was very impressed with the', 4, '');

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
(4, 'Rameez', 'abc@mail.com', '0712345678', 'f547bc24bd3fb5a2b1b710ccc5688b61bb70041b', '63, Uyanwatta, Mawanella, Kegalle, Sabragamuva,71527');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booked_tables`
--
ALTER TABLE `booked_tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_tables`
--
ALTER TABLE `book_tables`
  MODIFY `table_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
