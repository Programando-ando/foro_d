-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2024 a las 02:15:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idcomentario` int(11) NOT NULL,
  `comentario` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idusuario` int(5) NOT NULL,
  `idpost` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idcomentario`, `comentario`, `fecha`, `idusuario`, `idpost`) VALUES
(11, 'Bien', '2024-10-03 23:26:08', 12, 59),
(12, 'Holaaaaaaaaaa', '2024-10-03 23:26:38', 12, 58),
(13, 'Como estas?', '2024-10-03 23:30:11', 11, 60),
(14, 'Hola', '2024-10-03 23:30:29', 11, 61),
(15, 'A mi tambien', '2024-10-03 23:34:51', 11, 62),
(16, 'Por favor', '2024-10-03 23:35:04', 11, 63),
(17, 'Holaaa', '2024-10-03 23:35:59', 13, 58),
(18, 'Bien', '2024-10-03 23:38:31', 13, 59),
(19, 'Holaaaa', '2024-10-03 23:41:05', 13, 58),
(20, 'hjha', '2024-10-03 23:42:10', 13, 58),
(21, 'Holaaa', '2024-10-03 23:42:43', 11, 64),
(22, '¿Como estas?', '2024-10-03 23:43:03', 11, 64),
(23, 'hhh', '2024-10-03 23:43:51', 11, 64),
(24, 'jjj', '2024-10-03 23:44:35', 11, 64),
(25, 'llll', '2024-10-03 23:44:58', 11, 64),
(26, 'jjj', '2024-10-03 23:45:19', 11, 61),
(27, 'HOLAAA', '2024-10-03 23:45:44', 11, 60),
(28, 'aaa', '2024-10-04 00:39:21', 11, 67),
(29, 'aaa', '2024-10-04 00:40:33', 11, 67),
(30, 'tttttt', '2024-10-04 00:41:31', 11, 67),
(31, 'uuuu', '2024-10-04 00:42:10', 11, 67),
(32, 'aaaaa', '2024-10-04 00:46:03', 11, 69),
(33, 'bbbbb', '2024-10-04 00:48:52', 11, 71),
(34, 'lll', '2024-10-04 01:00:33', 11, 71),
(35, 'aaaa', '2024-10-04 01:05:51', 11, 71),
(36, 'mmm', '2024-10-04 01:12:52', 11, 71),
(37, 'pppp', '2024-10-04 01:14:59', 11, 71),
(38, 'aaaaa', '2024-10-04 01:20:06', 11, 71),
(39, 'vvvvvv', '2024-10-04 01:20:33', 11, 71),
(40, 'AAAA', '2024-10-04 01:23:04', 11, 71),
(41, 'aaaa', '2024-10-04 01:24:52', 11, 72),
(42, 'lllll', '2024-10-04 01:27:16', 11, 72),
(43, 'aaaa', '2024-10-04 01:28:45', 11, 73),
(44, 'gggg', '2024-10-04 01:29:27', 11, 73),
(45, 'oooooo', '2024-10-04 01:30:03', 11, 73),
(46, 'mmmmm', '2024-10-04 23:55:42', 11, 74);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` int(11) NOT NULL,
  `post` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idusuario` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `post`, `fecha`, `idusuario`) VALUES
(58, 'Holaaa', '2024-10-03 23:22:30', 11),
(59, '¿Como va todo?', '2024-10-03 23:23:32', 12),
(60, 'Holaa', '2024-10-03 23:25:25', 12),
(61, 'hhh', '2024-10-03 23:30:22', 11),
(62, 'Me gusta programar', '2024-10-03 23:34:02', 13),
(63, 'Pase a Carlos con 10 :)', '2024-10-03 23:34:19', 13),
(64, 'Holaaa', '2024-10-03 23:42:02', 13),
(65, 'Holaaa', '2024-10-04 00:36:10', 11),
(66, 'lllll', '2024-10-04 00:36:50', 11),
(67, 'dddd', '2024-10-04 00:38:28', 11),
(68, 'aaaaaa', '2024-10-04 00:42:14', 11),
(69, 'SSSSS', '2024-10-04 00:45:52', 11),
(70, 'fffff', '2024-10-04 00:47:38', 11),
(71, 'ddddd', '2024-10-04 00:48:48', 11),
(72, 'aaaa', '2024-10-04 01:24:01', 11),
(73, 'SSSSS', '2024-10-04 01:28:41', 11),
(74, 'hhhhhh', '2024-10-04 23:55:37', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `email`, `password`, `nombre`, `foto`) VALUES
(11, 'carlos@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'Carlos Luna', 'img_profile/img_1728087117.jpeg'),
(12, 'arely@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'Arely', 'img_profile/img_1727565486.jpeg'),
(13, 'rene@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'Rene', 'img_profile/img_1727565509.jpg'),
(14, 'antonio@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'Antonio', 'img_profile/img_1727565539.jpg'),
(15, 'maria@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'Maria', 'img_profile/img_1727565573.jpeg'),
(16, 'aaron@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'Aaron', 'img_profile/img_1728005460.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idcomentario`),
  ADD KEY `idpost` (`idpost`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idpost`) REFERENCES `post` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
