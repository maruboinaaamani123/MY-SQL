CREATE TABLE `ZOMATO`.`USER1`(
`ID` INT NULL,
UNIQUE INDEX `ID_UNIQUE`(`ID`ASC));

CREATE TABLE `zomato`.`user3` (
  `id` INT NOT NULL,
  `USER3NAME` VARCHAR(45) NULL,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

CREATE TABLE `zomato`.`user4` (
  `ID` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`NAME`, `ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE);