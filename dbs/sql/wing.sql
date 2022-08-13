CREATE TABLE `wing` (
  `wing_code` int NOT NULL AUTO_INCREMENT,
  `wing start` varchar(45) DEFAULT NULL,
  `Wing_Representative` varchar(45) NOT NULL,
  `wing end` varchar(45) DEFAULT NULL,
  `Hostel_Preference1` varchar(45) DEFAULT NULL,
  `Hostel_Preference2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wing_code`),
  UNIQUE KEY `Wing Representative_UNIQUE` (`Wing_Representative`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



SELECT `wing`.`wing_code`,
    `wing`.`wing start`,
    `wing`.`Wing_Representative`,
    `wing`.`wing end`,
    `wing`.`Hostel_Preference1`,
    `wing`.`Hostel_Preference2`
FROM `has`.`wing`;


INSERT INTO `has`.`wing`
(`wing_code`,

`Wing_Representative`,

`Hostel_Preference1`,
`Hostel_Preference2`)
VALUES
(20,
Naveen,
Ram,
Budh);


UPDATE `has`.`wing`
SET
`wing_code` = 20,
`Wing_Representative` = Nana,
`Hostel_Preference1` = Shankar,
`Hostel_Preference2` = Vyas
WHERE `wing_code` = 20 ;

DELETE FROM `has`.`wing`
WHERE wing_code=20;


