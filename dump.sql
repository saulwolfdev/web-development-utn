-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2020 a las 01:51:32
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `falta` datetime NOT NULL COMMENT 'Fecha',
  `fmodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'F. Modificacion',
  `habilitado` tinyint(1) UNSIGNED DEFAULT '1' COMMENT 'Habilitado',
  `feliminado` datetime DEFAULT NULL COMMENT 'F. Elimimado',
  `importe_total` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `falta`, `fmodificacion`, `habilitado`, `feliminado`, `importe_total`) VALUES
(2, '2016-09-13 01:25:42', '2016-09-13 04:25:42', 1, NULL, '150.00'),
(3, '2016-09-13 01:34:53', '2016-09-13 04:34:53', 1, NULL, '150.00'),
(4, '2016-09-13 01:35:26', '2016-09-13 04:35:26', 1, NULL, '200.00'),
(5, '2016-09-13 01:37:08', '2016-09-13 04:37:08', 1, NULL, '70.00'),
(6, '2016-09-13 01:37:32', '2016-09-13 04:37:32', 1, NULL, '50.00'),
(7, '0000-00-00 00:00:00', '2018-04-08 13:55:50', 1, NULL, '80.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_productos`
--

CREATE TABLE `compras_productos` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `falta` datetime NOT NULL COMMENT 'Fecha',
  `fmodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'F. Modificacion',
  `habilitado` tinyint(1) UNSIGNED DEFAULT '1' COMMENT 'Habilitado',
  `feliminado` datetime DEFAULT NULL COMMENT 'F. Elimimado',
  `productos_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `compras_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `precio` decimal(8,2) NOT NULL DEFAULT '0.00',
  `denominacion` varchar(125) NOT NULL DEFAULT '',
  `codigo` varchar(30) DEFAULT NULL,
  `precio_oferta` decimal(8,2) DEFAULT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `compras_productos`
--

INSERT INTO `compras_productos` (`id`, `falta`, `fmodificacion`, `habilitado`, `feliminado`, `productos_id`, `compras_id`, `precio`, `denominacion`, `codigo`, `precio_oferta`, `cantidad`) VALUES
(1, '2016-09-13 01:25:42', '2016-09-13 04:25:42', 1, NULL, 1, 2, '100.00', '', NULL, NULL, 1),
(2, '2016-09-13 01:25:42', '2016-09-13 04:25:42', 1, NULL, 2, 2, '50.00', '', NULL, NULL, 1),
(3, '2016-09-13 01:34:53', '2016-09-13 04:34:53', 1, NULL, 3, 3, '70.00', '', NULL, NULL, 1),
(4, '2016-09-13 01:34:53', '2016-09-13 04:34:53', 1, NULL, 4, 3, '80.00', '', NULL, NULL, 1),
(5, '2016-09-13 01:35:26', '2016-09-13 04:35:26', 1, NULL, 4, 4, '80.00', '', NULL, NULL, 1),
(6, '2016-09-13 01:35:26', '2016-09-13 04:35:26', 1, NULL, 3, 4, '70.00', '', NULL, NULL, 1),
(7, '2016-09-13 01:35:26', '2016-09-13 04:35:26', 1, NULL, 2, 4, '50.00', '', NULL, NULL, 1),
(8, '2016-09-13 01:37:08', '2016-09-13 04:37:08', 1, NULL, 3, 5, '70.00', '', NULL, NULL, 1),
(9, '2016-09-13 01:37:32', '2016-09-13 04:37:32', 1, NULL, 2, 6, '50.00', '', NULL, NULL, 1),
(10, '0000-00-00 00:00:00', '2018-04-08 13:55:51', 1, NULL, 4, 7, '80.00', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `falta` datetime NOT NULL COMMENT 'Fecha',
  `fmodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'F. Modificacion',
  `habilitado` tinyint(1) UNSIGNED DEFAULT '1' COMMENT 'Habilitado',
  `feliminado` datetime DEFAULT NULL COMMENT 'F. Elimimado',
  `denominacion` varchar(125) NOT NULL COMMENT 'Denominación, Título o nombre',
  `descripcion` varchar(255) DEFAULT NULL COMMENT 'Descripcion',
  `activa` tinyint(1) UNSIGNED DEFAULT NULL COMMENT 'Activa',
  `codigo` varchar(30) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `publicaciones_estados_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oferta` tinyint(1) UNSIGNED DEFAULT NULL,
  `precio_oferta` decimal(8,2) DEFAULT NULL,
  `fecha_finalizacion_oferta` datetime DEFAULT NULL,
  `destacado` tinyint(1) UNSIGNED DEFAULT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `falta`, `fmodificacion`, `habilitado`, `feliminado`, `denominacion`, `descripcion`, `activa`, `codigo`, `precio`, `publicaciones_estados_id`, `oferta`, `precio_oferta`, `fecha_finalizacion_oferta`, `destacado`, `categoria_id`) VALUES
