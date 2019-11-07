-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.17-log - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para gestion
CREATE DATABASE IF NOT EXISTS `gestion` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gestion`;

-- Volcando estructura para tabla gestion.ps_categoria_for_t6
CREATE TABLE IF NOT EXISTS `ps_categoria_for_t6` (
  `idrelacion_t6` int(11) NOT NULL AUTO_INCREMENT,
  `idformato_t6` int(11) NOT NULL,
  `idcategoria_t6` int(11) NOT NULL,
  `tituloformato_t6` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t6` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t6` datetime NOT NULL,
  `umod_t6` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idrelacion_t6`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_categoria_for_t6: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_categoria_for_t6` DISABLE KEYS */;
INSERT INTO `ps_categoria_for_t6` (`idrelacion_t6`, `idformato_t6`, `idcategoria_t6`, `tituloformato_t6`, `categoria_t6`, `fmod_t6`, `umod_t6`) VALUES
	(23, 1, 1, 'Titulo Definido', 'PLANEAR', '2019-10-19 09:08:43', 'superusuario'),
	(24, 1, 2, 'Titulo Definido', 'HACER', '2019-10-19 09:08:43', 'superusuario'),
	(25, 1, 3, 'Titulo Definido', 'VERIFICAR', '2019-10-19 09:08:43', 'superusuario'),
	(26, 1, 4, 'Titulo Definido', 'ACTUAR', '2019-10-19 09:08:44', 'superusuario'),
	(27, 1, 1, 'Formato 1111', 'PLANEAR', '2019-10-30 06:03:52', 'superusuario'),
	(28, 1, 2, 'Formato 1111', 'HACER', '2019-10-30 06:03:52', 'superusuario'),
	(29, 1, 3, 'Formato 1111', 'VERIFICAR', '2019-10-30 06:03:52', 'superusuario'),
	(30, 1, 4, 'Formato 1111', 'ACTUAR', '2019-10-30 06:03:52', 'superusuario');
/*!40000 ALTER TABLE `ps_categoria_for_t6` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_categoria_items_t7
CREATE TABLE IF NOT EXISTS `ps_categoria_items_t7` (
  `idrelacion2` int(11) NOT NULL AUTO_INCREMENT,
  `identificativo_t7` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `subcategoria_t7` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `complementario_t7` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t7` datetime NOT NULL,
  `usrmod_t7` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idrelacion2`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_categoria_items_t7: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_categoria_items_t7` DISABLE KEYS */;
INSERT INTO `ps_categoria_items_t7` (`idrelacion2`, `identificativo_t7`, `subcategoria_t7`, `complementario_t7`, `fmod_t7`, `usrmod_t7`) VALUES
	(90, '1', NULL, '1', '2019-10-31 09:35:31', 'super'),
	(91, '2', NULL, '1', '2019-10-31 09:35:31', 'super'),
	(92, '3', NULL, '1', '2019-10-31 09:35:31', 'super'),
	(93, '4', NULL, '1', '2019-10-31 09:35:32', 'super');
/*!40000 ALTER TABLE `ps_categoria_items_t7` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_categoria_t8
CREATE TABLE IF NOT EXISTS `ps_categoria_t8` (
  `idcategoria_t8` int(11) NOT NULL AUTO_INCREMENT,
  `n_identificador_t8` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_t8` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t8` datetime NOT NULL,
  `usumod_t8` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idcategoria_t8`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_categoria_t8: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_categoria_t8` DISABLE KEYS */;
INSERT INTO `ps_categoria_t8` (`idcategoria_t8`, `n_identificador_t8`, `nombre_t8`, `fmod_t8`, `usumod_t8`) VALUES
	(1, '1', 'PLANEAR', '2019-10-30 06:08:57', 'SuperUsuario'),
	(2, '2', 'HACER', '2019-10-15 01:59:14', 'SuperUsuario'),
	(3, '3', 'VERIFICAR', '2019-09-08 00:00:00', 'SuperUsuario'),
	(4, '4', 'ACTUAR', '2019-09-08 00:00:00', 'SuperUsuario');
/*!40000 ALTER TABLE `ps_categoria_t8` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_complementos_t3
CREATE TABLE IF NOT EXISTS `ps_complementos_t3` (
  `idcomplementos_t3` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria_t3` int(11) NOT NULL,
  `idsubcategoria_t3` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fmod_t3` datetime NOT NULL,
  `usumod_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `n_identificativo_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `valoracion_t3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idcomplementos_t3`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_complementos_t3: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_complementos_t3` DISABLE KEYS */;
