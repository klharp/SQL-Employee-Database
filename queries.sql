-- This file contains the final query code. Development and testing was done in the file query_testing.sql

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no;



-- List first name, last name, and hire date for employees who were hired in 1986.
-- https://www.postgresqltutorial.com/postgresql-between/
SELECT employees.first_name, employees.last_name, employees.hire_date 
FROM employees
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31';



-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- Use left join (class demo 2-9), departments <- dept_manager on primary key dept_no, dept_manager <- employees on primary key emp_no the get the names.
-- Did the 2 joins separately to make sure it worked and then put them together. Could this be a set up as a subquery?
SELECT departments.dept_no, departments.dept_name, employees.first_name, employees.last_name, dept_manager.emp_no
FROM departments
lEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no ;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- Use join (class demo 2-9), departments <- dept_emp on primary key dept_no, dept_empr <- employees on primary key emp_no the get the employee number and names.
-- Did the 2 joins separately to make sure it worked and then put them together. Could this be a set up as a subquery?
SELECT departments.dept_name, dept_emp.emp_no, employees.first_name, employees.last_name
FROM departments
lEFT JOIN dept_emp
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- Use wildcard to get the "B" with uses with AND for the first name
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name LIKE 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- Use left join departments <- dept_emp on primary key dept_no with 'Sales' to get department and employee number, dept_emp <- employees on primary key emp_no the get the  names.
-- Did the 2 joins separately to make sure it worked and then put them together. 
SELECT departments.dept_name, dept_emp.emp_no, employees.first_name, employees.last_name
FROM departments
lEFT JOIN dept_emp
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no 
WHERE departments.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- Use  left join, departments <- dept_emp on primary key dept_no with 'Sales' and 'Development', dept_emp <- employees on primary key emp_no the get the employee number and names.
-- Did the 2 joins separately to make sure it worked and then put them together. 
SELECT departments.dept_name, dept_emp.emp_no, employees.first_name, employees.last_name
FROM departments
lEFT JOIN dept_emp
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no 
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- https://stackoverflow.com/questions/48626812/postgresql-find-duplicates-in-column-with-id (not what I wanted)
-- Use count and groupings. Counting and grouping  (class demo 2-2, 3 & 4) on emloyee.last_name
SELECT last_name, COUNT(*) AS "number_of_duplicates"
FROM employees
GROUP BY last_name
ORDER BY "number_of_duplicates" DESC;
