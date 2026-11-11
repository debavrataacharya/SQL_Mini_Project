CREATE DATABASE project_hr;

USE project_hr;

CREATE TABLE employees(employee_id INT PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),gender VARCHAR(50),age INT,department_id INT,job_id INT,manager_id INT,salary DECIMAL(10,2),hire_date DATE,employment_status VARCHAR(50),city VARCHAR(50));

CREATE TABLE departments(department_id INT PRIMARY KEY,department_name VARCHAR(50),location VARCHAR(50));

CREATE TABLE jobs(job_id INT PRIMARY KEY,job_title VARCHAR(50),job_level VARCHAR(50));

CREATE TABLE attendance(attendance_id INT PRIMARY KEY,employee_id INT,attendance_date DATE,attendance_status VARCHAR(50),working_hours DECIMAL(4,2));

INSERT INTO departments
(department_id, department_name, location)
VALUES
(1, 'Human Resources', 'Bangalore'),
(2, 'Finance', 'Mumbai'),
(3, 'IT', 'Bangalore'),
(4, 'Marketing', 'Delhi'),
(5, 'Sales', 'Hyderabad'),
(6, 'Operations', 'Pune'),
(7, 'Data Analytics', 'Bangalore');

INSERT INTO jobs
(job_id, job_title, job_level)
VALUES
(1, 'HR Manager', 'Senior'),
(2, 'HR Executive', 'Junior'),
(3, 'Finance Manager', 'Senior'),
(4, 'Financial Analyst', 'Mid'),
(5, 'Software Developer', 'Mid'),
(6, 'IT Manager', 'Senior'),
(7, 'Marketing Executive', 'Junior'),
(8, 'Sales Manager', 'Senior'),
(9, 'Operations Manager', 'Senior'),
(10, 'Data Analyst', 'Mid');

INSERT INTO employees
(employee_id, first_name, last_name, gender, age,
department_id, job_id, manager_id, salary,
hire_date, employment_status, city)
VALUES
(1001,'Rahul','Sharma','Male',42,1,1,NULL,95000,'2018-03-12','Active','Bangalore'),
(1002,'Priya','Patel','Female',28,1,2,1001,35000,'2022-06-15','Active','Mumbai'),
(1003,'Amit','Verma','Male',31,1,2,1001,42000,'2021-04-10','Active','Delhi'),
(1004,'Sneha','Reddy','Female',26,1,2,1001,28000,'2023-08-20','Active','Hyderabad'),
(1005,'Karan','Mehta','Male',35,1,2,1001,55000,'2020-02-11','Active','Pune'),
(1006,'Anjali','Das','Female',29,1,2,1001,38000,'2022-11-05','Active','Bangalore'),
(1007,'Rohit','Jain','Male',33,1,2,1001,45000,'2019-07-18','Resigned','Delhi'),

(1008,'Vikram','Singh','Male',45,2,3,NULL,110000,'2017-01-10','Active','Mumbai'),
(1009,'Neha','Gupta','Female',30,2,4,1008,52000,'2021-05-14','Active','Mumbai'),
(1010,'Arjun','Nair','Male',27,2,4,1008,42000,'2023-03-22','Active','Pune'),
(1011,'Pooja','Shah','Female',32,2,4,1008,48000,'2020-09-17','Active','Delhi'),
(1012,'Sandeep','Kumar','Male',29,2,4,1008,39000,'2022-02-08','Active','Bangalore'),
(1013,'Meera','Joshi','Female',35,2,4,1008,58000,'2019-11-19','Active','Mumbai'),
(1014,'Nitin','Rao','Male',38,2,4,1008,62000,'2018-06-25','Resigned','Pune'),

(1015,'Aditya','Mishra','Male',40,3,6,NULL,125000,'2016-04-12','Active','Bangalore'),
(1016,'Kavya','Iyer','Female',27,3,5,1015,65000,'2022-01-15','Active','Bangalore'),
(1017,'Manish','Yadav','Male',29,3,5,1015,58000,'2021-07-20','Active','Delhi'),
(1018,'Ritika','Sen','Female',25,3,5,1015,32000,'2024-02-10','Active','Kolkata'),
(1019,'Deepak','Malhotra','Male',34,3,5,1015,85000,'2019-03-18','Active','Pune'),
(1020,'Ishita','Roy','Female',28,3,5,1015,72000,'2022-09-12','Active','Mumbai'),
(1021,'Varun','Kapoor','Male',31,3,5,1015,68000,'2020-05-25','Active','Bangalore'),
(1022,'Swati','Pillai','Female',26,3,5,1015,45000,'2023-06-14','Active','Hyderabad'),
(1023,'Mohit','Bose','Male',36,3,5,1015,78000,'2018-12-05','Resigned','Delhi'),

