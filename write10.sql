set serveroutput on
declare
    f utl_file.file_type;
    cursor crs is select * from user_reg_table;
begin
    f :=utl_file.fopen('DATABASE1','write.csv','w'); 

    utl_file.put(f,'User Name'||','||'Email'||','||'Phone No');
    utl_file.new_line(f);

    for crs_record in crs
        loop
            utl_file.put(f,crs_record.user_name||','||crs_record.email||','||crs_record.phn_num);
            utl_file.new_line(f);
        end loop;

    utl_file.fclose(f);
end;
/