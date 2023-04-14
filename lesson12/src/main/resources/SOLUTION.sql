delete from STUDENT where GROUPNUMBER >= 4;
delete from STUDENT where (select count(*) from MARK where STUDENT_ID = STUDENT.ID and MARK < 4) >= 1;
delete from PAYMENTTYPE where NAME = 'DAILY';
delete from MARK where MARK < 7;