(1, '2016-09-11 23:43:39', '2016-09-12 02:43:39', 1, NULL, 'Sunflower Oil(5 kg)', 'Sunflower Oil(5 kg)', 1, 'SKU0001', '100.00', 0, NULL, '90.00', NULL, NULL, 1),
(2, '2016-09-11 23:43:39', '2016-09-12 02:44:41', 1, NULL, 'Moong(1 kg)', 'Moong(1 kg)', 1, 'SKU0002', '50.00', 0, NULL, '40.00', NULL, NULL, 2),
(3, '2016-09-11 23:43:39', '2016-09-12 02:45:26', 1, NULL, 'Kabuli Chana(1 kg)', 'Kabuli Chana(1 kg)', 1, 'SKU0003', '70.00', 0, NULL, '65.00', NULL, NULL, 1),
(4, '2016-09-11 23:43:39', '2016-09-12 02:46:13', 1, NULL, 'Soya Chunks(1 kg)', 'Soya Chunks(1 kg)', 1, 'SKU0004', '80.00', 0, NULL, '75.00', NULL, NULL, 4),
(5, '2016-09-11 23:43:39', '2016-09-12 02:45:26', 1, NULL, 'Kabuli Chana(1 kg)', 'Kabuli Chana(1 kg)', 1, 'SKU0003', '70.00', 0, NULL, '65.00', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `falta` datetime NOT NULL COMMENT 'F.Alta',
  `fmodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'F.Modif',
  `feliminado` datetime DEFAULT NULL COMMENT 'F.Eliminado',
  `habilitado` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Habilitado',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `clave` varchar(64) NOT NULL DEFAULT '' COMMENT 'Clave',
  `nombre` varchar(50) NOT NULL DEFAULT '' COMMENT 'Nombre',
  `apellido` varchar(50) NOT NULL DEFAULT '' COMMENT 'Apellido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `falta`, `fmodificacion`, `feliminado`, `habilitado`, `email`, `clave`, `nombre`, `apellido`) VALUES
(1, '2016-09-13 00:00:00', '2016-09-14 03:22:45', NULL, 1, 'usuario@utn.com.ar', 'e10adc3949ba59abbe56e057f20f883e', 'UTN', 'UTN '),
(2, '0000-00-00 00:00:00', '2019-09-09 23:51:13', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'Lea', 'Gil'),
(3, '0000-00-00 00:00:00', '2019-09-09 23:52:46', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'Lea', 'Gil'),
(4, '0000-00-00 00:00:00', '2019-10-04 00:43:28', NULL, 1, 'prueba@dasdas.com', '123456789', 'Lea', 'dasdasdsa'),
(5, '0000-00-00 00:00:00', '2019-10-04 00:45:26', NULL, 1, 'nferro2010@hotmail.com', '123456789dsad', 'dsa', 'dasdas'),
(6, '0000-00-00 00:00:00', '2019-10-04 00:46:31', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'treterter', 'rewrewrwe'),
(7, '0000-00-00 00:00:00', '2019-10-04 00:46:46', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'treterter', 'rewrewrwe'),
(8, '0000-00-00 00:00:00', '2019-10-04 00:47:13', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'treterter', 'rewrewrwe'),
(9, '0000-00-00 00:00:00', '2019-10-04 00:47:30', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'treterter', 'rewrewrwe'),
(10, '0000-00-00 00:00:00', '2019-10-04 00:47:40', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'eqweqwe', 'eqweqweqweqw'),
(11, '0000-00-00 00:00:00', '2019-10-04 00:51:17', NULL, 1, 'nferro2010@hotmail.com', '123456789', 'ewqew', 'eqweqwe'),
(12, '0000-00-00 00:00:00', '2019-12-29 15:21:03', NULL, 1, 'dasdasd@dasdas.com', '123', 'dsad', 'asdasdas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
