set serveroutput on
declare
    cursor user is select user_name, email from user_reg_table;
    userrec user%rowtype;
    cursor trans is select transaction_id, plate_no from transaction where user_name=userrec.user_name;
    transrec trans%rowtype;
    tmp varchar(20);
    chk number(2);
begin
    open user;
    loop
        fetch user into userrec;
        exit when user%notfound;
        dbms_output.put_line(userrec.user_name || ' ' || userrec.email || ' : ');
        open trans;
        loop
            fetch trans into transrec;
            exit when trans%notfound;
            select name into tmp from vehicle where plate_no =transrec.plate_no;
             select count(name) into chk from vehicle where plate_no =transrec.plate_no;
            if chk=0 then
            dbms_output.put_line('no transaction' );
            else
       dbms_output.put_line('  :' || tmp);
    end if;
        end loop;
        close trans;
        
    end loop;
    close user;
end;
/