select * from PAYMENT where AMOUNT >= 500;
select * from STUDENT where extract(year from '2023-04-14') - extract(year from BIRTHDAY) > 20;
select * from STUDENT where GROUPNUMBER = 10 and extract(year from '2023-04-14') - extract(year from BIRTHDAY) < 20;
select * from STUDENT where name like 'Mike%' or GROUPNUMBER in (4, 5, 6);
select * from PAYMENT where PAYMENT_DATE > dateadd('month', -8, '2023-04-14');
select * from STUDENT where NAME like 'A%';
select * from STUDENT where (NAME like 'Roxi%' and GROUPNUMBER = 4) or (NAME like 'Tallie%' and GROUPNUMBER = 9);