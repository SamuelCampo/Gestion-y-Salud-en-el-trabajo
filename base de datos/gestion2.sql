-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-09-2019 a las 17:39:09
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
-- Base de datos: `gestion2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_categoria_for_t6`
--

CREATE TABLE `ps_categoria_for_t6` (
  `idrelacion_t6` int(11) NOT NULL,
  `idformato_t6` int(11) NOT NULL,
  `idcategoria_t6` int(11) NOT NULL,
  `tituloformato_t6` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t6` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t6` datetime NOT NULL,
  `umod_t6` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ps_categoria_for_t6`
--

INSERT INTO `ps_categoria_for_t6` (`idrelacion_t6`, `idformato_t6`, `idcategoria_t6`, `tituloformato_t6`, `categoria_t6`, `fmod_t6`, `umod_t6`) VALUES
(1, 2, 3, 'Formato 101', 'Haber', '2019-09-21 00:00:00', 'Super'),
(2, 2, 2, 'Formato 101', 'Haber', '2019-09-21 00:00:00', 'Super');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_categoria_items:t7`
--

CREATE TABLE `ps_categoria_items:t7` (
  `idrelacion2` int(11) NOT NULL,
  `identificativo_t7` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t7` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t7` datetime NOT NULL,
  `umod_t7` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_categoria_t8`
--

CREATE TABLE `ps_categoria_t8` (
  `idcategoria_t8` int(11) NOT NULL,
  `n_identificador_t8` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_t8` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t8` datetime NOT NULL,
  `usumod_t8` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
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
-- Estructura de tabla para la tabla `ps_complementos_t3`
--

CREATE TABLE `ps_complementos_t3` (
  `idcomplementos_t3` int(11) NOT NULL,
  `idcategoria_t3` int(11) NOT NULL,
  `idsubcategoria_t3` int(11) NOT NULL,
  `fmod_t3` datetime NOT NULL,
  `usumod_t3` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `n_identificativo_t3` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t3` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `valoracion_t3` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ps_complementos_t3`
--

INSERT INTO `ps_complementos_t3` (`idcomplementos_t3`, `idcategoria_t3`, `idsubcategoria_t3`, `fmod_t3`, `usumod_t3`, `n_identificativo_t3`, `descripcion_t3`, `valoracion_t3`) VALUES
(1, 1, 1, '2019-09-21 00:00:00', 'Superusuario', '1 Estándar', 'Recursos financieros, técnicos humanos y de otra índole ', '4%'),
(2, 1, 1, '2019-09-21 00:00:00', 'superusuario', '2 Estándar', 'Capacitación en el Sistema de Gestión de Seguridad y Salud en el Trabajo', '6%'),
(3, 1, 2, '2019-09-21 00:00:00', 'superusuario', '1 Estándar', 'Política de Seguridad y Salud en el Trabajo', '1%'),
(4, 1, 2, '2019-09-21 00:00:00', 'SuperUsuario', '2 Estándar', 'Objetivos del Sistema de Gestión de Seguridad y Salud en el Trabajo SG-SST', '1%'),
(5, 1, 2, '2019-09-21 00:00:00', 'superusuario', '3 Estándar', 'Evaluación inicial del Sistema de Gestión – Seguridad y Salud en el Trabajo', '1%'),
(6, 1, 2, '2019-09-21 00:00:00', 'superusuario', '4 Estándar', 'Plan Anual de Trabajo', '2%'),
(7, 1, 2, '2019-09-21 00:00:00', 'superusuario', '5 Estánda', 'Conservación de la documentación', '2%'),
(8, 1, 2, '2019-09-21 00:00:00', 'superusuario', '6 Estándar', 'Rendición de cuentas', '1%'),
(9, 1, 2, '2019-09-21 00:00:00', 'super usuario', '7 Estándar', 'Normativa nacional vigente y aplicable en materia de Seguridad y Salud en el Trabajo', '2%'),
(10, 1, 2, '2019-09-21 00:00:00', 'susperusuario', '8 Estándar', 'Mecanismos de Comunicación', '1%'),
(11, 1, 2, '2019-09-21 00:00:00', 'super usuario', '9 Estándar', 'Adquisiciones', '1%'),
(12, 1, 2, '2019-09-21 00:00:00', 'super', '10 Estándar', 'Contratación', '2%'),
(13, 1, 2, '2019-09-21 00:00:00', 'super', '11 Estándar', ' Gestión del cambio', '1%'),
(14, 2, 3, '2019-09-21 00:00:00', 'super', '1 Estándar', 'Condiciones de salud en el trabajo', '9%'),
(15, 2, 3, '2019-09-21 00:00:00', 'super', '2 Estándar', 'Registro, reporte e investigación de las enfermedades laborales, incidentes y accidentes del trabajo', '5%'),
(16, 2, 3, '2019-09-21 00:00:00', 'super', '3 Estándar', 'Mecanismos de vigilancia de las condiciones de salud de los trabajadores', '6%'),
(17, 2, 5, '2019-09-21 00:00:00', 'super', 'ESTÁNDAR 1', 'GESTIÓN DE AMENAZAS', '10%'),
(18, 3, 6, '2019-09-21 00:00:00', 'super', '1 Estándar', 'Gestión y resultados del Sistema de Gestión de Seguridad y Salud en el Trabajo', '5%'),
(19, 4, 7, '2019-09-21 00:00:00', 'super', '1 Estándar', 'Acciones preventivas y correctivas con base en los resultados del Sistema de Gestión de Seguridad y Salud en el Trabajo', '10%');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_evaluacion_t9`
--

CREATE TABLE `ps_evaluacion_t9` (
  `idevaluacion_t9` int(11) NOT NULL,
  `nomb_formato_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `categoria_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `subcategoria_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `valor_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `valoracion_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `justificaicion_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `observacion_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `items_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fmod_t9` datetime NOT NULL,
  `usumod_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ps_evaluacion_t9`
--

INSERT INTO `ps_evaluacion_t9` (`idevaluacion_t9`, `nomb_formato_t9`, `categoria_t9`, `subcategoria_t9`, `valor_t9`, `valoracion_t9`, `justificaicion_t9`, `observacion_t9`, `items_t9`, `fmod_t9`, `usumod_t9`) VALUES
(1, '202', '2', '2', '2', '2', '2', '2', '2', '2019-09-21 00:00:00', 'super');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_formato_t2`
--

CREATE TABLE `ps_formato_t2` (
  `idformato_t2` int(11) NOT NULL,
  `titulo_t2` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t2` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t2` datetime NOT NULL,
  `usumod_t2` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t2` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
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
-- Estructura de tabla para la tabla `ps_items_t10`
--

CREATE TABLE `ps_items_t10` (
  `iditens_t10` int(11) NOT NULL,
  `idcategoria_t10` int(11) NOT NULL,
  `idsubcategoria_t10` int(11) NOT NULL,
  `idcomplemento_t10` int(11) NOT NULL,
  `fmod_t10` datetime NOT NULL,
  `usumod_t10` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `n_identificativo_t10` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `marco_legal_t10` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `criterio_t10` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mo_verificacion_t10` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `puntuaje_t10` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `valoracion_t10` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ps_items_t10`
--

INSERT INTO `ps_items_t10` (`iditens_t10`, `idcategoria_t10`, `idsubcategoria_t10`, `idcomplemento_t10`, `fmod_t10`, `usumod_t10`, `n_identificativo_t10`, `marco_legal_t10`, `criterio_t10`, `mo_verificacion_t10`, `puntuaje_t10`, `valoracion_t10`) VALUES
(1, 1, 1, 1, '2019-09-21 00:00:00', 'susper', '1.1.1', 'Decreto 1607/2002            Decreto 1072/2015, Artículo. 2.2.4.6.8 numerales 2 y 10. Resolución 4502/2012  Decreto 1295/1994, Artículo. 26. Artículos 5 y 6 de la presente resolución', 'El diseño del Sistema de Gestión de Seguridad y Salud en el Trabajo, para empresas de diez (10) o menos trabajadores clasificadas en Riesgo I, II, III, podrá ser realizado por técnicos o tecnólogos en eguridad y Salud en el Trabajo o en alguna de sus áreas, con licencia vigente en Salud Ocupacional o Seguridad y Salud en el Trabajo que acrediten mínimo dos (2) años de experiencia en el desarrollo de actividades de Seguridad y Salud en el Trabajo y que acrediten la aprobación del curso de capacitación virtual de cincuenta (50) horas. Para empresas de diez (10) o menos trabaja dores clasificadas en Riesgo IV y V, podrá ser realizado por un Profesional en Salud Ocupacional o Seguridad y Salud en el Trabajo, profesional con posgrado en Seguridad y Salud en el Trabajo, con licencia en Salud Ocupacional o Seguridad y Salud en el Trabajo vigente y que acrediten la aprobación del curso de capacitación virtual de cincuenta (50) horas.  La persona que diseñe, ejecute e implemente el Sistema de Gestión de Seguridad y Salud en el Trabajo tenga la formación y cursos solicitada en los artículos 5 y 6 de la presente resolución.', 'Solicitar el documento en el que consta la designación del responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo, con la respectiva asignación de responsabilidades y solicitar el certificado correspondiente, que acredite la formación de acuerdo con lo establecido en el presente criterio. Se solicita el título de formación de técnico, tecnólogo, profesional, especialista o maestría en Seguridad y Salud en el Trabajo. Se verifica la licencia en Seguridad y Salud en el Trabajo vigente. Se constata la existencia del certificado de aprobación del curso virtual de cincuenta (50) horas en Seguridad y Salud en el Trabajo. A quien no tenga licencia se le solicita que cumpla los requisitos de formación y cursos solicitada en los artículos 5 y 6 de la presente resolución.', '', ''),
(2, 1, 1, 1, '2019-09-21 00:00:00', 'super', '1.1.2', 'Decreto 1607/2002            Decreto 1072/2015, Artículo. 2.2.4.6.8 numerales 2 y 10. Resolución 4502/2012  Decreto 1295/1994, Artículo. 26. Artículos 5 y 6 de la presente resolución', 'La empresa asignó y documentó las responsabilidades específicas en el Sistema de Gestión de Seguridad y Salud en el Trabajo a todos los niveles de la organización, para la implementación y mejora continua del Sistema de Gestión de Seguridad y Salud en el Trabajo.', 'Solicitar el soporte que contenga la asignación y documentación de las responsabilidades en Seguridad y Salud en el Trabajo.', '', ''),
(3, 1, 1, 1, '2019-09-21 00:00:00', 'super', '1.1.3', 'Decreto 1072/2015, Artículo 2.2.4.6.8. numeral 4, Artículo 2.2.4.6.17 numeral 2.5.', 'La empresa define y asigna los recursos financieros, humanos, técnicos y tecnológicos, requeridos para la implementación, mantenimiento y continuidad del Sistema de Gestión de Seguridad y Salud en el Trabajo.', 'Constatar la existencia de evidencias físicas y/o documentales que demuestren la definición y asignación de los recursos financieros, humanos, técnicos y de otra índole para la implementación, mantenimiento y continuidad del Sistema de Gestión de Seguridad y Salud en el Trabajo, evidenciando la asignación de recursos con base en el plan de trabajo anual.', '', ''),
(4, 1, 1, 1, '2019-09-21 00:00:00', 'super', '1.1.4', 'Decreto 2090/2003  Artículo 5°. Ley 1562/2012 Artículos 2°, 6° y 7°. Decreto 1295/1994 Artículos 4, 16, 21 y 23. Decreto 1072/2015 Artículos: 2.2.4.2.2.5., 2.2.4.2.2.6., 2.2.4.2.2.13., 2.2.4.2.3.4., 2.2.4.2.4.3., 2.2.4.3.7., 2.2.4.6.28. numeral 3., 2.2.1.6.1.3., 2.2.1.6.1.4., 2.2.1.6.4.6., 2.2.1.6.4.7. - Ley 1150/2007 - Artículo 23.', 'Todos los trabajadores, independientemente de su forma de vinculación o contratación están afiliados al Sistema General de Riesgos Laborales y el pago de los aportes se realiza conforme a la normativa y en la respectiva clase de riesgo.', 'Solicitar una lista de los trabajadores vinculados laboralmente a la fecha y comparar con la planilla de pago de aportes a la seguridad social de los cuatro (4) meses anteriores a la fecha de verificación. Realizar el siguiente muestreo: De uno (1) a diez (10) trabajadores verificar el 100%. Entre once (11) y cincuenta (50) trabajadores verificar el 20%. Entre cincuenta y uno (51) y doscientos (200) trabajadores verificar el 10%. Mayores a doscientos un (201) trabajadores verificar el registro de 30 trabajadores.. Solicitar una lista de los trabajadores vinculados por prestación de servicios a la fecha y comparar con la última planilla de pago de aportes a la seguridad social suministrada por los contratistas. Tomar: De uno (1) a diez (10) trabajadores verificar el 100%. Entre once (11) y cincuenta (50) trabajadores verificar el 20%. Entre cincuenta y un (51) y doscientos (200) trabajadores verificar el 10% Mayores a doscientos un (201) trabajadores verificar el registro de 30 trabajadores. De la muestra seleccionada verifique la afiliación al Sistema General de Seguridad Social. En los casos excepcionales de trabajadores independientes que se afilien a través de agremiaciones verificar que corresponda a una agremiación autorizada por el Ministerio de Salud y Protección Social, conforme al listado publicado en la página web del Ministerio del Trabajo o del Ministerio de Salud y Protección Social.', '', ''),
(5, 1, 1, 1, '2019-09-21 00:00:00', 'super', '1.1.5', 'Decreto 2090 de 2003', 'Si aplica, se tienen plenamente identificados los trabajadores que se dediquen en forma permanente al ejercicio de las actividades de alto riesgo establecidas en el Decreto 2090 de 2003 o de las normas que lo adicionen, modifiquen o complementen y se les está cotizando el monto establecido en la norma al Sistema de Pensiones. Verificar si la empresa con la asistencia de la Administradora de Riesgos Laborales está cumpliendo con lo establecido en la presente resolución para actividades de alto riesgo.', 'Si aplica, se tienen plenamente identificados los trabajadores que se dediquen en forma permanente al ejercicio de las actividades de alto riesgo establecidas en el Decreto 2090 de 2003 o de las normas que lo adicionen, modifiquen o complementen y se les está cotizando el monto establecido en la norma al Sistema de Pensiones. Verificar si la empresa con la asistencia de la Administradora de Riesgos Laborales está cumpliendo con lo establecido en la presente resolución para actividades de alto riesgo.', '', ''),
(6, 1, 1, 1, '2019-09-21 00:00:00', 'super', '1.1.6', 'Resolución 2013/1986 Arts. 2, 3 y 11. Resolución 1401/2007 Artículo 4° numeral 5 y Artículo 7°. Decreto 1295/1994, Artículo 35 literal c), Artículo 63., Decreto 1072/2015 - Artículos: 2.2.4.1.6., 2.2.4.6.2. parágrafo 2, 2.2.4.6.8. numeral 9, 2.2.4.6.11. parágrafo 1, 2.2.4.6.12. numeral 10, 2.2.4.6.32. parágrafo 2, 2.2.4.6.34. numeral 4 ', 'La empresa cuenta, de acuerdo con el número de trabajadores con: Vigía en Seguridad y Salud en el Trabajo para empresas de menos de diez (10) de trabajadores. Comité Paritario en Seguridad y Salud en el Trabajo para empresas de diez (10) o más trabajadores.', 'Solicitar el acta mediante la cual se designa el Vigía de Seguridad y Salud en el Trabajo o solicitar los soportes de la convocatoria, elección, conformación del Comité Paritario de Seguridad y Salud en el Trabajo y el acta de constitución. Constatar si es igual el número de representantes del empleador y de los trabajadores y revisar si el acta de conformación se encuentra vigente, para el caso en que proceda la constitución del Comité. Solicitar las actas de reunión mensuales del último año del Comité Paritario o los soportes de las gestiones adelantadas por el Vigía de Seguridad y Salud en el Trabajo, y verificar el cumplimiento de sus funciones.', '', ''),
(7, 1, 1, 1, '2019-09-21 00:00:00', 'super', '1.1.7', 'Decreto 1072/2015 Artículos: 2.2.4.6.2. parágrafo 2, 2.2.4.6.8. numeral 9, 2.2.4.6.11. parágrafo 1, 2.2.4.6.12. numeral 10, 2.2.4.6.32. parágrafo 2, 2.2.4.6.34. numeral 4', 'El Vigía en Seguridad y Salud en el Trabajo y los miembros del Comité Paritario en Seguridad y Salud en el Trabajo y sus respectivos miembros (Principales y Suplentes) se encuentran capacitados para poder cumplir las responsabilidades que les asigna la ley.', 'Solicitar registros que constaten la capacitación y evaluación tanto para el Vigía en Seguridad y Salud en el Trabajo o para los miembros del Comité Paritario en Seguridad y Salud en el Trabajo según aplique que estén vigentes.', '', ''),
(8, 1, 1, 1, '2019-09-21 00:00:00', 'super', '1.1.8', 'Resolución 652/2012 Arts. 1, 2, 6, 7 y 8. Resolución1356/2012 Artículo 1°, 2° y 3°', 'La empresa conformó el Comité de Convivencia Laboral y este funciona de acuerdo con la normativa vigente.', 'Solicitar el documento de conformación del Comité de Convivencia Laboral y verificar que esté conformado de acuerdo a la normativa y que su período de conformación se encuentra vigente. Solicitar las actas de las reuniones (como mínimo una reunión cada tres meses) y los informes de Gestión del Comité de Convivencia Laboral, verificando el desarrollo de sus funciones.', '', ''),
(9, 1, 1, 2, '2019-09-21 00:00:00', 'super', '1.2.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.11, 2.2.4.6.12 numeral 6', 'Se cuenta con un programa de capacitación anual en promoción y prevención, que incluye los peligros/riesgos prioritarios, extensivo a todos los niveles de la organización y el mismo se ejecuta.', 'Solicitar el programa de capacitación anual y la matriz de identificación de peligros y verificar que el mismo esté dirigido a los peligros ya identificados, con la evaluación y control del riesgo, y/o necesidades en Seguridad y Salud en el Trabajo, y verificar las evidencias de su cumplimiento. Verificar si el Comité Paritario en Seguridad y Salud en el Trabajo o Vigía en Seguridad y Salud en el Trabajo participó en la revisión anual del plan de capacitación.', '', ''),
(10, 1, 1, 2, '2019-09-21 00:00:00', 'super', '1.2.2', 'Decreto 1072/2015 Artículos: 2.2.4.6.8. numeral 8, 2.2.4.6.11. parágrafo 2, 2.2.4.6.12. numeral 6, 2.2.4.6.13. numeral 4,2.2.4.6.28. numeral 4. 2.2.4.2.4.2. Resolución 2400/1979 Artículo 2°. literal g).', 'Todos los trabajadores, independientemente de su forma de vinculación y/o contratación y de manera previa al inicio de sus labores, reciben capacitación, inducción y reinducción en aspectos generales y específicos de las actividades por realizar que incluya entre otros, la identificación de peligros y control de los riesgos en su trabajo, y la prevención de accidentes de trabajo y enfermedades laborales. Asimismo, se proporcionan las capacitaciones en Seguridad y Salud en el Trabajo de acuerdo con las necesidades identificadas.', 'Solicitar la lista de trabajadores, independientemente de su forma de vinculación y/o contratación y verificar los soportes documentales que den cuenta de la capacitación y de su evaluación, de la inducción y reinducción de conformidad con el criterio. La referencia es el Plan de capacitación, su cumplimento y la cobertura de los trabajadores objeto de cada tema. Para realizar la verificación tener en cuenta: De uno (1) a diez (10) trabajadores verificar el 100%, Entre once (11) y cincuenta (50) trabajadores verificar el 20%, Entre cincuenta y uno (51) y doscientos (200) trabajadores verificar el 10% Mayores a doscientos un (201) trabajadores verificar el registro de 30 trabajadores', '', ''),
(11, 1, 1, 2, '2019-09-21 00:00:00', 'super', '1.2.3', 'Decreto 1072/2015, Artículo. 2.2.4.6.35', 'Los responsables del Sistema de Gestión de Seguridad y Salud en el Trabajo cuentan con el certificado de aprobación del curso de capacitación virtual de cincuenta (50) horas definido por el Ministerio del Trabajo.', 'Solicitar el certificado de aprobación del curso de capacitación virtual de cincuenta (50) horas definido por el Ministerio de Trabajo, expedido a nombre del responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo', '', ''),
(12, 1, 2, 3, '2019-09-21 00:00:00', 'super', '2.1.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.5., 2.2.4.6.6., 2.2.4.6.7., 2.2.4.6.8. Numeral 1', 'En el Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST) se establece por escrito la Política de Seguridad y Salud en el Trabajo, es comunicada al Comité Paritario de Seguridad y Salud en el Trabajo o al Vigía de Seguridad y Salud en el Trabajo. La Política es fechada y firmada por el representante legal, expresa el compromiso de la alta dirección, el alcance sobre todos los centros de trabajo y todos sus trabajadores independientemente de su forma vinculación y/o contratación, es revisada, como mínimo una vez al año, hace parte de las políticas de gestión de la empresa, se encuentra difundida y accesible para todos los niveles de la organización. Incluye como mínimo el compromiso con: – La identificación de los peligros, evaluación y valoración de los riesgos y establece los respectivos controles. – Proteger la seguridad y salud de todos los trabajadores, mediante la mejora continua. – El cumplimiento de la normativa vigente aplicable en materia de riesgos laborales.', 'Solicitar la política del Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST), de la empresa y confirmar que cumpla con los aspectos contenidos en el criterio. Validar para la revisión anual de la política como mínimo: Fecha de emisión, firmada por el representante legal actual, que estén incluidos los requisitos normativos actuales o directrices de la empresa. Entrevistar a los miembros del Comité Paritario de Seguridad y Salud en el Trabajo o Vigía de Seguridad y Salud en el Trabajo para indagar el entendimiento de la política en Seguridad y Salud en el Trabajo. Como referencia preguntar. – Si conocen los peligros, evaluación y valoración de los riesgos y se establecen los respectivos controles. – Si se realizan actividades de Promoción y Prevención. – Si la empresa aplica la normativa legal vigente en materia de riesgos laborales.', '', ''),
(13, 1, 2, 4, '2019-09-21 00:00:00', 'super', '2.2.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.5., 2.2.4.6.6., 2.2.4.6.7., 2.2.4.6.8. Numeral 1', 'En el Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST) se establece por escrito la Política de Seguridad y Salud en el Trabajo, es comunicada al Comité Paritario de Seguridad y Salud en el Trabajo o al Vigía de Seguridad y Salud en el Trabajo. La Política es fechada y firmada por el representante legal, expresa el compromiso de la alta dirección, el alcance sobre todos los centros de trabajo y todos sus trabajadores independientemente de su forma vinculación y/o contratación, es revisada, como mínimo una vez al año, hace parte de las políticas de gestión de la empresa, se encuentra difundida y accesible para todos los niveles de la organización. Incluye como mínimo el compromiso con: – La identificación de los peligros, evaluación y valoración de los riesgos y establece los respectivos controles. – Proteger la seguridad y salud de todos los trabajadores, mediante la mejora continua. – El cumplimiento de la normativa vigente aplicable en materia de riesgos laborales.', 'Solicitar la política del Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST), de la empresa y confirmar que cumpla con los aspectos contenidos en el criterio. Validar para la revisión anual de la política como mínimo: Fecha de emisión, firmada por el representante legal actual, que estén incluidos los requisitos normativos actuales o directrices de la empresa. Entrevistar a los miembros del Comité Paritario de Seguridad y Salud en el Trabajo o Vigía de Seguridad y Salud en el Trabajo para indagar el entendimiento de la política en Seguridad y Salud en el Trabajo. Como referencia preguntar. – Si conocen los peligros, evaluación y valoración de los riesgos y se establecen los respectivos controles. – Si se realizan actividades de Promoción y Prevención. – Si la empresa aplica la normativa legal vigente en materia de riesgos laborales.', '', ''),
(14, 1, 2, 5, '2019-09-21 00:00:00', 'super', '2.3.1', 'Decreto 1072/2015 Artículo. 2.2.4.6.16., Resolución 4502/2012 Artículos 1° y 4°', 'La empresa realizó la evaluación inicial del Sistema de Gestión de Seguridad y Salud en el Trabajo, identificando las prioridades para establecer el plan de trabajo anual o para la actualización del existente y fue realizada por el responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo o si fue contratada, por la empresa con personal externo con licencia en Salud Ocupacional o Seguridad y Salud en el Trabajo o conforme, verificando que la persona que diseñe, ejecute e implemente el Sistema de Gestión de Seguridad y Salud en el Trabajo tenga la formación y cursos solicitada en los artículos 5° y 6° de la presente resolución.', 'Solicitar la evaluación inicial del Sistema de Gestión de Seguridad y Salud en el Trabajo. Mediante la matriz legal, matriz de peligros, identificación de amenazas, verificación de controles, reporte de peligros, lista de asistencia a capacitaciones, análisis de puestos de trabajo, exámenes médicos iniciales y periódicos y seguimiento de indicadores, entre otros.', '', ''),
(15, 1, 2, 6, '2019-09-21 00:00:00', 'super', '2.4.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.8. numeral 7, 2.2.4.6.12. numeral 5, 2.2.4.6.17. numeral 2.3 y parágrafo 2°, 2.2.4.6.20. numeral 3, 2.2.4.6.21. numeral 2, 2.2.4.6.22. numeral 3', 'La empresa diseña y define un plan de trabajo anual para el cumplimiento del Sistema de Gestión de Seguridad y Salud en el Trabajo, el cual identifica los objetivos, metas, responsabilidades, recursos, cronograma de actividades y debe estar firmado por el empleador y el responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo.', 'Solicitar el plan de trabajo anual para alcanzar los objetivos propuestos en el Sistema de Gestión de Seguridad y Salud en el Trabajo, el cual identifica metas, responsabilidades, recursos, cronograma de actividades, firmado por el empleador y el responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo. Verificar el cumplimiento del mismo. En caso de desviaciones en el cumplimiento, solicitar los planes de mejora para el logro del plan inicial.', '', ''),
(16, 1, 2, 7, '2019-09-21 00:00:00', 'super', '2.5.1', 'Decreto 1072/2015 - Artículo. 2.2.4.6.13., Archivo General de la Nación en el Acuerdo 48 del 2000, Acuerdo 49 del 2000, Acuerdo 50 del 2000 y la Ley 594 del 2000 (Ley General de Archivos para Colombia)', 'La empresa cuenta con un sistema de archivo o retención documental, para los registros y documentos que soportan el Sistema de Gestión de Seguridad y Salud en el Trabajo', 'Constatar la existencia de un sistema de archivo o retención documental, para los registros y documentos que soportan el Sistema de Gestión de Seguridad y Salud en el Trabajo. Verificar mediante muestreo que los registros y documentos sean legibles (entendible para el lector objeto), fácilmente identificables y accesibles (para todos los que estén vinculados con cada documento en particular), protegidos contra daño y pérdida.', '', ''),
(17, 1, 2, 8, '2019-09-21 00:00:00', 'super', '2.6.1', 'Decreto 1072/2015 - Artículo. 2.2.4.6.8., numeral 3', 'Quienes tengan responsabilidad sobre el Sistema de Gestión de Seguridad y Salud en el Trabajo rinden cuentas anualmente sobre su desempeño.', 'Solicitar los registros documentales que evidencien la rendición de cuentas anual, al interior de la empresa. Solicitar a la empresa los mecanismos de rendición de cuentas que haya definido y verificar que se haga y se cumplan con los criterios del requisito. La rendición de cuentas debe incluir todos los niveles de la empresa ya que en cada uno de ellos hay responsabilidades sobre la Seguridad y Salud en el Trabajo', '', ''),
(18, 1, 2, 9, '2019-09-21 00:00:00', 'super', '2.7.1', 'Decreto 1072/2015 - Artículos: 2.2.4.6.8. numeral 5, 2.2.4.6.12. numeral 15, 2.2.4.6.17. numeral 1.1', 'La empresa define la matriz legal actualizada que contemple las normas del Sistema General de Riesgos Laborales aplicables a la empresa.', 'Solicitar la matriz legal en la cual se contemple la legislación nacional vigente en materia de riesgos laborales. Verificar que contenga: – Normas vigentes en riesgos laborales, aplicables a la empresa. – Normas técnicas de cumplimiento de acuerdo con los peligros / riesgos identificados en la empresa. – Normas vigentes de diferentes entidades que le aplique.', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_seccion_t5`
--

CREATE TABLE `ps_seccion_t5` (
  `idseccion_t5` int(11) NOT NULL,
  `usuario_t5` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `finicio_t5` datetime NOT NULL,
  `fcierre_t5` datetime NOT NULL,
  `estado_t5` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_subcategoria_t4`
--

CREATE TABLE `ps_subcategoria_t4` (
  `idsubcategoria_t4` int(11) NOT NULL,
  `idcategoria_t4` int(11) NOT NULL,
  `n_identificador_t4` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t4` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `valor_total_t4` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t4` datetime NOT NULL,
  `usumod_t4` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ps_subcategoria_t4`
--

INSERT INTO `ps_subcategoria_t4` (`idsubcategoria_t4`, `idcategoria_t4`, `n_identificador_t4`, `descripcion_t4`, `valor_total_t4`, `fmod_t4`, `usumod_t4`) VALUES
(1, 1, 'ESTÁNDAR 1', '  RECURSOS', '10%', '2019-09-21 00:00:00', 'superusuario\r\n'),
(2, 1, 'ESTANDAR  2', 'GESTIÓN INTEGRAL DEL SISTEMA DE LA SEGURIDAD Y SALUD EN EL TRABAJO', '15%', '2019-09-21 00:00:00', 'Superusuario'),
(3, 2, 'ESTÁNDAR 3', 'GESTIÓN DE LA SALUD', '20%', '2019-09-21 00:00:00', 'superusuario'),
(4, 2, 'ESTÁNDAR 5', 'GESTIÓN DE AMENAZAS', '10%', '2019-09-21 00:00:00', 'Superusuario'),
(5, 3, 'ESTÁNDAR 6', 'VERIFICACIÓN DEL SISTEMA DE GESTIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO', '5%', '2019-09-21 00:00:00', 'Superusuario'),
(6, 4, 'ESTÁNDAR  7', 'MEJORAMIENTO', '10%', '2019-09-21 00:00:00', 'Superusuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_terceros_t1`
--

CREATE TABLE `ps_terceros_t1` (
  `idterceros_t1` int(11) NOT NULL,
  `nombre_tercero_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `identificador_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `responsable_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t1` datetime NOT NULL,
  `usureg_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `correo_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_identificacion_t1` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ps_usuario_t0`
--

CREATE TABLE `ps_usuario_t0` (
  `idusuario_t0` int(11) NOT NULL,
  `cedula_t0` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `primer_nombre_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `segunda_nombre_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `primer_apellido_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_apellido_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_completo_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_cracion_t0` datetime NOT NULL,
  `telefono_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_t0` longtext CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `clave_t0` varchar(32) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
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
-- Indices de la tabla `ps_complementos_t3`
--
ALTER TABLE `ps_complementos_t3`
  ADD PRIMARY KEY (`idcomplementos_t3`);

--
-- Indices de la tabla `ps_evaluacion_t9`
--
ALTER TABLE `ps_evaluacion_t9`
  ADD PRIMARY KEY (`idevaluacion_t9`);

--
-- Indices de la tabla `ps_formato_t2`
--
ALTER TABLE `ps_formato_t2`
  ADD PRIMARY KEY (`idformato_t2`);

--
-- Indices de la tabla `ps_items_t10`
--
ALTER TABLE `ps_items_t10`
  ADD PRIMARY KEY (`iditens_t10`);

--
-- Indices de la tabla `ps_seccion_t5`
--
ALTER TABLE `ps_seccion_t5`
  ADD PRIMARY KEY (`idseccion_t5`);

--
-- Indices de la tabla `ps_subcategoria_t4`
--
ALTER TABLE `ps_subcategoria_t4`
  ADD PRIMARY KEY (`idsubcategoria_t4`);

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
  MODIFY `idrelacion_t6` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT de la tabla `ps_complementos_t3`
--
ALTER TABLE `ps_complementos_t3`
  MODIFY `idcomplementos_t3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ps_evaluacion_t9`
--
ALTER TABLE `ps_evaluacion_t9`
  MODIFY `idevaluacion_t9` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ps_formato_t2`
--
ALTER TABLE `ps_formato_t2`
  MODIFY `idformato_t2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ps_items_t10`
--
ALTER TABLE `ps_items_t10`
  MODIFY `iditens_t10` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ps_seccion_t5`
--
ALTER TABLE `ps_seccion_t5`
  MODIFY `idseccion_t5` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ps_subcategoria_t4`
--
ALTER TABLE `ps_subcategoria_t4`
  MODIFY `idsubcategoria_t4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
