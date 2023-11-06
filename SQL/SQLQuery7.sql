/* The average price in the table titles for  pub _id is 1389 */
select avg(price)
from titles
where pub_id=1389;

/* The total numbers of rows in the titles table */
select count(*)
from titles

/* List the address of all stores  in the state WA or CA in the table stores */
select stor_address
from stores
where state in ('WA','CA');

/* List the date between  the year 1989 to 1992 in the table employee */
select hire_date
from employees
where hire_date between '1989-01-01' and '1992-12-31';

/* List the first name and last name of the employee in the employee table where the jobs_id  is 6 */
select fname,lname
from employees
where job_id = 6;