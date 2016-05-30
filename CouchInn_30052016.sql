-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-05-2016 a las 19:19:03
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `CouchInn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospedaje`
--

CREATE TABLE IF NOT EXISTS `hospedaje` (
  `idHospedaje` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `idUsuarioPublic` int(11) NOT NULL,
  `idPropiedad` int(11) NOT NULL,
  PRIMARY KEY (`idHospedaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesHospedaje`
--

CREATE TABLE IF NOT EXISTS `imagenesHospedaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idHospedaje` int(11) NOT NULL,
  `pathFoto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_26_022052_create_TiposDeHospedaje_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('capablan@gmail.com', '4abd197fca599a85aa87ff56df29c2388a74ba4b81ad321de5e73166cb917a77', '2016-05-28 07:03:35'),
('juanma.pappalardo@gmail.com', '193d71b1141d61a6bf3194d3b1f7f7a2e0b674518e48338b7cb5ec7691867b1f', '2016-05-30 06:44:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TiposDeHospedaje`
--

CREATE TABLE IF NOT EXISTS `TiposDeHospedaje` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `TiposDeHospedaje`
--

INSERT INTO `TiposDeHospedaje` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Casa Grande', '2016-05-28 05:33:14', '2016-05-30 07:22:51'),
(2, 'Casa', '2016-05-28 15:12:59', '2016-05-28 15:12:59'),
(3, 'Hotel', '2016-05-28 15:13:07', '2016-05-28 15:13:07'),
(5, 'Piso Completo', '2016-05-28 15:13:45', '2016-05-28 15:13:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `premium` tinyint(1) NOT NULL,
  `fechaDeRegistro` datetime NOT NULL,
  `email2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `apellido`, `fechaNacimiento`, `email`, `password`, `premium`, `fechaDeRegistro`, `email2`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Pappalardo', '0000-00-00', 'juanma.pappalardo@gmail.com', '$2y$10$31esOKGSFiFbK0WqzX0p3ept5vb35V9cxh1UlT.HNB6hcU5EyU.oe', 0, '0000-00-00 00:00:00', 'email2', 'dJoxRqjyPgY6lsmtln4eiVQgOo2sIX8hQF3ctJ0duhhXtmke3IxlC9OCO7SN', '2016-05-28 06:38:07', '2016-05-30 07:36:49'),
(2, 'pepe', '', '0000-00-00', 'pepe@gmail.com', '$2y$10$WPm1OeSJAdJAoSmTzBYveuAMi0VaVSirGjc7Tql.BbtIXAkLnH/sa', 0, '0000-00-00 00:00:00', '', 'rPvpdPmjdqcgY678NxvPPsnntQESqC3haA85vsgB9EdKt5OIeCfbgyqIJyhI', '2016-05-28 07:02:27', '2016-05-28 07:02:33'),
(3, 'pepe2', '', '0000-00-00', 'capablan@gmail.com', '$2y$10$t8n2aPf7xAKiHZlhTNcCfeBTvlNmUe6MslCCoK2ZxupFzTmA6y9ky', 0, '0000-00-00 00:00:00', '', 'ZomHKXEgAXRLye7Muo1Fp5uZeZCGzcf3TyrTG6QamaPRaXS2sXmD8ZbOcPri', '2016-05-28 07:03:08', '2016-05-28 07:03:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
