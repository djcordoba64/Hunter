-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Hunter
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Hunter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Hunter` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `Hunter` ;

-- -----------------------------------------------------
-- Table `Hunter`.`personas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`personas` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`personas` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `primerNombre` VARCHAR(45) NOT NULL,
  `segundoNombre` VARCHAR(45) NULL,
  `primerApellido` VARCHAR(45) NOT NULL,
  `segundo Apellido` VARCHAR(45) NULL,
  `documentoIdentidad` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `numeroContacto` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(255) NOT NULL,
  `tipoPersona` VARCHAR(45) NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `rol` VARCHAR(45) NOT NULL,
  `contrasena` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `created_at` DATE NULL,
  `updated_at` DATE NULL,
  PRIMARY KEY (`idpersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`departamentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`departamentos` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`departamentos` (
  `id_departamento` INT(2) NOT NULL,
  `departamento` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_departamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`municipios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`municipios` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`municipios` (
  `id_municipio` INT(6) NOT NULL,
  `municipio` VARCHAR(255) NOT NULL,
  `id_departamento` INT(2) NOT NULL,
  PRIMARY KEY (`id_municipio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`Detallefinca`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`Detallefinca` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`Detallefinca` (
  `idDetalleFinca` INT NOT NULL AUTO_INCREMENT,
  `nombreFinca` VARCHAR(45) NOT NULL,
  `Temperatura` VARCHAR(45) NOT NULL,
  `coordenadasGoocle` VARCHAR(45) NOT NULL,
  `idmunicipio` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `vereda` VARCHAR(255) NOT NULL,
  `created_at` DATE NULL,
  `updated_at` DATE NULL,
  PRIMARY KEY (`idDetalleFinca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`TipoBeneficio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`TipoBeneficio` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`TipoBeneficio` (
  `idtipoBeneficio` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipoBeneficio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`materiaPrima`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`materiaPrima` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`materiaPrima` (
  `idmateriaPrima` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmateriaPrima`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`cafes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`cafes` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`cafes` (
  `idcafe` INT NOT NULL AUTO_INCREMENT,
  `codigoCafe` VARCHAR(200) NOT NULL,
  `peso` INT NOT NULL,
  `especie` VARCHAR(45) NOT NULL,
  `variedad` VARCHAR(45) NOT NULL,
  `porcentajeHumedad` INT NOT NULL,
  `factorRendimiento` INT NOT NULL,
  `tipoTueste` VARCHAR(200) NOT NULL,
  `molidaMediaLibra` INT NOT NULL,
  `molidadLibra` INT NOT NULL,
  `granoMediaLibra` INT NOT NULL,
  `granoLibra` INT NOT NULL,
  `estado` INT NOT NULL,
  `foto` INT NULL,
  `cantidad` INT NOT NULL,
  `valorUnitario` VARCHAR(45) NOT NULL,
  `idmateriaPrima` INT NOT NULL,
  `idtipoBeneficio` INT NOT NULL,
  `created_at` DATE NULL,
  `updated_at` DATE NULL,
  PRIMARY KEY (`idcafe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`estadosTorrefacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`estadosTorrefacion` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`estadosTorrefacion` (
  `idestadosTorrefaccón` INT NOT NULL,
  `idcafe` INT NOT NULL,
  `fechaHora` DATETIME NOT NULL,
  `codigoEstado` VARCHAR(45) NOT NULL,
  `observfacion` TEXT(200) NOT NULL,
  `mermaTueste` INT NOT NULL,
  PRIMARY KEY (`idestadosTorrefaccón`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`DatosTrilla`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`DatosTrilla` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`DatosTrilla` (
  `idDatoTrilla` INT NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NOT NULL,
  `idcafe` INT NOT NULL,
  `mermaTrilla` INT NOT NULL,
  `mallas` INT NOT NULL,
  `observación` TEXT(200) NOT NULL,
  `pesoCafeVerde` INT NOT NULL,
  `created_at` DATE NULL,
  `updated_at` DATE NULL,
  PRIMARY KEY (`idDatoTrilla`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`datosPruebasdeLaboratorio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`datosPruebasdeLaboratorio` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`datosPruebasdeLaboratorio` (
  `iddatosPruebasLaboratorio` INT NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NOT NULL,
  `idcafe` INT NOT NULL,
  `humedad` INT NOT NULL,
  `densidad` INT NOT NULL,
  `actividadAcuosa` INT NOT NULL,
  `diseñoCurva` INT NOT NULL,
  `observación` TEXT(200) NOT NULL,
  `created_at` DATE NULL,
  `update_at` DATE NULL,
  PRIMARY KEY (`iddatosPruebasLaboratorio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`DatosTorrefactor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`DatosTorrefactor` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`DatosTorrefactor` (
  `iddatosTorrefactor` INT NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NOT NULL,
  `idcafe` INT NOT NULL,
  `enfriar` VARCHAR(45) NOT NULL,
  `observación` TEXT(200) NOT NULL,
  `created_at` DATE NULL,
  `update_at` DATE NULL,
  PRIMARY KEY (`iddatosTorrefactor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`datosEstabilización`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`datosEstabilización` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`datosEstabilización` (
  `iddatosEstabilizacion` INT NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NOT NULL,
  `idcafe` INT NOT NULL,
  `estabilizacion` VARCHAR(45) NOT NULL,
  `observacion` TEXT(200) NOT NULL,
  PRIMARY KEY (`iddatosEstabilizacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`DatosLaboratorio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`DatosLaboratorio` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`DatosLaboratorio` (
  `iddatosLaboratorio` INT NOT NULL,
  `fechaHora` DATETIME NOT NULL,
  `idcafe` INT NOT NULL,
  `perfildeTaza2` INT NOT NULL,
  `observación` TEXT(200) NOT NULL,
  `created_at` DATE NULL,
  `updated_at` DATE NULL,
  PRIMARY KEY (`iddatosLaboratorio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`datosEmpaque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`datosEmpaque` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`datosEmpaque` (
  `iddatosEmpaque` INT NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NOT NULL,
  `idcafe` INT NOT NULL,
  `formadeEmpaque` VARCHAR(45) NOT NULL,
  `observacion` TEXT(200) NOT NULL,
  `created_at` DATE NULL,
  `update_at` DATE NULL,
  PRIMARY KEY (`iddatosEmpaque`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`recepciones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`recepciones` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`recepciones` (
  `numeroRecibo` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `idcafe` INT NOT NULL,
  `idcliente` INT NOT NULL,
  `numeroFactura` INT NOT NULL,
  `cantidadImpresionesFactura` INT NOT NULL,
  `fechaImpresionFactura` DATE NOT NULL,
  `cantidadImpresionesRecibo` INT NOT NULL,
  `fechaImpresionRecibo` DATE NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `created_at` DATE NULL,
  `updated_at` DATE NULL,
  PRIMARY KEY (`numeroRecibo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hunter`.`timestamps`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hunter`.`timestamps` ;

CREATE TABLE IF NOT EXISTS `Hunter`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
