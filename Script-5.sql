use test3_db;

DELIMITER $$

create procedure getCars5Realeased5(yearFrom int, yearTo int)
begin
	select *
	from cars5
	where year(Realease_date5) between yearFrom and yearTo;
end
$$