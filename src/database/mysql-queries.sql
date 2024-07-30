DROP PROCEDURE IF EXISTS createStudent;
DELIMITER //

CREATE PROCEDURE createStudent(IN p_name VARCHAR(255), IN p_age INT, IN p_grade VARCHAR(10))
BEGIN
    INSERT INTO students (name, age, grade) VALUES (p_name, p_age, p_grade);
END//

DROP PROCEDURE IF EXISTS getStudents;
DELIMITER //

CREATE PROCEDURE getStudents()
BEGIN
    SELECT * FROM students;
END//

DROP PROCEDURE IF EXISTS getStudentById;
DELIMITER //

CREATE PROCEDURE getStudentById(IN p_studentId INT)
BEGIN
    SELECT * FROM students WHERE id = p_studentId;
END//

DROP PROCEDURE IF EXISTS updateStudent;
DELIMITER //

CREATE PROCEDURE updateStudent(IN p_studentId INT, IN p_name VARCHAR(255), IN p_age INT, IN p_grade VARCHAR(10))
BEGIN
    UPDATE students 
    SET name = p_name, age = p_age, grade = p_grade 
    WHERE id = p_studentId;
END//

DROP PROCEDURE IF EXISTS deleteStudent;
DELIMITER //

CREATE PROCEDURE deleteStudent(IN p_studentId INT)
BEGIN
    DELETE FROM students WHERE id = p_studentId;
END//

DELIMITER ;
