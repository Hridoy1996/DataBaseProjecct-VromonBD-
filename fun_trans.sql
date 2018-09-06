set serveroutput on

CREATE OR REPLACE FUNCTION findemail(num  varchar)
return varchar as
  cst varchar(30);
BEGIN 
    select email into cst from user_reg_table where user_name=num;
   return cst;
END; 
/ 
BEGIN 
   dbms_output.put_line(findemail('Hridoy')); 
END; 
/