/* Display the maximum and minimum price of the book */
select max(price),min(price)
from titles;

/* Display the total book price for each type */
select type,sum(price)
from titles
group by type;

/* the Publisher for the following books 
   ‘Cooking with Computers: Surreptitious Balance Sheets’, 
   ‘Silicon Valley Gastronomic Treats’, 
   ‘Is Anger the Enemy?’, 
   ‘Fifty Years in Buckingham Palace Kitchens’  */
select p.pub_name 
from publishers p join titles t on p.pub_id=t.pub_id
where t.title in ('Cooking with Computers: Surreptitious Balance Sheets',
    'Silicon Valley Gastronomic Treats',
 'Is Anger the Enemy?',
 'Fifty Years in Buckingham Palace Kitchens');