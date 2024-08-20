-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2024 a las 07:19:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `description` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `createdDate` date NOT NULL,
  `createdUser` int(11) DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `modifiedUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `title`, `price`, `description`, `category`, `image`, `createdDate`, `createdUser`, `modifiedDate`, `modifiedUser`) VALUES
(1, 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Lapt', 110, 'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday', 'men\'s clothing', 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(2, 'Mens Casual Premium Slim Fit T-Shirts ', 22, 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and', 'men\'s clothing', 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(3, 'Mens Cotton Jacket', 56, 'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Fath', 'men\'s clothing', 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(4, 'Mens Casual Slim Fit', 16, 'The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.', 'men\'s clothing', 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(5, 'John Hardy Women\'s Legends Naga Gold & Silver Drag', 695, 'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.', 'jewelery', 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(6, 'Solid Gold Petite Micropave ', 168, 'Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.', 'jewelery', 'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(7, 'White Gold Plated Princess', 10, 'Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine\'s Day...', 'jewelery', 'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(8, 'Pierced Owl Rose Gold Plated Stainless Steel Doubl', 11, 'Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel', 'jewelery', 'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(9, 'WD 2TB Elements Portable External Hard Drive - USB', 64, 'USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary dependin', 'electronics', 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(10, 'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/', 109, 'Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, mak', 'electronics', 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(11, 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Perf', 109, '3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design sui', 'electronics', 'https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(12, 'WD 4TB Gaming Drive Works with Playstation 4 Porta', 114, 'Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer\'s limited warranty', 'electronics', 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(13, 'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) I', 599, '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color', 'electronics', 'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(14, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor ', 1000, '49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ', 'electronics', 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(15, 'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket Winter', 57, 'Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in co', 'women\'s clothing', 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(16, 'Lock and Love Women\'s Removable Hooded Faux Leathe', 30, '100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides', 'women\'s clothing', 'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(17, 'Rain Jacket Women Windbreaker Striped Climbing Rai', 40, 'Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, i', 'women\'s clothing', 'https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg', '2024-08-19', 1, '2024-08-19', 1),
(18, 'MBJ Women\'s Solid Short Sleeve Boat Neck V ', 10, '95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem', 'women\'s clothing', 'https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(19, 'Opna Women\'s Short Sleeve Moisture', 8, '100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comforta', 'women\'s clothing', 'https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg', '2024-08-19', 1, '2024-08-19', 1),
(20, 'DANVOUY Womens T Shirt Casual Cotton Short', 13, '95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.', 'women\'s clothing', 'https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg', '2024-08-19', 1, '2024-08-19', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Contrasena` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Usuario`, `Contrasena`) VALUES
(1, 'Wai', 'wtse', '$2b$04$Gco.ESzRc5psb5b5rbjnQ.O0daov.0PHzWscpiYd3l1AvWvPeknRa'),
(2, 'Brayan', 'Brayan', '$2b$04$6llHbkh/poD/CEQLAuxEeOzytlA8P7H5ZAzDhqcsyMJ7CzDTKXE3C'),
(3, 'Luis', 'Luis', '$2b$04$BPTxMBH0FXAOpKV2M.ILGOQMRL2hlOwzZBNYaWBBJ2IO9Zz3L3Ovy'),
(4, 'Jehnson', 'Jehnson', '$2b$04$kXi6KOAWqnvyGZZn8fHArOXeC4cBjIfuUZhYMwpcHiPSGoSpbhFxi'),
(5, 'Jancy', 'Jancy', '$2b$04$wZtxb8LfFvZpCVVgL/jxKOj8B/Qn7SYwRZXqVOzoMUtGprfLF1Ywi'),
(6, 'Carlos', 'Carlos', '$2b$04$wYT8bLxkF8l.2dap2I4GluamD7SIUWFVL4Y2RrBnXa0bD4l5e4Spe'),
(7, 'Jeyson', 'Jeyson', '$2b$04$8uBvBH7G1gAKm7Uxrxn/BOYrKVdaPU9eNH60DyK7P6V8qbTGTbB9.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserCreacionFK` (`createdUser`),
  ADD KEY `UserEdicionFK` (`modifiedUser`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `UserCreacionFK` FOREIGN KEY (`createdUser`) REFERENCES `usuarios` (`ID`),
  ADD CONSTRAINT `UserEdicionFK` FOREIGN KEY (`modifiedUser`) REFERENCES `usuarios` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
