set serveroutput on
create or replace trigger find_course_type
before insert or update of  book_end on transaction for each row

begin
   
    update vehicle  set book_end=:new.book_end where plate_no=:new.plate_no;
   
end;
/ 

