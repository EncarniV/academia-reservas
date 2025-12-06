-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2025 a las 10:02:43
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
-- Base de datos: `academy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrator`
--

CREATE TABLE `administrator` (
  `id_administrator` varchar(9) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrator`
--

INSERT INTO `administrator` (`id_administrator`, `name`, `surname`, `address`, `city`, `province`, `phone`, `email`, `password`) VALUES
('00000000T', 'Elena ', 'Martínez García', 'C/ Olivo, 1', 'Elche', 'Alicante', '639639639', 'elena@admin.aulae.es', '*B2A162C2F04B529E9AF0B59EA8F5E5E6118D0054');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classroom`
--

CREATE TABLE `classroom` (
  `id_classroom` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `classroom`
--

INSERT INTO `classroom` (`id_classroom`, `capacity`) VALUES
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(5, 12),
(6, 12),
(7, 12),
(8, 12),
(9, 12),
(10, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lesson`
--

CREATE TABLE `lesson` (
  `id_lesson` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour_start` time DEFAULT NULL,
  `hour_end` time DEFAULT NULL,
  `id_teacher` varchar(9) DEFAULT NULL,
  `id_classroom` int(11) DEFAULT NULL,
  `id_administrator` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lesson`
--

INSERT INTO `lesson` (`id_lesson`, `date`, `hour_start`, `hour_end`, `id_teacher`, `id_classroom`, `id_administrator`) VALUES
(1, '2026-03-01', '15:00:00', '16:00:00', NULL, NULL, NULL),
(2, '2026-03-01', '16:00:00', '17:00:00', NULL, NULL, NULL),
(3, '2026-03-01', '17:00:00', '18:00:00', NULL, NULL, NULL),
(4, '2026-03-01', '18:00:00', '19:00:00', NULL, NULL, NULL),
(5, '2026-03-01', '19:00:00', '20:00:00', NULL, NULL, NULL),
(6, '2026-03-01', '20:00:00', '21:00:00', NULL, NULL, NULL),
(7, '2026-03-01', '15:00:00', '16:00:00', NULL, NULL, NULL),
(8, '2026-03-01', '16:00:00', '17:00:00', NULL, NULL, NULL),
(9, '2026-03-01', '17:00:00', '18:00:00', NULL, NULL, NULL),
(10, '2026-03-01', '18:00:00', '19:00:00', NULL, NULL, NULL),
(11, '2026-03-01', '19:00:00', '20:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `id_student` varchar(9) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_administrator` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`id_student`, `name`, `surname`, `address`, `city`, `province`, `phone`, `email`, `password`, `id_administrator`) VALUES
('00000010B', 'José', 'Abad Fernández', 'C/ Jamaica,99', 'Elche', 'Alicante', '623623623', 'jose@ejemplo.es', '*5706A5EBC1277FA7F341C08EAB2F98CDB232B0C7', NULL),
('00000010W', 'José', 'Abad Fernández', 'C/ Jamaica,99', 'Elche', 'Alicante', '623623623', 'jose@ejemplo.es', '*5706A5EBC1277FA7F341C08EAB2F98CDB232B0C7', NULL),
('00000011N', 'María', 'Fernández Pérez', 'C/ Murciélago,98', 'Elche', 'Alicante', '642642642', 'maria@ejemplo.es', '*0BD371465BCEDEF53A534DB891B25D879203B747', NULL),
('00000012J', 'Lucía', 'Ávila Huesca', 'C/ Luz ,97', 'Elche', 'Alicante', '624624624', 'lucia@ejemplo.es', '*DE2051F83FABD11E02F3084455900C726C81431E', NULL),
('00000013Z', 'Teresa', 'Barceló Martínez', 'C/ Ternura,96', 'Elche', 'Alicante', '641641641', 'teresa@ejemplo.es', '*79F40418FCBD49FBBA16C828E5F26286CBB0C680', NULL),
('00000014S', 'Pablo', 'Hernández Casado', 'C/ Postal,95', 'Elche', 'Alicante', '614614614', 'pablo@ejemplo.es', '*BE39A2A19328E56E6BAE41A3B6D619490A231DE1', NULL),
('00000015Q', 'Alberto', 'Gea Botella', 'C/ Alegría,94', 'Elche', 'Alicante', '631631631', 'alberto@ejemplo.es', '*99E4453D79D491C0B6C9D8C6C8828C815EAEAB3E', NULL),
('00000016V', 'Sandra', 'Pons Puig', 'C/ Sol,93', 'Elche', 'Alicante', '613613613', 'sandra@ejemplo.es', '*440C3AC0050F14B7522977541F885101218C2B39', NULL),
('00000017H', 'Marta', 'Ruíz Bru', 'C/ Ministerio,92', 'Elche', 'Alicante', '621621621', 'marta@ejemplo.es', '*ED54539B7AACAB3CCA023DDE1A52C84128397C4B', NULL),
('00000018L', 'Roberto', 'Correa Cortés', 'C/ Rebelión,91', 'Elche', 'Alicante', '612612612', 'roberto@ejemplo.es', '*0FB603AA59124019026717495B2E5E6D68C7724D', NULL),
('00000019C', 'Martín', 'Bas Bri', 'C/ Mare de Deu,90', 'Elche', 'Alicante', '632632632', 'martin@ejemplo.es', '*BBF91BCBCF56B44B5E959827C62A19F088B3543D', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` varchar(9) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_administrator` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `name`, `surname`, `address`, `city`, `province`, `phone`, `email`, `password`, `id_administrator`) VALUES
('00000001R', 'Lidia', 'Casals Pérez', 'C/ Lirios, 2', 'Alicante', 'Alicante', '654321987', 'lidia@ejemplo.es', '*9EDAFB728DF91720D2382D3D0B97D701F72F09BF', NULL),
('00000002W', 'Juan', 'López Más', 'C/ Jabalí,3', 'Elche', 'Alicante', '654654654', 'juan@ejemplo.es', '*1BD9B0936B5110A1B2B3E9A785AAA69F868F1A7C', NULL),
('00000003G', 'Jaime', 'López Igual', 'C/ Jabalí,4', 'Elche', 'Alicante', '645645645', 'jaime@prof.aula.es', '*358D9836844360309B5802829DFE7ECECE199FCE', NULL),
('00000004M', 'Javier', 'García Juan', 'C/ Jota,5', 'Elche', 'Alicante', '698698698', 'javier@prof.aula.es', '*CBE7637D994C39A408C799689CE787E35F470297', NULL),
('00000005Y', 'María', 'Gallego Pérez', 'C/ Mundo,7', 'Elche', 'Alicante', '678678678', 'maria@prof.aula.es', '*3FB58E7D2486EF4D1A08EB1FEDDAE2EC49D8E226', NULL),
('00000006F', 'Luisa', 'Ors Pérez', 'C/ Luciérnaga,8', 'Elche', 'Alicante', '687687687', 'luisa@prof.aula.es', '*55169621E93361CDE7C50BB91EBF3D709E31EFB8', NULL),
('00000007P', 'Mara', 'Murcia Murcia', 'C/ Maravilla,9', 'Elche', 'Alicante', '697697697', 'mara@prof.aula.es', '*F4C6AA0CF1725E7C66C930219DF0C750E42D61E5', NULL),
('00000008D', 'Vicente', 'Vázquez García', 'C/ Venecia,10', 'Elche', 'Alicante', '679679679', 'vicente@prof.aula.es', '*8CDFC3A3FA9EC5DDC683DAC965CACB2C51F7D9CF', NULL),
('00000009X', 'Alba', 'López Pérez', 'C/ Arco Iris,6', 'Elche', 'Alicante', '689689689', 'alba@prof.aula.es', '*A2B8887F99400D6CBC53DF821519F211DE9AE526', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_administrator`);

--
-- Indices de la tabla `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id_classroom`);

--
-- Indices de la tabla `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id_lesson`),
  ADD KEY `fk_lesson_teacher` (`id_teacher`),
  ADD KEY `fk_lesson_classroom` (`id_classroom`),
  ADD KEY `fk_lesson_admin` (`id_administrator`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `fk_student_admin` (`id_administrator`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`),
  ADD KEY `fk_teacher_admin` (`id_administrator`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id_classroom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id_lesson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `fk_lesson_admin` FOREIGN KEY (`id_administrator`) REFERENCES `administrator` (`id_administrator`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lesson_classroom` FOREIGN KEY (`id_classroom`) REFERENCES `classroom` (`id_classroom`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lesson_teacher` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_admin` FOREIGN KEY (`id_administrator`) REFERENCES `administrator` (`id_administrator`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `fk_teacher_admin` FOREIGN KEY (`id_administrator`) REFERENCES `administrator` (`id_administrator`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
