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

