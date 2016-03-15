select * from EMPLOYEE;

DECLARE
V_SAL EMPLOYEE.SALARY%TYPE;
BEGIN
SELECT SALARY
INTO V_SAL
FROM EMPLOYEE
WHERE ID=07;
:SALARY := V_SAL;
END;

<< outer_block >>
DECLARE
   v_test NUMBER := 123;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Outer Block, v_test: '||v_test);
<< inner_block >>
   DECLARE
      v_test NUMBER := 456;
   BEGIN
      DBMS_OUTPUT.PUT_LINE('Inner Block, v_test: '||v_test);
      DBMS_OUTPUT.PUT_LINE('Inner Block, outer_block.v_test: '||outer_block.v_test);
   END inner_block;
END outer_block;


DECLARE
V_INCREASE NUMBER:=2000;
BEGIN
UPDATE EMPLOYEE
SET SALARY=SALARY + V_INCREASE
WHERE DESCRIPTION='Manager';
INSERT INTO EMPLOYEE VALUES(9,'LARRY','SEIGE','12-SEP-97','11-JAN-02','5500.60','NEW YORK', 'TESTER');
DELETE FROM EMPLOYEE WHERE SALARY < 2000;
END;

select ID ,
FIRST_NAME ,
LAST_NAME ,
START_DATE ,
END_DATE ,
SALARY ,
CITY ,
DESCRIPTION from EMPLOYEE;

DECLARE
V_SD DATE;
V_ED DATE;
BEGIN
SELECT START_DATE,END_DATE
INTO V_SD,V_ED
FROM EMPLOYEE 
WHERE LAST_NAME = 'Green';
IF V_SD < V_ED THEN
  DBMS_OUTPUT.PUT_LINE(V_SD || ' '|| V_ED || ' CORRECT FOR MR. LINDA GREEN ');
ELSE 
  DBMS_OUTPUT.PUT_LINE(V_SD || ' '|| V_ED || ' INCORRECT FOR MR. LINDA GREEN ');
END IF;
END;


DECLARE 
V_DATE DATE := TO_DATE('&SV_DATE','DD-MON-YYYY');
V_DAY VARCHAR2(20);
BEGIN
V_DAY := TO_CHAR(V_DATE,'DAY');
DBMS_OUTPUT.PUT_LINE(V_DAY);
IF V_DAY LIKE 'S%' THEN
DBMS_OUTPUT.PUT_LINE('WEEKEND!!');
ELSE
DBMS_OUTPUT.PUT_LINE('WEEKDAY!!');
END IF;
END;



Declare
v_count NUMBER:=1;
BEGIN
LOOP
  DBMS_OUTPUT.PUT_LINE(v_count);
  V_COUNT := V_COUNT +1;
  EXIT WHEN V_COUNT=10;
END LOOP;
END;


