-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-04-2010 a las 23:57:15
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `community_security`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `id_aplicacion` varchar(20) collate latin1_spanish_ci NOT NULL,
  `url` text collate latin1_spanish_ci NOT NULL,
  `descripcion` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcar la base de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`id_aplicacion`, `url`, `descripcion`) VALUES
('00000000000000000001', 'catalogs/administrar', 'administrar'),
('00000000000000000002', 'catalogs/visualizador', 'visualizador de fotos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` varchar(20) collate latin1_spanish_ci NOT NULL,
  `descripcion` varchar(30) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcar la base de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `descripcion`) VALUES
('00000000000000000001', 'administradores'),
('00000000000000000002', 'me');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `id_usuario` varchar(20) collate latin1_spanish_ci NOT NULL,
  `id_grupo` varchar(20) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_usuario`,`id_grupo`),
  KEY `id_grupo` (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcar la base de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`id_usuario`, `id_grupo`) VALUES
('luis', '00000000000000000001'),
('luis2', '00000000000000000002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` varchar(20) collate latin1_spanish_ci NOT NULL,
  `password` varchar(15) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `password`) VALUES
('luis', 'luis'),
('luis2', 'luis2'),
('luis3', 'luis3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `utiliza`
--

CREATE TABLE `utiliza` (
  `id_grupo` varchar(20) collate latin1_spanish_ci NOT NULL,
  `id_aplicacion` varchar(20) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_grupo`,`id_aplicacion`),
  KEY `id_aplicacion` (`id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='almanecena las aplicaciones que cada grupo puede ejecutar';

--
-- Volcar la base de datos para la tabla `utiliza`
--

INSERT INTO `utiliza` (`id_grupo`, `id_aplicacion`) VALUES
('00000000000000000001', '00000000000000000001'),
('00000000000000000002', '00000000000000000002');

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `pertenece_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `pertenece_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`);

--
-- Filtros para la tabla `utiliza`
--
ALTER TABLE `utiliza`
  ADD CONSTRAINT `utiliza_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`),
  ADD CONSTRAINT `utiliza_ibfk_2` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicacion` (`id_aplicacion`);
