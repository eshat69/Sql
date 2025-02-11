-- Drop Tables if They Exist
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Course;

-- Create Tables
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    student_age INT,
    student_major VARCHAR(100)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_credits INT,
    course_department VARCHAR(100)
);

-- Alter Table (Add a new column)
ALTER TABLE Student
ADD COLUMN student_email VARCHAR(100);

-- Alter Table (Modify a column)
ALTER TABLE Course
MODIFY COLUMN course_name VARCHAR(150);

-- Alter Table (Rename a column)
ALTER TABLE Student
CHANGE COLUMN student_age student_birth_year INT;

-- Drop Table
DROP TABLE IF EXISTS Student;

-- Insert Data into the Student table (assuming the correct database/schema)
INSERT INTO Student (student_id, student_name, student_age, student_major)
VALUES (1, 'Eshat', 23, 'Computer Science');


-- Insert Data into the Course table
INSERT INTO Course (course_id, course_name, course_credits, course_department)
VALUES (101, 'DBMS', 3, 'Computer Science');

-- Update Data in the Student table
UPDATE Student
SET student_age = 23
WHERE student_id = 1;

-- Update Data in the Course table
UPDATE Course
SET course_name = 'Advanced DBMS'
WHERE course_id = 101;

-- Delete Data from the Student table
DELETE FROM Student
WHERE student_id = 1;

-- Delete Data from the Course table
DELETE FROM Course
WHERE course_id = 101;
