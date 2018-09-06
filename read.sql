set serveroutput on
declare
    f utl_file.file_type;
    line varchar(1000);
    route_id route.route_id%type;
    destination route.destination%type;
    cityname route.cityname%type;
begin 
    f :=utl_file.fopen('DATABASE1','read.csv','r'); 
    
    if utl_file.is_open(f) then

        utl_file.get_line(f, line, 1000);

        loop
        begin
            utl_file.get_line(f, line, 1000);
            if line is null then exit;
            end if;

            route_id:=regexp_substr(line,'[^,]+',1,1);
            destination:=regexp_substr(line,'[^,]+',1,2);
            cityname:=regexp_substr(line,'[^,]+',1,3);
           

            insert into route values(route_id, destination, cityname);
            commit;
            exception when no_data_found then exit;
                      when DUP_VAL_ON_INDEX then continue;
            end;
        end loop;
        
    end if;

    utl_file.fclose(f);
end;
/


