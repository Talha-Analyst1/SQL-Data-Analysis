
-- Student Management System
-- This project demonstrates SQL skills: table creation, data insertion,
-- filtering, aggregation, grouping, and pattern matching

USE school;

-- View all students
SELECT * FROM students;

-- Find top-performing students (marks above 90)
SELECT name, marks FROM students WHERE marks > 90 ORDER BY marks DESC;

-- Count students in each age group
SELECT age, COUNT(*) AS total_students FROM students GROUP BY age;

-- Find age groups with more than one student
SELECT age, COUNT(*) AS total_students FROM students 
GROUP BY age HAVING COUNT(*) > 1;

-- Find students whose names contain 'a'
SELECT name FROM students WHERE name LIKE '%a%';

-- Find students with marks between 70 and 90
SELECT name, marks FROM students WHERE marks BETWEEN 70 AND 90;

-- Find students with missing marks data
SELECT name FROM students WHERE marks IS NULL;

-- Calculate class statistics
SELECT COUNT(*) AS total_students, AVG(marks) AS average_marks, 
       MAX(marks) AS highest_marks, MIN(marks) AS lowest_marks 
FROM students;