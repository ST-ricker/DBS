CREATE TABLE `students` (
  `Student_ID` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT `students`.`Student_ID`,
    `students`.`Name`
FROM `has`.`students`;

INSERT INTO `has`.`students`
(`Student_ID`,
`Name`)
VALUES
(801,Anish);

UPDATE `has`.`students`
SET
`Student_ID` = 800 ,
`Name` = Yugal
WHERE `Student_ID` = 800;

DELETE FROM `has`.`students`
WHERE `Student_ID`=801;






CREATE TABLE `room` (
  `Room Number` int NOT NULL AUTO_INCREMENT,
  `Hostel` varchar(45) DEFAULT NULL,
  `Room ID` varchar(45) DEFAULT NULL,
  `Allotment Status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'Not Allotted',
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Room Number`),
  KEY `Name_idx` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT `room`.`Room Number`,
    `room`.`Hostel`,
    `room`.`Room ID`,
    `room`.`Allotment Status`,
    `room`.`Name`
FROM `has`.`room`;



INSERT INTO `has`.`room`
(`Room Number`,
`Hostel`,
`Room ID`,
`Allotment Status`,
`Name`)
VALUES
(201,
Shankar,
SK201,
Not Allotted,
"");

DELETE FROM `has`.`room`
WHERE "Room ID" =SK201 ;








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








CREATE TABLE `wing_members` (
  `wing code` int NOT NULL,
  `Student_ID_1` int DEFAULT NULL,
  `Student_ID_2` int DEFAULT NULL,
  `Student_ID_3` int DEFAULT NULL,
  `Student_ID_4` int DEFAULT NULL,
  `Student ID 5` int DEFAULT NULL,
  `Rooms Allotted` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wing code`),
  KEY `Student ID_idx` (`Student_ID_2`,`Student_ID_1`,`Student_ID_3`,`Student_ID_4`,`Student ID 5`),
  KEY `Student_ID_idx` (`Student_ID_1`),
  CONSTRAINT `Student_ID` FOREIGN KEY (`Student_ID_1`) REFERENCES `students` (`Student_ID`),
  CONSTRAINT `wing_code` FOREIGN KEY (`wing code`) REFERENCES `wing` (`wing_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;





SELECT `wing_members`.`wing code`,
    `wing_members`.`Student_ID_1`,
    `wing_members`.`Student_ID_2`,
    `wing_members`.`Student_ID_3`,
    `wing_members`.`Student_ID_4`,
    `wing_members`.`Student ID 5`,
    `wing_members`.`Rooms Allotted`
FROM `has`.`wing_members`;


INSERT INTO `has`.`wing_members`

VALUES
(`wing code`,
`Student_ID_1`,
`Student_ID_2`,
`Student_ID_3`,
`Student_ID_4`,
`Student ID 5`,
`Rooms Allotted`),

(20,
300,
301,
304,
305,
306,
309);


UPDATE `has`.`wing_members`
SET
`wing code` = 20,
`Student_ID_1` = 20 ,
`Student_ID_2` = 23,
`Student_ID_3` = 24,
`Student_ID_4` = 29,
`Student ID 5` = 30,
WHERE `wing_code` =22;


DELETE FROM `has`.`wing_members`
WHERE wing_code=20;









