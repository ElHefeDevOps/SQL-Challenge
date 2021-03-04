CREATE TABLE "department" (
    "dept_no" varchar(4)   NOT NULL,
    "dept_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

drop table dept_emp

CREATE TABLE "dept_emp" (
    "emp_no" int PRIMARY KEY  NOT NULL,
    "dept_no" varchar(4)   NOT NULL
    
);
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(4)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(5)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(25)   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" varchar(15)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "title_id" varchar(5)   NOT NULL,
    "title" varchar(20)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986'

SELECT d.dept_no, d.dept_name, man.emp_no
INTO TABLE dept_all
FROM department d
INNER JOIN dept_manager man
ON d.dept_no = man.dept_no

SELECT e.last_name, e.first_name, e.emp_no
INTO TABLE employee_names
FROM employees e
INNER JOIN dept_manager man
ON e.emp_no = man.emp_no;

SELECT da.dept_no,da.dept_name,da.emp_no, en.last_name, en.first_name  FROM dept_all da
INNER JOIN employee_names en
ON en.emp_no=da.emp_no ;

SELECT d.dept_name, de.emp_no
INTO TABLE dept_emp_all
FROM department d
INNER JOIN dept_emp de
ON d.dept_no=d.dept_no

SELECT da.dept_name, en.last_name, en.first_name, en.emp_no
INTO TABLE emp_dept
FROM employees en
INNER JOIN dept_emp_all da
ON en.emp_no=da.emp_no

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'


SELECT * FROM emp_dept
WHERE dept_name = 'Sales'

SELECT * FROM emp_dept
WHERE dept_name = 'Sales'
OR dept_name = 'Development'

SELECT COUNT(last_name), last_name FROM employees
GROUP BY

SELECT COUNT(last_name) AS number_of_emp, last_name FROM employees
GROUP BY last_name
ORDER BY number_of_emp DESC

