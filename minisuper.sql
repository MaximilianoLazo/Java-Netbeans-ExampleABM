-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-02-2021 a las 20:06:27
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `minisuper`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`) VALUES
(1, 'Teclado'),
(2, 'Mouse'),
(3, 'Gabinete'),
(4, 'Monitor'),
(5, 'Auriculares'),
(6, 'Memorias RAM'),
(7, 'Disco'),
(8, 'Impresora'),
(9, 'Cable'),
(10, 'Placa de video'),
(11, 'Mother'),
(12, 'Fuente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `categoria` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `categoria`, `descripcion`, `precio`, `cantidad`) VALUES
(5, 'Disco', 'SDD Kignston 240gb', 3500.96, 50),
(58, 'Fuente', 'Generica 500W reales', 3500, 20),
(65, 'Gabinete', 'Razer V5', 6750, 30),
(87, 'Auriculares', 'asa2', 1222, 1),
(91, 'Impresora', 'Asus 263', 2300, 35),
(92, 'Impresora', 'Brother 1150', 15000, 5),
(2931, 'Gabinete', 'Sentey 350', 5500.95, 25),
(3924, 'Mouse', 'Logitech c320', 2500, 40),
(4134, 'Teclado', 'Genius mecanico', 2500, 10),
(4198, 'Fuente', 'Sentey 800w reales RGB', 6500, 10),
(4520, 'Memorias RAM', 'Hyperx x8gb 2666hz', 5999, 10),
(6945, 'Impresora', 'HP 1500', 6399, 10),
(7964, 'Auriculares', 'Logitech 8.1 sonido', 3600, 5),
(8001, 'Teclado', 'Steel series v2', 8000, 1),
(8132, 'Disco', 'SDD kignston 480GB', 2700, 10),
(8974, 'Mother', 'Asus 4GF', 350, 25);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
