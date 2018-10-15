-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2018 a las 02:44:23
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hunter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafe`
--

CREATE TABLE `cafe` (
  `idCafe` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `peso` int(100) NOT NULL,
  `idEspecie` int(11) NOT NULL,
  `variedad` int(11) NOT NULL,
  `porcentajeHumedad` int(11) NOT NULL,
  `idMolida` int(11) NOT NULL,
  `IdGrano` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valorUnitario` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `idMateriaPrima` int(11) NOT NULL,
  `idTipoBeneficio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idCiudad` int(11) NOT NULL,
  `nomCiudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `idFinca` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalledisecurva`
--

CREATE TABLE `detalledisecurva` (
  `idDetaCurva` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefinca`
--

CREATE TABLE `detallefinca` (
  `idDetalleFinca` int(11) NOT NULL,
  `nombreFinca` varchar(50) NOT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `coordenadas` varchar(50) DEFAULT NULL,
  `idMunicipio` int(11) NOT NULL,
  `idVereda` int(11) NOT NULL,
  `Idciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseñocurva`
--

CREATE TABLE `diseñocurva` (
  `idDiseñoCurva` int(11) NOT NULL,
  `idDetaDiseCurva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `IdEspecie` int(11) NOT NULL,
  `nomEspecie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estabilizacion`
--

CREATE TABLE `estabilizacion` (
  `idEstabilizacion` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `idCafe` int(11) NOT NULL,
  `estabilizacion` int(11) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadostorrefaccion`
--

CREATE TABLE `estadostorrefaccion` (
  `idEstados` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `codigoEstado` int(11) NOT NULL,
  `idCafe` int(11) NOT NULL,
  `mermaTueste` int(11) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finca`
--

CREATE TABLE `finca` (
  `idFinca` int(11) NOT NULL,
  `idDetalleFinca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grano`
--

CREATE TABLE `grano` (
  `idGrano` int(11) NOT NULL,
  `mediaLibra` int(11) NOT NULL,
  `Libra` int(11) NOT NULL,
  `cincoLibras` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `idlaboratorio` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `idCafe` int(11) NOT NULL,
  `idDiseCurva` int(11) NOT NULL,
  `observacin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima`
--

CREATE TABLE `materiaprima` (
  `idMateriaPrima` int(11) NOT NULL,
  `nomMateriaPrima` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `molida`
--

CREATE TABLE `molida` (
  `idMolida` int(11) NOT NULL,
  `libra` int(11) NOT NULL,
  `mediaLibra` int(11) NOT NULL,
  `cincoLibras` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `idMunicipio` int(11) NOT NULL,
  `nomMunicipio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `primerNombre` varchar(50) NOT NULL,
  `SegNombre` varchar(50) DEFAULT NULL,
  `primerApellido` varchar(50) NOT NULL,
  `SegApellido` varchar(50) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `documento` varchar(50) NOT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `correo` varchar(15) DEFAULT NULL,
  `numeroContacto` varchar(25) NOT NULL,
  `Dirección` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebaslaboratorio`
--

CREATE TABLE `pruebaslaboratorio` (
  `idPruebLavoratorio` int(11) NOT NULL,
  `fechaHora` date NOT NULL,
  `idCafe` int(11) NOT NULL,
  `humedad` int(11) NOT NULL,
  `densidad` int(11) NOT NULL,
  `actividadAcuosa` int(11) NOT NULL,
  `IdDiseñoCurva` int(11) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcion`
--

CREATE TABLE `recepcion` (
  `idRecepcion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idCafe` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `numeroFactura` int(11) NOT NULL,
  `cantImpreFactura` int(11) NOT NULL,
  `fechaImpreFactura` int(11) NOT NULL,
  `cantImpreRecibo` int(11) NOT NULL,
  `fachaImpreRecibo` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipobeneficio`
--

CREATE TABLE `tipobeneficio` (
  `idTipoBeneficio` int(11) NOT NULL,
  `nomBeneficio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torrefactor`
--

CREATE TABLE `torrefactor` (
  `idTorrefactor` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `idCafe` int(11) NOT NULL,
  `Enfriar` int(11) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trilla`
--

CREATE TABLE `trilla` (
  `idTrilla` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `IdCafe` int(11) NOT NULL,
  `mermaTrilla` int(11) NOT NULL,
  `mallas` int(11) NOT NULL,
  `codigoTrilla` int(11) NOT NULL,
  `pesoCafeVerde` int(11) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `idPersona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vereda`
--

CREATE TABLE `vereda` (
  `idVereda` int(11) NOT NULL,
  `nomVereda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`idCafe`),
  ADD KEY `idEspecie` (`idEspecie`),
  ADD KEY `IdGrano` (`IdGrano`),
  ADD KEY `idMateriaPrima` (`idMateriaPrima`),
  ADD KEY `idMolida` (`idMolida`),
  ADD KEY `idTipoBeneficio` (`idTipoBeneficio`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idCiudad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idFinca` (`idFinca`),
  ADD KEY `idPersona` (`idPersona`);

--
-- Indices de la tabla `detalledisecurva`
--
ALTER TABLE `detalledisecurva`
  ADD PRIMARY KEY (`idDetaCurva`);

--
-- Indices de la tabla `detallefinca`
--
ALTER TABLE `detallefinca`
  ADD PRIMARY KEY (`idDetalleFinca`),
  ADD KEY `idMunicipio` (`idMunicipio`),
  ADD KEY `idVereda` (`idVereda`),
  ADD KEY `Idciudad` (`Idciudad`);

--
-- Indices de la tabla `diseñocurva`
--
ALTER TABLE `diseñocurva`
  ADD PRIMARY KEY (`idDiseñoCurva`),
  ADD KEY `idDetaDiseCurva` (`idDetaDiseCurva`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`IdEspecie`);

--
-- Indices de la tabla `estabilizacion`
--
ALTER TABLE `estabilizacion`
  ADD PRIMARY KEY (`idEstabilizacion`),
  ADD KEY `idCafe` (`idCafe`);

--
-- Indices de la tabla `estadostorrefaccion`
--
ALTER TABLE `estadostorrefaccion`
  ADD PRIMARY KEY (`idEstados`);

--
-- Indices de la tabla `finca`
--
ALTER TABLE `finca`
  ADD PRIMARY KEY (`idFinca`),
  ADD KEY `idDetalleFinca` (`idDetalleFinca`);

--
-- Indices de la tabla `grano`
--
ALTER TABLE `grano`
  ADD PRIMARY KEY (`idGrano`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`idlaboratorio`),
  ADD KEY `idCafe` (`idCafe`),
  ADD KEY `idDiseCurva` (`idDiseCurva`);

--
-- Indices de la tabla `materiaprima`
--
ALTER TABLE `materiaprima`
  ADD PRIMARY KEY (`idMateriaPrima`);

--
-- Indices de la tabla `molida`
--
ALTER TABLE `molida`
  ADD PRIMARY KEY (`idMolida`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`idMunicipio`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`);

--
-- Indices de la tabla `pruebaslaboratorio`
--
ALTER TABLE `pruebaslaboratorio`
  ADD PRIMARY KEY (`idPruebLavoratorio`),
  ADD KEY `idCafe` (`idCafe`),
  ADD KEY `IdDiseñoCurva` (`IdDiseñoCurva`);

--
-- Indices de la tabla `recepcion`
--
ALTER TABLE `recepcion`
  ADD PRIMARY KEY (`idRecepcion`),
  ADD KEY `idCafe` (`idCafe`),
  ADD KEY `IdCliente` (`IdCliente`);

--
-- Indices de la tabla `tipobeneficio`
--
ALTER TABLE `tipobeneficio`
  ADD PRIMARY KEY (`idTipoBeneficio`);

--
-- Indices de la tabla `torrefactor`
--
ALTER TABLE `torrefactor`
  ADD PRIMARY KEY (`idTorrefactor`),
  ADD KEY `idCafe` (`idCafe`);

--
-- Indices de la tabla `trilla`
--
ALTER TABLE `trilla`
  ADD PRIMARY KEY (`idTrilla`),
  ADD KEY `codigoTrilla` (`codigoTrilla`),
  ADD KEY `IdCafe` (`IdCafe`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idPersona` (`idPersona`);

--
-- Indices de la tabla `vereda`
--
ALTER TABLE `vereda`
  ADD PRIMARY KEY (`idVereda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cafe`
--
ALTER TABLE `cafe`
  MODIFY `idCafe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idCiudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalledisecurva`
--
ALTER TABLE `detalledisecurva`
  MODIFY `idDetaCurva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diseñocurva`
--
ALTER TABLE `diseñocurva`
  MODIFY `idDiseñoCurva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especie`
--
ALTER TABLE `especie`
  MODIFY `IdEspecie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estabilizacion`
--
ALTER TABLE `estabilizacion`
  MODIFY `idEstabilizacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadostorrefaccion`
--
ALTER TABLE `estadostorrefaccion`
  MODIFY `idEstados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `finca`
--
ALTER TABLE `finca`
  MODIFY `idFinca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grano`
--
ALTER TABLE `grano`
  MODIFY `idGrano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `idlaboratorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiaprima`
--
ALTER TABLE `materiaprima`
  MODIFY `idMateriaPrima` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `molida`
--
ALTER TABLE `molida`
  MODIFY `idMolida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `idMunicipio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pruebaslaboratorio`
--
ALTER TABLE `pruebaslaboratorio`
  MODIFY `idPruebLavoratorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recepcion`
--
ALTER TABLE `recepcion`
  MODIFY `idRecepcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipobeneficio`
--
ALTER TABLE `tipobeneficio`
  MODIFY `idTipoBeneficio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `torrefactor`
--
ALTER TABLE `torrefactor`
  MODIFY `idTorrefactor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trilla`
--
ALTER TABLE `trilla`
  MODIFY `idTrilla` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vereda`
--
ALTER TABLE `vereda`
  MODIFY `idVereda` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cafe`
--
ALTER TABLE `cafe`
  ADD CONSTRAINT `cafe_ibfk_1` FOREIGN KEY (`idEspecie`) REFERENCES `especie` (`IdEspecie`),
  ADD CONSTRAINT `cafe_ibfk_2` FOREIGN KEY (`IdGrano`) REFERENCES `grano` (`idGrano`),
  ADD CONSTRAINT `cafe_ibfk_3` FOREIGN KEY (`idMateriaPrima`) REFERENCES `materiaprima` (`idMateriaPrima`),
  ADD CONSTRAINT `cafe_ibfk_4` FOREIGN KEY (`idMolida`) REFERENCES `molida` (`idMolida`),
  ADD CONSTRAINT `cafe_ibfk_5` FOREIGN KEY (`idTipoBeneficio`) REFERENCES `tipobeneficio` (`idTipoBeneficio`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idFinca`) REFERENCES `finca` (`idFinca`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`);

--
-- Filtros para la tabla `detallefinca`
--
ALTER TABLE `detallefinca`
  ADD CONSTRAINT `detallefinca_ibfk_1` FOREIGN KEY (`idMunicipio`) REFERENCES `municipio` (`idMunicipio`),
  ADD CONSTRAINT `detallefinca_ibfk_2` FOREIGN KEY (`idVereda`) REFERENCES `vereda` (`idVereda`),
  ADD CONSTRAINT `detallefinca_ibfk_3` FOREIGN KEY (`Idciudad`) REFERENCES `ciudad` (`idCiudad`);

--
-- Filtros para la tabla `diseñocurva`
--
ALTER TABLE `diseñocurva`
  ADD CONSTRAINT `diseñocurva_ibfk_1` FOREIGN KEY (`idDetaDiseCurva`) REFERENCES `detalledisecurva` (`idDetaCurva`);

--
-- Filtros para la tabla `estabilizacion`
--
ALTER TABLE `estabilizacion`
  ADD CONSTRAINT `estabilizacion_ibfk_1` FOREIGN KEY (`idCafe`) REFERENCES `cafe` (`idCafe`);

--
-- Filtros para la tabla `finca`
--
ALTER TABLE `finca`
  ADD CONSTRAINT `finca_ibfk_1` FOREIGN KEY (`idDetalleFinca`) REFERENCES `detallefinca` (`idDetalleFinca`);

--
-- Filtros para la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD CONSTRAINT `laboratorio_ibfk_1` FOREIGN KEY (`idCafe`) REFERENCES `cafe` (`idCafe`),
  ADD CONSTRAINT `laboratorio_ibfk_2` FOREIGN KEY (`idDiseCurva`) REFERENCES `diseñocurva` (`idDiseñoCurva`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `cliente` (`idPersona`);

--
-- Filtros para la tabla `pruebaslaboratorio`
--
ALTER TABLE `pruebaslaboratorio`
  ADD CONSTRAINT `pruebaslaboratorio_ibfk_1` FOREIGN KEY (`idCafe`) REFERENCES `cafe` (`idCafe`),
  ADD CONSTRAINT `pruebaslaboratorio_ibfk_2` FOREIGN KEY (`IdDiseñoCurva`) REFERENCES `diseñocurva` (`idDiseñoCurva`);

--
-- Filtros para la tabla `recepcion`
--
ALTER TABLE `recepcion`
  ADD CONSTRAINT `recepcion_ibfk_3` FOREIGN KEY (`idCafe`) REFERENCES `cafe` (`idCafe`),
  ADD CONSTRAINT `recepcion_ibfk_4` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `torrefactor`
--
ALTER TABLE `torrefactor`
  ADD CONSTRAINT `torrefactor_ibfk_1` FOREIGN KEY (`idCafe`) REFERENCES `cafe` (`idCafe`);

--
-- Filtros para la tabla `trilla`
--
ALTER TABLE `trilla`
  ADD CONSTRAINT `trilla_ibfk_1` FOREIGN KEY (`IdCafe`) REFERENCES `cafe` (`idCafe`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
