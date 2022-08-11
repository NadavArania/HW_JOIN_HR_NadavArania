USE HR

-- Targil 1

SELECT e.first_name,e.last_name,d.department_id,d.department_name  FROM employees e
JOIN departments d ON e.department_id = d.department_id

-- Targil 2

SELECT e.first_name,e.last_name,d.department_name,l.city,l.state_province  FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id

-- Targil 3

SELECT e.first_name,e.last_name,e.salary,jg.grade_level FROM employees e
JOIN job_grades jg ON e.salary BETWEEN jg.lowest_sal AND jg.highest_sal 

-- Targil 4

SELECT e.first_name,e.last_name,d.department_id,d.department_name  FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id IN (80,40)

-- Targil 5

SELECT e.first_name,e.last_name,d.department_name,l.city,l.state_province  FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE e.first_name LIKE 'Z%'

-- Targil 6

SELECT e.first_name,e.last_name,d.department_id,d.department_name  FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id

-- Targil 7

SELECT e.first_name,e.last_name,e.salary FROM employees e
JOIN employees em ON e.salary < em.salary AND em.employee_id = 182

-- Targil 8

SELECT e.first_name as Employee,m.first_name as Manager  FROM employees e
JOIN employees m ON e.manager_id = m.employee_id

-- Targil 9

SELECT d.department_name,l.city,l.state_province FROM departments d
JOIN locations l ON d.location_id = l.location_id

-- Targil 10

SELECT e.first_name,e.last_name,d.department_id,d.department_name FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id

-- Targil 11

SELECT e.first_name as Employee,m.first_name as Manager  FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id

-- Targil 12

SELECT e.first_name,e.last_name,e.department_id FROM employees e
JOIN employees em ON em.last_name = 'Taylor' AND e.department_id = em.department_id

-- Targil 13

SELECT j.job_title AS Job,d.department_name AS Department,e.first_name + ' ' + e.last_name AS FullName,e.hire_date AS StartDate FROM jobs j
JOIN employees e ON e.job_id = j.job_id
JOIN departments d ON d.department_id = e.department_id
WHERE e.hire_date BETWEEN '1993-01-01' AND  '1997-8-31'

-- Targil 14

SELECT j.job_title as Job,e.first_name + ' ' + e.last_name AS FullName,j.max_salary - e.salary as SalarayDiffernce FROM employees e
JOIN jobs j ON e.job_id = j.job_id