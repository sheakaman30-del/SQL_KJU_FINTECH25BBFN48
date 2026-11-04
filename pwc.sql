create database pwc;
use pwc;
create table employee (employee_id int primary key, employee_name varchar (40), email varchar (40), contact int);
create table project (project_no int primary key, project_name varchar (40), project_info varchar (100));
alter table employee 