INSERT INTO `ps_complementos_t3` (`idcomplementos_t3`, `idcategoria_t3`, `idsubcategoria_t3`, `fmod_t3`, `usumod_t3`, `n_identificativo_t3`, `descripcion_t3`, `valoracion_t3`) VALUES
	(1, 1, '8', '2019-10-31 09:35:29', 'super', '1 Estándar', 'Recursos financieros, técnicos humanos y de otra índole ', '4'),
	(2, 1, '8', '2019-10-19 08:46:15', 'super', '2 Estándar', 'Capacitación en el Sistema de Gestión de Seguridad y Salud en el Trabajo', '6'),
	(3, 1, '2', '2019-10-20 07:01:34', 'super', '1 Estándar', 'Política de Seguridad y Salud en el Trabajo', '15'),
	(4, 1, '2', '2019-09-21 00:00:00', 'SuperUsuario', '2 Estándar', 'Objetivos del Sistema de Gestión de Seguridad y Salud en el Trabajo SG-SST', '1%'),
	(5, 1, '2', '2019-10-15 03:27:26', 'super', '3 Estándar', 'Evaluación inicial del Sistema de Gestión – Seguridad y Salud en el Trabajo', '1%'),
	(6, 1, '2', '2019-09-21 00:00:00', 'superusuario', '4 Estándar', 'Plan Anual de Trabajo', '2%'),
	(7, 1, '2', '2019-10-20 04:52:00', 'super', '5 Estánda', 'Conservación de la documentación', '10'),
	(8, 1, '2', '2019-09-21 00:00:00', 'superusuario', '6 Estándar', 'Rendición de cuentas', '1%'),
	(9, 1, '2', '2019-09-21 00:00:00', 'super usuario', '7 Estándar', 'Normativa nacional vigente y aplicable en materia de Seguridad y Salud en el Trabajo', '2%'),
	(10, 1, '2', '2019-09-21 00:00:00', 'susperusuario', '8 Estándar', 'Mecanismos de Comunicación', '1%'),
	(11, 1, '2', '2019-09-21 00:00:00', 'super usuario', '9 Estándar', 'Adquisiciones', '1%'),
	(12, 1, '2', '2019-09-21 00:00:00', 'super', '10 Estándar', 'Contratación', '2%'),
	(13, 1, '2', '2019-09-21 00:00:00', 'super', '11 Estándar', ' Gestión del cambio', '1%'),
	(14, 2, NULL, '2019-09-21 00:00:00', 'super', '1 Estándar', 'Condiciones de salud en el trabajo', '9%'),
	(15, 2, NULL, '2019-09-21 00:00:00', 'super', '2 Estándar', 'Registro, reporte e investigación de las enfermedades laborales, incidentes y accidentes del trabajo', '5%'),
	(16, 2, NULL, '2019-09-21 00:00:00', 'super', '3 Estándar', 'Mecanismos de vigilancia de las condiciones de salud de los trabajadores', '6%'),
	(17, 2, NULL, '2019-09-21 00:00:00', 'super', 'ESTÁNDAR 1', 'GESTIÓN DE AMENAZAS', '10%'),
	(18, 3, NULL, '2019-09-21 00:00:00', 'super', '1 Estándar', 'Gestión y resultados del Sistema de Gestión de Seguridad y Salud en el Trabajo', '5%'),
	(19, 4, NULL, '2019-09-21 00:00:00', 'super', '1 Estándar', 'Acciones preventivas y correctivas con base en los resultados del Sistema de Gestión de Seguridad y Salud en el Trabajo', '10%');
/*!40000 ALTER TABLE `ps_complementos_t3` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_evaluacion_t9
CREATE TABLE IF NOT EXISTS `ps_evaluacion_t9` (
  `idevaluacion_t9` int(11) NOT NULL AUTO_INCREMENT,
  `nomb_formato_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `categoria_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `subcategoria_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `valor_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `valoracion_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `justificaicion_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `observacion_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `items_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fmod_t9` datetime NOT NULL,
  `usumod_t9` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idevaluacion_t9`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla gestion.ps_evaluacion_t9: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_evaluacion_t9` DISABLE KEYS */;
INSERT INTO `ps_evaluacion_t9` (`idevaluacion_t9`, `nomb_formato_t9`, `categoria_t9`, `subcategoria_t9`, `valor_t9`, `valoracion_t9`, `justificaicion_t9`, `observacion_t9`, `items_t9`, `fmod_t9`, `usumod_t9`) VALUES
	(1, '202', '2', '2', '2', '2', '2', '2', '2', '2019-09-21 00:00:00', 'super');
/*!40000 ALTER TABLE `ps_evaluacion_t9` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_eval_formato_t25
CREATE TABLE IF NOT EXISTS `ps_eval_formato_t25` (
  `idps_eval_formato_t25` int(11) NOT NULL AUTO_INCREMENT,
  `idformato_t25` int(11) NOT NULL DEFAULT '0',
  `finicio_t25` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ffinal_t25` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tiempodil_t25` float DEFAULT '0',
  `area_admin_t25` varchar(50) DEFAULT '0',
  `fmod_t25` datetime DEFAULT '0000-00-00 00:00:00',
  `usrmod_t25` varchar(100) DEFAULT '0',
  PRIMARY KEY (`idps_eval_formato_t25`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='resumen de la evaluacion';

-- Volcando datos para la tabla gestion.ps_eval_formato_t25: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_eval_formato_t25` DISABLE KEYS */;
INSERT INTO `ps_eval_formato_t25` (`idps_eval_formato_t25`, `idformato_t25`, `finicio_t25`, `ffinal_t25`, `tiempodil_t25`, `area_admin_t25`, `fmod_t25`, `usrmod_t25`) VALUES
	(1, 1, '2019-10-31 12:45:00', '2019-10-31 12:49:00', 4, 'cocina', '2019-10-31 12:49:00', 'super usuario');
