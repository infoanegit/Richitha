/* Display/find the given authors complete address information. [Panteley Sylvia] */
select concat(au_fname, ' ', au_lname),concat(address,',', city, ',', state,',',zip)
from authors 
where au_fname = 'sylvia';

/* Display only the hire date and employee name for each employee */
select hire_date,concat(fname,lname) as employeename
from employees;

/* Display all the books which come under ‘Psychology’ type */
select title 
from titles 
where type='psychology';
