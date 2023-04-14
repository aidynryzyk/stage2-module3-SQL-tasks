select SUBJECT.ID, SUBJECT.NAME, SUBJECT.DESCRIPTION, SUBJECT.GRADE
from SUBJECT
         join MARK M on SUBJECT.ID = M.SUBJECT_ID
where (select avg(MARK.MARK) from MARK where MARK.SUBJECT_ID = SUBJECT.ID) >
      (select avg(MARK.MARK) from MARK);
select STUDENT.NAME
from STUDENT
         join PAYMENT P2 on STUDENT.ID = P2.STUDENT_ID
where (select sum(PAYMENT.AMOUNT) from PAYMENT where PAYMENT.ID = STUDENT.ID) <
      (select avg(s.sum) from (select sum(AMOUNT) sum from PAYMENT group by ID) s);