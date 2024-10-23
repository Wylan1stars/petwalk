-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2024 a las 02:28:10
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
-- Base de datos: `petwalk`
--

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
  `id_registrar_propietario` int(10) NOT NULL
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
  `direccion` varchar(20) NOT NULL,
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
  `contraseña` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `id_registrar_paseador` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id_mascotas`),
  ADD KEY `id_propietario` (`id_registrar_propietario`);

--
-- Indices de la tabla `registrarse_paseador`
--
ALTER TABLE `registrarse_paseador`
  ADD PRIMARY KEY (`id_registrar_paseador`);

--
-- Indices de la tabla `registrarse_propietario`
--
ALTER TABLE `registrarse_propietario`
  ADD PRIMARY KEY (`id_registrar_propietario`),
  ADD KEY `id_registrar_paseador` (`id_registrar_paseador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id_mascotas` int(10) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `registrarse_propietario`
--
ALTER TABLE `registrarse_propietario`
  ADD CONSTRAINT `registrarse_propietario_ibfk_1` FOREIGN KEY (`id_registrar_paseador`) REFERENCES `registrarse_paseador` (`id_registrar_paseador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