/*!40000 ALTER TABLE `ps_eval_formato_t25` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_formato_t2
CREATE TABLE IF NOT EXISTS `ps_formato_t2` (
  `idformato_t2` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_t2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t2` datetime NOT NULL,
  `usumod_t2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_t2` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idformato_t2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_formato_t2: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_formato_t2` DISABLE KEYS */;
INSERT INTO `ps_formato_t2` (`idformato_t2`, `titulo_t2`, `descripcion_t2`, `fmod_t2`, `usumod_t2`, `categoria_t2`) VALUES
	(1, 'Formato 1111', 'Esta es la información del formato que vamos a informar', '2019-10-30 06:03:51', 'superusuario', '');
/*!40000 ALTER TABLE `ps_formato_t2` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_items_t10
CREATE TABLE IF NOT EXISTS `ps_items_t10` (
  `iditens_t10` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria_t10` int(11) DEFAULT NULL,
  `idsubcategoria_t10` int(11) DEFAULT NULL,
  `idcomplemento_t10` int(11) DEFAULT NULL,
  `n_identificativo_t10` longtext COLLATE utf8_spanish_ci NOT NULL,
  `marco_legal_t10` longtext COLLATE utf8_spanish_ci NOT NULL,
  `criterio_t10` longtext COLLATE utf8_spanish_ci NOT NULL,
  `mo_verificacion_t10` longtext COLLATE utf8_spanish_ci NOT NULL,
  `puntuaje_t10` longtext COLLATE utf8_spanish_ci,
  `valoracion_t10` longtext COLLATE utf8_spanish_ci,
  `usumod_t10` longtext COLLATE utf8_spanish_ci,
  `fmod_t10` datetime DEFAULT NULL,
  PRIMARY KEY (`iditens_t10`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla gestion.ps_items_t10: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_items_t10` DISABLE KEYS */;
