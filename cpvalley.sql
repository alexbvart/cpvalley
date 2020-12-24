-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-12-2020 a las 22:48:05
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Base de datos: `ctrabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceraventas`
--

DROP TABLE IF EXISTS `cabeceraventas`;
CREATE TABLE IF NOT EXISTS `cabeceraventas` (
  `venta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `nrodoc` varchar(8) NOT NULL,
  `subtotal` float NOT NULL,
  `igv` float NOT NULL,
  `total` float NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`venta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cabeceraventas`
--

INSERT INTO `cabeceraventas` 
(`venta_id`, `cliente_id`, `fecha_venta`, `tipo_id`, `nrodoc`, `subtotal`, `igv`, `total`, `estado`) 
VALUES
(1, 1, '2020-09-09', 1, '00100002', 0, 0, 7, '1'),
(2, 1, '2020-09-09', 2, '00201010', 0, 0, 6.5, '1'),
(3, 2, '2020-09-09', 1, '00100003', 0, 0, 6.5, '1'),
(4, 2, '2020-09-09', 2, '00201011', 0, 0, 6.5, '1'),
(5, 3, '2020-09-09', 2, '00201012', 0, 0, 7, '1'),
(6, 2, '2020-09-09', 2, '00201013', 0, 0, 7, '1'),
(7, 1, '2020-09-09', 2, '00201014', 0, 0, 6.5, '1'),
(8, 1, '2020-09-12', 2, '00201015', 0, 0, 2.5, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `categoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoria_id`, `descripcion`, `estado`) VALUES
(1, 'FRUTAS', '1'),
(2, 'VEGETALES', '1'),
(3, 'CARNES', '1'),
(4, 'CONGELADOS', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `ruc_dni` varchar(11) NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `ruc_dni`, `nombres`, `email`, `direccion`, `estado`) VALUES
(1, '12345678', 'Euler Pol ', 'juan@gmail.com', 'chepen', 1),
(2, '79542512', 'Alfonso Briones', 'pedro@gmail.com', 'chepen', 1),
(3, '76181878', 'Eudocia Rodriguez', 'josue@gmail.com', 'Guadalupe', 0),
(4, '76181878', 'Yeimi Chichon', 'josue@unitru.edu.pe', 'chepen', 0),
(5, '73670296', 'Nuri Tasilla', 'tasilla.990125@gmail.com', 'los jardines', 1),
(6, '73670296', 'Gianella Briones', 'tasilla.990125@gmail.com', 'los jardines', 1),
(7, '73670296', 'Alex Briones', 'tasilla.990125@gmail.com', 'los jardines', 1),
(8, '73670296', 'Yliana Ventura', 'tasilla.990125@gmail.com', 'los jardines', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventas`
--

DROP TABLE IF EXISTS `detalleventas`;
CREATE TABLE IF NOT EXISTS `detalleventas` (
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` float NOT NULL,
  PRIMARY KEY (`venta_id`,`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalleventas`
--

INSERT INTO `detalleventas` (`venta_id`, `producto_id`, `precio`, `cantidad`) VALUES
(1, 2, 7, 1),
(2, 1, 6.5, 1),
(3, 1, 6.5, 1),
(4, 1, 6.5, 1),
(5, 2, 7, 1),
(6, 2, 7, 1),
(7, 1, 6.5, 1),
(8, 6, 2.5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

DROP TABLE IF EXISTS `parametros`;
CREATE TABLE IF NOT EXISTS `parametros` (
  `tipo_id` int(11) NOT NULL AUTO_INCREMENT,
  `serie` varchar(3) NOT NULL,
  `numeracion` varchar(5) NOT NULL,
  PRIMARY KEY (`tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`tipo_id`, `serie`, `numeracion`) VALUES
(1, '001', '00004'),
(2, '002', '01016');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `unidad_id` int(11) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `descripcion`, `categoria_id`, `unidad_id`, `precio`, `cantidad`, `estado`) VALUES
(1, 'Manzana', 1, 1, 4, 10, '1'),
(2, 'Tomate', 1, 1, 3, 6, '1'),
(3, 'Platano', 1, 1, 3, 12, '1'),
(4, 'Naranja', 1, 1, 4, 12, '1'),
(5, 'Durazno', 1, 1, 4, 12, '1'),
(6, 'Piña', 1, 2, 5, 5, '1'),
(7, 'Palta', 2, 2, 1, 100, '1'),
(8, 'Arandano', 1, 1, 8, 20, '1'),
(9, 'Mamey', 1, 2, 3, 40, '1'),
(10, 'Lechuga', 2, 2, 1, 100, '1'),
(11, 'Huevos', 3, 2, 0.3, 40, '1'),
(12, 'Pollo', 3, 1, 8, 10, '1'),
(13, 'Cerdo', 3, 1, 13, 100, '1'),
(14, 'Pato', 3, 1, 13, 10, '1'),
(15, 'Maracuya', 1, 2, 0.2, 40, '1'),
(16, 'Guanabana', 1, 1, 4, 10, '1'),
(17, 'Pavo', 2, 1, 10, 40, '1'),
(18, 'Oveja', 3, 1, 10, 40, '1'),
(19, 'Yuca', 2, 1, 3, 40, '1'),
(20, 'Papa', 2, 1, 1, 40, '1'),
(21, 'Camote', 2, 1, 4, 40, '1'),
(22, 'Maiz', 2, 2, 0.5, 60, '1'),
(23, 'Camote', 2, 1, 4, 40, '1');

/* (1, 'FRUTAS', '1'),
(2, 'VEGETALES', '1'),
(3, 'CARNES', '1'),
(4, 'CONGELADOS', '1');

(1, 'KILOGRAMOS', '1'),
(2, 'UNIDADES', '1'),
(3, 'LITROS', '1');
 */

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

DROP TABLE IF EXISTS `tipo`;
CREATE TABLE IF NOT EXISTS `tipo` (
  `tipo_id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`tipo_id`, `descripcion`) VALUES
(1, 'FACTURA'),
(2, 'BOLETA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidads`
--

DROP TABLE IF EXISTS `unidads`;
CREATE TABLE IF NOT EXISTS `unidads` (
  `unidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`unidad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unidads`
--

INSERT INTO `unidads` (`unidad_id`, `descripcion`, `estado`) VALUES
(1, 'KILOGRAMOS', '1'),
(2, 'UNIDADES', '1'),
(3, 'LITROS', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@admin.com', '2020-06-25 15:52:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J3rlROtohWmXxUEdTx3fY0t5dgYNrXsd60zxMVuzVLvpUSGxJiAQG1IhxPzK', '2020-06-25 15:52:53', '2020-06-25 15:52:53'),
(2, 'Alexander Briones', 'alexanderbvart@gmail.com', '2020-06-25 15:52:53', '$2y$10$TnI0wgmas/29ykOROTRfDOr9ab8JRRqVIiDYmXbbr/SabLY0pYerK', 'J3rlROtohWmXxUEdTx3fY0t5dgYNrXsd60zxMVuzVLvpUSGxJiAQG1IhxPzK', '2020-06-25 15:52:53', '2020-06-25 15:52:53'),
(3, 'Nuri Tasilla', 'nuri@25.com', '2020-06-25 15:52:53', '$2y$10$JygV1d958CEBEFuN5uo3YeZxoAnn1h9wERhPVAToVvWFNSvjAFMrW', 'J3rlROtohWmXxUEdTx3fY0t5dgYNrXsd60zxMVuzVLvpUSGxJiAQG1IhxPzK', '2020-06-25 15:52:53', '2020-06-25 15:52:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
