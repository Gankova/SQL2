use test3_db;

select length ('hello');

select upper(first_name) from owners5;

select * 
from cars5 
where model5 like 'h%';

select *
from owners5
where last_name like '_e%';


select year(bday), month(bday), day(bday), hour('2023-12-02 12:53:59'), minute('2023-12-02 12:53:59'), second('2023-12-02 12:53:59')
from owners5;

select car_id, owner_id, 
datediff(ifnull(ownet_to, now()) , ownet_from)
from cars_owners5;

select coalesce(null, ownet_to, 'not defined')
from cars_owners5;

select *
from cars_owners5
where ownet_to is not null;

select *
from cars_owners5
where ownet_to is null;



