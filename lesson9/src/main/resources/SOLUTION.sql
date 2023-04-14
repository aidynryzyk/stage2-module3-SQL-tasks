select * from STUDENT join MARK M on STUDENT.ID = M.STUDENT_ID group by M.MARK having avg(M.MARK) > 8;
select STUDENT.ID, STUDENT.NAME from STUDENT join MARK M on STUDENT.ID = M.STUDENT_ID group by M.MARK having min(M.MARK) > 7;
select STUDENT.ID, STUDENT.NAME from STUDENT join PAYMENT P2 on STUDENT.ID = P2.STUDENT_ID group by P2.PAYMENT_DATE having count(P2.PAYMENT_DATE) > 2 and extract(year from p2.PAYMENT_DATE) = 2019;
