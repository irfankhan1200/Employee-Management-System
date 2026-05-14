CREATE TABLE company_db;
USE company_db;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT

);CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    dept_id INT
);

CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    bonus INT,
    deduction INT,
    salary_month VARCHAR(20)
);

CREATE TABLE logins (
    login_id INT PRIMARY KEY,
    emp_id INT,
    login_date DATE
);
