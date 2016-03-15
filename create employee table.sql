create table Employee(
ID                 VARCHAR2(4) NOT NULL,
First_Name         VARCHAR2(10),
Last_Name          VARCHAR2(10),
Age                Number,
Start_Date         DATE,
End_Date           DATE,
Salary             Number(8,2),
City               VARCHAR2(10),
Description        VARCHAR2(15)
);


insert Into Employee values('01','Jason',    'Martin', 21 ,to_date('19960725','YYYYMMDD'), to_date('20060725','YYYYMMDD'), 1234.56, 'Toronto','Programmer');
insert into Employee values('02','Alison',   'Mathews', 24,to_date('19760321','YYYYMMDD'), to_date('19860221','YYYYMMDD'), 6661.78, 'Vancouver','Tester');
insert into Employee values ('03','James',    'Smith',  34 ,to_date('19781212','YYYYMMDD'), to_date('19900315','YYYYMMDD'), 6544.78, 'Vancouver','Tester');
insert into Employee values('04','Celia',    'Rice',   31 ,to_date('19821024','YYYYMMDD'), to_date('19990421','YYYYMMDD'), 2344.78, 'Vancouver','Manager');
insert into Employee values('05','Robert',   'Black',   32,to_date('19840115','YYYYMMDD'), to_date('19980808','YYYYMMDD'), 2334.78, 'Vancouver','Tester');
insert into Employee values('06','Linda',    'Green',  40 ,to_date('19870730','YYYYMMDD'), to_date('19960104','YYYYMMDD'), 4322.78,'New York',  'Tester');
insert into Employee values('07','David',    'Larry',  32 ,to_date('19901231','YYYYMMDD'), to_date('19980212','YYYYMMDD'), 7897.78,'New York',  'Manager');
insert into Employee values('08','James',    'Cat',   23  ,to_date('19960917','YYYYMMDD'), to_date('20020415','YYYYMMDD'), 1232.78,'Vancouver', 'Tester');

SELECT * FROM EMPLOYEE;
--DELETE FROM EMPLOYEE;
--DROP TABLE EMPLOYEE;