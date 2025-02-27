-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2025 a las 09:29:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laliga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `equipo_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `estadio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`equipo_id`, `nombre`, `ciudad`, `estadio`) VALUES
(1, 'Real Madrid', 'Madrid', 'Santiago Bernabeu'),
(2, 'FC Barcelona', 'Barcelona', 'Estadi Olimpic Lluis Companys'),
(3, 'Atletico de Madrid', 'Madrid', 'Civitas Metropolitano'),
(4, 'Sevilla FC', 'Sevilla', 'Ramon Sanchez-Pizjuan'),
(5, 'Real Betis', 'Sevilla', 'Benito Villamarin'),
(6, 'Real Sociedad', 'San Sebastian', 'Reale Arena'),
(7, 'Villarreal CF', 'Villarreal', 'Estadio de la Ceramica'),
(8, 'Athletic Club', 'Bilbao', 'San Mames'),
(9, 'Valencia CF', 'Valencia', 'Mestalla'),
(10, 'CA Osasuna', 'Pamplona', 'El Sadar'),
(11, 'RCD Mallorca', 'Palma', 'Mallorca Son Moix'),
(12, 'Rayo Vallecano', 'Madrid', 'Vallecas'),
(13, 'Getafe CF', 'Getafe', 'Coliseum'),
(14, 'Cadiz CF', 'Cadiz', 'Nuevo Mirandilla'),
(15, 'RC Celta de Vigo', 'Vigo', 'ABANCA Balaidos'),
(16, 'UD Almeria', 'Almeria', 'Power Horse Stadium'),
(17, 'Granada CF', 'Granada', 'Nuevo Los Carmenes'),
(18, 'Real Valladolid CF', 'Valladolid', 'Jose Zorrilla'),
(19, 'UD Las Palmas', 'Las Palmas', 'Gran Canaria'),
(20, 'Girona FC', 'Girona', 'Montilivi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `estadistica_id` int(11) NOT NULL,
  `jugador_id` int(11) DEFAULT NULL,
  `goles` int(11) DEFAULT NULL,
  `asistencias` int(11) DEFAULT NULL,
  `tarjetas_amarillas` int(11) DEFAULT NULL,
  `tarjetas_rojas` int(11) DEFAULT NULL,
  `partidos_jugados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`estadistica_id`, `jugador_id`, `goles`, `asistencias`, `tarjetas_amarillas`, `tarjetas_rojas`, `partidos_jugados`) VALUES
(1, 1, 0, 0, 1, 0, 30),
(2, 2, 0, 3, 5, 0, 32),
(3, 3, 4, 1, 2, 0, 33),
(4, 4, 2, 2, 3, 0, 31),
(5, 5, 1, 1, 4, 0, 28),
(6, 6, 5, 7, 3, 0, 30),
(7, 7, 3, 10, 2, 0, 29),
(8, 8, 12, 8, 4, 0, 30),
(9, 9, 18, 5, 3, 0, 31),
(10, 10, 16, 7, 2, 0, 30),
(11, 11, 22, 3, 1, 0, 32),
(12, 12, 0, 0, 0, 0, 35),
(13, 13, 0, 4, 7, 0, 34),
(14, 14, 1, 2, 3, 0, 33),
(15, 15, 0, 2, 5, 0, 31),
(16, 16, 2, 4, 2, 0, 32),
(17, 17, 6, 10, 2, 0, 34),
(18, 18, 4, 9, 3, 0, 35),
(19, 19, 8, 7, 1, 0, 33),
(20, 20, 10, 6, 2, 0, 30),
(21, 21, 21, 4, 2, 0, 32),
(22, 22, 4, 5, 0, 0, 25),
(23, 23, 0, 0, 0, 0, 34),
(24, 24, 3, 5, 6, 0, 33),
(25, 25, 2, 3, 4, 0, 32),
(26, 26, 1, 1, 5, 0, 31),
(27, 27, 0, 1, 3, 0, 28),
(28, 28, 2, 6, 4, 0, 30),
(29, 29, 7, 5, 2, 0, 32),
(30, 30, 3, 8, 4, 0, 31),
(31, 31, 19, 9, 3, 0, 34),
(32, 32, 12, 4, 2, 0, 30),
(33, 33, 15, 5, 1, 0, 33),
(34, 34, 0, 0, 1, 0, 33),
(35, 35, 2, 4, 7, 0, 32),
(36, 36, 1, 3, 5, 0, 31),
(37, 37, 3, 0, 4, 0, 30),
(38, 38, 0, 1, 3, 0, 29),
(39, 39, 7, 7, 3, 0, 30),
(40, 40, 3, 8, 2, 0, 31),
(41, 41, 2, 5, 3, 0, 32),
(42, 42, 8, 6, 2, 0, 33),
(43, 43, 14, 2, 2, 0, 34),
(44, 44, 6, 4, 2, 0, 31),
(45, 45, 0, 0, 0, 0, 29),
(46, 46, 1, 4, 5, 0, 33),
(47, 47, 2, 3, 6, 0, 32),
(48, 48, 1, 1, 4, 0, 30),
(49, 49, 0, 5, 3, 0, 28),
(50, 50, 3, 6, 5, 0, 33),
(51, 51, 4, 7, 3, 0, 31),
(52, 52, 5, 10, 4, 0, 30),
(53, 53, 6, 4, 2, 0, 31),
(54, 54, 15, 3, 2, 0, 33),
(55, 55, 8, 3, 3, 0, 30),
(56, 56, 0, 0, 0, 0, 34),
(57, 57, 0, 2, 4, 0, 33),
(58, 58, 1, 1, 5, 0, 31),
(59, 59, 0, 1, 3, 0, 30),
(60, 60, 1, 3, 4, 0, 32),
(61, 61, 6, 7, 3, 0, 34),
(62, 62, 3, 8, 2, 0, 31),
(63, 63, 4, 6, 1, 0, 29),
(64, 64, 12, 5, 2, 0, 33),
(65, 65, 10, 4, 3, 0, 32),
(66, 66, 6, 3, 2, 0, 30),
(67, 67, 0, 0, 1, 0, 32),
(68, 68, 2, 5, 4, 0, 33),
(69, 69, 1, 3, 6, 0, 30),
(70, 70, 0, 1, 3, 0, 28),
(71, 71, 1, 2, 4, 0, 31),
(72, 72, 3, 10, 3, 0, 34),
(73, 73, 4, 6, 3, 0, 32),
(74, 74, 2, 8, 2, 0, 31),
(75, 75, 15, 5, 3, 0, 33),
(76, 76, 10, 4, 2, 0, 30),
(77, 77, 6, 7, 2, 0, 31),
(78, 78, 0, 0, 0, 0, 34),
(79, 79, 1, 3, 6, 0, 33),
(80, 80, 2, 2, 5, 0, 32),
(81, 81, 0, 2, 3, 0, 31),
(82, 82, 0, 1, 4, 0, 30),
(83, 83, 2, 6, 3, 0, 33),
(84, 84, 5, 5, 2, 0, 32),
(85, 85, 4, 4, 1, 0, 30),
(86, 86, 8, 7, 2, 0, 31),
(87, 87, 12, 4, 2, 0, 33),
(88, 88, 7, 2, 1, 0, 29),
(89, 89, 0, 0, 0, 0, 33),
(90, 90, 1, 3, 5, 0, 32),
(91, 91, 1, 2, 6, 0, 31),
(92, 92, 0, 1, 3, 0, 29),
(93, 93, 0, 2, 4, 0, 30),
(94, 94, 3, 7, 2, 0, 34),
(95, 95, 2, 5, 3, 0, 33),
(96, 96, 5, 8, 4, 0, 32),
(97, 97, 6, 4, 2, 0, 30),
(98, 98, 10, 3, 1, 0, 31),
(99, 99, 8, 5, 2, 0, 30),
(100, 100, 0, 0, 0, 0, 34),
(101, 101, 0, 2, 5, 0, 33),
(102, 102, 2, 1, 4, 0, 31),
(103, 103, 1, 1, 3, 0, 30),
(104, 104, 0, 1, 4, 0, 29),
(105, 105, 3, 6, 2, 0, 34),
(106, 106, 4, 5, 3, 0, 33),
(107, 107, 2, 4, 2, 0, 31),
(108, 108, 10, 2, 2, 0, 32),
(109, 109, 8, 1, 1, 0, 30),
(110, 110, 5, 3, 2, 0, 31),
(111, 111, 0, 0, 1, 0, 34),
(112, 112, 1, 3, 6, 0, 33),
(113, 113, 2, 2, 5, 0, 31),
(114, 114, 1, 1, 4, 0, 30),
(115, 115, 0, 2, 3, 0, 29),
(116, 116, 3, 6, 2, 0, 34),
(117, 117, 2, 5, 3, 0, 33),
(118, 118, 5, 7, 1, 0, 32),
(119, 119, 15, 3, 2, 0, 34),
(120, 120, 6, 4, 2, 0, 31),
(121, 121, 8, 3, 1, 0, 30),
(122, 122, 0, 0, 1, 0, 34),
(123, 123, 1, 3, 5, 0, 33),
(124, 124, 2, 2, 6, 0, 31),
(125, 125, 0, 1, 3, 0, 30),
(126, 126, 2, 4, 4, 0, 33),
(127, 127, 3, 6, 3, 0, 34),
(128, 128, 6, 5, 2, 0, 32),
(129, 129, 8, 7, 2, 0, 31),
(130, 130, 5, 3, 2, 0, 30),
(131, 131, 10, 4, 1, 0, 34),
(132, 132, 0, 0, 1, 0, 34),
(133, 133, 1, 2, 5, 0, 33),
(134, 134, 0, 1, 6, 0, 30),
(135, 135, 1, 1, 3, 0, 29),
(136, 136, 0, 2, 4, 0, 30),
(137, 137, 3, 5, 3, 0, 33),
(138, 138, 4, 6, 2, 0, 32),
(139, 139, 5, 8, 2, 0, 31),
(140, 140, 10, 2, 1, 0, 34),
(141, 141, 15, 4, 2, 0, 33),
(142, 142, 0, 0, 0, 0, 34),
(143, 143, 1, 2, 5, 0, 33),
(144, 144, 2, 1, 6, 0, 31),
(145, 145, 0, 1, 4, 0, 30),
(146, 146, 0, 3, 3, 0, 33),
(147, 147, 3, 5, 3, 0, 32),
(148, 148, 2, 4, 2, 0, 31),
(149, 149, 4, 2, 2, 0, 30),
(150, 150, 7, 1, 1, 0, 34),
(151, 151, 0, 0, 0, 0, 34),
(152, 152, 0, 2, 5, 0, 33),
(153, 153, 2, 1, 4, 0, 31),
(154, 154, 1, 1, 3, 0, 30),
(155, 155, 0, 3, 3, 0, 33),
(156, 156, 1, 5, 2, 0, 32),
(157, 157, 3, 7, 1, 0, 34),
(158, 158, 5, 8, 2, 0, 33),
(159, 159, 14, 5, 1, 0, 34),
(160, 160, 6, 4, 2, 0, 31),
(161, 161, 8, 3, 2, 0, 30),
(162, 162, 0, 0, 0, 0, 34),
(163, 163, 1, 3, 5, 0, 33),
(164, 164, 2, 1, 6, 0, 31),
(165, 165, 0, 1, 3, 0, 30),
(166, 166, 0, 2, 4, 0, 30),
(167, 167, 2, 4, 3, 0, 33),
(168, 168, 3, 5, 3, 0, 32),
(169, 169, 5, 6, 2, 0, 31),
(170, 170, 12, 3, 2, 0, 34),
(171, 171, 8, 4, 1, 0, 33),
(172, 172, 6, 2, 1, 0, 31),
(173, 173, 0, 0, 0, 0, 34),
(174, 174, 1, 2, 5, 0, 33),
(175, 175, 2, 1, 4, 0, 31),
(176, 176, 0, 1, 3, 0, 30),
(177, 177, 0, 2, 4, 0, 30),
(178, 178, 3, 5, 3, 0, 33),
(179, 179, 2, 4, 2, 0, 31),
(180, 180, 5, 6, 1, 0, 34),
(181, 181, 10, 3, 2, 0, 34),
(182, 182, 8, 2, 1, 0, 33),
(183, 183, 6, 3, 2, 0, 31),
(184, 184, 0, 0, 0, 0, 34),
(185, 185, 1, 2, 5, 0, 33),
(186, 186, 2, 1, 4, 0, 31),
(187, 187, 0, 1, 3, 0, 30),
(188, 188, 0, 2, 4, 0, 30),
(189, 189, 2, 4, 3, 0, 33),
(190, 190, 3, 5, 3, 0, 32),
(191, 191, 4, 6, 2, 0, 31),
(192, 192, 10, 2, 1, 0, 34),
(193, 193, 8, 4, 1, 0, 33),
(194, 194, 6, 2, 1, 0, 31),
(195, 195, 0, 0, 0, 0, 34),
(196, 196, 1, 2, 5, 0, 33),
(197, 197, 2, 1, 4, 0, 31),
(198, 198, 0, 1, 3, 0, 30),
(199, 199, 0, 2, 4, 0, 30),
(200, 200, 3, 5, 3, 0, 33),
(201, 201, 2, 4, 2, 0, 31),
(202, 202, 4, 6, 1, 0, 34),
(203, 203, 8, 2, 2, 0, 34),
(204, 204, 6, 4, 1, 0, 33),
(205, 205, 5, 3, 2, 0, 31),
(206, 206, 0, 0, 0, 0, 34),
(207, 207, 1, 3, 5, 0, 33),
(208, 208, 2, 1, 4, 0, 31),
(209, 209, 0, 1, 3, 0, 30),
(210, 210, 0, 2, 4, 0, 30),
(211, 211, 2, 5, 3, 0, 33),
(212, 212, 3, 6, 2, 0, 32),
(213, 213, 4, 7, 1, 0, 34),
(214, 214, 12, 3, 2, 0, 34),
(215, 215, 8, 4, 1, 0, 33),
(216, 216, 6, 2, 1, 0, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `jugador_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `posicion` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `equipo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`jugador_id`, `nombre`, `posicion`, `edad`, `equipo_id`) VALUES
(1, 'Thibaut Courtois', 'Portero', 31, 1),
(2, 'Dani Carvajal', 'Defensa', 32, 1),
(3, 'Eder Militao', 'Defensa', 26, 1),
(4, 'David Alaba', 'Defensa', 32, 1),
(5, 'Ferland Mendy', 'Defensa', 30, 1),
(6, 'Luka Modric', 'Centrocampista', 38, 1),
(7, 'Toni Kroos', 'Centrocampista', 35, 1),
(8, 'Jude Bellingham', 'Centrocampista', 22, 1),
(9, 'Vinicius Junior', 'Delantero', 24, 1),
(10, 'Rodrygo Goes', 'Delantero', 24, 1),
(11, 'Kylian Mbappe', 'Delantero', 26, 1),
(12, 'Marc-Andre ter Stegen', 'Portero', 32, 2),
(13, 'Jules Kounde', 'Defensa', 26, 2),
(14, 'Ronald Araujo', 'Defensa', 25, 2),
(15, 'Andreas Christensen', 'Defensa', 28, 2),
(16, 'Alejandro Balde', 'Defensa', 21, 2),
(17, 'Frenkie de Jong', 'Centrocampista', 27, 2),
(18, 'Gavi', 'Centrocampista', 20, 2),
(19, 'Pedri', 'Centrocampista', 22, 2),
(20, 'Raphinha', 'Delantero', 28, 2),
(21, 'Robert Lewandowski', 'Delantero', 36, 2),
(22, 'Lamine Yamal', 'Delantero', 17, 2),
(23, 'Jan Oblak', 'Portero', 32, 3),
(24, 'Nahuel Molina', 'Defensa', 27, 3),
(25, 'Jose Maria Gimenez', 'Defensa', 30, 3),
(26, 'Mario Hermoso', 'Defensa', 29, 3),
(27, 'Reinildo Mandava', 'Defensa', 31, 3),
(28, 'Koke Resurreccion', 'Centrocampista', 33, 3),
(29, 'Marcos Llorente', 'Centrocampista', 29, 3),
(30, 'Rodrigo de Paul', 'Centrocampista', 30, 3),
(31, 'Antoine Griezmann', 'Delantero', 34, 3),
(32, 'Angel Correa', 'Delantero', 30, 3),
(33, 'Julian Alvarez', 'Delantero', 25, 3),
(34, 'Yassine Bounou', 'Portero', 34, 4),
(35, 'Jesus Navas', 'Defensa', 39, 4),
(36, 'Marcos Acuna', 'Defensa', 33, 4),
(37, 'Loic Bade', 'Defensa', 25, 4),
(38, 'Nemanja Gudelj', 'Defensa', 33, 4),
(39, 'Ivan Rakitic', 'Centrocampista', 37, 4),
(40, 'Joan Jordan', 'Centrocampista', 30, 4),
(41, 'Oliver Torres', 'Centrocampista', 30, 4),
(42, 'Lucas Ocampos', 'Delantero', 30, 4),
(43, 'Youssef En-Nesyri', 'Delantero', 28, 4),
(44, 'Erik Lamela', 'Delantero', 33, 4),
(45, 'Claudio Bravo', 'Portero', 42, 5),
(46, 'Youssouf Sabaly', 'Defensa', 32, 5),
(47, 'German Pezzella', 'Defensa', 34, 5),
(48, 'Luiz Felipe', 'Defensa', 28, 5),
(49, 'Juan Miranda', 'Defensa', 25, 5),
(50, 'Guido Rodriguez', 'Centrocampista', 30, 5),
(51, 'William Carvalho', 'Centrocampista', 32, 5),
(52, 'Sergio Canales', 'Centrocampista', 34, 5),
(53, 'Ayoze Perez', 'Delantero', 32, 5),
(54, 'Borja Iglesias', 'Delantero', 32, 5),
(55, 'Juanmi Jimenez', 'Delantero', 32, 5),
(56, 'Alex Remiro', 'Portero', 30, 6),
(57, 'Andoni Gorosabel', 'Defensa', 28, 6),
(58, 'Robin Le Normand', 'Defensa', 28, 6),
(59, 'Igor Zubeldia', 'Defensa', 27, 6),
(60, 'Aihen Munoz', 'Defensa', 27, 6),
(61, 'Mikel Merino', 'Centrocampista', 28, 6),
(62, 'Martin Zubimendi', 'Centrocampista', 26, 6),
(63, 'David Silva', 'Centrocampista', 39, 6),
(64, 'Takefusa Kubo', 'Delantero', 23, 6),
(65, 'Mikel Oyarzabal', 'Delantero', 27, 6),
(66, 'Ander Barrenetxea', 'Delantero', 23, 6),
(67, 'Pepe Reina', 'Portero', 42, 7),
(68, 'Juan Foyth', 'Defensa', 27, 7),
(69, 'Pau Torres', 'Defensa', 28, 7),
(70, 'Raul Albiol', 'Defensa', 39, 7),
(71, 'Alfonso Pedraza', 'Defensa', 29, 7),
(72, 'Dani Parejo', 'Centrocampista', 36, 7),
(73, 'Etienne Capoue', 'Centrocampista', 37, 7),
(74, 'Manu Trigueros', 'Centrocampista', 33, 7),
(75, 'Gerard Moreno', 'Delantero', 33, 7),
(76, 'Nicolas Jackson', 'Delantero', 24, 7),
(77, 'Yeremy Pino', 'Delantero', 22, 7),
(78, 'Unai Simon', 'Portero', 27, 8),
(79, 'Oscar de Marcos', 'Defensa', 34, 8),
(80, 'Yeray Alvarez', 'Defensa', 29, 8),
(81, 'Inigo Martinez', 'Defensa', 32, 8),
(82, 'Mikel Balenziaga', 'Defensa', 35, 8),
(83, 'Dani Garcia', 'Centrocampista', 34, 8),
(84, 'Oihan Sancet', 'Centrocampista', 24, 8),
(85, 'Iker Muniain', 'Centrocampista', 32, 8),
(86, 'Nico Williams', 'Delantero', 22, 8),
(87, 'Inaki Williams', 'Delantero', 29, 8),
(88, 'Raul Garcia', 'Delantero', 37, 8),
(89, 'Giorgi Mamardashvili', 'Portero', 23, 9),
(90, 'Jose Gaya', 'Defensa', 28, 9),
(91, 'Gabriel Paulista', 'Defensa', 33, 9),
(92, 'Cenk Ozkacar', 'Defensa', 23, 9),
(93, 'Thierry Correia', 'Defensa', 24, 9),
(94, 'Hugo Guillamon', 'Centrocampista', 24, 9),
(95, 'Andre Almeida', 'Centrocampista', 23, 9),
(96, 'Carlos Soler', 'Centrocampista', 27, 9),
(97, 'Justin Kluivert', 'Delantero', 25, 9),
(98, 'Edinson Cavani', 'Delantero', 36, 9),
(99, 'Samuel Lino', 'Delantero', 24, 9),
(100, 'Sergio Herrera', 'Portero', 31, 10),
(101, 'Nacho Vidal', 'Defensa', 29, 10),
(102, 'David Garcia', 'Defensa', 29, 10),
(103, 'Juan Cruz', 'Defensa', 31, 10),
(104, 'Manu Sanchez', 'Defensa', 24, 10),
(105, 'Lucas Torro', 'Centrocampista', 29, 10),
(106, 'Moi Gomez', 'Centrocampista', 29, 10),
(107, 'Aimar Oroz', 'Centrocampista', 22, 10),
(108, 'Chimy Avila', 'Delantero', 30, 10),
(109, 'Ante Budimir', 'Delantero', 32, 10),
(110, 'Ruben Garcia', 'Delantero', 30, 10),
(111, 'Predrag Rajkovic', 'Portero', 28, 11),
(112, 'Pablo Maffeo', 'Defensa', 27, 11),
(113, 'Antonio Raillo', 'Defensa', 31, 11),
(114, 'Martin Valjent', 'Defensa', 28, 11),
(115, 'Jaume Costa', 'Defensa', 35, 11),
(116, 'Inigo Ruiz de Galarreta', 'Centrocampista', 29, 11),
(117, 'Antonio Sanchez', 'Centrocampista', 26, 11),
(118, 'Lee Kang-in', 'Centrocampista', 22, 11),
(119, 'Vedat Muriqi', 'Delantero', 29, 11),
(120, 'Amath Ndiaye', 'Delantero', 28, 11),
(121, 'Abdon Prats', 'Delantero', 31, 11),
(122, 'Stole Dimitrievski', 'Portero', 30, 12),
(123, 'Ivan Balliu', 'Defensa', 32, 12),
(124, 'Alejandro Catena', 'Defensa', 28, 12),
(125, 'Fran Garcia', 'Defensa', 24, 12),
(126, 'Oscar Valentin', 'Centrocampista', 29, 12),
(127, 'Unai Lopez', 'Centrocampista', 28, 12),
(128, 'Alvaro Garcia', 'Centrocampista', 31, 12),
(129, 'Isi Palazon', 'Delantero', 29, 12),
(130, 'Radamel Falcao', 'Delantero', 37, 12),
(131, 'Sergio Camello', 'Delantero', 22, 12),
(132, 'David Soria', 'Portero', 30, 13),
(133, 'Djene Dakonam', 'Defensa', 32, 13),
(134, 'Omar Alderete', 'Defensa', 29, 13),
(135, 'Gaston Alvarez', 'Defensa', 23, 13),
(136, 'Juan Iglesias', 'Defensa', 24, 13),
(137, 'Mauro Arambarri', 'Centrocampista', 28, 13),
(138, 'Nemanja Maksimovic', 'Centrocampista', 30, 13),
(139, 'Carles Alena', 'Centrocampista', 26, 13),
(140, 'Borja Mayoral', 'Delantero', 26, 13),
(141, 'Enes Unal', 'Delantero', 27, 13),
(142, 'Conan Ledesma', 'Portero', 30, 14),
(143, 'Luis Hernandez', 'Defensa', 34, 14),
(144, 'Fali Jimenez', 'Defensa', 31, 14),
(145, 'Alfonso Espino', 'Defensa', 32, 14),
(146, 'Jose Mari', 'Centrocampista', 36, 14),
(147, 'Alex Fernandez', 'Centrocampista', 31, 14),
(148, 'Ivan Alejo', 'Centrocampista', 28, 14),
(149, 'Ruben Sobrino', 'Delantero', 31, 14),
(150, 'Chris Ramos', 'Delantero', 26, 14),
(151, 'Ivan Villar', 'Portero', 26, 15),
(152, 'Hugo Mallo', 'Defensa', 33, 15),
(153, 'Joseph Aidoo', 'Defensa', 28, 15),
(154, 'Unai Nunez', 'Defensa', 27, 15),
(155, 'Javi Galan', 'Defensa', 29, 15),
(156, 'Renato Tapia', 'Centrocampista', 28, 15),
(157, 'Fran Beltran', 'Centrocampista', 26, 15),
(158, 'Gabri Veiga', 'Centrocampista', 21, 15),
(159, 'Iago Aspas', 'Delantero', 36, 15),
(160, 'Carles Perez', 'Delantero', 25, 15),
(161, 'Jorgen Strand Larsen', 'Delantero', 24, 15),
(162, 'Fernando Martinez', 'Portero', 33, 16),
(163, 'Alejandro Pozo', 'Defensa', 24, 16),
(164, 'Rodrigo Ely', 'Defensa', 30, 16),
(165, 'Kaiky Fernandes', 'Defensa', 20, 16),
(166, 'Sergio Akieme', 'Defensa', 25, 16),
(167, 'Samu Costa', 'Centrocampista', 23, 16),
(168, 'Gonzalo Melero', 'Centrocampista', 30, 16),
(169, 'Lucas Robertone', 'Centrocampista', 27, 16),
(170, 'Largie Ramazani', 'Delantero', 23, 16),
(171, 'Luis Suarez', 'Delantero', 27, 16),
(172, 'Dyego Sousa', 'Delantero', 34, 16),
(173, 'Andre Ferreira', 'Portero', 27, 17),
(174, 'Quini', 'Defensa', 34, 17),
(175, 'Miguel Rubio', 'Defensa', 25, 17),
(176, 'Ignasi Miquel', 'Defensa', 31, 17),
(177, 'Carlos Neva', 'Defensa', 28, 17),
(178, 'Angel Montoro', 'Centrocampista', 35, 17),
(179, 'Sergio Ruiz', 'Centrocampista', 29, 17),
(180, 'Antonio Puertas', 'Centrocampista', 31, 17),
(181, 'Myrto Uzuni', 'Delantero', 28, 17),
(182, 'Lucas Boye', 'Delantero', 28, 17),
(183, 'Bryan Zaragoza', 'Delantero', 22, 17),
(184, 'Jordi Masip', 'Portero', 34, 18),
(185, 'Luis Perez', 'Defensa', 28, 18),
(186, 'Javi Sanchez', 'Defensa', 27, 18),
(187, 'Jawad El Yamiq', 'Defensa', 32, 18),
(188, 'Lucas Olaza', 'Defensa', 29, 18),
(189, 'Alvaro Aguado', 'Centrocampista', 27, 18),
(190, 'Monchu', 'Centrocampista', 25, 18),
(191, 'Kike Perez', 'Centrocampista', 26, 18),
(192, 'Shon Weissman', 'Delantero', 28, 18),
(193, 'Sergio Leon', 'Delantero', 34, 18),
(194, 'Ivan Fresneda', 'Delantero', 19, 18),
(195, 'Alvaro Valles', 'Portero', 26, 19),
(196, 'Alex Suarez', 'Defensa', 30, 19),
(197, 'Eric Curbelo', 'Defensa', 29, 19),
(198, 'Saul Coco', 'Defensa', 24, 19),
(199, 'Sergi Cardona', 'Defensa', 25, 19),
(200, 'Jonathan Viera', 'Centrocampista', 34, 19),
(201, 'Kirian Rodriguez', 'Centrocampista', 27, 19),
(202, 'Oscar Clemente', 'Centrocampista', 24, 19),
(203, 'Marc Cardona', 'Delantero', 28, 19),
(204, 'Sandro Ramirez', 'Delantero', 28, 19),
(205, 'Pejino', 'Delantero', 27, 19),
(206, 'Paulo Gazzaniga', 'Portero', 32, 20),
(207, 'Arnau Martinez', 'Defensa', 20, 20),
(208, 'David Lopez', 'Defensa', 34, 20),
(209, 'Juanpe', 'Defensa', 32, 20),
(210, 'Miguel Gutierrez', 'Defensa', 23, 20),
(211, 'Aleix Garcia', 'Centrocampista', 26, 20),
(212, 'Ivan Martin', 'Centrocampista', 24, 20),
(213, 'Viktor Tsygankov', 'Centrocampista', 26, 20),
(214, 'Cristhian Stuani', 'Delantero', 37, 20),
(215, 'Valery Fernandez', 'Delantero', 25, 20),
(216, 'Davila', 'Delantero', 23, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `partido_id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `equipo_local` int(11) DEFAULT NULL,
  `equipo_visitante` int(11) DEFAULT NULL,
  `goles_local` int(11) DEFAULT NULL,
  `goles_visitante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`partido_id`, `fecha`, `equipo_local`, `equipo_visitante`, `goles_local`, `goles_visitante`) VALUES
(1, '2023-08-11', 1, 2, 2, 1),
(2, '2023-08-12', 3, 4, 1, 1),
(3, '2023-08-13', 5, 6, 0, 2),
(4, '2023-08-14', 7, 8, 1, 3),
(5, '2023-08-15', 9, 10, 1, 1),
(6, '2023-08-16', 11, 12, 0, 0),
(7, '2023-08-17', 13, 14, 1, 0),
(8, '2023-08-18', 15, 16, 3, 1),
(9, '2023-08-19', 17, 18, 1, 2),
(10, '2023-08-20', 19, 20, 2, 2),
(11, '2023-08-25', 2, 3, 1, 0),
(12, '2023-08-26', 4, 5, 2, 1),
(13, '2023-08-27', 6, 7, 0, 2),
(14, '2023-08-28', 8, 9, 1, 1),
(15, '2023-08-29', 10, 11, 0, 0),
(16, '2023-08-30', 12, 13, 2, 0),
(17, '2023-08-31', 14, 15, 0, 3),
(18, '2023-09-01', 16, 17, 1, 2),
(19, '2023-09-02', 18, 19, 2, 2),
(20, '2023-09-03', 20, 1, 1, 3),
(21, '2023-09-08', 3, 4, 2, 1),
(22, '2023-09-09', 5, 6, 1, 1),
(23, '2023-09-10', 7, 8, 3, 0),
(24, '2023-09-11', 9, 10, 1, 2),
(25, '2023-09-12', 11, 12, 1, 1),
(26, '2023-09-13', 13, 14, 0, 0),
(27, '2023-09-14', 15, 16, 4, 2),
(28, '2023-09-15', 17, 18, 0, 3),
(29, '2023-09-16', 19, 20, 1, 1),
(30, '2023-09-17', 1, 2, 2, 2),
(31, '2023-09-22', 2, 5, 2, 1),
(32, '2023-09-23', 6, 3, 1, 1),
(33, '2023-09-24', 4, 7, 0, 2),
(34, '2023-09-25', 8, 10, 2, 1),
(35, '2023-09-26', 9, 11, 0, 0),
(36, '2023-09-27', 12, 13, 3, 1),
(37, '2023-09-28', 14, 1, 1, 2),
(38, '2023-09-29', 15, 20, 2, 3),
(39, '2023-09-30', 16, 19, 1, 1),
(40, '2023-10-01', 17, 18, 2, 2),
(41, '2023-10-06', 5, 6, 1, 2),
(42, '2023-10-07', 3, 2, 0, 1),
(43, '2023-10-08', 7, 9, 3, 0),
(44, '2023-10-09', 10, 4, 1, 1),
(45, '2023-10-10', 12, 11, 2, 2),
(46, '2023-10-11', 14, 13, 0, 0),
(47, '2023-10-12', 1, 15, 3, 1),
(48, '2023-10-13', 20, 16, 2, 1),
(49, '2023-10-14', 19, 17, 1, 2),
(50, '2023-10-15', 18, 8, 1, 3),
(51, '2023-10-20', 6, 2, 2, 2),
(52, '2023-10-21', 5, 4, 1, 0),
(53, '2023-10-22', 3, 7, 1, 3),
(54, '2023-10-23', 8, 10, 2, 2),
(55, '2023-10-24', 9, 12, 1, 0),
(56, '2023-10-25', 13, 1, 0, 4),
(57, '2023-10-26', 14, 15, 1, 3),
(58, '2023-10-27', 16, 18, 2, 2),
(59, '2023-10-28', 19, 20, 1, 2),
(60, '2023-10-29', 11, 17, 0, 1),
(61, '2023-11-03', 2, 4, 3, 1),
(62, '2023-11-04', 3, 6, 2, 2),
(63, '2023-11-05', 5, 7, 1, 1),
(64, '2023-11-06', 8, 9, 2, 0),
(65, '2023-11-07', 10, 11, 1, 1),
(66, '2023-11-08', 12, 13, 0, 0),
(67, '2023-11-09', 14, 1, 0, 3),
(68, '2023-11-10', 15, 16, 3, 2),
(69, '2023-11-11', 17, 18, 1, 1),
(70, '2023-11-12', 20, 19, 2, 2),
(71, '2023-11-17', 6, 2, 1, 3),
(72, '2023-11-18', 4, 3, 0, 2),
(73, '2023-11-19', 7, 5, 2, 2),
(74, '2023-11-20', 9, 8, 1, 1),
(75, '2023-11-21', 11, 10, 0, 1),
(76, '2023-11-22', 13, 12, 1, 0),
(77, '2023-11-23', 1, 14, 4, 0),
(78, '2023-11-24', 16, 15, 2, 3),
(79, '2023-11-25', 18, 17, 1, 0),
(80, '2023-11-26', 19, 20, 2, 1),
(81, '2023-12-01', 2, 7, 2, 1),
(82, '2023-12-02', 3, 5, 1, 1),
(83, '2023-12-03', 6, 4, 2, 0),
(84, '2023-12-04', 8, 10, 1, 2),
(85, '2023-12-05', 9, 12, 0, 0),
(86, '2023-12-06', 11, 13, 1, 1),
(87, '2023-12-07', 14, 16, 0, 3),
(88, '2023-12-08', 15, 18, 2, 0),
(89, '2023-12-09', 17, 19, 2, 2),
(90, '2023-12-10', 20, 1, 1, 4),
(91, '2023-12-15', 4, 2, 1, 3),
(92, '2023-12-16', 5, 3, 0, 2),
(93, '2023-12-17', 7, 6, 1, 1),
(94, '2023-12-18', 10, 8, 0, 2),
(95, '2023-12-19', 12, 9, 2, 0),
(96, '2023-12-20', 13, 11, 0, 1),
(97, '2023-12-21', 16, 14, 3, 0),
(98, '2023-12-22', 18, 15, 1, 1),
(99, '2023-12-23', 19, 17, 2, 1),
(100, '2023-12-24', 1, 20, 4, 2),
(101, '2023-12-29', 2, 8, 2, 0),
(102, '2023-12-30', 3, 9, 1, 1),
(103, '2023-12-31', 6, 10, 3, 1),
(104, '2024-01-01', 4, 11, 0, 0),
(105, '2024-01-02', 7, 12, 1, 2),
(106, '2024-01-03', 5, 13, 2, 2),
(107, '2024-01-04', 1, 14, 3, 0),
(108, '2024-01-05', 16, 2, 1, 3),
(109, '2024-01-06', 15, 3, 0, 1),
(110, '2024-01-07', 17, 4, 2, 2),
(111, '2024-01-12', 8, 1, 1, 2),
(112, '2024-01-13', 9, 2, 1, 3),
(113, '2024-01-14', 10, 3, 0, 0),
(114, '2024-01-15', 11, 6, 1, 1),
(115, '2024-01-16', 12, 4, 2, 2),
(116, '2024-01-17', 13, 7, 1, 2),
(117, '2024-01-18', 14, 5, 1, 1),
(118, '2024-01-19', 15, 17, 3, 1),
(119, '2024-01-20', 18, 19, 1, 2),
(120, '2024-01-21', 20, 16, 2, 0),
(121, '2024-01-26', 2, 5, 3, 2),
(122, '2024-01-27', 3, 6, 2, 1),
(123, '2024-01-28', 4, 7, 0, 2),
(124, '2024-01-29', 8, 10, 1, 2),
(125, '2024-01-30', 9, 12, 0, 0),
(126, '2024-01-31', 11, 13, 1, 1),
(127, '2024-02-01', 14, 15, 1, 3),
(128, '2024-02-02', 16, 17, 2, 2),
(129, '2024-02-03', 18, 1, 0, 4),
(130, '2024-02-04', 20, 19, 2, 2),
(131, '2024-02-09', 6, 2, 2, 3),
(132, '2024-02-10', 5, 4, 1, 0),
(133, '2024-02-11', 3, 7, 1, 3),
(134, '2024-02-12', 8, 10, 1, 1),
(135, '2024-02-13', 9, 12, 0, 1),
(136, '2024-02-14', 11, 13, 1, 0),
(137, '2024-02-15', 15, 14, 3, 1),
(138, '2024-02-16', 17, 16, 2, 2),
(139, '2024-02-17', 19, 18, 1, 0),
(140, '2024-02-18', 1, 20, 3, 2),
(141, '2024-02-23', 7, 1, 2, 3),
(142, '2024-02-24', 3, 20, 2, 2),
(143, '2024-02-25', 2, 19, 3, 1),
(144, '2024-02-26', 4, 18, 1, 1),
(145, '2024-02-27', 6, 17, 2, 1),
(146, '2024-02-28', 5, 16, 1, 1),
(147, '2024-02-29', 9, 15, 0, 3),
(148, '2024-03-01', 8, 14, 2, 1),
(149, '2024-03-02', 11, 13, 0, 2),
(150, '2024-03-03', 12, 10, 2, 1),
(151, '2024-03-08', 1, 3, 3, 1),
(152, '2024-03-09', 20, 2, 2, 2),
(153, '2024-03-10', 19, 4, 1, 0),
(154, '2024-03-11', 18, 5, 0, 1),
(155, '2024-03-12', 17, 6, 1, 1),
(156, '2024-03-13', 16, 7, 2, 3),
(157, '2024-03-14', 15, 8, 3, 2),
(158, '2024-03-15', 14, 9, 0, 1),
(159, '2024-03-16', 13, 12, 1, 2),
(160, '2024-03-17', 10, 11, 1, 0),
(161, '2024-03-22', 2, 6, 2, 1),
(162, '2024-03-23', 3, 5, 1, 1),
(163, '2024-03-24', 4, 7, 0, 2),
(164, '2024-03-25', 1, 8, 4, 0),
(165, '2024-03-26', 20, 9, 1, 1),
(166, '2024-03-27', 19, 10, 2, 2),
(167, '2024-03-28', 18, 11, 0, 1),
(168, '2024-03-29', 17, 12, 2, 3),
(169, '2024-03-30', 16, 13, 1, 0),
(170, '2024-03-31', 15, 14, 2, 1),
(171, '2024-04-05', 7, 2, 1, 3),
(172, '2024-04-06', 6, 3, 2, 2),
(173, '2024-04-07', 5, 4, 1, 0),
(174, '2024-04-08', 8, 1, 1, 2),
(175, '2024-04-09', 9, 20, 0, 1),
(176, '2024-04-10', 10, 19, 1, 1),
(177, '2024-04-11', 11, 18, 1, 2),
(178, '2024-04-12', 12, 17, 2, 1),
(179, '2024-04-13', 13, 16, 0, 2),
(180, '2024-04-14', 14, 15, 0, 3),
(181, '2024-04-19', 2, 14, 3, 0),
(182, '2024-04-20', 3, 15, 1, 2),
(183, '2024-04-21', 4, 16, 2, 1),
(184, '2024-04-22', 5, 17, 0, 0),
(185, '2024-04-23', 6, 18, 2, 1),
(186, '2024-04-24', 7, 19, 1, 1),
(187, '2024-04-25', 8, 20, 2, 2),
(188, '2024-04-26', 9, 1, 0, 3),
(189, '2024-04-27', 10, 12, 1, 0),
(190, '2024-04-28', 11, 13, 2, 1),
(191, '2024-05-03', 14, 3, 0, 2),
(192, '2024-05-04', 15, 4, 1, 1),
(193, '2024-05-05', 16, 5, 2, 2),
(194, '2024-05-06', 17, 6, 1, 3),
(195, '2024-05-07', 18, 7, 0, 1),
(196, '2024-05-08', 19, 8, 2, 0),
(197, '2024-05-09', 20, 9, 1, 1),
(198, '2024-05-10', 1, 10, 4, 1),
(199, '2024-05-11', 12, 11, 0, 0),
(200, '2024-05-12', 13, 2, 1, 3),
(201, '2024-05-17', 3, 6, 2, 2),
(202, '2024-05-18', 4, 7, 0, 1),
(203, '2024-05-19', 5, 8, 1, 0),
(204, '2024-05-20', 9, 10, 1, 1),
(205, '2024-05-21', 11, 12, 1, 1),
(206, '2024-05-22', 13, 14, 2, 1),
(207, '2024-05-23', 15, 1, 0, 3),
(208, '2024-05-24', 16, 2, 0, 2),
(209, '2024-05-25', 17, 20, 2, 1),
(210, '2024-05-26', 18, 19, 1, 1),
(211, '2024-05-31', 2, 5, 3, 1),
(212, '2024-06-01', 3, 8, 1, 0),
(213, '2024-06-02', 4, 9, 2, 1),
(214, '2024-06-03', 6, 10, 0, 0),
(215, '2024-06-04', 7, 11, 2, 2),
(216, '2024-06-05', 12, 13, 1, 0),
(217, '2024-06-06', 14, 1, 0, 3),
(218, '2024-06-07', 15, 20, 2, 3),
(219, '2024-06-08', 16, 19, 1, 1),
(220, '2024-06-09', 17, 18, 0, 1),
(221, '2024-06-14', 1, 7, 3, 2),
(222, '2024-06-15', 8, 6, 1, 1),
(223, '2024-06-16', 5, 4, 0, 1),
(224, '2024-06-17', 10, 2, 1, 3),
(225, '2024-06-18', 12, 20, 2, 2),
(226, '2024-06-19', 9, 11, 0, 0),
(227, '2024-06-20', 3, 16, 2, 1),
(228, '2024-06-21', 19, 13, 1, 0),
(229, '2024-06-22', 15, 18, 1, 1),
(230, '2024-06-23', 17, 14, 2, 0),
(231, '2024-06-28', 2, 4, 2, 1),
(232, '2024-06-29', 6, 5, 1, 1),
(233, '2024-06-30', 3, 7, 2, 2),
(234, '2024-07-01', 1, 8, 3, 0),
(235, '2024-07-02', 9, 10, 0, 1),
(236, '2024-07-03', 12, 11, 1, 1),
(237, '2024-07-04', 13, 20, 2, 1),
(238, '2024-07-05', 19, 14, 1, 0),
(239, '2024-07-06', 16, 17, 2, 3),
(240, '2024-07-07', 15, 18, 1, 0),
(241, '2024-07-12', 4, 2, 1, 2),
(242, '2024-07-13', 5, 6, 0, 1),
(243, '2024-07-14', 7, 3, 1, 1),
(244, '2024-07-15', 8, 1, 0, 3),
(245, '2024-07-16', 10, 9, 1, 1),
(246, '2024-07-17', 11, 12, 2, 0),
(247, '2024-07-18', 20, 13, 0, 2),
(248, '2024-07-19', 14, 19, 1, 1),
(249, '2024-07-20', 17, 16, 3, 1),
(250, '2024-07-21', 18, 15, 0, 2),
(251, '2024-07-26', 2, 8, 3, 0),
(252, '2024-07-27', 3, 9, 1, 1),
(253, '2024-07-28', 4, 10, 2, 1),
(254, '2024-07-29', 5, 11, 1, 2),
(255, '2024-07-30', 6, 12, 2, 0),
(256, '2024-07-31', 7, 13, 1, 1),
(257, '2024-08-01', 14, 1, 0, 4),
(258, '2024-08-02', 15, 20, 1, 1),
(259, '2024-08-03', 16, 19, 2, 0),
(260, '2024-08-04', 17, 18, 3, 2),
(261, '2024-08-09', 8, 3, 1, 2),
(262, '2024-08-10', 9, 2, 1, 3),
(263, '2024-08-11', 10, 4, 1, 0),
(264, '2024-08-12', 11, 5, 0, 1),
(265, '2024-08-13', 12, 6, 2, 2),
(266, '2024-08-14', 13, 7, 1, 0),
(267, '2024-08-15', 1, 14, 3, 1),
(268, '2024-08-16', 20, 15, 2, 3),
(269, '2024-08-17', 19, 16, 1, 2),
(270, '2024-08-18', 18, 17, 1, 1),
(271, '2024-08-23', 2, 10, 3, 1),
(272, '2024-08-24', 3, 11, 1, 2),
(273, '2024-08-25', 4, 12, 2, 1),
(274, '2024-08-26', 5, 13, 0, 0),
(275, '2024-08-27', 6, 14, 2, 2),
(276, '2024-08-28', 7, 15, 1, 3),
(277, '2024-08-29', 1, 16, 4, 0),
(278, '2024-08-30', 20, 17, 1, 2),
(279, '2024-08-31', 19, 18, 0, 1),
(280, '2024-09-01', 8, 9, 2, 1),
(281, '2024-09-06', 10, 3, 0, 2),
(282, '2024-09-07', 11, 4, 1, 1),
(283, '2024-09-08', 12, 5, 2, 0),
(284, '2024-09-09', 13, 6, 1, 3),
(285, '2024-09-10', 14, 7, 0, 2),
(286, '2024-09-11', 15, 8, 3, 1),
(287, '2024-09-12', 16, 9, 2, 2),
(288, '2024-09-13', 1, 20, 4, 1),
(289, '2024-09-14', 17, 19, 1, 1),
(290, '2024-09-15', 18, 2, 0, 3),
(291, '2024-09-20', 2, 11, 3, 1),
(292, '2024-09-21', 3, 12, 1, 1),
(293, '2024-09-22', 4, 13, 2, 0),
(294, '2024-09-23', 5, 14, 1, 1),
(295, '2024-09-24', 6, 15, 2, 3),
(296, '2024-09-25', 7, 16, 1, 2),
(297, '2024-09-26', 1, 17, 4, 0),
(298, '2024-09-27', 8, 18, 2, 1),
(299, '2024-09-28', 9, 19, 1, 2),
(300, '2024-09-29', 10, 20, 1, 1),
(301, '2024-10-04', 12, 2, 0, 3),
(302, '2024-10-05', 13, 3, 1, 1),
(303, '2024-10-06', 14, 4, 0, 1),
(304, '2024-10-07', 15, 5, 3, 2),
(305, '2024-10-08', 16, 6, 2, 2),
(306, '2024-10-09', 17, 7, 0, 2),
(307, '2024-10-10', 18, 1, 1, 3),
(308, '2024-10-11', 19, 8, 1, 1),
(309, '2024-10-12', 20, 9, 1, 2),
(310, '2024-10-13', 11, 10, 0, 0),
(311, '2024-10-18', 2, 12, 3, 0),
(312, '2024-10-19', 3, 13, 1, 1),
(313, '2024-10-20', 4, 14, 1, 0),
(314, '2024-10-21', 5, 15, 0, 2),
(315, '2024-10-22', 6, 16, 1, 2),
(316, '2024-10-23', 7, 17, 3, 1),
(317, '2024-10-24', 1, 18, 4, 0),
(318, '2024-10-25', 8, 19, 2, 2),
(319, '2024-10-26', 9, 20, 1, 1),
(320, '2024-10-27', 10, 11, 0, 0),
(321, '2024-11-01', 13, 2, 0, 3),
(322, '2024-11-02', 14, 3, 1, 1),
(323, '2024-11-03', 15, 4, 2, 2),
(324, '2024-11-04', 16, 5, 1, 0),
(325, '2024-11-05', 17, 6, 2, 3),
(326, '2024-11-06', 18, 7, 1, 1),
(327, '2024-11-07', 19, 1, 1, 4),
(328, '2024-11-08', 20, 8, 2, 2),
(329, '2024-11-09', 12, 9, 1, 1),
(330, '2024-11-10', 11, 10, 0, 1),
(331, '2024-11-15', 2, 13, 3, 1),
(332, '2024-11-16', 3, 14, 2, 0),
(333, '2024-11-17', 4, 15, 1, 2),
(334, '2024-11-18', 5, 16, 1, 1),
(335, '2024-11-19', 6, 17, 2, 2),
(336, '2024-11-20', 7, 18, 3, 0),
(337, '2024-11-21', 1, 19, 4, 1),
(338, '2024-11-22', 8, 20, 2, 2),
(339, '2024-11-23', 9, 12, 1, 0),
(340, '2024-11-24', 10, 11, 0, 0),
(341, '2024-11-29', 13, 2, 1, 3),
(342, '2024-11-30', 14, 3, 1, 2),
(343, '2024-12-01', 15, 4, 0, 1),
(344, '2024-12-02', 16, 5, 2, 2),
(345, '2024-12-03', 17, 6, 2, 3),
(346, '2024-12-04', 18, 7, 0, 2),
(347, '2024-12-05', 19, 1, 1, 3),
(348, '2024-12-06', 20, 8, 1, 1),
(349, '2024-12-07', 12, 9, 2, 1),
(350, '2024-12-08', 11, 10, 1, 0),
(351, '2024-12-13', 2, 14, 2, 0),
(352, '2024-12-14', 3, 15, 2, 2),
(353, '2024-12-15', 4, 16, 1, 1),
(354, '2024-12-16', 5, 17, 1, 0),
(355, '2024-12-17', 6, 18, 3, 1),
(356, '2024-12-18', 7, 19, 0, 1),
(357, '2024-12-19', 1, 20, 4, 2),
(358, '2024-12-20', 8, 12, 2, 1),
(359, '2024-12-21', 9, 11, 1, 1),
(360, '2024-12-22', 10, 13, 0, 2),
(361, '2024-12-27', 14, 2, 0, 3),
(362, '2024-12-28', 15, 3, 1, 1),
(363, '2024-12-29', 16, 4, 1, 2),
(364, '2024-12-30', 17, 5, 0, 1),
(365, '2024-12-31', 18, 6, 1, 3),
(366, '2025-01-01', 19, 7, 2, 1),
(367, '2025-01-02', 20, 1, 1, 4),
(368, '2025-01-03', 12, 8, 2, 1),
(369, '2025-01-04', 11, 9, 1, 1),
(370, '2025-01-05', 13, 10, 0, 1),
(371, '2025-01-10', 2, 13, 3, 0),
(372, '2025-01-11', 3, 14, 1, 1),
(373, '2025-01-12', 4, 15, 0, 2),
(374, '2025-01-13', 5, 16, 1, 1),
(375, '2025-01-14', 6, 17, 2, 1),
(376, '2025-01-15', 7, 18, 2, 0),
(377, '2025-01-16', 1, 19, 3, 1),
(378, '2025-01-17', 8, 20, 1, 1),
(379, '2025-01-18', 9, 12, 2, 2),
(380, '2025-01-19', 10, 11, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`equipo_id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`estadistica_id`),
  ADD KEY `jugador_id` (`jugador_id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`jugador_id`),
  ADD KEY `equipo_id` (`equipo_id`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`partido_id`),
  ADD KEY `equipo_local` (`equipo_local`),
  ADD KEY `equipo_visitante` (`equipo_visitante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `equipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `estadistica_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `jugador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `partido_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD CONSTRAINT `estadisticas_ibfk_1` FOREIGN KEY (`jugador_id`) REFERENCES `jugadores` (`jugador_id`);

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`equipo_id`);

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `partidos_ibfk_1` FOREIGN KEY (`equipo_local`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `partidos_ibfk_2` FOREIGN KEY (`equipo_visitante`) REFERENCES `equipos` (`equipo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
