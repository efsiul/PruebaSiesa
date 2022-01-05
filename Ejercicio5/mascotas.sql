-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tipo_mascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo_mascota` (
  `idtipo_mascota` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_mascota`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`propietario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`propietario` (
  `idpropietario` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `correo` VARCHAR(45) NULL,
  `comentarios` VARCHAR(45) NULL,
  `propietariocol` VARCHAR(45) NULL,
  PRIMARY KEY (`idpropietario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`mascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`mascota` (
  `idmascota` INT NOT NULL,
  `tipo_mascota` INT NOT NULL,
  `propietario` INT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmascota`),
  INDEX `fk_mascota_tipo_mascota_idx` (`tipo_mascota` ASC) VISIBLE,
  INDEX `fk_mascota_propietario1_idx` (`propietario` ASC) VISIBLE,
  CONSTRAINT `fk_mascota_tipo_mascota`
    FOREIGN KEY (`tipo_mascota`)
    REFERENCES `mydb`.`tipo_mascota` (`idtipo_mascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mascota_propietario1`
    FOREIGN KEY (`propietario`)
    REFERENCES `mydb`.`propietario` (`idpropietario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
