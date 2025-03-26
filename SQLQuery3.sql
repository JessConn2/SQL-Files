select firstName as 'First Name', lastNAme as 'Last Name'
from Customer
where favColor like 'p%'

select * from Customer

select firstName, lastName, favColor from Customer
order by lastName