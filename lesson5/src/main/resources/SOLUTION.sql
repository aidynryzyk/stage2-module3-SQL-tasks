select * from PAYMENT where AMOUNT >= 500;
select * from STUDENT where extract(year from today) - extract(year from BIRTHDAY) > 20;
select * from STUDENT where GROUPNUMBER = 10 and extract(year from today) - extract(year from BIRTHDAY) < 20;
select * from STUDENT where name = 'Mike' and GROUPNUMBER in (4, 5, 6);
select * from PAYMENT where PAYMENT_DATE > dateadd('month', -8, today);
select * from STUDENT where NAME like 'A%';
select * from STUDENT where (NAME = 'Roxi' and GROUPNUMBER = 4) or (NAME = 'Tallie' and GROUPNUMBER = 9);