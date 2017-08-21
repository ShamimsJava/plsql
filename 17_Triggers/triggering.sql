/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

/*
insert into customers(id, name, age, address, salary)
values(7, 'Kriti', 22, 'HP', 7500.00);
*/

update customers
set salary = salary + 500
where id = 7;