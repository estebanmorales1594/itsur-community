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
create table pais(
 id_pais varchar(5) collate latin1_spanish_ci not null,
 nombre varchar(30) collate latin1_spanish_ci not null,
 primary key (id_pais)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

create table edo(
  id_edo varchar(5) collate latin1_spanish_ci not null,
  id_pais varchar(5) collate latin1_spanish_ci not null,
  nombre varchar(30) collate latin1_spanish_ci not null,
  primary key (id_edo),
  foreign key (id_pais) references pais(id_pais)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

create table municipio(
  id_municipio varchar(5) collate latin1_spanish_ci not null,
  id_edo varchar(5) collate latin1_spanish_ci not null,
  nombre varchar(30) collate latin1_spanish_ci not null,
  primary key (id_municipio),
  foreign key (id_edo) references edo(id_edo)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;




create table my_profile(
  id_my_profile varchar(20) collate latin1_spanish_ci not null,
  my_login varchar(20) collate latin1_spanish_ci not null,
  tel varchar(10) collate latin1_spanish_ci default NULL,
  fecha_nac date default NULL,
  mi_descrip text collate latin1_spanish_ci null,
  libros text collate latin1_spanish_ci null,
  temas text collate latin1_spanish_ci null,
  carrera text collate latin1_spanish_ci null,
  calle varchar(40) collate latin1_spanish_ci null,
  num varchar(10) collate latin1_spanish_ci null,
  colonia varchar(40) collate latin1_spanish_ci null,
  id_municipio varchar(10) collate latin1_spanish_ci null,
  primary key (id_my_profile),
  foreign key (my_login) references me(my_login),
  foreign key (id_municipio) references municipio(id_municipio),
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

create table my_photo(
 id_my_profile varchar(20) collate latin1_spanish_ci not null,
 photo_id varchar(20) collate latin1_spanish_ci not null,
 principal int collate latin1_spanish_ci not null,
 primary key (id_my_profile,photo_id),
 foreign key (id_my_profile) references my_profile(id_my_profile),
 foreign key (photo_id) references photo(photo_id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

create table photo(
 photo_id varchar(20) collate latin1_spanish_ci not null,
 my_login varchar(20) collate latin1_spanish_ci not null,
 url varchar(100) collate latin1_spanish_ci not null,
 descripcion text collate latin1_spanish_ci null,
 primary key (photo_id),
 foreign key (my_login) references me(my_login)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--referencias con mysql redsocial
--community_security

CREATE TABLE `pertenece` (
  `id_usuario` varchar(20) collate latin1_spanish_ci NOT NULL,
  `id_grupo` varchar(20) collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`id_usuario`,`id_grupo`),
  KEY `id_grupo` (`id_grupo`),
 FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
 FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;


CREATE TABLE `utiliza` (
`id_grupo` varchar( 20 ) COLLATE latin1_spanish_ci NOT NULL ,
`id_aplicacion` varchar( 20 ) COLLATE latin1_spanish_ci NOT NULL ,
PRIMARY KEY ( `id_grupo` , `id_aplicacion` ) ,
FOREIGN KEY ( id_grupo ) REFERENCES grupo( id_grupo ) ,
FOREIGN KEY ( id_aplicacion ) REFERENCES aplicacion( id_aplicacion )
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_spanish_ci COMMENT = 'almanecena las aplicaciones que cada grupo puede ejecutar';








--respaldo

-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-04-2010 a las 21:10:17
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
  foreign key (role_code) references contact_role(role_code)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcar la base de datos para la tabla `contact`
--


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


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `me`
--



--
-- Volcar la base de datos para la tabla `me`
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
  foreign key (my_login) references me(my_login)
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
  foreign key (my_login) references me(my_login),
  foreign key (contact_id) references contact(contact_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcar la base de datos para la tabla `my_message`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `my_movement`
--

CREATE TABLE `my_movement` (
  `movement_id` varchar(20) collate latin1_spanish_ci NOT NULL,
  `my_login` varchar(20) collate latin1_spanish_ci NOT NULL,
  `details` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`movement_id`),
  foreign key (my_login) references me(my_login) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

