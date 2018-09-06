/*
given vehicle name and type gives the seat number 
*/
set serveroutput on
create or replace procedure findseat(na in vehicle.name%type,ac_or_not in vehicle.ACnonAC%type, st out number ) is
    plate_n vehicle.plate_no%type;
begin 
    SELECT plate_no into plate_n from vehicle where name=na and ACnonAC = ac_or_not;
    SELECT seat into st from vehicle where plate_no=plate_n;
end;
/
declare
    vehicleName vehicle.name%type;
    seat number;
    ACnonAC vehicle.ACnonAC%type;
   begin
    vehicleName:='Tungipara Express';
    ACnonAC:='Non-AC';
    findseat(vehicleName, ACnonAC, seat);
    dbms_output.put_line('Vehicle Name ' || vehicleName || ' Seat: ' || seat );
end;
/
