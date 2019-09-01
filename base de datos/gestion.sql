-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-09-2019 a las 03:04:22
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_categoria_t4`
--

CREATE TABLE `ps_categoria_t4` (
  `idcategoria_t4` int(11) NOT NULL,
  `n_identificador_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `valor_total_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t4` date NOT NULL,
  `usumod_t4` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_formato_t2`
--

CREATE TABLE `ps_formato_t2` (
  `idformato_t2` int(11) NOT NULL,
  `titulo_t2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t2` date NOT NULL,
  `usumod_t2` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_itens_t3`
--

CREATE TABLE `ps_itens_t3` (
  `iditens_t3` int(11) NOT NULL,
  `idcategoria_t3` int(11) NOT NULL,
  `fmod_t3` date NOT NULL,
  `usumod_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `n_identificativo_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `marco_legal_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `criterio_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `mo_verificacion_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `puntuaje_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `valoracion_t3` longtext COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_terceros_t1`
--

CREATE TABLE `ps_terceros_t1` (
  `idterceros_t1` int(11) NOT NULL,
  `nombre_tercero_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `identificador_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `responsable_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t1` date NOT NULL,
  `usureg_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `correo_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_identificacion_t1` longtext COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_usuario_t0`
--

CREATE TABLE `ps_usuario_t0` (
  `idusuario_t0` int(11) NOT NULL,
  `primer_nombre_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `segunda_nombre_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `primer_apellido_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_apellido_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_completo_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_cracion_t0` date NOT NULL,
  `telefono_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `clave_t0` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ps_categoria_t4`
--
ALTER TABLE `ps_categoria_t4`
  ADD PRIMARY KEY (`idcategoria_t4`);

--
-- Indices de la tabla `ps_formato_t2`
--
ALTER TABLE `ps_formato_t2`
  ADD PRIMARY KEY (`idformato_t2`);

--
-- Indices de la tabla `ps_itens_t3`
--
ALTER TABLE `ps_itens_t3`
  ADD PRIMARY KEY (`iditens_t3`);

--
-- Indices de la tabla `ps_terceros_t1`
--
ALTER TABLE `ps_terceros_t1`
  ADD PRIMARY KEY (`idterceros_t1`);

--
-- Indices de la tabla `ps_usuario_t0`
--
ALTER TABLE `ps_usuario_t0`
  ADD PRIMARY KEY (`idusuario_t0`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ps_categoria_t4`
--
ALTER TABLE `ps_categoria_t4`
  MODIFY `idcategoria_t4` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_formato_t2`
--
ALTER TABLE `ps_formato_t2`
  MODIFY `idformato_t2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_itens_t3`
--
ALTER TABLE `ps_itens_t3`
  MODIFY `iditens_t3` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_terceros_t1`
--
ALTER TABLE `ps_terceros_t1`
  MODIFY `idterceros_t1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_usuario_t0`
--
ALTER TABLE `ps_usuario_t0`
  MODIFY `idusuario_t0` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
