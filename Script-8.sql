use test3_db;

set @n = 0;

call test('green', @n);

select @n;

set @names ='';
call getOwnerNames(@names);
select @names;