CREATE TABLE departments_table (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL
);
--DROP TABLE titles_table;
CREATE TABLE dept_emp_table (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT 
);
CREATE TABLE dept_manager_table (
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL
);
CREATE TABLE employees_table (
	emp_no INTEGER PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date NOT NULL VARCHAR ,--7/25/1953
	first_name NOT NULL VARCHAR,
	last_name NOT NULL VARCHAR,
	sex VARCHAR NOT NULL,--M
	hire_date VARCHAR NOT NULL--4/28/1990
);
CREATE TABLE salaries_table (
	emp_no INTEGER PRIMARY KEY NOT NULL,
	salary INTEGER NOT NULL
);
CREATE TABLE titles_table (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL
);
