CREATE DATABASE student;
USE student;
CREATE TABLE details(student_id int primary key, name varchar(50),city varchar(50),age int,cgpa decimal(3,2));
select*from details;
INSERT INTO details(student_id,name,city,age,cgpa)
values(001,'xyz','Chennai','50',7.8);
select* from details;
INSERT INTO details(student_id,name,city,age,cgpa)
values(002,'aman','India','18',8.9);
select* from details
where age<20;
SELECT * FROM details;
