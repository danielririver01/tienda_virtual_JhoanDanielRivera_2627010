-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2024 a las 19:11:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `portada` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Perfumeria', 'Deja tu esencia', 'img_125e45445bd33723d025d7f815ca29f7.jpg', '2021-08-20 03:04:04', 'perfumeria', 1),
(2, 'Audio y Videojuegos', 'Lo mejor en tecnología', 'img_78678a3fe95890d155115d5301e0761d.jpg', '2021-08-21 00:47:10', 'audio-y-videojuegos', 2),
(3, 'Maquillaje', 'Color de inspira,belleza que transforma', 'img_423c748c20e279feb22e30045ac811f0.jpg', '2024-03-19 14:27:26', 'maquillaje', 1),
(4, 'Joyeria', 'Deslumbra y comparte', 'img_714fdd5a16ca86300377f87dff20767f.jpg', '2024-03-19 14:34:28', 'joyeria', 1),
(5, 'Cuidado de la Piel', 'Piel radiante,Confianza brillante', 'img_2bdffefc011fe0f5f4c3fb51d1ccfd43.jpg', '2024-03-19 14:35:12', 'cuidado-de-la-piel', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Fernando Herrera', 'toolsfordeveloper@gmail.com', 'Mensaje del primer suscriptor!', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-20 04:06:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(4, 3, 19, 39.99, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(1, 4, 'pro_a8dd46f1eb7c9981fcaa56d824c2740a.jpg'),
(2, 4, 'pro_14f4068973393f826d60d3e2ef7e434a.jpg'),
(3, 5, 'pro_7989c5b54f679dff499a54077df821b9.jpg'),
(4, 5, 'pro_7ebbb66049fa816af1aaefa6e58b6807.jpg'),
(5, 5, 'pro_74e4a1f7a17b1f718c598d0efec38877.jpg'),
(6, 6, 'pro_795984b5c6b1481a759d39586ee96fce.jpg'),
(7, 6, 'pro_93d3b61be2eb4b121bae962099b41a0e.jpg'),
(8, 7, 'pro_905358731c02c3f8631fba89192f6e42.jpg'),
(9, 8, 'pro_748cd505b8ca11d6457856ac52f83019.jpg'),
(10, 8, 'pro_095b2044ce2ed756b86dc706c268e992.jpg'),
(11, 8, 'pro_09f5f209acd04700d1f06d8843e27390.jpg'),
(12, 8, 'pro_c89a23b288dffd1127dd6519b6d59a21.jpg'),
(13, 9, 'pro_66aa29004e878172dc25f0a9354c76c7.jpg'),
(14, 9, 'pro_3c258a853a4f533121c5a2d6c0b525ca.jpg'),
(15, 9, 'pro_86800e282dd54d2b558a0b197a436198.jpg'),
(16, 9, 'pro_56d96a6e71f7b2427980e5b2ef1fef7e.jpg'),
(17, 9, 'pro_e3a6f62bbf56641ee7c32414c356c604.jpg'),
(18, 9, 'pro_c9ffadad725cf310aac7f4bdd40f474e.jpg'),
(19, 9, 'pro_463ac0a24eb91e8363ccdbd83f3abc18.jpg'),
(20, 9, 'pro_4112db8915aa518138fcbc265881653a.jpg'),
(21, 9, 'pro_1f0447d9d277436041d4b0b85072adaf.jpg'),
(22, 10, 'pro_188441a574da9acc9c9f5757c40023db.jpg'),
(23, 10, 'pro_a59751043d2681bc799c604be4129f49.jpg'),
(24, 10, 'pro_82eb4f62c3e0f281249c3a80a490aae8.jpg'),
(25, 10, 'pro_ced0519a18bfacae5e0968b58153ae3d.jpg'),
(26, 10, 'pro_252ed4f156bff82c0524645047397294.jpg'),
(32, 13, 'pro_4567fb58e45efb3717c440328c2ba235.jpg'),
(33, 13, 'pro_86a732a4937c4cb786053322cd325dca.jpg'),
(34, 13, 'pro_ba55f62ad0b6e3ec26c134026fc59780.jpg'),
(35, 13, 'pro_ba55f62ad0b6e3ec26c134026fc59780.jpg'),
(36, 13, 'pro_68c907746ef5b582dcacea6601159995.jpg'),
(37, 13, 'pro_29d26fa2bd6655e90e9875868abb53ce.jpg'),
(38, 13, 'pro_0d47da17cb8da241d48598fc010159a7.jpg'),
(40, 12, 'pro_ead6b786cf5be4ff7a8e980835e1b6b4.jpg'),
(41, 12, 'pro_145de0f2f7d4965570243ee9cf61ceb1.jpg'),
(42, 12, 'pro_ee14400033336ba87bf73700fdb02999.jpg'),
(43, 12, 'pro_bfd72863fa6e5a323fcba3deb5b7be2e.jpg'),
(45, 12, 'pro_44b713e78a14158e4ce1e58fae297540.jpg'),
(46, 12, 'pro_493133a02571b3bb0043ffeade419bf5.jpg'),
(47, 12, 'pro_660b74db03db11617c0eefa4c7255986.jpg'),
(48, 11, 'pro_474c1133cdaa73cd1d1610657ddf5fd5.jpg'),
(49, 11, 'pro_c2d7f8ef9e69cb75a1a1e780fee3b770.jpg'),
(50, 11, 'pro_5bec9997177e8c1047763321a78739a9.jpg'),
(51, 11, 'pro_4c10afb895bfcac8663a440b6bb258ff.jpg'),
(52, 11, 'pro_10939bc6127e2922aea9a0f9fe006d78.jpg'),
(53, 11, 'pro_6a0b64b6d4d39d06ee7e97d341cca81d.jpg'),
(54, 11, 'pro_ea7e4dd52536c369180bbc71b858678d.jpg'),
(55, 15, 'pro_466517104976b4cee5ceb5eb5f11ab31.jpg'),
(56, 16, 'pro_f81d0b514f69f79a8e6ab37f32a37c61.jpg'),
(57, 16, 'pro_db9c8ebd69d256641f85ae21b6bade0f.jpg'),
(58, 17, 'pro_fa6c17760c5033a549c743065384e49d.jpg'),
(59, 18, 'pro_df4f9347000086c646e91ebac6797c2c.jpg'),
(60, 18, 'pro_d6bb3a3b22d3c25188ca03a77c678d0e.jpg'),
(61, 19, 'pro_1af3afdbb9c0d60f5e9edac01a9e3bca.jpg'),
(62, 19, 'pro_1198362dd09921da7ec3e82c384f77e7.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) DEFAULT NULL,
  `datospaypal` text DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(3, NULL, '3J970964L6100414T', '{\"id\":\"26860080G76572640\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"44.99\"},\"payee\":{\"email_address\":\"sb-skrqd27887640@business.example.com\",\"merchant_id\":\"8R28P2BS82HAC\"},\"description\":\"Compra de artículos en Tienda Virtual por $44.99 \",\"soft_descriptor\":\"PAYPAL *TEST STORE\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Bogota\",\"admin_area_1\":\"Bogota\",\"postal_code\":\"110111\",\"country_code\":\"CO\"}},\"payments\":{\"captures\":[{\"id\":\"3J970964L6100414T\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"44.99\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2024-04-12T15:53:08Z\",\"update_time\":\"2024-04-12T15:53:08Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-iq83z27941752@personal.example.com\",\"payer_id\":\"6WPNGJ4JCZVKL\",\"address\":{\"country_code\":\"CO\"}},\"create_time\":\"2024-04-12T15:50:10Z\",\"update_time\":\"2024-04-12T15:53:08Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/26860080G76572640\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2024-04-12 10:53:09', 5.00, 44.99, 1, 'Calle 7 con avenida en armenia, Pereira/Risaralda', 'Completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(34, 4, 5, 1, 0, 1, 0),
(35, 4, 6, 0, 0, 0, 0),
(36, 4, 7, 1, 0, 0, 0),
(37, 4, 8, 1, 0, 0, 0),
(38, 4, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) DEFAULT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nombrefiscal` varchar(80) DEFAULT NULL,
  `direccionfiscal` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '24091989', 'Jhoan Daniel', 'Rivera Ortiz', 123456, 'daniel412river.ortiz@hotmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Abel OSH', 'Ciudad', '3346f4130450c37efa2e-ced4f9e3ca4d96aac1b9-fd53a0060d3e81befc58-91b64e632f4d11547e13', 1, '2021-08-20 01:34:15', 1),
(2, '24091990', 'Alex', 'Arana', 456878977, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 2, '2021-08-20 02:58:47', 1),
(3, '84654864', 'Ricardo', 'Hernández Pérez', 4687987, 'hr@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '468798', 'Ricardo HP', 'Ciudad de Guatemala', NULL, 3, '2021-08-20 03:41:28', 1),
(4, '798465877', 'Fernando', 'Guerra', 468498, 'fer@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p>En las profundidades de la Sierra Nevada, en un peque&ntilde;o pueblo llamado Riosucio, un grupo de visionarios emprendedores se reuni&oacute; con un sue&ntilde;o com&uacute;n: crear JHOJHO, una plataforma revolucionaria de comercio electr&oacute;nico para productos cosm&eacute;ticos y del hogar. Inspirados por la rica biodiversidad de su entorno y la necesidad de una experiencia de compra segura y accesible, estos pioneros se embarcaron en una aventura que cambiar&iacute;a el rostro del comercio en su regi&oacute;n.</p> <p><strong>La concepci&oacute;n de JHOJHO:</strong>&nbsp;La idea naci&oacute; de un informe detallado que delineaba las necesidades de los clientes y las capacidades de la tecnolog&iacute;a actual. El informe hablaba de una plataforma intuitiva, dise&ntilde;ada para ser el puente entre los artesanos locales y un mercado global. Se imagin&oacute; un lugar donde la belleza natural de Colombia pudiera ser compartida con el mundo, y donde cada compra fuera una experiencia memorable.</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p>es revolucionar la experiencia de compra en l&iacute;nea, ofreciendo una plataforma segura y accesible que conecta la riqueza natural de Colombia con el mundo. Nos comprometemos a proporcionar una selecci&oacute;n de productos cosm&eacute;ticos y para el hogar de la m&aacute;s alta calidad, elaborados con el cuidado y la tradici&oacute;n de los artesanos locales.</p> <p>Nos esforzamos por garantizar una experiencia de usuario excepcional, donde cada cliente pueda encontrar y adquirir f&aacute;cilmente lo que necesita, respaldado por un servicio al cliente que entiende y valora la importancia de cada compra. Nuestro objetivo es crear un espacio donde la belleza y la funcionalidad se encuentren, y donde cada transacci&oacute;n sea una oportunidad para fortalecer la confianza y la satisfacci&oacute;n del cliente.</p> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.685802352331!2d-90.73646108521129!3d14.559951589828378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85890e74b3771e19%3A0x68ec9eeea79fd9a7!2sEl%20Arco%20de%20Santa%20Catalina!5e0!3m2!1ses!2sgt!4v1624005005655!5m2!1ses!2sgt\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto?&nbsp;</strong>El tiempo de entrega de los productos pueden variar segun la ubicacion del cliente y la disponibilidad de inventario.Generalmente,se intenta realizar la entrega en un plazo de 3 a 7 dias habiles despues confirmamos el pedido. Sin embargo, este plazo puede extenderse en casos exepcionales o durante periodos de alta demanda.</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?&nbsp;</strong>Los productos se envian mediante servicios de mensajeria o transporte especializado en la entrega de productos delicados como cosmeticos y articulos para el hogar .Se prioriza el uso de embalajes segurps y adecuados para proteger los productos durante el transporte.&nbsp;</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Los clientes tienen un plazo de 30 dias a partirde la recepcion del producto para solicitar un reembolso en caso de insastisfaccion o productos defectuosos.Es importante que los productos esten en su estado original y con el empaque intacto para poder procesar la solicitud de reembolso</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan?&nbsp;</strong>Se acercan diferentes formas de pago para brindar flexibilidad a los clientes.Entre las opciones disponibles se incluyen Paypal,transferencia bancarias y en algunos casos pago contra entregas.</li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>&nbsp;</p> <p><strong>Pol&iacute;tica Uno: Compromiso con la Seguridad</strong>&nbsp;En JHOJHO, la seguridad de nuestros usuarios es primordial. Nos comprometemos a proteger su informaci&oacute;n personal mediante el uso de tecnolog&iacute;a de encriptaci&oacute;n avanzada y protocolos de seguridad estrictos.</p> <p><strong>T&eacute;rmino Dos: Transparencia en las Transacciones</strong>&nbsp;Todas las transacciones realizadas en la plataforma JHOJHO ser&aacute;n transparentes y claras. No habr&aacute; cargos ocultos, y cada usuario tendr&aacute; acceso completo a los detalles de sus compras y movimientos dentro de la plataforma.</p> <p><strong>Condici&oacute;n Tres: Respeto por la Privacidad</strong>&nbsp;Respetamos la privacidad de nuestros usuarios. Ninguna informaci&oacute;n personal ser&aacute; compartida con terceros sin el consentimiento expl&iacute;cito del usuario, excepto en los casos requeridos por ley.</p> <p><strong>Derechos de Autor y Propiedad Intelectual</strong>&nbsp;Todos los contenidos presentados en la plataforma, incluyendo textos, gr&aacute;ficos, logos, iconos, im&aacute;genes y software, son propiedad de JHOJHO o de sus respectivos due&ntilde;os y est&aacute;n protegidos por leyes de derechos de autor internacionales.</p> <p><strong>Limitaci&oacute;n de Responsabilidad</strong>&nbsp;JHOJHO no ser&aacute; responsable por da&ntilde;os indirectos, incidentales, especiales o consecuentes que resulten del uso o la incapacidad de usar nuestros servicios, incluso si JHOJHO ha sido advertido de la posibilidad de tales da&ntilde;os.</p> <p><strong>Modificaciones a los T&eacute;rminos y Condiciones</strong>&nbsp;JHOJHO se reserva el derecho de modificar estos t&eacute;rminos y condiciones en cualquier momento. Es responsabilidad del usuario revisar peri&oacute;dicamente estos t&eacute;rminos y condiciones para estar al tanto de cualquier cambio.</p> <p><strong>Aceptaci&oacute;n de los T&eacute;rminos</strong>&nbsp;Al utilizar la plataforma JHOJHO, usted acepta estar vinculado por estos t&eacute;rminos y condiciones. Si no est&aacute; de acuerdo con alguno de los t&eacute;rminos, por favor no utilice esta plataforma.</p> <p><strong>Contacto</strong>&nbsp;Para cualquier consulta o aclaraci&oacute;n sobre estos t&eacute;rminos y condiciones, por favor cont&aacute;ctenos a trav&eacute;s de nuestro formulario de contacto en la plataforma.</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s2.jpg\" alt=\"Sucural dos\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s3.jpg\" alt=\"Sucural tres\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 0),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, '2417984565', 'Chaqueta Azul', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>', 100.00, 50, NULL, '2021-08-20 03:12:14', 'chaqueta-azul', 0),
(2, 1, '456879878', 'Reloj', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>', 200.00, 100, NULL, '2021-08-20 03:14:10', 'reloj', 0),
(3, 2, '4658798787', 'Bocina JBL Flip 5', '<p>Wireless Bluetooth streaming. 24 hours of playtime. IPX7 waterproof. JBL Connect plus. High-capacity battery. Connector type: 3.5 millimeter stereo. Power Source Type: Battery Powered.</p>', 300.00, 100, NULL, '2021-08-21 00:48:21', 'bocina-jbl-flip-5', 0),
(4, 1, '1897602', 'Solo Parfum', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p>Descubre una fragancia que captura la esencia de la masculinidad con una intensidad que no pasa desapercibida. Este perfume para hombre se define por su car&aacute;cter maderoso y c&iacute;trico, una combinaci&oacute;n audaz que abre con el frescor chispeante de la c&aacute;scara de mandarina. El coraz&oacute;n revela un toque especiado de jengibre, que se entrelaza con la robustez del cuero, creando un aroma impactante y poderoso. Es una fragancia que promete dejar una impresi&oacute;n duradera, ideal para el hombre que desea destacar en cualquier ocasi&oacute;n.</p> </div> </div> </div>', 20.61, 200, NULL, '2024-03-18 09:34:20', 'solo-parfum', 1),
(5, 1, '8918129', 'Temptation Eau de Parfum Mujer', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p><em>D&eacute;jate envolver por un aroma que es la quintaesencia de la feminidad y el misterio. Este perfume floral especiado es una sinfon&iacute;a de elegancia, donde la rosa b&uacute;lgara, la gardenia y el clavo de olor se entrelazan en una danza de fragancias. Su intensidad no solo captura la atenci&oacute;n, sino que celebra la sensualidad de la mujer que lo lleva, dejando una estela de admiraci&oacute;n a su paso. Es la fragancia de la mujer irresistible, aquella cuya presencia no se olvida y cuyo recuerdo perdura en el aire.</em></p> </div> </div> </div>', 22.11, 200, NULL, '2024-03-18 09:43:25', 'temptation-eau-de-parfum-mujer', 1),
(6, 1, '21091293', 'Ohm Black Parfum', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p><sup>Sum&eacute;rgete en una experiencia olfativa inolvidable con este perfume para hombre de aroma herbal c&iacute;trico. Las notas de naranja dulce se despliegan al primer contacto, invitando a descubrir un coraz&oacute;n de t&eacute; negro que aporta un toque sofisticado y misterioso. La pimienta negra emerge con su car&aacute;cter picante, a&ntilde;adiendo profundidad y una intensidad vibrante que promete una noche extraordinaria. Es el compa&ntilde;ero perfecto para aventuras nocturnas, donde cada momento se convierte en una celebraci&oacute;n de la amistad y la vida.</sup></p> </div> </div> </div>', 25.80, 200, NULL, '2024-03-18 09:51:40', 'ohm-black-parfum', 1),
(7, 1, '3169184', 'Ohm Soul Parfum', '<p>&nbsp;</p> <div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p><em>Explora la profundidad y el car&aacute;cter del hombre Ohm con este perfume maderoso arom&aacute;tico. Una fragancia que comienza con la frescura c&iacute;trica de la bergamota, se enriquece con el ex&oacute;tico cardamomo de Guatemala y culmina con la nobleza del cedro puro. Cada nota se une para reflejar una personalidad compleja y vibrante, creando un perfume que es tanto exquisito como inolvidable, un verdadero reflejo del alma de un hombre que deja huella.</em></p> </div> </div> </div>', 34.29, 200, NULL, '2024-03-18 10:06:11', 'ohm-soul-parfum', 1),
(8, 1, '68328132', 'Ohm Parfum', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p><sub>D&eacute;jate seducir por un perfume para hombre que es una oda a la frescura y vitalidad. La toronja rosada, con su jugosa dulzura, se une a la salvia, aportando un toque herbal que despierta los sentidos. Los acentos de cuero a&ntilde;aden una profundidad &uacute;nica, evocando la elegancia y el esp&iacute;ritu aventurero. Este aroma herbal c&iacute;trico es una invitaci&oacute;n a disfrutar de la vida con plenitud, celebrando cada momento con una fragancia tan viva como t&uacute;.</sub></p> </div> </div> </div>', 36.87, 200, NULL, '2024-03-18 10:11:42', 'ohm-parfum', 1),
(9, 3, '74620487', 'Labial COLORFIX Duo Tattoo', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p><sub>Descubre el labial dual que redefine las reglas del maquillaje: con <strong>36 horas</strong> de color vibrante y una f&oacute;rmula innovadora que garantiza <strong>cero transferencia</strong>, podr&aacute;s vivir tu d&iacute;a a plenitud sin preocupaciones. Enriquecido con manteca de karit&eacute;, no solo embellece tus labios, sino que los mima con una hidrataci&oacute;n profunda y duradera. Es el aliado perfecto para una mujer que valora la durabilidad y el cuidado en cada aspecto de su vida.</sub></p> </div> </div> </div>', 4.88, 400, NULL, '2024-03-18 10:25:26', 'labial-colorfix-duo-tattoo', 1),
(10, 3, '4022120', 'Natural Matte Base de Maquillaje', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p><sup>Experimenta la revoluci&oacute;n en maquillaje con la <strong>Base Natural Matte</strong>, dise&ntilde;ada para otorgarte una piel perfectamente <strong>mate</strong> y una cobertura digna de un acabado profesional. Su f&oacute;rmula enriquecida con <strong>vitamina E</strong> no solo cubre imperfecciones, sino que tambi&eacute;n nutre tu piel, dej&aacute;ndola suave y saludable. Ideal para quienes buscan un look impecable y cuidado integral de la piel.​</sup></p> </div> </div> </div>', 12.22, 400, NULL, '2024-03-18 10:36:27', 'natural-matte-base-de-maquillaje', 1),
(11, 3, '406394', 'Máscara de pestañas Mega Full Size a prueba de agua', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p><sup>Descubre la m&aacute;scara de pesta&ntilde;as que lidera el mercado de &eacute;sika, con un efecto de longitud insuperable que desaf&iacute;a los l&iacute;mites. Su f&oacute;rmula a prueba de agua asegura una mirada impactante y pesta&ntilde;as que se extienden hacia el infinito, sin importar las condiciones. Ya sea un d&iacute;a lluvioso o una noche de fiesta, mant&eacute;n tus pesta&ntilde;as perfectas y disfruta de un efecto largo que dura todo el d&iacute;a.</sup></p> </div> </div> </div>', 6.63, 400, NULL, '2024-03-18 10:47:15', 'mascara-de-pestanas-mega-full-size-a-prueba-de-agua', 1),
(12, 3, '40321620', 'Delineador Líquido Punta Pincel Eye PRO', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p>El delineador l&iacute;der en ventas de &eacute;sika redefine lo que esperas de un cosm&eacute;tico de ojos. Con una <strong>alta pigmentaci&oacute;n</strong> que promete una intensidad sin igual y una <strong>m&aacute;xima duraci&oacute;n</strong> que resiste el paso del tiempo, este delineador es la clave para una mirada que captura todas las miradas. Fija un color intenso y definido que enmarca tus ojos con precisi&oacute;n y estilo, asegurando que cada gui&ntilde;o sea tan impactante como el primero.</p> </div> </div> </div>', 4.44, 400, NULL, '2024-03-18 11:02:07', 'delineador-liquido-punta-pincel-eye-pro', 1),
(13, 3, '1901103', 'Set Color Diva', '<div class=\"content\" tabindex=\"0\" aria-description=\"\"> <div class=\"ac-container ac-adaptiveCard\"> <div class=\"ac-textBlock\"> <p>Con el look Color Diva de &eacute;sika, cada d&iacute;a es una oportunidad para brillar. Los productos favoritos de la marca se unen para crear un estilo que resalta tu belleza natural y te convierte en el centro de todas las miradas. S&eacute; la mujer que todos recuerdan: radiante, atractiva y siempre en tendencia con &eacute;sika. Vive la experiencia de ser una diva, todos los d&iacute;as.</p> </div> </div> </div>', 49.11, 600, NULL, '2024-03-18 11:12:02', 'set-color-diva', 1),
(14, 1, '101010', 'Pruebas unitarias', '<p>Probando de que todo funcione</p>', 1.00, 1, NULL, '2024-03-19 14:22:35', 'pruebas-unitarias', 0),
(15, 4, '97425749', 'Aretes de diamantes en oro blanco', '<p>Estos elegantes aretes de diamantes en oro blanco son la joya perfecta para cualquier ocasi&oacute;n. Est&aacute;n hechos con diamantes talla brillante de alta calidad que irradian un brillo excepcional. El oro blanco de 18 quilates complementa a la perfecci&oacute;n el brillo de los diamantes y les da un toque de lujo.</p> <p data-sourcepos=\"7:1-7:20\"><strong>Caracter&iacute;sticas:</strong></p> <ul data-sourcepos=\"9:1-14:0\"> <li data-sourcepos=\"9:1-9:43\">Diamantes talla brillante de alta calidad</li> <li data-sourcepos=\"10:1-10:27\">Oro blanco de 18 quilates</li> <li data-sourcepos=\"11:1-11:19\">Aretes tipo bot&oacute;n</li> <li data-sourcepos=\"12:1-12:20\">Cierre de mariposa</li> <li data-sourcepos=\"13:1-14:0\">Para mujer</li> </ul>', 1499.99, 550, NULL, '2024-04-11 12:55:24', 'aretes-de-diamantes-en-oro-blanco', 1),
(16, 4, '45833822', 'Anillo de oro amarillo con cruz', '<p>Este hermoso anillo de oro amarillo con cruz es una joya significativa y elegante. Est&aacute; hecho de oro amarillo de 14 quilates y tiene una cruz pulida en el centro. El dise&ntilde;o simple y cl&aacute;sico de este anillo lo hace perfecto para cualquier ocasi&oacute;n</p> <p data-sourcepos=\"7:1-7:20\"><strong>Caracter&iacute;sticas:</strong></p> <ul data-sourcepos=\"9:1-13:0\"> <li data-sourcepos=\"9:1-9:29\">Oro amarillo de 14 quilates</li> <li data-sourcepos=\"10:1-10:13\">Cruz pulida</li> <li data-sourcepos=\"11:1-11:19\">Anillo tipo banda</li> <li data-sourcepos=\"12:1-13:0\">Para hombre o mujer</li> </ul>', 299.99, 510, NULL, '2024-04-11 13:01:15', 'anillo-de-oro-amarillo-con-cruz', 1),
(17, 4, '748442482', 'Cruz de San Benito', '<h2 data-sourcepos=\"1:1-1:53\">&nbsp;</h2> <p data-sourcepos=\"5:1-5:349\">Este hermoso collar con dije de cruz de San Benito es una joya significativa y protectora. Est&aacute; hecho de plata de ley 925 y tiene una cruz de San Benito detallada en el centro. La cruz de San Benito es un s&iacute;mbolo religioso con una larga historia de protecci&oacute;n contra el mal. Este collar es un regalo perfecto para una persona religiosa o espiritual.</p> <p data-sourcepos=\"7:1-7:20\"><strong>Caracter&iacute;sticas:</strong></p> <ul data-sourcepos=\"9:1-13:0\"> <li data-sourcepos=\"9:1-9:18\">Plata de ley 925</li> <li data-sourcepos=\"10:1-10:30\">Cruz de San Benito detallada</li> <li data-sourcepos=\"11:1-11:20\">Collar tipo cadena</li> <li data-sourcepos=\"12:1-13:0\">Para hombre o mujer</li> </ul>', 149.99, 770, NULL, '2024-04-11 13:10:20', 'cruz-de-san-benito', 1),
(18, 4, '26229999', 'Anillo Rostro de Cristo', '<p data-sourcepos=\"5:1-5:264\">Este hermoso anillo con el rostro de Cristo es una joya significativa y devocional. Est&aacute; hecho de plata de ley 925 y tiene una imagen detallada del rostro de Cristo en el centro. El dise&ntilde;o cl&aacute;sico y atemporal de este anillo lo hace perfecto para cualquier ocasi&oacute;n.</p> <p data-sourcepos=\"7:1-7:20\"><strong>Caracter&iacute;sticas:</strong></p> <ul data-sourcepos=\"9:1-13:0\"> <li data-sourcepos=\"9:1-9:18\">Plata de ley 925</li> <li data-sourcepos=\"10:1-10:39\">Imagen detallada del rostro de Cristo</li> <li data-sourcepos=\"11:1-11:19\">Anillo tipo banda</li> <li data-sourcepos=\"12:1-13:0\">Para hombre o mujer</li> </ul>', 199.99, 660, NULL, '2024-04-11 13:15:10', 'anillo-rostro-de-cristo', 1),
(19, 5, '86314558', 'Crema hidratante facial con ácido hialurónico', '<p data-sourcepos=\"5:1-5:336\">Esta crema hidratante facial con &aacute;cido hialur&oacute;nico es una excelente opci&oacute;n para todo tipo de piel. Es una f&oacute;rmula ligera y no grasa que hidrata profundamente la piel sin obstruir los poros. El &aacute;cido hialur&oacute;nico es un ingrediente conocido por su capacidad para retener la humedad, lo que ayuda a que la piel se vea y se sienta m&aacute;s joven.</p> <p data-sourcepos=\"7:1-7:20\"><strong>Caracter&iacute;sticas:</strong></p> <ul data-sourcepos=\"9:1-14:0\"> <li data-sourcepos=\"9:1-9:19\">&Aacute;cido hialur&oacute;nico</li> <li data-sourcepos=\"10:1-10:27\">F&oacute;rmula ligera y no grasa</li> <li data-sourcepos=\"11:1-11:31\">Hidrata profundamente la piel</li> <li data-sourcepos=\"12:1-12:23\">No obstruye los poros</li> <li data-sourcepos=\"13:1-14:0\">Para todo tipo de piel</li> </ul>', 39.99, 1000, NULL, '2024-04-11 14:21:50', 'crema-hidratante-facial-con-acido-hialuronico', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) NOT NULL,
  `datosreembolso` text NOT NULL,
  `observacion` text NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de tiendas', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Vendedor', 'Operador de tienda', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2021-08-20 04:05:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
