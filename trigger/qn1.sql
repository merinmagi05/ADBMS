declare

id constant number:=1;

sname stud_file.name%type;

mark1 stud_file.m1%type;

mark2 stud_file.m2%type;

total number:=0;

begin
select name,m1,m2 into sname,mark1,mark2 from stud_file where sid=id;

total:=mark1+mark2;
dbms_output.put_line('Total marks of student'||sname||' with id '||id||' is: '||total);

end;

/