INSERT INTO `ps_items_t10` (`iditens_t10`, `idcategoria_t10`, `idsubcategoria_t10`, `idcomplemento_t10`, `n_identificativo_t10`, `marco_legal_t10`, `criterio_t10`, `mo_verificacion_t10`, `puntuaje_t10`, `valoracion_t10`, `usumod_t10`, `fmod_t10`) VALUES
	(1, 1, 1, 1, '1.1.1', 'Decreto 1607/2002            Decreto 1072/2015, Artículo. 2.2.4.6.8 numerales 2 y 10. Resolución 4502/2012  Decreto 1295/1994, Artículo. 26. Artículos 5 y 6 de la presente resolución', 'El diseño del Sistema de Gestión de Seguridad y Salud en el Trabajo, para empresas de diez (10) o menos trabajadores clasificadas en Riesgo I, II, III, podrá ser realizado por técnicos o tecnólogos en eguridad y Salud en el Trabajo o en alguna de sus áreas, con licencia vigente en Salud Ocupacional o Seguridad y Salud en el Trabajo que acrediten mínimo dos (2) años de experiencia en el desarrollo de actividades de Seguridad y Salud en el Trabajo y que acrediten la aprobación del curso de capacitación virtual de cincuenta (50) horas. Para empresas de diez (10) o menos trabaja dores clasificadas en Riesgo IV y V, podrá ser realizado por un Profesional en Salud Ocupacional o Seguridad y Salud en el Trabajo, profesional con posgrado en Seguridad y Salud en el Trabajo, con licencia en Salud Ocupacional o Seguridad y Salud en el Trabajo vigente y que acrediten la aprobación del curso de capacitación virtual de cincuenta (50) horas.  La persona que diseñe, ejecute e implemente el Sistema de Gestión de Seguridad y Salud en el Trabajo tenga la formación y cursos solicitada en los artículos 5 y 6 de la presente resolución.', 'Solicitar el documento en el que consta la designación del responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo, con la respectiva asignación de responsabilidades y solicitar el certificado correspondiente, que acredite la formación de acuerdo con lo establecido en el presente criterio. Se solicita el título de formación de técnico, tecnólogo, profesional, especialista o maestría en Seguridad y Salud en el Trabajo. Se verifica la licencia en Seguridad y Salud en el Trabajo vigente. Se constata la existencia del certificado de aprobación del curso virtual de cincuenta (50) horas en Seguridad y Salud en el Trabajo. A quien no tenga licencia se le solicita que cumpla los requisitos de formación y cursos solicitada en los artículos 5 y 6 de la presente resolución.', '', '', 'susper', '2019-09-21 00:00:00'),
	(2, 1, 1, 1, '1.1.2', 'Decreto 1607/2002            Decreto 1072/2015, Artículo. 2.2.4.6.8 numerales 2 y 10. Resolución 4502/2012  Decreto 1295/1994, Artículo. 26. Artículos 5 y 6 de la presente resolución', 'La empresa asignó y documentó las responsabilidades específicas en el Sistema de Gestión de Seguridad y Salud en el Trabajo a todos los niveles de la organización, para la implementación y mejora continua del Sistema de Gestión de Seguridad y Salud en el Trabajo.', 'Solicitar el soporte que contenga la asignación y documentación de las responsabilidades en Seguridad y Salud en el Trabajo.', '', '', 'super', '2019-09-21 00:00:00'),
	(3, 1, 1, 1, '1.1.3', 'Decreto 1072/2015, Artículo 2.2.4.6.8. numeral 4, Artículo 2.2.4.6.17 numeral 2.5.', 'La empresa define y asigna los recursos financieros, humanos, técnicos y tecnológicos, requeridos para la implementación, mantenimiento y continuidad del Sistema de Gestión de Seguridad y Salud en el Trabajo.', 'Constatar la existencia de evidencias físicas y/o documentales que demuestren la definición y asignación de los recursos financieros, humanos, técnicos y de otra índole para la implementación, mantenimiento y continuidad del Sistema de Gestión de Seguridad y Salud en el Trabajo, evidenciando la asignación de recursos con base en el plan de trabajo anual.', '', '', 'super', '2019-09-21 00:00:00'),
	(4, 1, 1, 1, '1.1.4', 'Decreto 2090/2003  Artículo 5°. Ley 1562/2012 Artículos 2°, 6° y 7°. Decreto 1295/1994 Artículos 4, 16, 21 y 23. Decreto 1072/2015 Artículos: 2.2.4.2.2.5., 2.2.4.2.2.6., 2.2.4.2.2.13., 2.2.4.2.3.4., 2.2.4.2.4.3., 2.2.4.3.7., 2.2.4.6.28. numeral 3., 2.2.1.6.1.3., 2.2.1.6.1.4., 2.2.1.6.4.6., 2.2.1.6.4.7. - Ley 1150/2007 - Artículo 23.', 'Todos los trabajadores, independientemente de su forma de vinculación o contratación están afiliados al Sistema General de Riesgos Laborales y el pago de los aportes se realiza conforme a la normativa y en la respectiva clase de riesgo.', 'Solicitar una lista de los trabajadores vinculados laboralmente a la fecha y comparar con la planilla de pago de aportes a la seguridad social de los cuatro (4) meses anteriores a la fecha de verificación. Realizar el siguiente muestreo: De uno (1) a diez (10) trabajadores verificar el 100%. Entre once (11) y cincuenta (50) trabajadores verificar el 20%. Entre cincuenta y uno (51) y doscientos (200) trabajadores verificar el 10%. Mayores a doscientos un (201) trabajadores verificar el registro de 30 trabajadores.. Solicitar una lista de los trabajadores vinculados por prestación de servicios a la fecha y comparar con la última planilla de pago de aportes a la seguridad social suministrada por los contratistas. Tomar: De uno (1) a diez (10) trabajadores verificar el 100%. Entre once (11) y cincuenta (50) trabajadores verificar el 20%. Entre cincuenta y un (51) y doscientos (200) trabajadores verificar el 10% Mayores a doscientos un (201) trabajadores verificar el registro de 30 trabajadores. De la muestra seleccionada verifique la afiliación al Sistema General de Seguridad Social. En los casos excepcionales de trabajadores independientes que se afilien a través de agremiaciones verificar que corresponda a una agremiación autorizada por el Ministerio de Salud y Protección Social, conforme al listado publicado en la página web del Ministerio del Trabajo o del Ministerio de Salud y Protección Social.', '', '', 'super', '2019-09-21 00:00:00'),
	(5, 1, 1, 1, '1.1.5', 'Decreto 2090 de 2003', 'Si aplica, se tienen plenamente identificados los trabajadores que se dediquen en forma permanente al ejercicio de las actividades de alto riesgo establecidas en el Decreto 2090 de 2003 o de las normas que lo adicionen, modifiquen o complementen y se les está cotizando el monto establecido en la norma al Sistema de Pensiones. Verificar si la empresa con la asistencia de la Administradora de Riesgos Laborales está cumpliendo con lo establecido en la presente resolución para actividades de alto riesgo.', 'Si aplica, se tienen plenamente identificados los trabajadores que se dediquen en forma permanente al ejercicio de las actividades de alto riesgo establecidas en el Decreto 2090 de 2003 o de las normas que lo adicionen, modifiquen o complementen y se les está cotizando el monto establecido en la norma al Sistema de Pensiones. Verificar si la empresa con la asistencia de la Administradora de Riesgos Laborales está cumpliendo con lo establecido en la presente resolución para actividades de alto riesgo.', '', '', 'super', '2019-09-21 00:00:00'),
	(6, 1, 1, 1, '1.1.6', 'Resolución 2013/1986 Arts. 2, 3 y 11. Resolución 1401/2007 Artículo 4° numeral 5 y Artículo 7°. Decreto 1295/1994, Artículo 35 literal c), Artículo 63., Decreto 1072/2015 - Artículos: 2.2.4.1.6., 2.2.4.6.2. parágrafo 2, 2.2.4.6.8. numeral 9, 2.2.4.6.11. parágrafo 1, 2.2.4.6.12. numeral 10, 2.2.4.6.32. parágrafo 2, 2.2.4.6.34. numeral 4 ', 'La empresa cuenta, de acuerdo con el número de trabajadores con: Vigía en Seguridad y Salud en el Trabajo para empresas de menos de diez (10) de trabajadores. Comité Paritario en Seguridad y Salud en el Trabajo para empresas de diez (10) o más trabajadores.', 'Solicitar el acta mediante la cual se designa el Vigía de Seguridad y Salud en el Trabajo o solicitar los soportes de la convocatoria, elección, conformación del Comité Paritario de Seguridad y Salud en el Trabajo y el acta de constitución. Constatar si es igual el número de representantes del empleador y de los trabajadores y revisar si el acta de conformación se encuentra vigente, para el caso en que proceda la constitución del Comité. Solicitar las actas de reunión mensuales del último año del Comité Paritario o los soportes de las gestiones adelantadas por el Vigía de Seguridad y Salud en el Trabajo, y verificar el cumplimiento de sus funciones.', '', '', 'super', '2019-09-21 00:00:00'),
	(7, 1, 1, 1, '1.1.7', 'Decreto 1072/2015 Artículos: 2.2.4.6.2. parágrafo 2, 2.2.4.6.8. numeral 9, 2.2.4.6.11. parágrafo 1, 2.2.4.6.12. numeral 10, 2.2.4.6.32. parágrafo 2, 2.2.4.6.34. numeral 4', 'El Vigía en Seguridad y Salud en el Trabajo y los miembros del Comité Paritario en Seguridad y Salud en el Trabajo y sus respectivos miembros (Principales y Suplentes) se encuentran capacitados para poder cumplir las responsabilidades que les asigna la ley.', 'Solicitar registros que constaten la capacitación y evaluación tanto para el Vigía en Seguridad y Salud en el Trabajo o para los miembros del Comité Paritario en Seguridad y Salud en el Trabajo según aplique que estén vigentes.', '', '', 'super', '2019-09-21 00:00:00'),
	(8, 1, 1, 1, '1.1.8', 'Resolución 652/2012 Arts. 1, 2, 6, 7 y 8. Resolución1356/2012 Artículo 1°, 2° y 3°', 'La empresa conformó el Comité de Convivencia Laboral y este funciona de acuerdo con la normativa vigente.', 'Solicitar el documento de conformación del Comité de Convivencia Laboral y verificar que esté conformado de acuerdo a la normativa y que su período de conformación se encuentra vigente. Solicitar las actas de las reuniones (como mínimo una reunión cada tres meses) y los informes de Gestión del Comité de Convivencia Laboral, verificando el desarrollo de sus funciones.', '', '', 'super', '2019-09-21 00:00:00'),
	(9, 1, 1, 2, '1.2.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.11, 2.2.4.6.12 numeral 6', 'Se cuenta con un programa de capacitación anual en promoción y prevención, que incluye los peligros/riesgos prioritarios, extensivo a todos los niveles de la organización y el mismo se ejecuta.', 'Solicitar el programa de capacitación anual y la matriz de identificación de peligros y verificar que el mismo esté dirigido a los peligros ya identificados, con la evaluación y control del riesgo, y/o necesidades en Seguridad y Salud en el Trabajo, y verificar las evidencias de su cumplimiento. Verificar si el Comité Paritario en Seguridad y Salud en el Trabajo o Vigía en Seguridad y Salud en el Trabajo participó en la revisión anual del plan de capacitación.', '', '', 'super', '2019-09-21 00:00:00'),
	(10, 1, 1, 2, '1.2.2', 'Decreto 1072/2015 Artículos: 2.2.4.6.8. numeral 8, 2.2.4.6.11. parágrafo 2, 2.2.4.6.12. numeral 6, 2.2.4.6.13. numeral 4,2.2.4.6.28. numeral 4. 2.2.4.2.4.2. Resolución 2400/1979 Artículo 2°. literal g).', 'Todos los trabajadores, independientemente de su forma de vinculación y/o contratación y de manera previa al inicio de sus labores, reciben capacitación, inducción y reinducción en aspectos generales y específicos de las actividades por realizar que incluya entre otros, la identificación de peligros y control de los riesgos en su trabajo, y la prevención de accidentes de trabajo y enfermedades laborales. Asimismo, se proporcionan las capacitaciones en Seguridad y Salud en el Trabajo de acuerdo con las necesidades identificadas.', 'Solicitar la lista de trabajadores, independientemente de su forma de vinculación y/o contratación y verificar los soportes documentales que den cuenta de la capacitación y de su evaluación, de la inducción y reinducción de conformidad con el criterio. La referencia es el Plan de capacitación, su cumplimento y la cobertura de los trabajadores objeto de cada tema. Para realizar la verificación tener en cuenta: De uno (1) a diez (10) trabajadores verificar el 100%, Entre once (11) y cincuenta (50) trabajadores verificar el 20%, Entre cincuenta y uno (51) y doscientos (200) trabajadores verificar el 10% Mayores a doscientos un (201) trabajadores verificar el registro de 30 trabajadores', '', '', 'super', '2019-09-21 00:00:00'),
	(11, 1, 1, 2, '1.2.3', 'Decreto 1072/2015, Artículo. 2.2.4.6.35', 'Los responsables del Sistema de Gestión de Seguridad y Salud en el Trabajo cuentan con el certificado de aprobación del curso de capacitación virtual de cincuenta (50) horas definido por el Ministerio del Trabajo.', 'Solicitar el certificado de aprobación del curso de capacitación virtual de cincuenta (50) horas definido por el Ministerio de Trabajo, expedido a nombre del responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo', '', '', 'super', '2019-09-21 00:00:00'),
	(12, 1, 2, 3, '2.1.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.5., 2.2.4.6.6., 2.2.4.6.7., 2.2.4.6.8. Numeral 1', 'En el Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST) se establece por escrito la Política de Seguridad y Salud en el Trabajo, es comunicada al Comité Paritario de Seguridad y Salud en el Trabajo o al Vigía de Seguridad y Salud en el Trabajo. La Política es fechada y firmada por el representante legal, expresa el compromiso de la alta dirección, el alcance sobre todos los centros de trabajo y todos sus trabajadores independientemente de su forma vinculación y/o contratación, es revisada, como mínimo una vez al año, hace parte de las políticas de gestión de la empresa, se encuentra difundida y accesible para todos los niveles de la organización. Incluye como mínimo el compromiso con: – La identificación de los peligros, evaluación y valoración de los riesgos y establece los respectivos controles. – Proteger la seguridad y salud de todos los trabajadores, mediante la mejora continua. – El cumplimiento de la normativa vigente aplicable en materia de riesgos laborales.', 'Solicitar la política del Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST), de la empresa y confirmar que cumpla con los aspectos contenidos en el criterio. Validar para la revisión anual de la política como mínimo: Fecha de emisión, firmada por el representante legal actual, que estén incluidos los requisitos normativos actuales o directrices de la empresa. Entrevistar a los miembros del Comité Paritario de Seguridad y Salud en el Trabajo o Vigía de Seguridad y Salud en el Trabajo para indagar el entendimiento de la política en Seguridad y Salud en el Trabajo. Como referencia preguntar. – Si conocen los peligros, evaluación y valoración de los riesgos y se establecen los respectivos controles. – Si se realizan actividades de Promoción y Prevención. – Si la empresa aplica la normativa legal vigente en materia de riesgos laborales.', '', '', 'super', '2019-09-21 00:00:00'),
	(13, 1, 2, 4, '2.2.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.5., 2.2.4.6.6., 2.2.4.6.7., 2.2.4.6.8. Numeral 1', 'En el Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST) se establece por escrito la Política de Seguridad y Salud en el Trabajo, es comunicada al Comité Paritario de Seguridad y Salud en el Trabajo o al Vigía de Seguridad y Salud en el Trabajo. La Política es fechada y firmada por el representante legal, expresa el compromiso de la alta dirección, el alcance sobre todos los centros de trabajo y todos sus trabajadores independientemente de su forma vinculación y/o contratación, es revisada, como mínimo una vez al año, hace parte de las políticas de gestión de la empresa, se encuentra difundida y accesible para todos los niveles de la organización. Incluye como mínimo el compromiso con: – La identificación de los peligros, evaluación y valoración de los riesgos y establece los respectivos controles. – Proteger la seguridad y salud de todos los trabajadores, mediante la mejora continua. – El cumplimiento de la normativa vigente aplicable en materia de riesgos laborales.', 'Solicitar la política del Sistema de Gestión de Seguridad y Salud en el Trabajo (SG-SST), de la empresa y confirmar que cumpla con los aspectos contenidos en el criterio. Validar para la revisión anual de la política como mínimo: Fecha de emisión, firmada por el representante legal actual, que estén incluidos los requisitos normativos actuales o directrices de la empresa. Entrevistar a los miembros del Comité Paritario de Seguridad y Salud en el Trabajo o Vigía de Seguridad y Salud en el Trabajo para indagar el entendimiento de la política en Seguridad y Salud en el Trabajo. Como referencia preguntar. – Si conocen los peligros, evaluación y valoración de los riesgos y se establecen los respectivos controles. – Si se realizan actividades de Promoción y Prevención. – Si la empresa aplica la normativa legal vigente en materia de riesgos laborales.', '', '', 'super', '2019-09-21 00:00:00'),
	(14, 1, 2, 5, '2.3.1', 'Decreto 1072/2015 Artículo. 2.2.4.6.16., Resolución 4502/2012 Artículos 1° y 4°', 'La empresa realizó la evaluación inicial del Sistema de Gestión de Seguridad y Salud en el Trabajo, identificando las prioridades para establecer el plan de trabajo anual o para la actualización del existente y fue realizada por el responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo o si fue contratada, por la empresa con personal externo con licencia en Salud Ocupacional o Seguridad y Salud en el Trabajo o conforme, verificando que la persona que diseñe, ejecute e implemente el Sistema de Gestión de Seguridad y Salud en el Trabajo tenga la formación y cursos solicitada en los artículos 5° y 6° de la presente resolución.', 'Solicitar la evaluación inicial del Sistema de Gestión de Seguridad y Salud en el Trabajo. Mediante la matriz legal, matriz de peligros, identificación de amenazas, verificación de controles, reporte de peligros, lista de asistencia a capacitaciones, análisis de puestos de trabajo, exámenes médicos iniciales y periódicos y seguimiento de indicadores, entre otros.', '', '', 'super', '2019-09-21 00:00:00'),
	(15, 1, 2, 6, '2.4.1', 'Decreto 1072/2015 Artículos: 2.2.4.6.8. numeral 7, 2.2.4.6.12. numeral 5, 2.2.4.6.17. numeral 2.3 y parágrafo 2°, 2.2.4.6.20. numeral 3, 2.2.4.6.21. numeral 2, 2.2.4.6.22. numeral 3', 'La empresa diseña y define un plan de trabajo anual para el cumplimiento del Sistema de Gestión de Seguridad y Salud en el Trabajo, el cual identifica los objetivos, metas, responsabilidades, recursos, cronograma de actividades y debe estar firmado por el empleador y el responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo.', 'Solicitar el plan de trabajo anual para alcanzar los objetivos propuestos en el Sistema de Gestión de Seguridad y Salud en el Trabajo, el cual identifica metas, responsabilidades, recursos, cronograma de actividades, firmado por el empleador y el responsable del Sistema de Gestión de Seguridad y Salud en el Trabajo. Verificar el cumplimiento del mismo. En caso de desviaciones en el cumplimiento, solicitar los planes de mejora para el logro del plan inicial.', '', '', 'super', '2019-09-21 00:00:00'),
	(16, 1, 2, 7, '2.5.1', 'Decreto 1072/2015 - Artículo. 2.2.4.6.13., Archivo General de la Nación en el Acuerdo 48 del 2000, Acuerdo 49 del 2000, Acuerdo 50 del 2000 y la Ley 594 del 2000 (Ley General de Archivos para Colombia)', 'La empresa cuenta con un sistema de archivo o retención documental, para los registros y documentos que soportan el Sistema de Gestión de Seguridad y Salud en el Trabajo', 'Constatar la existencia de un sistema de archivo o retención documental, para los registros y documentos que soportan el Sistema de Gestión de Seguridad y Salud en el Trabajo. Verificar mediante muestreo que los registros y documentos sean legibles (entendible para el lector objeto), fácilmente identificables y accesibles (para todos los que estén vinculados con cada documento en particular), protegidos contra daño y pérdida.', '', '', 'super', '2019-09-21 00:00:00'),
	(17, 1, 2, 8, '2.6.1', 'Decreto 1072/2015 - Artículo. 2.2.4.6.8., numeral 3', 'Quienes tengan responsabilidad sobre el Sistema de Gestión de Seguridad y Salud en el Trabajo rinden cuentas anualmente sobre su desempeño.', 'Solicitar los registros documentales que evidencien la rendición de cuentas anual, al interior de la empresa. Solicitar a la empresa los mecanismos de rendición de cuentas que haya definido y verificar que se haga y se cumplan con los criterios del requisito. La rendición de cuentas debe incluir todos los niveles de la empresa ya que en cada uno de ellos hay responsabilidades sobre la Seguridad y Salud en el Trabajo', '', '', 'super', '2019-09-21 00:00:00'),
	(18, 1, 2, 9, '2.7.1', 'Decreto 1072/2015 - Artículos: 2.2.4.6.8. numeral 5, 2.2.4.6.12. numeral 15, 2.2.4.6.17. numeral 1.1', 'La empresa define la matriz legal actualizada que contemple las normas del Sistema General de Riesgos Laborales aplicables a la empresa.', 'Solicitar la matriz legal en la cual se contemple la legislación nacional vigente en materia de riesgos laborales. Verificar que contenga: – Normas vigentes en riesgos laborales, aplicables a la empresa. – Normas técnicas de cumplimiento de acuerdo con los peligros / riesgos identificados en la empresa. – Normas vigentes de diferentes entidades que le aplique.', '', '', 'super', '2019-09-21 00:00:00');