(1024,'Simran','Kaur','Female',29,4,7,NULL,72000,'2019-04-11','Active','Delhi'),
(1025,'Akash','Ghosh','Male',25,4,7,1024,28000,'2023-01-20','Active','Kolkata'),
(1026,'Tanya','Arora','Female',27,4,7,1024,35000,'2022-07-15','Active','Delhi'),
(1027,'Rakesh','Sinha','Male',33,4,7,1024,48000,'2020-08-19','Active','Mumbai'),
(1028,'Divya','Menon','Female',30,4,7,1024,52000,'2021-03-25','Active','Pune'),
(1029,'Harsh','Chopra','Male',28,4,7,1024,39000,'2022-12-01','Active','Delhi'),
(1030,'Nisha','Paul','Female',34,4,7,1024,61000,'2019-10-10','Active','Bangalore'),

(1031,'Rajesh','Thakur','Male',43,5,8,NULL,105000,'2017-05-12','Active','Hyderabad'),
(1032,'Komal','Agarwal','Female',29,5,7,1031,42000,'2021-06-18','Active','Hyderabad'),
(1033,'Saurabh','Dubey','Male',31,5,7,1031,46000,'2020-02-14','Active','Delhi'),
(1034,'Payal','Sethi','Female',26,5,7,1031,30000,'2023-04-20','Active','Mumbai'),
(1035,'Gaurav','Bhatia','Male',35,5,7,1031,58000,'2019-09-11','Active','Pune'),
(1036,'Riya','Chatterjee','Female',28,5,7,1031,38000,'2022-05-16','Active','Kolkata'),
(1037,'Abhishek','Tiwari','Male',32,5,7,1031,51000,'2020-11-22','Active','Hyderabad'),
(1038,'Pankaj','Mandal','Male',37,5,7,1031,65000,'2018-07-09','Resigned','Delhi'),

(1039,'Sunil','Desai','Male',44,6,9,NULL,98000,'2016-08-15','Active','Pune'),
(1040,'Ayesha','Khan','Female',30,6,7,1039,45000,'2021-02-12','Active','Mumbai'),
(1041,'Prakash','Babu','Male',33,6,7,1039,52000,'2019-05-20','Active','Pune'),
(1042,'Lavanya','Krishnan','Female',27,6,7,1039,34000,'2023-07-10','Active','Bangalore'),
(1043,'Naveen','Shetty','Male',29,6,7,1039,39000,'2022-04-18','Active','Hyderabad'),
(1044,'Farhan','Ali','Male',36,6,7,1039,61000,'2018-10-25','Resigned','Delhi'),

(1045,'Siddharth','Rana','Male',35,7,10,NULL,95000,'2019-01-14','Active','Bangalore'),
(1046,'Aparna','Mohan','Female',26,7,10,1045,42000,'2023-02-15','Active','Bangalore'),
(1047,'Yash','Kulkarni','Male',28,7,10,1045,55000,'2022-08-12','Active','Pune'),
(1048,'Shreya','Dutta','Female',30,7,10,1045,68000,'2020-06-19','Active','Kolkata'),
(1049,'Omkar','Patil','Male',27,7,10,1045,38000,'2023-09-11','Active','Mumbai'),
(1050,'Madhuri','Naik','Female',32,7,10,1045,75000,'2019-12-05','Active','Bangalore');

INSERT INTO attendance
(attendance_id, employee_id, attendance_date,
attendance_status, working_hours)
VALUES
(1,1001,'2025-01-01','Present',8.00),
(2,1002,'2025-01-01','Present',8.00),
(3,1003,'2025-01-01','Absent',0.00),
(4,1004,'2025-01-01','Present',8.00),
(5,1005,'2025-01-01','Work From Home',8.00),
(6,1006,'2025-01-01','Leave',0.00),
(7,1007,'2025-01-01','Present',8.00),
(8,1008,'2025-01-01','Present',8.00),
(9,1009,'2025-01-01','Absent',0.00),
(10,1010,'2025-01-01','Present',8.00),

(11,1001,'2025-01-02','Present',8.00),
(12,1002,'2025-01-02','Absent',0.00),
(13,1003,'2025-01-02','Present',8.00),
(14,1004,'2025-01-02','Work From Home',8.00),
(15,1005,'2025-01-02','Present',8.00),
(16,1006,'2025-01-02','Present',8.00),
(17,1007,'2025-01-02','Leave',0.00),
(18,1008,'2025-01-02','Present',8.00),
(19,1009,'2025-01-02','Present',8.00),
(20,1010,'2025-01-02','Present',8.00);

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM jobs;

