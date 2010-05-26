-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 26-05-2010 a las 18:13:21
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `community`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `contact`
-- 

CREATE TABLE `contact` (
  `contact_id` varchar(20) collate latin1_spanish_ci NOT NULL,
  `role_code` varchar(4) collate latin1_spanish_ci NOT NULL,
  `date_contact_from` date NOT NULL,
  `email` varchar(40) collate latin1_spanish_ci NOT NULL,
  `web_site` varchar(80) collate latin1_spanish_ci NOT NULL,
  `name` varchar(40) collate latin1_spanish_ci NOT NULL,
  `ap_materno` varchar(40) collate latin1_spanish_ci NOT NULL,
  `ap_paterno` varchar(40) collate latin1_spanish_ci NOT NULL,
  `tel` varchar(10) collate latin1_spanish_ci NOT NULL,
  `carrier` varchar(40) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`contact_id`),
  KEY `role_code` (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `contact`
-- 

INSERT INTO `contact` VALUES ('lucero', '1', '2010-05-17', 'lucero@hotmail.com', 'lucero.mipagina.com', 'lucero', 'alcazar', 'manchada', '4111152839', 'LAE');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `contact_role`
-- 

CREATE TABLE `contact_role` (
  `role_code` varchar(4) collate latin1_spanish_ci NOT NULL,
  `role_description` varchar(25) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `contact_role`
-- 

INSERT INTO `contact_role` VALUES ('1', 'Amigo');
INSERT INTO `contact_role` VALUES ('2', 'Familiar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `edo`
-- 

CREATE TABLE `edo` (
  `id_edo` varchar(5) collate latin1_spanish_ci NOT NULL,
  `id_pais` varchar(5) collate latin1_spanish_ci NOT NULL,
  `nombre` varchar(30) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_edo`),
  KEY `id_pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `edo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `me`
-- 

CREATE TABLE `me` (
  `my_login` varchar(20) collate latin1_spanish_ci NOT NULL,
  `password` varchar(15) collate latin1_spanish_ci NOT NULL,
  `name` varchar(40) collate latin1_spanish_ci NOT NULL,
  `ap_materno` varchar(40) collate latin1_spanish_ci NOT NULL,
  `ap_paterno` varchar(40) collate latin1_spanish_ci NOT NULL,
  `email` varchar(40) collate latin1_spanish_ci NOT NULL,
  `sexo` char(1) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`my_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `me`
-- 

INSERT INTO `me` VALUES ('', '', '', '', '', '', '');
INSERT INTO `me` VALUES ('lucero', 'lucero', 'lucero', 'lucerm', 'lucerp', 'lucer@correo.org', '1');
INSERT INTO `me` VALUES ('me2', 'me2', 'me', 'mal', 'enrique', 'me@hotmail.com', '0');
INSERT INTO `me` VALUES ('me3', 'me3', 'me3', 'mal', 'enrique', 'me@hotmail.com', '1');
INSERT INTO `me` VALUES ('nuevo', 'nuevo', 'nuevo', 'nuevom', 'nuevop', 'nuevo@new.com', '1');
INSERT INTO `me` VALUES ('nuevo2', 'nuevo2', 'nuevo2', 'nuevom2', 'nuevop2', 'nuevo@new.com', '0');
INSERT INTO `me` VALUES ('oscar', 'oscar', 'oscar', 'oscarm', 'oscarp', 'oscar@supagina.com', '1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `municipio`
-- 

CREATE TABLE `municipio` (
  `id_municipio` varchar(5) collate latin1_spanish_ci NOT NULL,
  `id_edo` varchar(5) collate latin1_spanish_ci NOT NULL,
  `nombre` varchar(30) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_municipio`),
  KEY `id_edo` (`id_edo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `municipio`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `my_blog`
-- 

CREATE TABLE `my_blog` (
  `blog_id` varchar(20) collate latin1_spanish_ci NOT NULL,
  `my_login` varchar(20) collate latin1_spanish_ci NOT NULL,
  `blog_name` varchar(40) collate latin1_spanish_ci NOT NULL,
  `url_blog` varchar(100) collate latin1_spanish_ci NOT NULL,
  `descripcion` text collate latin1_spanish_ci,
  PRIMARY KEY  (`blog_id`),
  KEY `my_login` (`my_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `my_blog`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `my_message`
-- 

CREATE TABLE `my_message` (
  `my_login` varchar(20) collate latin1_spanish_ci NOT NULL,
  `contact_id` varchar(20) collate latin1_spanish_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `texto` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`my_login`,`contact_id`,`date_time`),
  KEY `contact_id` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `my_message`
-- 

INSERT INTO `my_message` VALUES ('lucero', 'lucero', '2010-05-24 16:49:08', 'que onda a todos, mi primer mensaje en community');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `my_movement`
-- 

CREATE TABLE `my_movement` (
  `movement_id` varchar(20) collate latin1_spanish_ci NOT NULL,
  `my_login` varchar(20) collate latin1_spanish_ci NOT NULL,
  `details` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`movement_id`),
  KEY `my_login` (`my_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `my_movement`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `my_photo`
-- 

CREATE TABLE `my_photo` (
  `id_my_profile` varchar(20) collate latin1_spanish_ci NOT NULL,
  `photo_id` varchar(20) collate latin1_spanish_ci NOT NULL,
  `principal` int(11) NOT NULL,
  PRIMARY KEY  (`id_my_profile`,`photo_id`),
  KEY `photo_id` (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `my_photo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `my_profile`
-- 

CREATE TABLE `my_profile` (
  `id_my_profile` varchar(20) collate latin1_spanish_ci NOT NULL,
  `my_login` varchar(20) collate latin1_spanish_ci NOT NULL,
  `tel` varchar(10) collate latin1_spanish_ci default NULL,
  `fecha_nac` date default NULL,
  `mi_descrip` text collate latin1_spanish_ci,
  `libros` text collate latin1_spanish_ci,
  `temas` text collate latin1_spanish_ci,
  `carrera` text collate latin1_spanish_ci,
  `calle` varchar(40) collate latin1_spanish_ci default NULL,
  `num` varchar(10) collate latin1_spanish_ci default NULL,
  `colonia` varchar(40) collate latin1_spanish_ci default NULL,
  `id_municipio` varchar(10) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`id_my_profile`),
  KEY `my_login` (`my_login`),
  KEY `id_municipio` (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `my_profile`
-- 

INSERT INTO `my_profile` VALUES ('pro_', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `my_profile` VALUES ('pro_lucero', 'lucero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `my_profile` VALUES ('pro_nuevo', 'nuevo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `my_profile` VALUES ('pro_nuevo2', 'nuevo2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `my_profile` VALUES ('pro_oscar', 'oscar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `pais`
-- 

CREATE TABLE `pais` (
  `id_pais` varchar(5) collate latin1_spanish_ci NOT NULL,
  `nombre` varchar(30) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `pais`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `photo`
-- 

CREATE TABLE `photo` (
  `photo_id` varchar(20) collate latin1_spanish_ci NOT NULL,
  `my_login` varchar(20) collate latin1_spanish_ci NOT NULL,
  `url` varchar(100) collate latin1_spanish_ci NOT NULL,
  `descripcion` text collate latin1_spanish_ci,
  PRIMARY KEY  (`photo_id`),
  KEY `my_login` (`my_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `photo`
-- 


-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `contact`
-- 
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`role_code`) REFERENCES `contact_role` (`role_code`);

-- 
-- Filtros para la tabla `edo`
-- 
ALTER TABLE `edo`
  ADD CONSTRAINT `edo_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`);

-- 
-- Filtros para la tabla `municipio`
-- 
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_edo`) REFERENCES `edo` (`id_edo`);

-- 
-- Filtros para la tabla `my_blog`
-- 
ALTER TABLE `my_blog`
  ADD CONSTRAINT `my_blog_ibfk_1` FOREIGN KEY (`my_login`) REFERENCES `me` (`my_login`);

-- 
-- Filtros para la tabla `my_message`
-- 
ALTER TABLE `my_message`
  ADD CONSTRAINT `my_message_ibfk_1` FOREIGN KEY (`my_login`) REFERENCES `me` (`my_login`),
  ADD CONSTRAINT `my_message_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`);

-- 
-- Filtros para la tabla `my_movement`
-- 
ALTER TABLE `my_movement`
  ADD CONSTRAINT `my_movement_ibfk_1` FOREIGN KEY (`my_login`) REFERENCES `me` (`my_login`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `my_photo`
-- 
ALTER TABLE `my_photo`
  ADD CONSTRAINT `my_photo_ibfk_1` FOREIGN KEY (`id_my_profile`) REFERENCES `my_profile` (`id_my_profile`),
  ADD CONSTRAINT `my_photo_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`);

-- 
-- Filtros para la tabla `my_profile`
-- 
ALTER TABLE `my_profile`
  ADD CONSTRAINT `my_profile_ibfk_1` FOREIGN KEY (`my_login`) REFERENCES `me` (`my_login`),
  ADD CONSTRAINT `my_profile_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`);

-- 
-- Filtros para la tabla `photo`
-- 
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`my_login`) REFERENCES `me` (`my_login`);
