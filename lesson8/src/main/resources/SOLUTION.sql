select BIRTHDAY from STUDENT order by BIRTHDAY DESC limit 1;
select PAYMENT_DATE from PAYMENT order by PAYMENT_DATE limit 1;
select avg(MARK) from MARK join SUBJECT S on MARK.SUBJECT_ID = S.ID where S.NAME = 'Math';
select min(AMOUNT) from PAYMENT join PAYMENTTYPE P2 on P2.ID = PAYMENT.TYPE_ID where p2.NAME = 'WEEKLY';
