CREATE TABLE `hrms`.`type` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `active` BOOLEAN NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;