/*!40000 ALTER TABLE `ps_items_t10` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_seccion_t5
CREATE TABLE IF NOT EXISTS `ps_seccion_t5` (
  `idseccion_t5` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_t5` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `finicio_t5` datetime NOT NULL,
  `fcierre_t5` datetime NOT NULL,
  `estado_t5` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idseccion_t5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_seccion_t5: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_seccion_t5` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_seccion_t5` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_subcategoria_t4
CREATE TABLE IF NOT EXISTS `ps_subcategoria_t4` (
  `idsubcategoria_t4` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria_t4` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `n_identificador_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `valor_total_t4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t4` datetime NOT NULL,
  `usumod_t4` longtext COLLATE utf8_spanish2_ci,
  PRIMARY KEY (`idsubcategoria_t4`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_subcategoria_t4: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_subcategoria_t4` DISABLE KEYS */;
INSERT INTO `ps_subcategoria_t4` (`idsubcategoria_t4`, `idcategoria_t4`, `n_identificador_t4`, `descripcion_t4`, `valor_total_t4`, `fmod_t4`, `usumod_t4`) VALUES
	(2, '1', 'ESTANDAR  2', 'GESTIÓN INTEGRAL DEL SISTEMA DE LA SEGURIDAD Y SALUD EN EL TRABAJO', '15%', '2019-10-30 06:40:41', 'Superusuario'),
	(3, '2', 'ESTÁNDAR 3', 'GESTIÓN DE LA SALUD', '20%', '2019-10-14 11:14:32', 'superusuario'),
	(5, 'NULL', 'ESTÁNDAR 6', 'VERIFICACIÓN DEL SISTEMA DE GESTIÓN EN SEGURIDAD Y SALUD EN EL TRABAJO', '5%', '2019-09-21 00:00:00', 'Superusuario'),
	(6, 'NULL', 'ESTÁNDAR  7', 'MEJORAMIENTO', '10%', '2019-09-21 00:00:00', 'Superusuario'),
	(7, 'undefined', 'Esta es una nueva categoria', 'esta es la descripcion de mi categoria', '12', '2019-10-14 11:59:12', NULL),
	(8, '1', '1', 'RECURSOS ', '10', '2019-10-30 06:34:15', NULL);
