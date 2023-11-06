/* Display the names and hire dates of  employees hired between 1991 - 1992 */
Select fname,minit,lname, hire_date
from employees
where hire_date between '1991-01-01' and '1992-12-31';

/* Display the names of employees without middle (minit) name */
select fname, lname
from employees
where isnull(minit, '') = '';

/* Display the names and hire dates of all employees with the column  headers \Name" and \Start Date", in the order they were hired */
select fname + ' ' + lname as [Name], hire_date as [Start Date]
from employees
order by hire_date;

/* Retrieve the names of  employees whose designation is ‘Sales Representative’ */
select fname, lname
from employees
where job_id=(select job_id from jobs where job_desc='Sales Representative');