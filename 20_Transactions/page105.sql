/*
Md. Shamim Sarker
IDB-BISEW
declare begin end dbms_output.put_line
*/

insert into customers (id, name, age, address, salary)
values(8, 'Rajnish', 27, 'HP', 9500.00);
insert into customers(id, name, age, address, salary)
values(9, 'Riddhi', 21, 'WB', 4500.00);
savepoint sav1;

update customers
set salary = salary + 1000;
rollback to sav1;

update customers
set salary = salary + 1000
where id = 9;

update customers
set salary = salary + 1000
where id = 8;

commit;