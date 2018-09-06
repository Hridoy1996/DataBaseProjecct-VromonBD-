set serveroutput on

declare
type name is varray(10) of user_reg_table.user_name%type;
name_ara name:=name();

type email is varray(10) of user_reg_table.email%type;
eamil_ara email:=email();

cnt number(2);

begin
    for cnt in 1..5
    loop
        name_ara.extend;
        eamil_ara.extend;
        
        select user_name, email into name_ara(cnt), eamil_ara(cnt) from user_reg_table where user_name in (select  user_name from transaction where transaction_id=cnt);
    end loop;
    
    for cnt in 1..5
    loop
      
            dbms_output.put_line(name_ara(cnt));
            dbms_output.put_line(eamil_ara(cnt));
    end loop;
exception
    when others then
        dbms_output.put_line('Error occured!');
end;

/