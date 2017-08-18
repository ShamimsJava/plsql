insert into customers(id, name, age, address, salary)
values(7, 'Rajnish', 27, 'HP', 9500);
insert into customers(id, name, age, address, salary)
values(8, 'Riddhi', 21, 'WB', 4500);
savepoint savl;

update customers
set salary = salary + 1000;
rollback to savl;

update customers
set salary = salary + 1000;
where id = 7;

update customers
set salary = salary + 1000
where id = 8;
commit;