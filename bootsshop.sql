-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 02:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootsshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `colors` tinyint(1) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `popular` tinyint(1) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `image_path`, `description`, `price`, `class`, `colors`, `discount`, `discount_price`, `popular`, `star`) VALUES
(1, 'NIKE ACG “4TH HORSEMAN”', 'img/collection/horseman.jpg', '', '156 €', 'rectangle5', 0, 0, '', 0, 0),
(2, 'NIKE ACG AIR NASU GORE-TEX', 'img/collection/nasu.jpg', '', '127 €', 'rectangle6', 0, 0, '', 1, 1),
(3, 'NIKE ACG MEN\'S LONG-SLEEVE T-SHIRT', 'img/collection/acg_tshirt.jpg', '', '80 €', 'rectangle7', 0, 1, '59 €', 0, 0),
(4, 'NIKE ACG REACT TERRA GOBE', 'img/collection/react.jpg', '', '134 €', 'rectangle8', 1, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `colors_available`
--

CREATE TABLE `colors_available` (
  `id` int(11) NOT NULL,
  `color_choice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `colors_available`
--

INSERT INTO `colors_available` (`id`, `color_choice`) VALUES
(1, 'Доступно +1 цвет'),
(2, 'Доступно +2 цвета'),
(3, 'Доступно +3 цвета'),
(4, 'Доступно +4 цвета'),
(5, 'Доступно +5 цветов'),
(6, '');

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `colors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `name`, `image_path`, `description`, `price`, `class`, `colors`) VALUES
(1, 'LEBRON 18 LOW “NEON LIGHTS”', 'img/new_items/lebron.jpg', '', '156', 'rectangle1', 1),
(2, 'NIKE AIR VAPORMAX EVO', 'img/new_items/vapormax_evo1.jpg', '', '220', 'rectangle2', 1),
(4, 'NIKE AIR FORCE 1 LOW CR7 BY YOU', 'img/new_items/air_force.jpg', '', '204', 'rectangle4', 5),
(9, 'NIKE FREE METCON 3', 'img/new_items/metcon2.jpg', '', '110', 'rectangle3', 6);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `colors` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `new` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `name`, `image_path`, `description`, `price`, `colors`, `class`, `discount`, `discount_price`, `new`) VALUES
(1, 'LEBRON 18 LOW “NEON LIGHTS”', 'img/maybe_likes/lebron.jpg', '', '156 €', 'Доступно +1 цвет', 'rectangle1', 0, '', 1),
(2, 'NIKE AIR MAX ZM950', 'img/maybe_likes/zm950.jpg', '', '165 €', 'Доступно +1 цвет', 'rectangle2', 1, '116 €', 0),
(3, 'NIKE AIR MAX 270', 'img/maybe_likes/air270.jpg', '', '148 €', 'Доступно +5 цветов', 'rectangle3', 0, '', 0),
(4, 'NIKE AIR MAX 97', 'img/maybe_likes/airmax97.jpg', '', '165 €', '', 'rectangle4', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `news_date` date NOT NULL,
  `text` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `image_class` varchar(255) NOT NULL,
  `arrow_class` varchar(255) NOT NULL,
  `more` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `news_date`, `text`, `image_path`, `class`, `image_class`, `arrow_class`, `more`) VALUES
(1, 'Что нового в Kyrie 7', '2023-04-10', '26 марта 2023г. - Используя возможности вычислительного дизайна за счет взаимодействия с данными, Kyrie 7 выйдет 21 июня в четырех цветовых вариантах', 'img/news/k7.jpg', 'k7', 'k7', 'arrow1', 'arrow1'),
(2, 'Вы не можете остановить нас', '2023-04-18', 'Серия “Вы не можете остановить нас” от Nike\r\nпразднует возвращение в наши спортивные сооружения после беспрецедентного сезона ограничений.', 'img/news/ycss.jpg', 'ycss', 'ycss', 'arrow2', 'arrow2'),
(3, 'Новая линия одежды Nike', '2023-04-25', 'Ведущие в отрасли научные исследования в\r\nобласти спорта и инноваций в продуктах\r\nопределяют уникальную междисциплинарную практику дизайна Nike', 'img/news/man_woman.png', 'clothes', 'man_woman', 'arrow3', 'arrow3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `registration_date` date NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `job`, `email`, `login`, `password`, `status`, `registration_date`, `pass`) VALUES
(1, 'admin', 'Portal admin', 'admin@nike.com', 'admin', '$2y$12$pxB2ofiiNZkxObmbBvBOyegwCjHCVFYhapjiSsdYXUaJ9Z1IH6pQW', 'admin', '2021-12-01', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors_available`
--
ALTER TABLE `colors_available`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colors` (`colors`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors_available`
--
ALTER TABLE `colors_available`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `v1` FOREIGN KEY (`colors`) REFERENCES `colors_available` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