SELECT * FROM attendance;

SELECT 'departments' AS table_name, COUNT(*) AS total
FROM departments
UNION ALL
SELECT 'jobs', COUNT(*) FROM jobs
UNION ALL
SELECT 'employees', COUNT(*) FROM employees
UNION ALL
SELECT 'attendance', COUNT(*) FROM attendance;

#Level 1 – Basic SQL_Practice: SELECT, WHERE, ORDER BY, DISTINCT, LIMIT.

#1.Display all the records from the employees table.
SELECT * 
FROM employees;

#2.Display only the first name, last name, and salary of all employees.
SELECT first_name,last_name,salary
FROM employees;

#3.Find all employees whose salary is greater than ₹50,000.
SELECT *
FROM employees
WHERE salary > 50000;

#4.Find all employees who belong to the IT department. Display their first name, last name, and department ID.
SELECT e.first_name,e.last_name,d.department_id
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_name = "IT";

#5.Find employees whose age is greater than 30.
SELECT *
FROM employees
WHERE age > 30;

#6.Find employees who joined the company after 1 January 2022.
SELECT * 
FROM employees
WHERE hire_date > "2022-01-01";

#7.Display all employees in descending order of their salary.
SELECT * FROM
employees
ORDER BY salary DESC;

#8.Find the top 5 highest-paid employees in the company.
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

#Level 2 – Intermediate SQL_Practice: COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING. 

#9.Find the total number of employees working in the company.
SELECT COUNT(*) AS total_employees
FROM employees;

#10.Calculate the average salary of all employees.
SELECT AVG(salary) AS average_salary
FROM employees;

#11.Find the maximum and minimum salary in the company.
SELECT MAX(salary) AS maximum_salary,MIN(salary) AS minimum_salary
FROM employees;

#12.Count the number of employees in each department.
SELECT d.department_name,COUNT(e.employee_id) AS total_employees
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_id,d.department_name;

#13.Calculate the average salary of each department.
SELECT d.department_name,AVG(e.salary) AS average_salary
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_id,d.department_name;

#14.Find departments that have more than 5 employees.
SELECT d.department_name,COUNT(e.employee_id) AS total_employees
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_id,d.department_name
HAVING COUNT(e.employee_id) > 5;

#15.Calculate the total salary expense of the company.
SELECT SUM(salary) AS total_salary_expense
FROM employees;

#16.Count the number of male and female employees separately.
SELECT gender,COUNT(*) AS total_employees
FROM employees
GROUP BY gender;

#Level 3 – Advanced SQL_Practice: INNER JOIN, LEFT JOIN, SELF JOIN, Subqueries, CASE WHEN.

#17.Display employee names along with their department names.
SELECT e.first_name,e.last_name,d.department_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id;

#18.Display employee names along with their job titles.
SELECT e.first_name,e.last_name,j.job_title
FROM jobs AS j
INNER JOIN employees AS e
ON j.job_id = e.job_id;

#19.Find the highest-paid employee in each department.
SELECT d.department_name,e.first_name,e.last_name,e.salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.salary = (SELECT MAX(salary) AS maximum_salary
				  FROM employees 
                  WHERE department_id = e.department_id);

#20.Find employees who earn more than the company's average salary.
SELECT first_name,last_name,salary
FROM employees
WHERE salary > (SELECT AVG(salary) 
				  FROM employees);

#21.Find the second-highest salary in the company.
SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

#22.Find employees who earn more than their respective department's average salary.
SELECT e.first_name,e.last_name,e.salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.salary > (SELECT AVG(e2.salary) AS average_salary
				  FROM employees AS e2
                  WHERE e2.department_id = e.department_id);
                  

#23.Display each employee's name along with their manager's name.
SELECT e.first_name AS employee_first_name,e.last_name AS employee_last_name,m.first_name AS manager_first_name,m.last_name AS manager_last_name
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;

/*24.Categorize employees into three salary groups using CASE WHEN:
- Below ₹30,000 = Low
- ₹30,000–₹60,000 = Medium
- Above ₹60,000 = High*/
SELECT * ,
CASE
	WHEN salary < 30000 THEN "Low"
    WHEN salary BETWEEN 30000 AND 60000 THEN "Medium"
    ELSE "High"
END AS salary_groups
FROM employees;


    