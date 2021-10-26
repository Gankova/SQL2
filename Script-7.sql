use test3_db;

Delimiter $$

create function calcByGender(gender varchar(16))
returns int
Deterministic
begin
	declare num int default 0;
	select count(*) into num
	from owners5
	where owners5.gender like gender;
	
	return num;
	
end
$$