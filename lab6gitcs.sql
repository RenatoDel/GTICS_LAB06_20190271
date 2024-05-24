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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`mesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`mesa` (
  `idmesa` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Capacidad` INT NOT NULL,
  `Ubicacion` VARCHAR(45) NOT NULL,
  `Cantidad` INT NOT NULL,
  PRIMARY KEY (`idmesa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reserva` (
  `idReserva` INT NOT NULL AUTO_INCREMENT,
  `FechaInicio` VARCHAR(45) NOT NULL,
  `FechaFin` VARCHAR(45) NOT NULL,
  `mesa_idmesa` INT NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `fk_Reserva_mesa1_idx` (`mesa_idmesa` ASC) VISIBLE,
  CONSTRAINT `fk_Reserva_mesa1`
    FOREIGN KEY (`mesa_idmesa`)
    REFERENCES `mydb`.`mesa` (`idmesa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rol` (
  `idRol` INT NOT NULL AUTO_INCREMENT,
  `rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRol`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL,
  `Contrasena` VARCHAR(45) NOT NULL,
  `UsuarioLogin` VARCHAR(45) NOT NULL,
  `Rol_idRol` INT NOT NULL,
  `Reserva_idReserva` INT NULL DEFAULT NULL,
  `mesa_idmesa` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `fk_Usuario_Rol_idx` (`Rol_idRol` ASC) VISIBLE,
  INDEX `fk_Usuario_Reserva1_idx` (`Reserva_idReserva` ASC) VISIBLE,
  INDEX `fk_Usuario_mesa1_idx` (`mesa_idmesa` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_mesa1`
    FOREIGN KEY (`mesa_idmesa`)
    REFERENCES `mydb`.`mesa` (`idmesa`),
  CONSTRAINT `fk_Usuario_Reserva1`
    FOREIGN KEY (`Reserva_idReserva`)
    REFERENCES `mydb`.`reserva` (`idReserva`),
  CONSTRAINT `fk_Usuario_Rol`
    FOREIGN KEY (`Rol_idRol`)
    REFERENCES `mydb`.`rol` (`idRol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
