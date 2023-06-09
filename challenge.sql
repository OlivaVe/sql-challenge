--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT 	s.emp_no, 
		last_name, 
		first_name, 
		sex, 
		salary
FROM employees_table
	as e
INNER JOIN salaries_table
	as s
ON s.emp_no = e.emp_no
ORDER BY s.emp_no;  -- Listo

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 	first_name,
		last_name, 
		hire_date
FROM employees_table
WHERE extract(
	year FROM hire_date
) =1986; -- Listo

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 	DMT.dept_no,
		DMT.emp_no,
		dept_name,
		first_name,
		last_name
from dept_manager_table
	as DMT
INNER JOIN employees_table
	as ET
ON DMT.emp_no = ET.emp_no
INNER JOIN departments_table
	as DT
ON DMT.dept_no = DT.dept_no
ORDER BY DMT.emp_no, DMT.emp_no DESC; -- Listo


--4.List the department number for each employee along with that employee's employee number, last name, first name, and department name.
SELECT 	DET.dept_no,
		ET.emp_no,
		last_name,
		first_name,
		dept_name
FROM employees_table
	AS ET
INNER JOIN dept_emp_table
	AS DET
ON ET.emp_no = DET.emp_no
INNER JOIN departments_table
	AS DT
ON DET.dept_no = DT.dept_no
--WHERE dept_name != 'Marketing'
ORDER BY DET.dept_no, ET.emp_no DESC; -- Listo


--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT 	last_name,
		first_name
FROM employees_table
	as e
WHERE (first_name = 'Hercules') 
AND (
	LOWER(last_name)
) like 'b%'
ORDER BY last_name; -- Listo

--6.List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 	e.emp_no,
		e.last_name,
		e.first_name, 
		d.dept_name
FROM employees_table 
as e
JOIN dept_emp_table
as de
on e.emp_no = de.emp_no
JOIN departments_table
as d
ON d.dept_no = de.dept_no
Where d.dept_name ='Sales'; -- Listo


--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT	e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees_table 
	as e
JOIN dept_emp_table 
	as de
ON (
	e.emp_no = de.emp_no
)
JOIN departments_table 
	as d
ON (
	de.dept_no = d.dept_no
)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name,
COUNT(last_name)
	AS frequency_counts
FROM employees_table
GROUP BY last_name
ORDER BY frequency_counts DESC; -- Listo