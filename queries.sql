-- Employee Management System Queries

-- 1. Show all employees

SELECT * FROM employees;

-- 2. Employees with department names

SELECT e.name,
       d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- 3. Department-wise employee count

SELECT dept_id,
       COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id;

-- 4. Top performer per department

SELECT name,
       dept_id,
       salary
FROM (
    SELECT name,
           dept_id,
           salary,
           ROW_NUMBER() OVER (
               PARTITION BY dept_id
               ORDER BY salary DESC
           ) AS rn
    FROM employees
) t
WHERE rn = 1;

-- 5. Employees who never logged in

SELECT e.id,
       e.name
FROM employees e
LEFT JOIN logins l
ON e.id = l.emp_id
WHERE l.emp_id IS NULL;
