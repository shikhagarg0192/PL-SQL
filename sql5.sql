create table Employee(
ID                 VARCHAR2(4) NOT NULL,
First_Name         VARCHAR2(10),
Last_Name          VARCHAR2(10),
Start_Date         DATE,
End_Date           DATE,
Salary             Number(8,2),
City               VARCHAR2(10),
Description        VARCHAR2(15)
);


insert Into Employee values('01','Jason',    'Martin',  to_date('19960725','YYYYMMDD'), to_date('20060725','YYYYMMDD'), 1234.56, 'Toronto','Programmer');
insert into Employee values('02','Alison',   'Mathews', to_date('19760321','YYYYMMDD'), to_date('19860221','YYYYMMDD'), 6661.78, 'Vancouver','Tester');
insert into Employee values ('03','James',    'Smith',   to_date('19781212','YYYYMMDD'), to_date('19900315','YYYYMMDD'), 6544.78, 'Vancouver','Tester');
insert into Employee values('04','Celia',    'Rice',    to_date('19821024','YYYYMMDD'), to_date('19990421','YYYYMMDD'), 2344.78, 'Vancouver','Manager');
insert into Employee values('05','Robert',   'Black',   to_date('19840115','YYYYMMDD'), to_date('19980808','YYYYMMDD'), 2334.78, 'Vancouver','Tester');
insert into Employee values('06','Linda',    'Green',   to_date('19870730','YYYYMMDD'), to_date('19960104','YYYYMMDD'), 4322.78,'New York',  'Tester');
insert into Employee values('07','David',    'Larry',   to_date('19901231','YYYYMMDD'), to_date('19980212','YYYYMMDD'), 7897.78,'New York',  'Manager');
insert into Employee values('08','James',    'Cat',     to_date('19960917','YYYYMMDD'), to_date('20020415','YYYYMMDD'), 1232.78,'Vancouver', 'Tester');

SELECT * FROM EMPLOYEE;
--DELETE FROM EMPLOYEE;
--DROP TABLE EMPLOYEE;
--trigger


create table Employee_history(
ID                 VARCHAR2(4) NOT NULL,
First_Name         VARCHAR2(10),
Last_Name          VARCHAR2(10),
Start_Date         DATE,
End_Date           DATE,
Salary             Number(8,2),
City               VARCHAR2(10),
Description        VARCHAR2(15)
);


CREATE or REPLACE TRIGGER employee_history_trigger 
BEFORE UPDATE OF SALARY 
ON employee 
FOR EACH ROW 
BEGIN 
DBMS_OUTPUT.PUT_LINE('helllo');
END; 

CREATE or REPLACE TRIGGER employee_history_trigger 
BEFORE UPDATE OF SALARY 
ON employee 
FOR EACH ROW 
BEGIN 
DBMS_OUTPUT.PUT_LINE('helllo');
END; 

update EMPLOYEE
set salary = salary+ 1000;



alter SESSION set current_Schema =shikha_3;


select * from employee_history;


select text from all_source where type = 'TRIGGER' and owner = 'SHIKHA_3';

select text from user_source where type = 'TRIGGER' and name = '<employee_history_trigger>';


 CREATE or REPLACE TRIGGER employee_history_trigger
 BEFORE UPDATE OF SALARY
 ON employee
 FOR EACH ROWd
 BEGIN
 insert into employee_history
 values
 (:old.ID,
 :old.First_Name,
 :old.Last_Name,
 :old.Start_Date,
 :old.End_Date,
 :old.Salary,
 :old.city,
 :old.Description);
 end;
 
insert into Employee values('10','James3',    'Cat3',     to_date('19960919','YYYYMMDD'), to_date('20020419','YYYYMMDD'), 7232.78,'Vancouver', 'Tester');
 
create or replace trigger emp_update_trigger1
before delete or insert or update
on employee
declare 
a varchar2(10) := to_Char(sysdate,'day'); 
begin
if (a like 's%') then
raise_application_error(-20500,'errorrr');
DBMS_OUTPUT.PUT_LINE(a);
end if;
end;
 
  
create or replace trigger emp_update_trigger1
before delete or insert or update
on employee
declare 
a varchar2(10) := to_Char(sysdate,'day'); 
begin
if (a like 's%') then
raise_application_error(-20500,'errorrr');
DBMS_OUTPUT.PUT_LINE(a);
end if;
end;
