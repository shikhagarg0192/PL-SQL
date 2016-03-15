create table emp(
empid number(4),
empname varchar2(20),
hiredate DATE
);

insert into emp values(1222 , 'shikha', '13-Nov-2010');
insert into emp values(&empno, '&name', '&date1');

select * from emp;
desc emp;

select * from emp where hiredate > '20-Jan-2011';

select * from emp where empname like '%\%%' escape '\';

select * from ALL_USERS;

set linesize 10;
col username format a30;
