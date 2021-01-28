-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2021 at 03:00 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpvalley`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabeceraventas`
--

CREATE TABLE `cabeceraventas` (
  `venta_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `nrodoc` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` float NOT NULL,
  `igv` float NOT NULL,
  `total` float NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabeceraventas`
--

INSERT INTO `cabeceraventas` (`venta_id`, `cliente_id`, `fecha_venta`, `tipo_id`, `nrodoc`, `subtotal`, `igv`, `total`, `estado`) VALUES
(1, 1, '2020-09-09', 1, '00100002', 0, 0, 7, '1'),
(2, 1, '2020-09-09', 2, '00201010', 0, 0, 6.5, '1'),
(3, 2, '2020-09-09', 1, '00100003', 0, 0, 6.5, '1'),
(4, 2, '2020-09-09', 2, '00201011', 0, 0, 6.5, '1'),
(5, 3, '2020-09-09', 2, '00201012', 0, 0, 7, '1'),
(6, 2, '2020-09-09', 2, '00201013', 0, 0, 7, '1'),
(7, 1, '2020-09-09', 2, '00201014', 0, 0, 6.5, '1'),
(8, 1, '2020-09-12', 2, '00201015', 0, 0, 2.5, '1'),
(9, 3, '2020-12-24', 2, '00201016', 0, 0, 16, '1'),
(10, 4, '2020-12-24', 2, '00201017', 0, 0, 181, '1'),
(11, 1, '2020-12-24', 2, '00201018', 0, 0, 72, '1'),
(12, 6, '2020-12-24', 2, '00201019', 0, 0, 7, '1'),
(14, 1, '2020-12-24', 2, '00201020', 0, 0, 4, '1'),
(15, 3, '2020-12-24', 2, '00201021', 0, 0, 4, '1'),
(16, 7, '2020-12-26', 1, '00100004', 0, 0, 5, '1'),
(17, 1, '2020-12-31', 2, '00201022', 0, 0, 20, '1'),
(18, 3, '2020-12-31', 2, '00201023', 0, 0, 12, '1');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `categoria_id` int(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`categoria_id`, `descripcion`, `estado`) VALUES
(1, 'FRUTAS', '1'),
(2, 'VEGETALES', '1'),
(3, 'CARNES', '1'),
(4, 'CONGELADOS', '1');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `ruc_dni` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `ruc_dni`, `nombres`, `email`, `direccion`, `estado`) VALUES
(1, '12345678', 'Euler Pol ', 'euler@gmail.com', 'Portada de la sierra', 1),
(2, '79542512', 'Alfonso Briones', 'alfonso@gmail.com', 'Portada de la sierra', 1),
(3, '76181878', 'Eudocia Rodriguez', 'eudocia@gmail.com', 'Portada de la sierra', 1),
(4, '76381878', 'Yeimi Chichon', 'yeimi@unitru.edu.pe', 'Portada de la sierra', 1),
(5, '73670296', 'Nuri Tasilla', 'tasilla.990125@gmail.com', 'Ciudad de Dios, los jardines', 1),
(6, '73670286', 'Gianella Briones', 'gianella@gmail.com', 'Tecapa', 1),
(7, '73679696', 'Alex Briones', 'alex@gmail.com', 'Tecapa', 1),
(8, '73770646', 'Yliana Ventura', 'yliana@gmail.com', 'Tecapa', 1),
(9, '71674394', 'Pepe Pimiento', 'pimiento@gmail.com', 'UNT', 1),
(10, '71602664', 'Jorge Luis', 'jsluis@gmail.com', 'margaritas 452Chepen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detalleventas`
--

CREATE TABLE `detalleventas` (
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detalleventas`
--

INSERT INTO `detalleventas` (`venta_id`, `producto_id`, `precio`, `cantidad`) VALUES
(1, 2, 7, 1),
(2, 1, 6.5, 1),
(3, 1, 6.5, 1),
(4, 1, 6.5, 1),
(5, 2, 7, 1),
(6, 2, 7, 1),
(7, 1, 6.5, 1),
(8, 6, 2.5, 1),
(9, 1, 4, 4),
(10, 3, 3, 4),
(10, 13, 13, 3),
(10, 14, 13, 10),
(11, 3, 3, 4),
(11, 4, 4, 5),
(11, 18, 10, 4),
(12, 2, 3, 2),
(12, 10, 1, 1),
(14, 4, 4, 1),
(15, 1, 4, 1),
(16, 6, 5, 1),
(17, 4, 4, 5),
(18, 9, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parametros`
--

CREATE TABLE `parametros` (
  `tipo_id` int(11) NOT NULL,
  `serie` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeracion` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parametros`
--

INSERT INTO `parametros` (`tipo_id`, `serie`, `numeracion`) VALUES
(1, '001', '00005'),
(2, '002', '01024');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `unidad_id` int(11) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`producto_id`, `descripcion`, `categoria_id`, `unidad_id`, `precio`, `cantidad`, `estado`) VALUES
(1, 'Manzana', 1, 1, 4, 95, '1'),
(2, 'Tomate', 1, 1, 3, 58, '1'),
(3, 'Platano', 1, 1, 3, 112, '1'),
(4, 'Naranja', 1, 1, 4, 114, '1'),
(5, 'Durazno', 1, 1, 4, 120, '1'),
(6, 'Piña', 1, 2, 5, 50, '1'),
(7, 'Palta', 2, 2, 1, 100, '1'),
(8, 'Arandano', 1, 1, 8, 20, '1'),
(9, 'Mamey', 1, 2, 3, 40, '1'),
(10, 'Lechuga', 2, 2, 1, 99, '1'),
(11, 'Huevos', 3, 2, 0.3, 40, '1'),
(12, 'Pollo', 3, 1, 8, 10, '1'),
(13, 'Cerdo', 3, 1, 13, 97, '1'),
(14, 'Pato', 3, 1, 13, 0, '1'),
(15, 'Maracuya', 1, 2, 0.2, 40, '1'),
(16, 'Guanabana', 1, 1, 4, 10, '1'),
(17, 'Pavo', 2, 1, 10, 40, '1'),
(18, 'Oveja', 3, 1, 10, 36, '1'),
(19, 'Yuca', 2, 1, 3, 40, '1'),
(20, 'Papa', 2, 1, 1, 40, '1'),
(21, 'Camote', 2, 1, 4, 40, '1'),
(22, 'Maiz', 2, 2, 0.5, 60, '1'),
(23, 'Camote', 2, 1, 4, 40, '1'),
(24, 'Uva', 1, 1, 2.5, 100, '1'),
(25, 'Zanahoria', 2, 1, 2, 49, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tipo`
--

CREATE TABLE `tipo` (
  `tipo_id` int(11) NOT NULL,
  `descripcion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipo`
--

INSERT INTO `tipo` (`tipo_id`, `descripcion`) VALUES
(1, 'FACTURA'),
(2, 'BOLETA');

-- --------------------------------------------------------

--
-- Table structure for table `unidads`
--

CREATE TABLE `unidads` (
  `unidad_id` int(11) NOT NULL,
  `descripcion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unidads`
--

INSERT INTO `unidads` (`unidad_id`, `descripcion`, `estado`) VALUES
(1, 'KILOGRAMOS', '1'),
(2, 'UNIDADES', '1'),
(3, 'LITROS', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@admin.com', '2020-06-25 15:52:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g06d2jis7MEOGQd2u0oXjtYoMgPJ4EnOVRpKbN3AB6r0WxJedzb17uMfrRye', '2020-06-25 15:52:53', '2020-06-25 15:52:53'),
(2, 'Alexander Briones', 'alexanderbvart@gmail.com', '2020-06-25 15:52:53', '$2y$10$TnI0wgmas/29ykOROTRfDOr9ab8JRRqVIiDYmXbbr/SabLY0pYerK', 'BF6aLqwoj6OblNc8cBjzUYTEdTKHx8AeNVZ0Npm0n7vh43aAwJs60n0qnf4C', '2020-06-25 15:52:53', '2020-06-25 15:52:53'),
(3, 'Nuri Tasilla', 'nuri@25.com', '2020-06-25 15:52:53', '$2y$10$JygV1d958CEBEFuN5uo3YeZxoAnn1h9wERhPVAToVvWFNSvjAFMrW', 'J3rlROtohWmXxUEdTx3fY0t5dgYNrXsd60zxMVuzVLvpUSGxJiAQG1IhxPzK', '2020-06-25 15:52:53', '2020-06-25 15:52:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabeceraventas`
--
ALTER TABLE `cabeceraventas`
  ADD PRIMARY KEY (`venta_id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indexes for table `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD PRIMARY KEY (`venta_id`,`producto_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`tipo_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`tipo_id`);

--
-- Indexes for table `unidads`
--
ALTER TABLE `unidads`
  ADD PRIMARY KEY (`unidad_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabeceraventas`
--
ALTER TABLE `cabeceraventas`
  MODIFY `venta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parametros`
--
ALTER TABLE `parametros`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unidads`
--
ALTER TABLE `unidads`
  MODIFY `unidad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
