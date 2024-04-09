CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL);

COPY employees(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:\Users\athul\Downloads\Starter_Code\Starter_Code\data\employees.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(45) NOT NULL);
		
COPY departments(dept_no, dept_name)
FROM 'C:\Users\athul\Downloads\Starter_Code\Starter_Code\data\departments.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(40) NOT NULL
);

COPY titles(title_id, title)
FROM 'C:\Users\athul\Downloads\Starter_Code\Starter_Code\data\titles.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE departmentemployees (
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL
);

COPY departmentemployees (emp_no, dept_no)
FROM 'C:\Users\athul\Downloads\Starter_Code\Starter_Code\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary int NOT NULL);

COPY salaries (emp_no, salary)
FROM 'C:\Users\athul\Downloads\Starter_Code\Starter_Code\data\salaries.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no int NOT NULL);

COPY manager (dept_no, emp_no)
FROM 'C:\Users\athul\Downloads\Starter_Code\Starter_Code\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;