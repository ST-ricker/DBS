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
