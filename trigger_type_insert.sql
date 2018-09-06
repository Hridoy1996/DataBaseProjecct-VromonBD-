set serveroutput on
create or replace trigger auto_type_add 
before insert or update of plate_no on vehicle for each row
declare 
    tmp number(6);
    tmp2 number(2);
begin
   
    tmp:=  floor(:new.plate_no/100);
    tmp2:=  mod(tmp, 10);

    if tmp2=0 then
        :new.type:='buss';
    else
        :new.type:='micro';
    end if;
end;
/ 