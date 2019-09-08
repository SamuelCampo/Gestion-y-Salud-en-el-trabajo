-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-09-2019 a las 18:53:14
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
-- Estructura de tabla para la tabla `ps_categoria_for_t6`
--

CREATE TABLE `ps_categoria_for_t6` (
  `idrelacion_t6` int(11) NOT NULL,
  `idformato_t2` int(11) NOT NULL,
  `idcategoria_t4` int(11) NOT NULL,
  `tituloformato_t6` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t6` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t6` datetime NOT NULL,
  `umod_t6` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_categoria_items:t7`
--

CREATE TABLE `ps_categoria_items:t7` (
  `idrelacion2` int(11) NOT NULL,
  `identificativo_t7` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t7` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t7` datetime NOT NULL,
  `umod_t7` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_categoria_t8`
--

CREATE TABLE `ps_categoria_t8` (
  `idcategoria_t8` int(11) NOT NULL,
  `n_identificador_t8` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_t8` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t8` datetime NOT NULL,
  `usumod_t8` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ps_categoria_t8`
--

INSERT INTO `ps_categoria_t8` (`idcategoria_t8`, `n_identificador_t8`, `nombre_t8`, `fmod_t8`, `usumod_t8`) VALUES
(1, '1', 'PLANEAR', '2019-09-08 00:00:00', 'SuperUsuario'),
(2, '2', 'HACER', '2019-09-08 00:00:00', 'SuperUsuario'),
(3, '3', 'VERIFICAR', '2019-09-08 00:00:00', 'SuperUsuario'),
(4, '4', 'ACTUAR', '2019-09-08 00:00:00', 'SuperUsuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_formato_t2`
--

CREATE TABLE `ps_formato_t2` (
  `idformato_t2` int(11) NOT NULL,
  `titulo_t2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t2` datetime NOT NULL,
  `usumod_t2` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t2` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ps_formato_t2`
--

INSERT INTO `ps_formato_t2` (`idformato_t2`, `titulo_t2`, `descripcion_t2`, `fmod_t2`, `usumod_t2`, `categoria_t2`) VALUES
(1, 'sa', 'as', '2019-09-05 00:00:00', 'superusuario', ''),
(2, 'Prueba', 'hhhh', '2019-09-05 00:00:00', 'superusuario', ''),
(3, 'Prueba', 'hhhh', '2019-09-05 00:00:00', 'superusuario', ''),
(4, 'Miguel ', 'Formato', '2019-09-05 00:00:00', 'superusuario', ''),
(5, 'Prueba', 'a', '2019-09-05 00:00:00', 'superusuario', ''),
(6, 'Prueba', 'PRUEBA', '2019-09-05 00:00:00', 'superusuario', ''),
(7, 'Prueba', '2', '2019-09-05 00:00:00', 'superusuario', ''),
(8, 'Formato 512', 'Descripcion del formato', '2019-09-06 00:00:00', 'superusuario', ''),
(9, 'undefined', 'undefined', '2019-09-06 00:00:00', 'superusuario', ''),
(10, 'Formato 101', 'Contenido del mismo', '2019-09-06 00:00:00', 'superusuario', ''),
(11, 'undefined', 'Contenido del mismoo', '2019-09-06 00:00:00', 'superusuario', ''),
(12, 'Formato', 'hola', '2019-09-07 05:32:59', 'superusuario', ''),
(13, 'Formato 1011', 'Eyeyeye', '2019-09-07 05:34:02', 'superusuario', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_itens_t3`
--

CREATE TABLE `ps_itens_t3` (
  `iditens_t3` int(11) NOT NULL,
  `idcategoria_t3` int(11) NOT NULL,
  `fmod_t3` datetime NOT NULL,
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
-- Estructura de tabla para la tabla `ps_seccion_t5`
--

CREATE TABLE `ps_seccion_t5` (
  `idseccion_t5` int(11) NOT NULL,
  `usuario_t5` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `finicio_t5` datetime NOT NULL,
  `fcierre_t5` datetime NOT NULL,
  `estado_t5` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_subcategoria_t4`
--

CREATE TABLE `ps_subcategoria_t4` (
  `idcategoria_t4` int(11) NOT NULL,
  `n_identificador_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `valor_total_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t4` datetime NOT NULL,
  `usumod_t4` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci
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
  `fmod_t1` datetime NOT NULL,
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
  `cedula_t0` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `primer_nombre_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `segunda_nombre_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `primer_apellido_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_apellido_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_completo_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_cracion_t0` datetime NOT NULL,
  `telefono_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `clave_t0` varchar(32) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ps_usuario_t0`
--

INSERT INTO `ps_usuario_t0` (`idusuario_t0`, `cedula_t0`, `primer_nombre_t0`, `segunda_nombre_t0`, `primer_apellido_t0`, `segundo_apellido_t0`, `nombre_completo_t0`, `usuario_t0`, `fecha_cracion_t0`, `telefono_t0`, `direccion_t0`, `clave_t0`) VALUES
(1, '1053124899', 'Ey', 'Alejandro', 'Ortega', 'Blanco', 'Miguel Alejandro Ortega Blanco', 'Miguelort095', '2019-09-02 00:00:00', '302 454 67 08', 'Santa Viviana', '25f9e794323b453885f5181f1b624d0b'),
(2, '1053124898', 'Ey', 'Alejandro', 'Ortega', 'Blanco', 'Miguel Alejandro Ortega Blanco', 'Miguelort095', '2019-09-02 00:00:00', '302 454 67 08', 'Santa Viviana', '25f9e794323b453885f5181f1b624d0b'),
(3, '1053124898\r\n\r\n			h', 'Ey', 'Alejandro', 'Ortega', 'Blanco', 'Miguel Alejandro Ortega Blanco', 'Miguelort095', '2019-09-03 00:00:00', '302 454 67 08', 'Santa Viviana', '25f9e794323b453885f5181f1b624d0b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ps_categoria_for_t6`
--
ALTER TABLE `ps_categoria_for_t6`
  ADD PRIMARY KEY (`idrelacion_t6`);

--
-- Indices de la tabla `ps_categoria_items:t7`
--
ALTER TABLE `ps_categoria_items:t7`
  ADD PRIMARY KEY (`idrelacion2`);

--
-- Indices de la tabla `ps_categoria_t8`
--
ALTER TABLE `ps_categoria_t8`
  ADD PRIMARY KEY (`idcategoria_t8`);

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
-- Indices de la tabla `ps_seccion_t5`
--
ALTER TABLE `ps_seccion_t5`
  ADD PRIMARY KEY (`idseccion_t5`);

--
-- Indices de la tabla `ps_subcategoria_t4`
--
ALTER TABLE `ps_subcategoria_t4`
  ADD PRIMARY KEY (`idcategoria_t4`);

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
-- AUTO_INCREMENT de la tabla `ps_categoria_for_t6`
--
ALTER TABLE `ps_categoria_for_t6`
  MODIFY `idrelacion_t6` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_categoria_items:t7`
--
ALTER TABLE `ps_categoria_items:t7`
  MODIFY `idrelacion2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_categoria_t8`
--
ALTER TABLE `ps_categoria_t8`
  MODIFY `idcategoria_t8` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ps_formato_t2`
--
ALTER TABLE `ps_formato_t2`
  MODIFY `idformato_t2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ps_itens_t3`
--
ALTER TABLE `ps_itens_t3`
  MODIFY `iditens_t3` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_seccion_t5`
--
ALTER TABLE `ps_seccion_t5`
  MODIFY `idseccion_t5` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_subcategoria_t4`
--
ALTER TABLE `ps_subcategoria_t4`
  MODIFY `idcategoria_t4` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_terceros_t1`
--
ALTER TABLE `ps_terceros_t1`
  MODIFY `idterceros_t1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_usuario_t0`
--
ALTER TABLE `ps_usuario_t0`
  MODIFY `idusuario_t0` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
