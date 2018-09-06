set serveroutput on

CREATE OR REPLACE FUNCTION findcost(num  number)
return number as
  cst number(3) :=0;
BEGIN 
    select count(ac_non_ac) into cst from vehicle where ac_non_ac='AC' and seat=num;
   return cst;
END; 
/ 
BEGIN 
   dbms_output.put_line(findCgpa('Hridoy')); 
END; 
/