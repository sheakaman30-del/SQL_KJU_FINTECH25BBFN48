create database hauslabs;
USE hauslabs;
create table departments ( 
 dept_id    INT    AUTO_INCREMENT PRIMARY KEY,
 dept_name  varchar(50) NOT NULL UNIQUE,
 location   varchar(50) NOT NULL 
 );
 create table employees(
 emp_id int auto_increment primary key,
 emp_name varchar (50) not null,
 dept_id int not null,
 job_title varchar(50) not null,
 employment_type varchar(50) not null,                            
 hire_date DATE NOT NULL,
 salary decimal (10,2) not null,                                
 performance_rating decimal (2,1) null,                        
 status varchar(50) not null default 'Active',
 foreign key (dept_id) references departments (dept_id) 
 );
 
create table salary_payments (
payment_id int auto_increment primary key 
emp_id int not null,
pay_month date not null,
basic_pay decimal(10,2) not null,
bonus decimal (10,2) not null default 0,
deductins decimal (10,2) not null default 0,
foreign key (emp_id) references employees (emp_id)
);

create table leave_records (
leave_id int auto_increment primary key,
emp_id int not null,
leave_type varchar(100) not null,
start_date date not null,
days int not null,
foregin key (emp_id) references employees )emp_id)
);

insert into departments (dept_name, location) VALUES 
('human resources', 'bengaluru'),
('finance', 'mumbai'),
('informatiom technology', 'bengaluru'),
('marketing', 'delhi'),
('operations', 'chennai'),
('legal', 'mumbai');

insert into employees (emp_name, dept_id, job_title, employment_type, hire_date, salary, performance_rating,status)  values 
('karthik', '2323', 'general manager', 'full-time', '2/6/2026', '50000', '6', 'active'),
('duck', '2324', 'executor', 'full-time', '2/6/2026','45000', '8', 'active'),
('shreya', '2325', 'asst_executor', 'full-time', '2/6/2026','40000', '9', 'active'),
('priya', '2326', 'intern', 'part-time', '15/8/2026','5000', '8', 'not_active'),
('aman', '2327', 'intern', 'part-time', '15/8/2026','5000', '8', 'not_active'),
('hami', '2328', 'intern', 'part-time', '15/8/2026','5000', '8', 'not_active'),
('hans', '2327', 'asst_manager', 'full-time', '2/6/2026','30000', '5', 'active'),
('elsa', '2328', 'finance_officer', 'full-time', '2/6/2026','65000', '10', 'active'),
('anna', '2329', 'product_manager', 'full-time', '5/6/2026','40000', '7', 'active'),
('olaf', '2330', 'asst_product_manager', 'full-time', '19/6/2026','25000', '7', 'active'
);

INSERT into leave_records (emp_id, leave_type, start_date, days) values 
(1, 'earned', '6/7/2026', '3'),
(2, 'casual', '8/7/2026', '4'),
(3, 'sick', '8/7/2026', '2');

select count(*) as total_employees  from employees;

select count(*) as active_employees from employees wehere status = 'active';
 
select count(*)                         as employees,
       count(performance rating)        as employees_with_a_rating
     