/*!40000 ALTER TABLE `ps_subcategoria_t4` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_terceros_t1
CREATE TABLE IF NOT EXISTS `ps_terceros_t1` (
  `idterceros_t1` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tercero_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `identificador_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `responsable_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fmod_t1` datetime NOT NULL,
  `usureg_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `correo_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_identificacion_t1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idterceros_t1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_terceros_t1: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_terceros_t1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_terceros_t1` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_usuario_t0
CREATE TABLE IF NOT EXISTS `ps_usuario_t0` (
  `idusuario_t0` int(11) NOT NULL AUTO_INCREMENT,
  `cedula_t0` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `primer_nombre_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `segunda_nombre_t0` longtext COLLATE utf8_spanish2_ci,
  `primer_apellido_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_apellido_t0` longtext COLLATE utf8_spanish2_ci,
  `nombre_completo_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_t0` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_cracion_t0` datetime NOT NULL,
  `telefono_t0` longtext COLLATE utf8_spanish2_ci,
  `direccion_t0` longtext COLLATE utf8_spanish2_ci,
  `cargo_t0` longtext COLLATE utf8_spanish2_ci,
  `roll_t0` longtext COLLATE utf8_spanish2_ci,
  `clave_t0` varchar(32) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idusuario_t0`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla gestion.ps_usuario_t0: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_usuario_t0` DISABLE KEYS */;
