-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2026 a las 08:14:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integradora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(25, 'Ratón Rosado', 'Ratón rosado tejido a mano, con un tamaño aproximado de 24 a 26 cm  \r\nelaborado bajo pedido.', 24.00, 'raton_rosado.jpg.jpeg'),
(26, 'Ratón Gris', 'Ratón gris tejido a mano, con un tamaño aproximado de 24 a 26 cm elaborado bajo pedido.', 24.00, 'raton_gris.jpg.jpeg'),
(27, 'Tortuga', 'Llavero tejido a mano, con un tamaño aproximado de 8 a 10 cm elaborado bajo pedido.', 7.00, 'tortuga.jpeg'),
(28, 'Doctor', 'Llavero de doctor personalizado, tejido a mano y con un tamaño aproximado de 8 a 10 cm elaborado bajo pedido.', 10.00, 'doctor.jpeg'),
(29, 'Ratón con Overol', 'Ratón tejido a mano con overol, con un tamaño aproximado de 22 cm elaborado bajo pedido.', 24.00, 'raton_overol.jpeg'),
(30, 'Llaveros Sol y Luna', 'Set de dos llaveros tejidos a mano con diseños de sol y luna elaborados bajo pedido.', 10.00, 'llaveros.jpeg'),
(31, 'Sandalias Florales para Bebé', 'Sandalias tejidas a mano para bebé de 0 a 3 meses, con diseño floral elaboradas bajo pedido.', 15.00, 'sandalias.jpeg'),
(32, 'Portalápices Capibara', 'Portalápices de capibara tejido a mano, con un tamaño aproximado de 13 cm elaborado bajo pedido.', 12.00, 'pulpito.jpeg'),
(33, 'Ramo de Flores Tejidas', 'Ramo de flores tejido a mano, elaborado cuidadosamente y bajo pedido.', 20.00, 'ramo.jpeg'),
(34, 'Esferas Tejidas', 'Set de dos esferas tejidas a mano, elaboradas bajo pedido.', 15.00, 'esferas.jpeg'),
(35, 'Maceta de Corazón Tejido', 'Corazón tejido a mano en maceta decorativa. Incluye bolsita y tarjeta con dedicatoria elaborado bajo pedido.', 13.00, 'macetas.jpeg'),
(36, 'Pollito con Corazón', 'Pollito tejido a mano acompañado de un corazón. Disponible con base o en bolsita con tarjeta de dedicatoria elaborado bajo pedido.', 12.00, 'pollito.jpeg'),
(37, 'Llavero Travieso', 'Llavero tejido a mano con diseño divertido, ideal para un regalo original y con sentido del humor elaborado bajo pedido.', 7.00, 'travieso.jpeg'),
(38, 'Cartuchera Tejida', 'Cartuchera tejida a mano, con medidas aproximadas de 21 cm de ancho x 11 cm de alto elaborada bajo pedido.', 12.00, 'cartuchera.jpeg'),
(39, 'Cartuchera Gatita Rosa', 'Cartuchera tejida a mano con diseño de gatita y detalles de lazos, con medidas aproximadas de 21 cm de ancho x 11 cm de alto elaborada bajo pedido.', 12.00, 'cartuchera2.jpeg'),
(40, 'Portalápices Kuromi', 'Portalápices tejido a mano con diseño de Kuromi. Incluye de 12 a 15 cuerditas para organizar y sujetar los lápices elaborado bajo pedido.', 10.00, 'portalapices.jpeg'),
(41, 'Llavero Hello Kitty Pompompurin', 'Llavero de Hello Kitty con disfraz de Pompompurin, tejido a mano y con un tamaño aproximado de 8 a 10 cm elaborado bajo pedido.', 7.00, 'hello kitty.jpeg'),
(42, 'Llavero Osito Cariñosito', 'Llavero de osito cariñosito tejido a mano, con un tamaño aproximado de 8 a 10 cm elaborado bajo pedido.', 7.00, 'oso.jpeg'),
(43, 'Macetero con Rosas Rojas', 'Macetero con rosas rojas totalmente tejido a mano, con un tamaño aproximado de 20 a 23 cm elaborado bajo pedido.', 20.00, 'macetero.jpeg'),
(44, 'Llavero Spider-Man', 'Llavero de Spider-Man tejido a mano, disponible en diferentes diseños elaborado bajo pedido.', 7.00, 'spiderman.jpeg'),
(45, 'Gorro Tejido para Bebé', 'Gorro para bebé tejido a mano con hilo antialérgico, pensado para brindar suavidad y comodidad elaborado bajo pedido', 12.00, 'gorro.jpeg'),
(46, 'Gorro de Patito para Bebé', 'Gorro de patito tejido a mano para bebé, con un diseño tierno y artesanal elaborado bajo pedido.', 12.00, 'patito.jpeg'),
(47, 'Set Peluche y Llavero', 'Set tejido a mano compuesto por un peluche de aproximadamente 17 cm y un llavero de aproximadamente 9 cm elaborados bajo pedido.', 28.00, 'peluche.jpeg'),
(48, 'Muñeca Nelly', 'Muñeca Nelly tejida a mano, elaborada cuidadosamente y bajo pedido.', 22.00, 'muñeca.jpeg'),
(50, 'Diadema BTS', 'Diadema inspirada en BTS, tejida a mano con detalles artesanales elaborada bajo pedido.', 13.00, 'diadema.jpeg'),
(51, 'Llavero Mike', 'Llavero de Mike tejido a mano, con un diseño artesanal y elaborado bajo pedido.', 7.00, 'mike.jpeg'),
(52, 'Cartuchera Búho', 'Cartuchera tejida a mano con diseño de búho y detalles artesanales elaborada bajo pedido.', 10.00, 'cartuchera3.jpeg'),
(53, 'Cartuchera Floral', 'Cartuchera o bolsito de mano tejido a mano, con diseño floral multicolor elaborado bajo pedido.', 10.00, 'cartucheraa4.jpeg'),
(54, 'Spider-Girl', 'Muñeca Spider-Girl tejida a mano, con detalles inspirados en el personaje elaborada bajo pedido.', 18.00, 'spider_girl.jpeg'),
(55, 'Pulpo Girl', 'Pulpo Girl tejido a mano, con diseño artesanal y elaborado bajo pedido.', 13.00, 'pulpo.jpeg'),
(56, 'Peluche Lalafanfan', 'Peluche Lalafanfan tejido a mano, con acabados artesanales y elaborado bajo pedido.', 23.00, 'lalafanfan.jpeg'),
(57, 'Gorro Kuromi', 'Gorro inspirado en Kuromi, tejido a mano en hilo acrílico elaborado bajo pedido.', 15.00, 'kuromi.jpeg'),
(58, 'Macetero con Tulipanes', 'Macetero pequeño con dos tulipanes tejidos a mano elaborado cuidadosamente y bajo pedido.', 10.00, 'pequeña maceta.jpeg'),
(59, 'Macetero con Lirio', 'Macetero decorativo con lirio tejido a mano, elaborado cuidadosamente y bajo pedido.', 18.00, 'lirio.jpeg'),
(60, 'Gorro Minions x Buzz Lightyear', 'Gorro tejido a mano en hilo acrílico, con diseño que fusiona elementos de Minions y Buzz Lightyear elaborado bajo pedido.', 15.00, 'minionms.jpeg'),
(61, 'Dinosaurio de Chenille', 'Dinosaurio tejido a mano con hilo chenille, de textura suave y acabado artesanal elaborado bajo pedido.', 25.00, 'dinosaurio.jpeg'),
(62, 'Llavero Gatito Personalizado', 'Llavero de gatito tejido a mano y personalizado, elaborado cuidadosamente bajo pedido.', 8.00, 'gatito.jpeg'),
(63, 'Tortuga de Chenille', 'Tortuga tejida a mano con hilo chenille, de textura suave y con un tamaño aproximado de 25 cm elaborada bajo pedido.', 23.00, 'tortuga2.jpeg'),
(64, 'Macetero con Lirio y Hojas', 'Macetero decorativo con lirio tejido a mano y detalles de hojas verdes elaborado cuidadosamente bajo pedido.', 18.00, 'macetero_lirio.jpeg'),
(65, 'Porta colores Mario Bros', 'Porta colores tejido a mano con diseño inspirado en Mario Bros, con capacidad para 14 colores elaborado bajo pedido.', 10.00, 'corta_color.jpeg'),
(66, 'Set Osos Escandalosos', 'Set de tres osos escandalosos tejidos a mano, elaborados cuidadosamente y bajo pedido.', 23.00, 'oso escandalosos.jpeg'),
(67, 'Colgador Parejita de Aguacates', 'Colgador decorativo con parejita de aguacates tejidos a mano, ideal para decorar espacios o regalar elaborado bajo pedido.', 12.00, 'aguacates.jpeg'),
(68, 'Colgador Parejita de Tortugas', 'Colgador decorativo para auto con parejita de tortugas tejidas a mano elaborado bajo pedido.', 13.00, 'colgador_autos.jpeg'),
(69, 'Macetero de Flores Moradas', 'Macetero decorativo con flores moradas tejidas a mano, elaborado cuidadosamente y bajo pedido.', 20.00, 'macetero_flores_moradas.jpeg'),
(70, 'Zapatitos Tejidos para Bebé', 'Zapatitos tejidos a mano para bebé de 0 a 3 meses elaborados cuidadosamente y bajo pedido.', 10.00, 'zapatitos.jpeg'),
(71, 'Forro Tejido para Cojín', 'Forro para cojín tejido a mano con hilo acrílico, con medidas aproximadas de 30 x 30 cm elaborado bajo pedido.', 23.00, 'forro_cojin.jpeg'),
(72, 'Llaveros de Gatito', 'Llaveros de gatito tejidos a mano y elaborados bajo pedido disponibles a $7 cada uno o promoción de 2 por $10.', 7.00, 'llaveros_gatitos.jpeg'),
(73, 'Conjunto para Bebé con Zapatitos', 'Conjunto con zapatitos para bebé de 0 a 3 meses, tejido a mano con hilo de algodón antialérgico elaborado bajo pedido.', 38.00, 'conjunto_bebe.jpeg'),
(74, 'Odontóloga Personalizada', 'Muñeca odontóloga personalizada, tejida a mano e incluye implementos relacionados con su profesión, mide aproximadamente 25 cm y es elaborada bajo pedido.', 40.00, 'odontologa.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
