DECLARE

CURSOR STUD_CURSOR IS SELECT * FROM STUD_FILE;

STUD_REC STUD_CURSOR%ROWTYPE;

TOTAL NUMBER:=0;

BEGIN
OPEN STUD_CURSOR;

LOOP
FETCH STUD_CURSOR INTO STUD_REC;

EXIT WHEN STUD_CURSOR%NOTFOUND;
TOTAL:=STUD_REC.M1+STUD_REC.M2;
DBMS_OUTPUT.PUT_LINE('TOTAL MARKS OF STUDENT '||STUD_REC.NAME||' IS: '||TOTAL);

END LOOP;

END;

/