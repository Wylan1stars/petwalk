-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2024 a las 04:00:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petwalk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id_login` int(10) NOT NULL,
  `id_registrar_propietario` int(11) NOT NULL,
  `id_registrar_paseador` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id_mascotas` int(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `peso` float NOT NULL,
  `edad` int(2) NOT NULL,
  `raza` varchar(15) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(11) NOT NULL,
  `esterilizado` varchar(5) NOT NULL,
  `salud` varchar(100) NOT NULL,
  `id_propietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paseador`
--

CREATE TABLE `paseador` (
  `id_paseador` int(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `dni` int(8) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `direccion` varchar(15) NOT NULL,
  `edad` int(2) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `id_mascotas` int(11) NOT NULL,
  `id_propietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `id_propietario` int(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `dni` int(8) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `direccion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrarse_paseador`
--

CREATE TABLE `registrarse_paseador` (
  `id_registrar_paseador` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `experiencia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrarse_propietario`
--

CREATE TABLE `registrarse_propietario` (
  `id_registrar_propietario` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `FKregistrar_propietario` (`id_registrar_propietario`),
  ADD KEY `FKregistrar_paseador` (`id_registrar_paseador`),
  ADD KEY `FK_propietario` (`id_registrar_propietario`),
  ADD KEY `FK_paseador` (`id_registrar_paseador`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id_mascotas`),
  ADD KEY `id_propietario` (`id_propietario`);

--
-- Indices de la tabla `paseador`
--
ALTER TABLE `paseador`
  ADD PRIMARY KEY (`id_paseador`),
  ADD KEY `Fkmascotas` (`id_mascotas`),
  ADD KEY `FKpropietario` (`id_propietario`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`id_propietario`);

--
-- Indices de la tabla `registrarse_paseador`
--
ALTER TABLE `registrarse_paseador`
  ADD PRIMARY KEY (`id_registrar_paseador`);

--
-- Indices de la tabla `registrarse_propietario`
--
ALTER TABLE `registrarse_propietario`
  ADD PRIMARY KEY (`id_registrar_propietario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id_mascotas` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paseador`
--
ALTER TABLE `paseador`
  MODIFY `id_paseador` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `id_propietario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrarse_paseador`
--
ALTER TABLE `registrarse_paseador`
  MODIFY `id_registrar_paseador` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrarse_propietario`
--
ALTER TABLE `registrarse_propietario`
  MODIFY `id_registrar_propietario` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`id_mascotas`) REFERENCES `paseador` (`id_mascotas`);

--
-- Filtros para la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD CONSTRAINT `propietario_ibfk_1` FOREIGN KEY (`id_propietario`) REFERENCES `mascotas` (`id_propietario`),
  ADD CONSTRAINT `propietario_ibfk_2` FOREIGN KEY (`id_propietario`) REFERENCES `paseador` (`id_propietario`);

--
-- Filtros para la tabla `registrarse_paseador`
--
ALTER TABLE `registrarse_paseador`
  ADD CONSTRAINT `registrarse_paseador_ibfk_1` FOREIGN KEY (`id_registrar_paseador`) REFERENCES `login` (`id_registrar_paseador`);

--
-- Filtros para la tabla `registrarse_propietario`
--
ALTER TABLE `registrarse_propietario`
  ADD CONSTRAINT `registrarse_propietario_ibfk_1` FOREIGN KEY (`id_registrar_propietario`) REFERENCES `login` (`id_registrar_propietario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
