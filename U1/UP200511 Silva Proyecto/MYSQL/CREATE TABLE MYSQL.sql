-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2022 a las 02:37:32
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bussines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `ACTOR_ID` int(10) NOT NULL,
  `STAGE_NAME` varchar(40) NOT NULL,
  `FIRST_NAME` varchar(25) NOT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `BIRTH_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `CUSTOMER_ID` int(10) NOT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `FIRST_NAME` varchar(25) NOT NULL,
  `HOME_PHONE` varchar(12) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE` varchar(2) NOT NULL,
  `EMAIL` varchar(25) DEFAULT NULL,
  `CELL_PHONE` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `MEDIA_ID` int(10) NOT NULL,
  `FORMAT` varchar(3) NOT NULL,
  `TITLE_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `TITLE_ID` int(10) NOT NULL,
  `TITLE` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(400) NOT NULL,
  `RATING` varchar(4) DEFAULT NULL,
  `CATEGORY` varchar(20) DEFAULT NULL,
  `RELEASE_DATE` date NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rental_history`
--

CREATE TABLE `rental_history` (
  `MEDIA_ID` int(10) NOT NULL,
  `RENTAL_DATE` date NOT NULL DEFAULT current_timestamp(),
  `CUSTOMER_ID` int(10) NOT NULL,
  `RETURN_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `star_billings`
--

CREATE TABLE `star_billings` (
  `ACTOR_ID` int(10) NOT NULL,
  `TITLE_ID` int(10) NOT NULL,
  `COMMENTS` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `title_unavail`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `title_unavail` (
`MEDIA_ID` int(10)
,`TITLE` varchar(60)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `title_unavail`
--
DROP TABLE IF EXISTS `title_unavail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `title_unavail`  AS SELECT `re`.`MEDIA_ID` AS `MEDIA_ID`, `mo`.`TITLE` AS `TITLE` FROM ((`movies` `mo` join `rental_history` `re`) join `media` `me`) WHERE `mo`.`TITLE_ID` = `me`.`TITLE_ID` AND `me`.`MEDIA_ID` = `re`.`MEDIA_ID` AND `re`.`RETURN_DATE` is null  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ACTOR_ID`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD KEY `INDEX_LN` (`LAST_NAME`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`MEDIA_ID`),
  ADD KEY `FK_TITLE` (`TITLE_ID`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`TITLE_ID`);

--
-- Indices de la tabla `rental_history`
--
ALTER TABLE `rental_history`
  ADD PRIMARY KEY (`MEDIA_ID`,`RENTAL_DATE`),
  ADD KEY `FK_CUSTOMER` (`CUSTOMER_ID`);

--
-- Indices de la tabla `star_billings`
--
ALTER TABLE `star_billings`
  ADD PRIMARY KEY (`ACTOR_ID`,`TITLE_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `ACTOR_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `CUSTOMER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `MEDIA_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `TITLE_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_TITLE` FOREIGN KEY (`TITLE_ID`) REFERENCES `movies` (`TITLE_ID`);

--
-- Filtros para la tabla `rental_history`
--
ALTER TABLE `rental_history`
  ADD CONSTRAINT `FK_CUSTOMER` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
