-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2023 at 08:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'ccbd', 'xd', 'admin@gmail.com', '', '2023-02-22 07:18:13');



-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Empanadas de cordero de Yorkshire', 'Empanadas de cordero que se deshacen en la boca y son rápidas y fáciles de hacer. Servido caliente con una ensalada crujiente.', '14.00', '62908867a48e4.jpg'),
(2, 1, 'Langosta Thermidor', 'es un plato francés de carne de langosta cocinada en una rica salsa de vino, rellenada con una concha de langosta y dorada.', '36.00', '629089fee52b9.jpg'),
(3, 4, 'Pollo Madeira', 'El pollo Madeira, al igual que el pollo Marsala, se elabora con pollo, champiñones y un vino fortificado especial Pero los vinos son diferentes.', '23.00', '62908bdf2f581.jpg'),
(4, 1, 'Patatas Asadas Rellenas', 'Freír las patatas enteras en aceite durante 8-10 minutos o cubrir cada patata con un poco de aceite. Mezclar las cebollas, el ajo, los tomates y los champiñones. Agregue yogur, jengibre, ajo, chiles y cilantro.', '8.00', '62908d393465b.jpg'),
(5, 2, 'Gamberoni De Espagueti Rosa', 'Espaguetis con gambas en salsa de tomate fresco. Este plato es originario del sur de Italia y con la combinación de langostinos, ajo, guindilla y pasta. Adorne cada uno con la cucharada restante de perejil.', '21.00', '606d7491a9d13.jpg'),
(6, 2, 'Puré de patatas con queso', 'Puré de papas deliciosamente con queso. El puré definitivo para tu mesa de Acción de Gracias o el acompañamiento perfecto para una cazuela de salchichas veganas. A todos les encantará\'', '5.00', '606d74c416da5.jpg'),
(7, 2, 'Tiras De Pollo Crujientes', 'Tiras de pollo frito, servidas con salsa especial de mostaza y miel.', '8.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Pollo A La Parrilla Con Limón Y Pasta', 'Pechuga de pollo marinada al romero y asada, servida con puré de papas y pasta de su elección.', '11.00', '606d752a209c3.jpg'),
(9, 3, 'Arroz de verdura', 'Wok de arroz chino con repollo, frijoles, zanahorias y cebolletas.', '5.00', '606d7575798fb.jpg'),
(10, 3, 'Galletas saladas de gambas', '12 piezas de galletas de gambas fritas', '7.00', '606d75a7e21ec.jpg'),
(11, 3, 'Rollitos de primavera', 'Repollo, cebolla y zanahorias rallados ligeramente condimentados, envueltos en envoltorios de rollitos de primavera hechos en casa y fritos hasta que estén dorados.', '6.00', '606d75ce105d0.jpg'),
(12, 3, 'Pollo de Manchuria', 'Trozos de pollo cocinados a fuego lento con cebolletas en nuestra salsa casera estilo manchuriano.', '11.00', '606d7600dc54c.jpg'),
(13, 4, 'Alas de búfalo', 'Alitas de pollo fritas bañadas en salsa Buffalo picante, servidas con palitos de apio crujientes y salsa de queso azul.', '11.00', '606d765f69a19.jpg'),
(14, 4, 'Bocaditos de macarrones con queso', 'Servido con nuestro tradicional queso picante y salsa marinara.', '9.00', '606d768a1b2a1.jpg'),
(15, 4, 'Tornados de papa exclusivos', 'Papas en rodajas en espiral, cubiertas con nuestro tradicional queso picante, queso Monterey Jack, pico de gallo, crema agria y cilantro fresco.', '6.00', '606d76ad0c0cb.jpg'),
(16, 4, 'Pasta Penne Con Albóndigas', 'Albóndigas de carne con ajo y hierbas, bañadas en nuestra salsa marinara casera y pasta penne cubierta con perejil fresco.', '10.00', '606d76eedbb99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int NOT NULL,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'North Street Tavern', 'nthavern@mail.com', '3547854700', 'www.northstreettavern.com', '8am', '8pm', 'mon-sat', '1128 North St, White Plains', '6290877b473ce.jpg', '2022-05-27 08:10:35'),
(2, 2, 'Eataly', 'eataly@gmail.com', '0557426406', 'www.eataly.com', '11am', '9pm', 'Mon-Sat', '800 Boylston St, Boston', '606d720b5fc71.jpg', '2022-05-27 08:06:41'),
(3, 3, 'Nan Xiang Xiao Long Bao', 'nanxiangbao45@mail.com', '1458745855', 'www.nanxiangbao45.com', '9am', '8pm', 'mon-sat', 'Queens, New York', '6290860e72d1e.jpg', '2022-05-27 08:04:30'),
(4, 4, 'Highlands Bar & Grill', 'hbg@mail.com', '6545687458', 'www.hbg.com', '7am', '8pm', 'mon-sat', '812 Walter Street', '6290af6f81887.jpg', '2022-05-27 11:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2022-05-27 08:07:35'),
(2, 'Italiano', '2021-04-07 08:45:23'),
(3, 'China', '2021-04-07 08:45:25'),
(4, 'America', '2021-04-07 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
