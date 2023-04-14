alter table Student alter column birthday set not null;
alter table Mark add check ( mark >= 1 and mark <= 10 );
alter table Subject add check ( grade >= 1 and grade <= 10 );
alter table PaymentType add unique (name);
alter table Payment alter column type_id set not null;
alter table Payment alter column amount set not null;
alter table Payment alter column PAYMENT_DATE set not null;
