select * from MARK where MARK > 6 order by MARK DESC ;
select * from PAYMENT where AMOUNT < 300 order by AMOUNT ;
select distinct * from PAYMENT join PAYMENTTYPE P2 on P2.ID = PAYMENT.TYPE_ID order by p2.NAME;
select * from STUDENT order by NAME desc ;
select DISTINCT STUDENT.ID, STUDENT.NAME, STUDENT.BIRTHDAY, STUDENT.GROUPNUMBER from STUDENT join PAYMENT P2 on STUDENT.ID = P2.STUDENT_ID where P2.AMOUNT > 1000 order by STUDENT.BIRTHDAY;