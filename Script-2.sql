use test2_db;

set autocommit = 0;

start transaction;

insert into cars(model, release_date, color)
values ('tesla','1998-10-10','yellow');
set @last_id = last_insert_id(); 

insert into cars_owners(car_id, owner_id, owned_from)
values (@last_id, 2, 'invalid');

rollback;