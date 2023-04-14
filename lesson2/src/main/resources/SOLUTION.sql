insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('John', '2000-01-01', 1);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Chris', '2000-01-01', 1);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Carl', '2000-01-01', 1);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Oliver', '2000-01-01', 2);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('James', '2000-01-01', 2);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Lucas', '2000-01-01', 2);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Henry', '2000-01-01', 2);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Jacob', '2000-01-01', 3);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Logan', '2000-01-01', 3);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Paul', '2000-01-01', 4);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Johanne', '2000-01-01', 4);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Ted', '2000-01-01', 5);
insert into Student (NAME, BIRTHDAY, GROUPNUMBER)
values ('Luke', '2000-01-01', 5);

insert into Subject (NAME, DESCRIPTION, GRADE)
values ('Art', 'Art desc', 1);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('Music', 'Music desc', 1);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('Geography', 'Geography desc', 2);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('History', 'History desc', 2);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('PE', 'PE desc', 3);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('Math', 'Math desc', 3);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('Science', 'Science desc', 4);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('IT', 'IT desc', 4);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('Biology', 'Biology desc', 5);
insert into Subject (NAME, DESCRIPTION, GRADE)
values ('Chemistry', 'Chemistry desc', 5);

insert into PaymentType (NAME)
values ('DAILY');
insert into PaymentType (NAME)
values ('WEEKLY');
insert into PaymentType (NAME)
values ('MONTHLY');

insert into Payment (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID)
values ((select id from PaymentType where name = 'WEEKLY'), 100, '2000-01-01',
        (select id from Student where name = 'John'));
insert into Payment (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID)
values ((select id from PaymentType where name = 'MONTHLY'), 100, '2000-01-01',
        (select id from Student where name = 'Oliver'));
insert into Payment (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID)
values ((select id from PaymentType where name = 'WEEKLY'), 100, '2000-01-01',
        (select id from Student where name = 'Henry'));
insert into Payment (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID)
values ((select id from PaymentType where name = 'DAILY'), 100, '2000-01-01',
        (select id from Student where name = 'James'));
insert into Payment (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID)
values ((select id from PaymentType where name = 'DAILY'), 100, '2000-01-01',
        (select id from Student where name = 'Lucas'));
insert into Payment (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID)
values ((select id from PaymentType where name = 'MONTHLY'), 100, '2000-01-01',
        (select id from Student where name = 'Jacob'));
insert into Payment (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID)
values ((select id from PaymentType where name = 'WEEKLY'), 100, '2000-01-01',
        (select id from Student where name = 'Logan'));

insert into Mark (STUDENT_ID, SUBJECT_ID, MARK)
values ((select id from Student where name = 'Chris'), (select id from Subject where name = 'Art'), 8);
insert into Mark (STUDENT_ID, SUBJECT_ID, MARK)
values ((select id from Student where name = 'Oliver'), (select id from Subject where name = 'History'), 5);
insert into Mark (STUDENT_ID, SUBJECT_ID, MARK)
values ((select id from Student where name = 'James'), (select id from Subject where name = 'Geography'), 9);
insert into Mark (STUDENT_ID, SUBJECT_ID, MARK)
values ((select id from Student where name = 'Jacob'), (select id from Subject where name = 'Math'), 4);
insert into Mark (STUDENT_ID, SUBJECT_ID, MARK)
values ((select id from Student where name = 'Logan'), (select id from Subject where name = 'PE'), 9);
insert into Mark (STUDENT_ID, SUBJECT_ID, MARK)
values ((select id from Student where name = 'Lucas'), (select id from Subject where name = 'History'), 6);

