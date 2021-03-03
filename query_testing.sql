-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- Use join (class demo 2-9), departments <- dept_manager on primary key dept_no, dept_manager <- employees on primary key emp_no the get the names.
-- Did the 2 joins separately to make sure it worked and then put them together. Could this be a set up as a subquery?
SELECT departments.dept_no, departments.dept_name
FROM departments
lEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no;

SELECT employees.first_name, employees.last_name, dept_manager.emp_no
FROM dept_manager
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no ;

SELECT departments.dept_no, departments.dept_name, employees.first_name, employees.last_name, dept_manager.emp_no
FROM departments
lEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no ;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- Use join (class demo 2-9), departments <- dept_emp on primary key dept_no, dept_empr <- employees on primary key emp_no the get the employee number and names.
-- Did the 2 joins separately to make sure it worked and then put them together. Could this be a set up as a subquery?
SELECT departments.dept_name, dept_emp.emp_no
FROM departments
lEFT JOIN dept_emp
ON dept_emp.dept_no = departments.dept_no;

SELECT employees.first_name, employees.last_name
FROM dept_emp
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no ;

SELECT departments.dept_name, dept_emp.emp_no, employees.first_name, employees.last_name
FROM departments
lEFT JOIN dept_emp
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no ;




-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- https://stackoverflow.com/questions/48626812/postgresql-find-duplicates-in-column-with-id
