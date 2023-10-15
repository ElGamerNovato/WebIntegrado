-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2023 at 07:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdtransporte`
--

-- --------------------------------------------------------

--
-- Table structure for table `asiento`
--

CREATE TABLE `asiento` (
  `idAsiento` int(11) NOT NULL,
  `idBus` int(11) NOT NULL,
  `nroAsiento` varchar(10) DEFAULT NULL,
  `ubicacion` varchar(13) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asiento`
--

INSERT INTO `asiento` (`idAsiento`, `idBus`, `nroAsiento`, `ubicacion`, `estado`) VALUES
(1, 1, 'VOLVO-01', '1° PISO', b'1'),
(2, 1, 'VOLVO-02', '1° PISO', b'1'),
(3, 1, 'VOLVO-03', '1° PISO', b'1'),
(4, 1, 'VOLVO-04', '1° PISO', b'1'),
(5, 1, 'VOLVO-05', '1° PISO', b'1'),
(6, 1, 'VOLVO-06', '1° PISO', b'1'),
(7, 1, 'VOLVO-07', '1° PISO', b'1'),
(8, 1, 'VOLVO-08', '1° PISO', b'1'),
(9, 1, 'VOLVO-09', '1° PISO', b'1'),
(10, 1, 'VOLVO-10', '1° PISO', b'1'),
(11, 1, 'VOLVO-11', '1° PISO', b'1'),
(12, 1, 'VOLVO-12', '1° PISO', b'1'),
(13, 1, 'VOLVO-13', '1° PISO', b'1'),
(14, 1, 'VOLVO-14', '1° PISO', b'1'),
(15, 1, 'VOLVO-15', '1° PISO', b'1'),
(16, 1, 'VOLVO-16', '1° PISO', b'1'),
(17, 1, 'VOLVO-17', '1° PISO', b'1'),
(18, 1, 'VOLVO-18', '1° PISO', b'1'),
(19, 1, 'VOLVO-19', '1° PISO', b'1'),
(20, 1, 'VOLVO-20', '1° PISO', b'1'),
(21, 1, 'VOLVO-21', '2° PISO', b'1'),
(22, 1, 'VOLVO-22', '2° PISO', b'1'),
(23, 1, 'VOLVO-23', '2° PISO', b'1'),
(24, 1, 'VOLVO-24', '2° PISO', b'1'),
(25, 1, 'VOLVO-25', '2° PISO', b'1'),
(26, 1, 'VOLVO-26', '2° PISO', b'1'),
(27, 1, 'VOLVO-27', '2° PISO', b'1'),
(28, 1, 'VOLVO-28', '2° PISO', b'1'),
(29, 1, 'VOLVO-29', '2° PISO', b'1'),
(30, 1, 'VOLVO-30', '2° PISO', b'1'),
(31, 1, 'VOLVO-31', '2° PISO', b'1'),
(32, 1, 'VOLVO-32', '2° PISO', b'1'),
(33, 1, 'VOLVO-33', '2° PISO', b'1'),
(34, 1, 'VOLVO-34', '2° PISO', b'1'),
(35, 1, 'VOLVO-35', '2° PISO', b'1'),
(36, 1, 'VOLVO-36', '2° PISO', b'1'),
(37, 1, 'VOLVO-37', '2° PISO', b'1'),
(38, 1, 'VOLVO-38', '2° PISO', b'1'),
(39, 1, 'VOLVO-39', '2° PISO', b'1'),
(40, 1, 'VOLVO-40', '2° PISO', b'1'),
(41, 1, 'VOLVO-41', '2° PISO', b'1'),
(42, 1, 'VOLVO-42', '2° PISO', b'1'),
(43, 1, 'VOLVO-43', '2° PISO', b'1'),
(44, 1, 'VOLVO-44', '2° PISO', b'1'),
(45, 1, 'VOLVO-45', '2° PISO', b'1'),
(46, 1, 'VOLVO-46', '2° PISO', b'1'),
(47, 1, 'VOLVO-47', '2° PISO', b'1'),
(48, 1, 'VOLVO-48', '2° PISO', b'1'),
(49, 1, 'VOLVO-49', '2° PISO', b'1'),
(50, 1, 'VOLVO-50', '2° PISO', b'1'),
(51, 2, 'VOLVO-01', '1° PISO', b'1'),
(52, 2, 'VOLVO-02', '1° PISO', b'1'),
(53, 2, 'VOLVO-03', '1° PISO', b'1'),
(54, 2, 'VOLVO-04', '1° PISO', b'1'),
(55, 2, 'VOLVO-05', '1° PISO', b'1'),
(56, 2, 'VOLVO-06', '1° PISO', b'1'),
(57, 2, 'VOLVO-07', '1° PISO', b'1'),
(58, 2, 'VOLVO-08', '1° PISO', b'1'),
(59, 2, 'VOLVO-09', '1° PISO', b'1'),
(60, 2, 'VOLVO-10', '1° PISO', b'1'),
(61, 2, 'VOLVO-11', '1° PISO', b'1'),
(62, 2, 'VOLVO-12', '1° PISO', b'1'),
(63, 2, 'VOLVO-13', '1° PISO', b'1'),
(64, 2, 'VOLVO-14', '1° PISO', b'1'),
(65, 2, 'VOLVO-15', '1° PISO', b'1'),
(66, 2, 'VOLVO-16', '1° PISO', b'1'),
(67, 2, 'VOLVO-17', '1° PISO', b'1'),
(68, 2, 'VOLVO-18', '1° PISO', b'1'),
(69, 2, 'VOLVO-19', '1° PISO', b'1'),
(70, 2, 'VOLVO-20', '1° PISO', b'1'),
(71, 2, 'VOLVO-21', '2° PISO', b'1'),
(72, 2, 'VOLVO-22', '2° PISO', b'1'),
(73, 2, 'VOLVO-23', '2° PISO', b'1'),
(74, 2, 'VOLVO-24', '2° PISO', b'1'),
(75, 2, 'VOLVO-25', '2° PISO', b'1'),
(76, 2, 'VOLVO-26', '2° PISO', b'1'),
(77, 2, 'VOLVO-27', '2° PISO', b'1'),
(78, 2, 'VOLVO-28', '2° PISO', b'1'),
(79, 2, 'VOLVO-29', ' 2° PISO', b'1'),
(80, 2, 'VOLVO-30', ' 2° PISO', b'1'),
(81, 2, 'VOLVO-31', ' 2° PISO', b'1'),
(82, 2, 'VOLVO-32', ' 2° PISO', b'1'),
(83, 2, 'VOLVO-33', ' 2° PISO', b'1'),
(84, 2, 'VOLVO-34', ' 2° PISO', b'1'),
(85, 2, 'VOLVO-35', ' 2° PISO', b'1'),
(86, 2, 'VOLVO-36', ' 2° PISO', b'1'),
(87, 2, 'VOLVO-37', ' 2° PISO', b'1'),
(88, 2, 'VOLVO-38', ' 2° PISO', b'1'),
(89, 2, 'VOLVO-39', ' 2° PISO', b'1'),
(90, 2, 'VOLVO-40', ' 2° PISO', b'1'),
(91, 2, 'VOLVO-41', ' 2° PISO', b'1'),
(92, 2, 'VOLVO-42', ' 2° PISO', b'1'),
(93, 2, 'VOLVO-43', ' 2° PISO', b'1'),
(94, 2, 'VOLVO-44', ' 2° PISO', b'1'),
(95, 2, 'VOLVO-45', ' 2° PISO', b'1'),
(96, 2, 'VOLVO-46', ' 2° PISO', b'1'),
(97, 2, 'VOLVO-47', ' 2° PISO', b'1'),
(98, 2, 'VOLVO-48', ' 2° PISO', b'1'),
(99, 2, 'VOVLO-49', '2° PISO', b'1'),
(100, 2, 'VOVLO-50', '2° PISO', b'1'),
(175, 3, 'VOLVO-01', '1° PISO', b'1'),
(176, 3, 'VOLVO-02', '1° PISO', b'1'),
(177, 3, 'VOLVO-03', '1° PISO', b'1'),
(178, 3, 'VOLVO-04', '1° PISO', b'1'),
(179, 3, 'VOLVO-05', '1° PISO', b'1'),
(180, 3, 'VOLVO-06', '1° PISO', b'1'),
(181, 3, 'VOLVO-07', '1° PISO', b'1'),
(182, 3, 'VOLVO-08', '1° PISO', b'1'),
(183, 3, 'VOLVO-09', '1° PISO', b'1'),
(184, 3, 'VOLVO-10', '1° PISO', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `boleto`
--

CREATE TABLE `boleto` (
  `idBoleto` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idPasajero` int(11) NOT NULL,
  `fechaViaje` datetime NOT NULL,
  `fechaVenta` datetime NOT NULL,
  `tipoComprobante` varchar(20) NOT NULL,
  `nroComprobante` int(11) NOT NULL,
  `precio` double NOT NULL,
  `igv` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `idBus` int(11) NOT NULL,
  `marcaBus` varchar(15) NOT NULL,
  `modeloBus` varchar(10) NOT NULL,
  `colorBus` varchar(10) NOT NULL,
  `nroPlaca` varchar(6) NOT NULL,
  `fotoBus` varchar(45) DEFAULT NULL,
  `condicionBus` varchar(200) DEFAULT NULL,
  `aforoMaximo` int(11) NOT NULL,
  `aforoMinimo` int(11) NOT NULL DEFAULT 15,
  `activo` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`idBus`, `marcaBus`, `modeloBus`, `colorBus`, `nroPlaca`, `fotoBus`, `condicionBus`, `aforoMaximo`, `aforoMinimo`, `activo`) VALUES
(1, 'MERCEDEZ', 'Panoramico', 'Verde', 'JHF78F', NULL, 'Intermedia', 20, 60, b'0'),
(2, 'VOLVO', 'Urbano', 'Blanco', 'PLWC00', NULL, 'Excelente', 50, 15, b'0'),
(3, '', '', '', '', NULL, '', 20, 3, b'0'),
(4, '', '', '', '', NULL, '', 30, 16, b'0'),
(5, 'MERCEDEZ', 'Panorámico', 'AZUL', 'PPWW47', NULL, 'Excelente', 40, 15, b'0'),
(6, 'MERCEDEZ', 'Urbano', 'Verde', '7F7D3H', NULL, 'Intermedia', 100, 50, b'0'),
(7, 'MERCEDEZ', 'Panorámico', 'AZUL', 'EEYY04', NULL, 'Excelente', 40, 15, b'0'),
(8, 'MERCEDEZ', 'Panorámico', 'AZUL', 'P45YH0', NULL, 'Excelente', 40, 15, b'1'),
(9, 'NISSAN', 'Urbano', 'GRIS', 'U800J5', NULL, 'Intermedia', 50, 15, b'0'),
(10, 'NISSAN', 'Urbano', 'GRIS', 'HH5500', NULL, 'Intermedia', 50, 15, b'1'),
(11, 'NISSAN', 'Urbano', 'GRIS', 'TTOOP0', NULL, 'Intermedia', 50, 15, b'1'),
(12, 'NISSAN', 'Urbano', 'GRIS', 'UUP042', NULL, 'Intermedia', 50, 15, b'1'),
(13, 'HYUANDAI', 'Urbano', 'NARANJA', 'OO7700', NULL, 'Intermedia', 50, 15, b'1'),
(14, 'HYUANDAI', 'Urbano', 'NARANJA', 'U88PP4', NULL, 'Intermedia', 50, 15, b'1'),
(15, 'HYUANDAI', 'Urbano', 'NARANJA', 'PP5400', NULL, 'Intermedia', 50, 15, b'0'),
(16, 'NISSAN', 'Urbano', 'Verde', '87HDSD', NULL, 'Excelente', 50, 24, b'0'),
(17, 'NISSAN', 'Urbano', 'Marron', 'FG7FHD', NULL, 'Excelente', 60, 30, b'1'),
(18, 'MERCEDEZ', 'Panoramico', 'Azul', '8UDS2D', NULL, 'Intermedia', 60, 30, b'0'),
(19, 'MERCEDEZ', 'Panoramico', 'Rojo', '78HSDS', NULL, 'Excelente', 60, 30, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `chofer`
--

CREATE TABLE `chofer` (
  `idChofer` int(11) NOT NULL,
  `nombreChofer` varchar(30) NOT NULL,
  `apellidoChofer` varchar(30) DEFAULT NULL,
  `DNI` varchar(8) NOT NULL,
  `telefonoChofer` varchar(9) NOT NULL,
  `nroLicencia` varchar(9) NOT NULL,
  `fotoChofer` varchar(50) DEFAULT NULL,
  `fechContratacion` date NOT NULL,
  `observacionChofer` varchar(100) DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chofer`
--

INSERT INTO `chofer` (`idChofer`, `nombreChofer`, `apellidoChofer`, `DNI`, `telefonoChofer`, `nroLicencia`, `fotoChofer`, `fechContratacion`, `observacionChofer`, `activo`) VALUES
(1, 'Axel', 'Q', '71621312', '997235213', '8AHSHS22', NULL, '2023-10-10', 'Good', b'0'),
(2, 'Carlos Cesar', 'Cabanillas Rojas', '44223225', '999999999', 'Q00447PP7', NULL, '2019-10-09', 'Chofer responsable', b'0'),
(3, 'Luis Jorgue', 'Toledo García', '42773225', '999999999', 'PP0447PP7', NULL, '2020-07-30', 'Chofer responsable', b'0'),
(4, 'Jaime Lucho', 'Perez Macedo', '42773225', '999999999', 'LL0447PP7', NULL, '2020-08-04', 'Chofer responsable', b'0'),
(5, 'Cesar Ernesto', 'Chambi Romero', '42773225', '999999999', 'QQ0447PP7', NULL, '2021-10-14', 'Chofer responsable', b'1'),
(6, 'Juber', 'Miranda', '14212412', '982372231', 'J7SHSG2', NULL, '2023-10-09', 'Buen conductor', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_viaje_boleto`
--

CREATE TABLE `detalle_viaje_boleto` (
  `idDetalle_Viaje_Boleto` int(11) NOT NULL,
  `idViaje` int(11) NOT NULL,
  `idBoleto` int(11) NOT NULL,
  `idBus` int(11) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL,
  `turno` varchar(45) NOT NULL,
  `obsHorario` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `horario`
--

INSERT INTO `horario` (`idHorario`, `turno`, `obsHorario`) VALUES
(1, 'Mañana', 'Mañanero'),
(2, 'Tarde', 'Vespertino'),
(3, 'Noche', 'Nocturno');

-- --------------------------------------------------------

--
-- Table structure for table `pasajero`
--

CREATE TABLE `pasajero` (
  `idPasajero` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `ap` varchar(45) NOT NULL,
  `am` varchar(45) NOT NULL,
  `DNI` varchar(45) NOT NULL,
  `celular` varchar(9) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruta`
--

CREATE TABLE `ruta` (
  `idRuta` int(11) NOT NULL,
  `nombreRuta` varchar(45) NOT NULL,
  `descripcionRuta` varchar(45) DEFAULT NULL,
  `distanciaRecorrido` int(11) NOT NULL,
  `tiempoRecorrido` int(11) NOT NULL,
  `observacionRuta` varchar(100) DEFAULT NULL,
  `activo` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruta`
--

INSERT INTO `ruta` (`idRuta`, `nombreRuta`, `descripcionRuta`, `distanciaRecorrido`, `tiempoRecorrido`, `observacionRuta`, `activo`) VALUES
(1, 'Ruta A', 'Carretera asfaltada ', 400, 10, 'Ruta fluida sin peajes', b'1'),
(2, 'Ruta B', 'Carretera asfaltada ', 300, 8, 'Ruta con 3 peajes', b'1'),
(3, 'Ruta C', 'Carretera con trocha ', 550, 12, 'Ruta sin peajes', b'1'),
(4, 'Ruta D', 'Carretera asfaltada ', 800, 12, 'Carretera con 2 controles policiales', b'1'),
(5, 'Ruta E', 'Carretera con trocha ', 120, 5, 'Carretera libre de peajes', b'1'),
(6, 'Ruta F', 'Carretera asfaltada ', 900, 15, 'Carretera libre de controles policiales', b'1'),
(7, 'Ruta G', 'Carretera con trocha ', 600, 12, 'Carretera con 4 peajes', b'1'),
(8, 'Ruta H', 'Carretera asfaltada ', 300, 12, 'Carreter de subida si peajes', b'1'),
(9, 'Ruta I', 'Carretera con trocha ', 120, 5, 'Carretera de altura ', b'1'),
(10, 'Ruta J', 'Carretera pistera', 150, 6, 'Carretera sin contratiempos', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `ruta_horario`
--

CREATE TABLE `ruta_horario` (
  `idRuta_Horario` int(11) NOT NULL,
  `idRuta` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL,
  `estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruta_horario`
--

INSERT INTO `ruta_horario` (`idRuta_Horario`, `idRuta`, `idHorario`, `estado`) VALUES
(1, 1, 1, b'1'),
(2, 1, 2, b'1'),
(3, 1, 3, b'1'),
(4, 2, 1, b'1'),
(5, 2, 2, b'1'),
(6, 2, 3, b'1'),
(7, 3, 1, b'1'),
(8, 3, 2, b'1'),
(9, 3, 3, b'1'),
(10, 4, 1, b'1'),
(11, 4, 2, b'1'),
(12, 4, 3, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `users` varchar(30) NOT NULL,
  `clave` varchar(6) NOT NULL,
  `rol` varchar(15) NOT NULL,
  `activo` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `users`, `clave`, `rol`, `activo`) VALUES
(1, 'Axelito', '123456', 'administrador', b'1'),
(2, 'Gino', '123456', 'auxiliar', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `viaje`
--

CREATE TABLE `viaje` (
  `idViaje` int(11) NOT NULL,
  `idChofer` int(11) NOT NULL,
  `idRuta` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asiento`
--
ALTER TABLE `asiento`
  ADD PRIMARY KEY (`idAsiento`),
  ADD UNIQUE KEY `idAsiento_UNIQUE` (`idAsiento`),
  ADD KEY `fk_asiento_bus_idx` (`idBus`);

--
-- Indexes for table `boleto`
--
ALTER TABLE `boleto`
  ADD PRIMARY KEY (`idBoleto`),
  ADD KEY `id_venta_usuario_idx` (`idUsuario`),
  ADD KEY `id_venta_pasajero_idx` (`idPasajero`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`idBus`);

--
-- Indexes for table `chofer`
--
ALTER TABLE `chofer`
  ADD PRIMARY KEY (`idChofer`),
  ADD UNIQUE KEY `nombreChofer_UNIQUE` (`nombreChofer`);

--
-- Indexes for table `detalle_viaje_boleto`
--
ALTER TABLE `detalle_viaje_boleto`
  ADD PRIMARY KEY (`idDetalle_Viaje_Boleto`),
  ADD KEY `fk_bus_viaje_idx` (`idBus`),
  ADD KEY `fk_boleto_detalleViaje_idx` (`idBoleto`),
  ADD KEY `fk_viaje_detalleViaje` (`idViaje`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idHorario`);

--
-- Indexes for table `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`idPasajero`);

--
-- Indexes for table `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`idRuta`);

--
-- Indexes for table `ruta_horario`
--
ALTER TABLE `ruta_horario`
  ADD PRIMARY KEY (`idRuta_Horario`),
  ADD KEY `fk_ruta_horario_idx` (`idRuta`),
  ADD KEY `fk_horario_ruta_idx` (`idHorario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `viaje`
--
ALTER TABLE `viaje`
  ADD PRIMARY KEY (`idViaje`),
  ADD KEY `fk_chofe_viaje_idx` (`idChofer`),
  ADD KEY `fk_ruta_viaje_idx` (`idRuta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asiento`
--
ALTER TABLE `asiento`
  MODIFY `idAsiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `boleto`
--
ALTER TABLE `boleto`
  MODIFY `idBoleto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `idBus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chofer`
--
ALTER TABLE `chofer`
  MODIFY `idChofer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detalle_viaje_boleto`
--
ALTER TABLE `detalle_viaje_boleto`
  MODIFY `idDetalle_Viaje_Boleto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasajero`
--
ALTER TABLE `pasajero`
  MODIFY `idPasajero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruta`
--
ALTER TABLE `ruta`
  MODIFY `idRuta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ruta_horario`
--
ALTER TABLE `ruta_horario`
  MODIFY `idRuta_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asiento`
--
ALTER TABLE `asiento`
  ADD CONSTRAINT `fk_asiento_bus` FOREIGN KEY (`idBus`) REFERENCES `bus` (`idBus`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `boleto`
--
ALTER TABLE `boleto`
  ADD CONSTRAINT `id_venta_pasajero` FOREIGN KEY (`idPasajero`) REFERENCES `pasajero` (`idPasajero`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_venta_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `detalle_viaje_boleto`
--
ALTER TABLE `detalle_viaje_boleto`
  ADD CONSTRAINT `fk_boleto_detalleViaje` FOREIGN KEY (`idBoleto`) REFERENCES `boleto` (`idBoleto`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bus_detalleViaje` FOREIGN KEY (`idBus`) REFERENCES `bus` (`idBus`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viaje_detalleViaje` FOREIGN KEY (`idViaje`) REFERENCES `viaje` (`idViaje`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `ruta_horario`
--
ALTER TABLE `ruta_horario`
  ADD CONSTRAINT `fk_horario_ruta` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ruta_horario` FOREIGN KEY (`idRuta`) REFERENCES `ruta` (`idRuta`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `viaje`
--
ALTER TABLE `viaje`
  ADD CONSTRAINT `fk_chofer_viaje` FOREIGN KEY (`idChofer`) REFERENCES `chofer` (`idChofer`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ruta_viaje` FOREIGN KEY (`idRuta`) REFERENCES `ruta` (`idRuta`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
