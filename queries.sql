SELECT s.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no
ORDER BY s.emp_no;

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT DISTINCT ON (manager.dept_no) manager.dept_no, departments.dept_name, manager.emp_no, employees.first_name, employees.last_name
FROM manager
INNER JOIN departments
ON manager.dept_no = departments.dept_no
INNER JOIN employees
ON manager.emp_no = employees.emp_no
ORDER BY manager.dept_no;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
LEFT JOIN departmentemployees AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
ORDER BY e.emp_no;

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE (e.first_name = 'Hercules') AND (LOWER(e.last_name) LIKE 'b%')
ORDER BY e.last_name;

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN departmentemployees AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE LOWER(d.dept_name) = 'sales';

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN departmentemployees AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE LOWER(d.dept_name) = 'sales' OR LOWER(d.dept_name) = 'development';

SELECT last_name, COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;