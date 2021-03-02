# SQL Homework - Employee Database: A Mystery in Two Parts

### Background

This homework consisted of modeling and analyzing data in the provided 6 CSVs, import the CSVs into a SQL database, and answer questions about the data.


### Data Modeling

After inspecting the CSVs, an ERD diagram was developed to show the relationships between the sets of data.
<img src="resources/ERD_diagram.png" alt="ERD Diagram">

<img src="resources/ERD_text.png" alt="ERD Text">

### Data Engineering

A table schema wiwth each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints was created and data from each of the CSV files was imported (schema.sql).

### Data Analysis
With tables all configured, the data was analyzed (query.sql):

1. Listing the following details of each employee: employee number, last name, first name, sex, and salary.

2. Listing first name, last name, and hire date for employees who were hired in 1986.

3. Listing the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. Listing the department of each employee with the following information: employee number, last name, first name, and department name.

5. Listing first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listing all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. Listing, ind decending order, the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

* If using a password, do not upload your password to your GitHub repository. See [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://help.github.com/en/github/using-git/ignoring-files](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.

## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

## Submission

* Create an image file of your ERD.

* Create a `.sql` file of your table schemata.

* Create a `.sql` file of your queries.

* (Optional) Create a Jupyter Notebook of the bonus analysis.

