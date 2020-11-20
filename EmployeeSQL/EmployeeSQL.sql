--QUERY 1--
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

--QUERY 2--
SELECT first_name, last_name, hire_date FROM employees 
WHERE hire_date >= '1989-01-01' AND hire_date < '1990-01-01';

--QUERY 3--
SELECT 
	dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM dept_manager
JOIN departments
	ON dept_manager.dept_no = departments.dept_no
JOIN employees
	ON employees.emp_no = dept_manager.emp_no;
	
--QUERY 4--
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no;

--QUERY 5--
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--QUERY 6--
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

--QUERY 7--
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--QUERY 8--
SELECT last_name, COUNT(emp_no) AS "Last Name Frequency"
FROM employees
GROUP BY last_name;