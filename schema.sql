
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/TViLVb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- sql homework ERD

CREATE TABLE "titles" (
    "title_id" VARCHAR(255)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

-- SELECT * FROM titles;

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);

-- SELECT * FROM salaries;

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(255)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(255)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- SELECT * FROM employees;

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "emp_no" INT   NOT NULL
);

-- SELECT * FROM dept_manager;

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(255)   NOT NULL
);

-- SELECT * FROM dept_emp;

CREATE TABLE "departments" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "dept_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

SELECT * FROM departments;


ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

