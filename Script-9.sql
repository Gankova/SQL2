use test3_db;

select cars5.model5, ownet_from, ownet_to 
from cars5 left join cars_owners5 on cars5.id5 = cars_owners5.car_id;

select cars5.model5, ownet_from, ownet_to 
from cars5 right join cars_owners5 on cars5.id5 = cars_owners5.car_id;

select cars5.model5, ownet_from, ownet_to 
from cars5 inner join cars_owners5 on cars5.id5 = cars_owners5.car_id;

select cars5.id5, model5, color5, ownet_from, ownet_to, first_name, last_name
from cars5 inner join cars_owners5 on cars5.id5 = cars_owners5.car_id
inner join owners5 on owners5.id = cars_owners5.owner_id;

select cars5.id5, Realease_date5, gender
from cars5 inner join cars_owners5
on cars5.id5 =cars_owners5.car_id
inner join owners5 on owners5.id = cars_owners5.owner_id 
where year(Realease_date5) <=2000 and ownet_to is null;