INSERT INTO `ps_usuario_t0` (`idusuario_t0`, `cedula_t0`, `primer_nombre_t0`, `segunda_nombre_t0`, `primer_apellido_t0`, `segundo_apellido_t0`, `nombre_completo_t0`, `usuario_t0`, `fecha_cracion_t0`, `telefono_t0`, `direccion_t0`, `cargo_t0`, `roll_t0`, `clave_t0`) VALUES
	(1, '1053124899', 'Ey', 'Alejandro', 'Ortega', 'Blanco', 'Miguel Alejandro Ortega Blanco', 'Miguelort095', '2019-09-02 00:00:00', '302 454 67 08', 'Santa Viviana', NULL, NULL, '25f9e794323b453885f5181f1b624d0b'),
	(9, '123456789', 'Flor', 'undefined', 'Dana', 'undefined', 'Flor undefined Dana undefined', 'flor12', '2019-11-07 07:29:10', '3002127730', 'cll 12 # 20 -25', 'Gerente', 'Director de Proyectos', 'e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `ps_usuario_t0` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.ps_valor_evaluacion_items_t26
CREATE TABLE IF NOT EXISTS `ps_valor_evaluacion_items_t26` (
  `idps_valor_items_t26` int(11) NOT NULL AUTO_INCREMENT,
  `idps_items_t26` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `idps_formato_t26` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `idps_evaluacion_t26` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `fmod_t26` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usrmod_t26` varchar(100) DEFAULT '0',
  PRIMARY KEY (`idps_valor_items_t26`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para guardar cada resultado de los items';

-- Volcando datos para la tabla gestion.ps_valor_evaluacion_items_t26: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ps_valor_evaluacion_items_t26` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_valor_evaluacion_items_t26` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.roles_t11
CREATE TABLE IF NOT EXISTS `roles_t11` (
  `idroles_t11` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol_t11` varchar(100) DEFAULT '0',
  `fcreacion_rol_t11` datetime DEFAULT '0000-00-00 00:00:00',
  `usucreacion_t11` varchar(100) DEFAULT '0',
  PRIMARY KEY (`idroles_t11`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Tabla de roles para cada usuarios';

-- Volcando datos para la tabla gestion.roles_t11: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles_t11` DISABLE KEYS */;
INSERT INTO `roles_t11` (`idroles_t11`, `nombre_rol_t11`, `fcreacion_rol_t11`, `usucreacion_t11`) VALUES
	(5, 'Director de Proyectos', '2019-11-07 12:22:37', '$datroles->usucreacion_rol_t11'),
	(12, 'Gerente', '2019-11-07 12:51:40', '$datroles->usucreacion_rol_t11');
/*!40000 ALTER TABLE `roles_t11` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.search_terms
CREATE TABLE IF NOT EXISTS `search_terms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `term` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gestion.search_terms: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` (`id`, `term`) VALUES
	(1, 'yolo'),
	(2, 'fact');
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;

-- Volcando estructura para tabla gestion.tweets
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tweet_id` text NOT NULL,
  `user_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla gestion.tweets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
