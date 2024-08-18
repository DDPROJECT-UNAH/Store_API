-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 08:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `Imagen` varchar(1000) NOT NULL,
  `FechaCreacion` date NOT NULL,
  `UsuarioCreacion` int(11) DEFAULT NULL,
  `FechaEdicion` date DEFAULT NULL,
  `UsuarioEdicion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`ID`, `Titulo`, `Precio`, `Descripcion`, `Categoria`, `Imagen`, `FechaCreacion`, `UsuarioCreacion`, `FechaEdicion`, `UsuarioEdicion`) VALUES
(1, 'Jamon', 40, 'Jamon toledo', 'Carnes', 'https://walmarthn.vtexassets.com/arquivos/ids/302982/Jam-n-De-Pavo-Marca-Toledo-230gr-1-7809.jpg?v=638251727403800000', '2024-08-05', 1, NULL, NULL),
(2, 'Lechuga', 20, 'Lechuga unidad', 'Verduras', 'https://walmarthn.vtexassets.com/arquivos/ids/361757/Lechuga-Cabeza-con-un-peso-aproximado-de-0-72-libra-1-53.jpg?v=638420098761430000', '2024-08-21', 2, NULL, NULL),
(3, 'Doritos', 15, 'Doritos unidad', 'Snacks', 'https://www.doritos.com/sites/doritos.com/files/2024-06/new-nacho-cheese%202024.png', '2024-08-02', 3, NULL, NULL),
(4, 'Mantequilla', 25, 'Mantequilla libra', 'Lacteos', 'https://t1.uc.ltmcdn.com/es/posts/9/1/6/como_hacer_crema_de_leche_casera_50619_600.jpg', '2024-08-09', 1, NULL, NULL),
(5, 'Dulce de Leche', 33, 'Dulce de Leche unidad', 'Dulces', 'https://www.clarin.com/img/2022/10/10/UjnY2Plmk_2000x1500__1.jpg', '2024-07-13', 2, NULL, NULL),
(6, 'Galletas Principe', 20, 'Galletas Principe unidad', 'Galletas', 'https://media.justo.mx/products/7503034672104-1.jpg', '2024-07-16', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Contrasena` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Usuario`, `Contrasena`) VALUES
(1, 'Wai', 'wtse', '$2b$04$Gco.ESzRc5psb5b5rbjnQ.O0daov.0PHzWscpiYd3l1AvWvPeknRa'),
(2, 'Brayan', 'Brayan', '$2b$04$6llHbkh/poD/CEQLAuxEeOzytlA8P7H5ZAzDhqcsyMJ7CzDTKXE3C'),
(3, 'Luis', 'Luis', '$2b$04$BPTxMBH0FXAOpKV2M.ILGOQMRL2hlOwzZBNYaWBBJ2IO9Zz3L3Ovy'),
(4, 'Jehnson', 'Jehnson', '$2b$04$kXi6KOAWqnvyGZZn8fHArOXeC4cBjIfuUZhYMwpcHiPSGoSpbhFxi'),
(5, 'Jancy', 'Jancy', '$2b$04$wZtxb8LfFvZpCVVgL/jxKOj8B/Qn7SYwRZXqVOzoMUtGprfLF1Ywi'),
(6, 'Carlos', 'Carlos', '$2b$04$wYT8bLxkF8l.2dap2I4GluamD7SIUWFVL4Y2RrBnXa0bD4l5e4Spe'),
(7, 'Jeyson', 'Jeyson', '$2b$04$8uBvBH7G1gAKm7Uxrxn/BOYrKVdaPU9eNH60DyK7P6V8qbTGTbB9.');

-- LISTA DE USUARIOS REGISTRADOS:
-- "Usuario": "Brayan",
-- "Contrasena": "Brayan123"

-- "Usuario": "Carlos",
-- "Contrasena": "Carlos123"

-- "Usuario": "Jancy",
-- "Contrasena": "chambers*1587"

-- "Usuario": "Jehnson",
-- "Contrasena": "Jehnson123"

-- "Usuario": "Jeyson",
-- "Contrasena": "Jeyson123"

-- "Usuario": "Luis",
-- "Contrasena": "Luis1234"

-- "Usuario": "wtse",
-- "Contrasena": "wtse1234"



--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserCreacionFK` (`UsuarioCreacion`),
  ADD KEY `UserEdicionFK` (`UsuarioEdicion`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `UserCreacionFK` FOREIGN KEY (`UsuarioCreacion`) REFERENCES `usuarios` (`ID`),
  ADD CONSTRAINT `UserEdicionFK` FOREIGN KEY (`UsuarioEdicion`) REFERENCES `usuarios` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
