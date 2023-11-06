/* Display/find the total number of Publishers in publishers table */
select count(*) as TotalPublishers
from publishers;

/* Display the employee name and job description of all employees with the same job as Howard */
select concat(e.fname, ' ', e.lname) as name , j.job_desc  
from employees e join jobs j on  e.job_id = j.job_id 
where j.job_id = (select job_id from employees where  fname='howard');

/*  Display the employee name and job description of all employees whose are not Managing Editor */
select concat(e.fname, ' ', e.lname)as name, j.job_desc
from employees e
join jobs j on e.job_id = j.job_id
where j.job_desc != 'Managing Editor';
