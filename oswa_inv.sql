-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2019 a las 18:37:40
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oswa_inv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(5, 'accesorios'),
(7, 'Cables'),
(4, 'camaras'),
(2, 'hadwares'),
(8, 'impresoras'),
(6, 'inmuebles'),
(9, 'otros'),
(3, 'Reproductores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `user_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`, `user_id`) VALUES
(1, 'filter.jpg', 'image/jpeg', NULL),
(2, 'auricular.jpg', 'image/jpeg', NULL),
(3, 'filter - copia.jpg', 'image/jpeg', NULL),
(4, 'W_ACC01.jpg', 'image/jpeg', '13'),
(5, 'W_PC01.jpg', 'image/jpeg', '13'),
(6, 'W_ACC02.jpg', 'image/jpeg', '13'),
(7, 'W_ACC03.jpg', 'image/jpeg', '13'),
(8, 'W_CD.jpg', 'image/jpeg', '13'),
(9, 'W_IMP01.jpg', 'image/jpeg', '13'),
(10, 'W_MONIT01.jpg', 'image/jpeg', '13'),
(11, 'W_MUB01.jpg', 'image/jpeg', '13'),
(12, 'O_ACC01.jpg', 'image/jpeg', '14'),
(13, 'O_BD.jpg', 'image/jpeg', '14'),
(14, 'O_CAM01.jpg', 'image/jpeg', '14'),
(15, 'O_CAM02.jpg', 'image/jpeg', '14'),
(16, 'O_MONIT01.jpg', 'image/jpeg', '14'),
(17, 'O_MUB01.jpg', 'image/jpeg', '14'),
(18, 'O_PC01.jpg', 'image/jpeg', '14'),
(19, 'O_USB.jpg', 'image/jpeg', '14'),
(20, 'O_VIT01.jpg', 'image/jpeg', '14'),
(21, 'J_ACC01.jpg', 'image/jpeg', '1'),
(22, 'J_ACC04.jpg', 'image/jpeg', '1'),
(23, 'J_ACC05.jpg', 'image/jpeg', '1'),
(24, 'J_CAM01.jpg', 'image/jpeg', '1'),
(25, 'J_CAM02.jpg', 'image/jpeg', '1'),
(26, 'J_CAM03.jpg', 'image/jpeg', '1'),
(27, 'J_DVD.jpg', 'image/jpeg', '1'),
(28, 'J_DVDCAPT01.jpg', 'image/jpeg', '1'),
(29, 'J_DVDIMP.jpg', 'image/jpeg', '1'),
(30, 'J_IMP01.jpg', 'image/jpeg', '1'),
(31, 'J_IMP02.jpg', 'image/jpeg', '1'),
(32, 'J_MONIT01.jpg', 'image/jpeg', '1'),
(33, 'J_MONIT02.jpg', 'image/jpeg', '1'),
(34, 'J_MUB01.jpg', 'image/jpeg', '1'),
(35, 'J_MUB02.jpg', 'image/jpeg', '1'),
(36, 'J_MUB03.jpg', 'image/jpeg', '1'),
(37, 'J_PC01.jpg', 'image/jpeg', '1'),
(38, 'J_PC02.jpg', 'image/jpeg', '1'),
(39, 'J_ROUT01.jpg', 'image/jpeg', '1'),
(40, 'J_TEF01.jpg', 'image/jpeg', '1'),
(41, 'J_USB.jpg', 'image/jpeg', '1'),
(42, 'J_VHS01.jpg', 'image/jpeg', '1'),
(43, 'J_VHS02.jpg', 'image/jpeg', '1'),
(44, 'J_VHS03.jpg', 'image/jpeg', '1'),
(45, 'J_VHS04.jpg', 'image/jpeg', '1'),
(46, 'J_VIT01.jpg', 'image/jpeg', '1'),
(49, 'abet.png', 'image/png', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT '0',
  `date` datetime NOT NULL,
  `mark` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`, `mark`, `location`, `state`) VALUES
(1, 'e', '0', '1.00', '1.00', 3, 1, '0000-00-00 00:00:00', '1', '1', '1'),
(4, 'b', '2', '1.00', '1.00', 4, 0, '2019-04-01 00:00:00', '1', '1', '1'),
(5, 'w', '1', '1.00', '0.00', 5, 0, '2019-04-30 15:19:50', 'w', 'w', 'w'),
(7, 'd', '1', '1.00', '0.00', 7, 1, '2019-04-30 15:37:25', 'd', 'd', 'd'),
(8, 'A', '1', '1.00', '0.00', 7, 2, '2019-04-30 15:40:43', 'a', 'a', 'a'),
(10, 'omar', '0', '1.00', '0.00', 7, 2, '2019-05-01 18:13:36', 'omar', 'omar', 'omar'),
(11, 'Mouse y teclado3 ', '-15', '30.00', '0.00', 5, 21, '2019-05-07 18:31:08', 'Omega y Blue', 'A01', 'Operativo'),
(12, 'aa', '1', '1.00', '0.00', 5, 0, '2019-05-31 17:55:23', 'a', 'a', '1'),
(13, 'ee', '1', '1.00', '0.00', 7, 0, '2019-05-31 17:57:42', 'ee', 'ee', '1'),
(14, 'qq', '1', '1.00', '0.00', 5, 0, '2019-05-31 18:08:53', 'qq', 'qq', '1'),
(15, 'xx', '1', '1.00', '0.00', 4, 0, '2019-05-31 18:10:11', 'xx', 'xx', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(1, 1, 1, '1.00', '2019-04-30'),
(2, 10, 1, '0.00', '2019-05-01'),
(3, 11, 1, '0.00', '2019-05-31'),
(4, 11, 1, '0.00', '2019-05-31'),
(5, 11, 1, '0.00', '2019-05-31'),
(6, 11, 3, '0.00', '2019-05-31'),
(7, 11, 2, '0.00', '2019-05-31'),
(8, 11, 5, '0.00', '2019-05-31'),
(9, 11, 6, '0.00', '2019-05-31'),
(10, 11, 7, '0.00', '2019-05-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracing`
--

CREATE TABLE `tracing` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `operation` varchar(50) DEFAULT NULL,
  `operation_name` varchar(50) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tracing`
--

INSERT INTO `tracing` (`id`, `user`, `operation`, `operation_name`, `product_name`, `field`, `date`) VALUES
(1, 'edwin', 'agrego', 'producto', 'teclado', NULL, '2019-05-31 00:00:00'),
(2, 'A', '0', '0', '0', '0', '2019-05-31 18:21:15'),
(3, '', '0', '0', '0', '0', '2019-05-31 18:22:42'),
(4, 'User2', '0', '0', '0', '0', '2019-05-31 18:25:34'),
(5, 'User2', 'agrego', 'producto', 'p_name', '0', '2019-05-31 18:43:43'),
(6, 'User2', 'agrego', 'producto', 'jj', '0', '2019-05-31 18:44:22'),
(7, 'User2', 'agrego', 'producto', 'mm', '0', '2019-05-31 17:52:18'),
(8, 'User2', 'agrego', 'producto', 'oo', '', '2019-05-31 17:55:38'),
(9, 'User2', 'actualizo', 'producto', 'Mouse y teclado2 ', '', '0000-00-00 00:00:00'),
(10, 'User2', 'actualizo', 'producto', 'Mouse y teclado3 ', '', '2019-05-31 18:02:45'),
(11, 'User2', 'eliminÃ³', 'producto', '', '', '2019-05-31 18:13:00'),
(12, 'User2', 'elimino', 'producto', '', '', '2019-05-31 18:15:12'),
(13, 'User2', 'elimino', 'producto', '', '', '2019-05-31 18:17:00'),
(14, 'User2', 'elimino', 'producto', '', '', '2019-05-31 18:18:16'),
(15, 'User2', 'elimino', 'producto', '', '', '2019-05-31 18:40:53'),
(16, 'User2', 'elimino', 'producto', '', '', '2019-05-31 18:41:32'),
(17, 'User2', 'elimino', 'producto', 'WW', '', '2019-05-31 18:44:23'),
(18, 'User2', 'elimino', 'producto', 'CC', '', '2019-05-31 18:45:44'),
(19, 'User2', 'elimino', 'producto', '', '', '2019-05-31 17:56:09'),
(20, 'User2', 'agrego', 'imagen', 'azure01.png', '', '2019-05-31 18:19:39'),
(21, 'User2', 'elimino', 'producto', 'VV', '', '2019-05-31 18:25:22'),
(22, 'User2', 'elimino', 'imagen', '', '', '2019-05-31 18:25:47'),
(23, 'User2', 'elimino', 'imagen', 'word.png', '', '2019-05-31 18:26:53'),
(24, 'User2', 'agrego', 'imagen', 'abet.png', '', '2019-05-31 18:27:18'),
(25, 'User2', 'actualizo', 'producto', 'Mouse y teclado3 ', '', '2019-05-31 18:42:44'),
(26, 'User2', 'agrego', 'venta', '', '', '2019-05-31 00:00:00'),
(27, 'User2', 'agrego', 'venta', '', '', '2019-05-31 00:00:00'),
(28, 'User2', 'agrego', 'venta', '', '', '2019-05-31 00:00:00'),
(29, 'User2', 'agrego', 'venta', '', '', '2019-05-31 00:00:00'),
(30, 'User2', 'agrego', 'venta', '', '', '2019-05-31 18:03:58'),
(31, 'User2', 'agrego', 'venta', '', '', '0000-00-00 00:00:00'),
(32, 'User2', 'agrego', 'venta', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin Users', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'logo.jpeg', 1, '2019-05-31 18:26:37'),
(2, 'Special User', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.jpg', 1, '2017-06-16 07:11:26'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.jpg', 1, '2017-06-16 07:11:03'),
(10, 'willy condiri', 'will123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 3, 'no_image.jpg', 1, '2019-04-22 17:40:20'),
(12, 'user2', 'user2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, 'no_image.jpg', 1, '2019-05-31 18:27:12'),
(13, 'Willy Condori Condori', 'Willy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 3, 'onjox3gc13.jpg', 1, '2019-05-07 18:15:01'),
(14, 'Omar Oscamayta Mamani', 'omar', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f', 3, 'lir8ji9014.jpg', 1, '2019-05-07 18:21:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Web_master', 2, 0),
(3, 'User', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `tracing`
--
ALTER TABLE `tracing`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`user_level`);

--
-- Indices de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tracing`
--
ALTER TABLE `tracing`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
