use test2_db;

select color, model, release_date
from cars
group by model,color

having year(max(release_date)) < 2000;