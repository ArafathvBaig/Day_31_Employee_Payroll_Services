create database payroll_service
show databases
use payroll_service
Create Table employee_payroll (id int not null auto_increment,name varchar(100) not null,salary double not null, startDate date not null ,primary key(id));
desc employee_payroll;
drop table employee_payroll;
insert into employee_payroll(name,salary,startDate) values('Bill',1000000.00,'2018-01-03'),('Terisa',2000000.00,'2019-11-13'),('Charlie',3000000.00,'2020-05-21');
select * from employee_payroll;
select salary from employee_payroll where name = 'Bill';
delete from employee_payroll where name = 'Bill';
insert into employee_payroll(name,salary,startDate) values('Bill',1000000.00,'2018-01-03');
select * from employee_payroll where startDate between '2018-01-01' And date(now());
select * FROM employee_payroll WHERE startDate BETWEEN CAST('2018-01-01' AS DATE) AND DATE(NOW());
alter table employee_payroll add gender char(1) after name;
update employee_payroll set gender = 'F' where name ='Terisa';
update employee_payroll set gender = 'M' where name ='Bill';
update employee_payroll set gender = 'M' where name ='Charlie';
update employee_payroll set salary = 3000000.00 where name ='Terisa';
select SUM(salary) from employee_payroll where gender='M' group by gender;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select avg(salary) from employee_payroll where gender='M' group by gender;
select count(gender) from employee_payroll where gender = 'M';
select count(gender) from employee_payroll where gender = 'F';
select count(salary) from employee_payroll where gender = 'F';
select count(salary) from employee_payroll where gender = 'M';
alter table employee_payroll add employee_phone varchar(250) after name, add address varchar(100) after employee_phone, add department varchar(100) not null after address;
alter table employee_payroll alter address set default 'TBD';
alter table employee_payroll rename column salary to basic_pay;
alter table employee_payroll add deductions double not null after basic_pay;
alter table employee_payroll add taxable_pay double not null after deductions;
alter table employee_payroll add tax double not null after taxable_pay;
alter table employee_payroll add net_pay double not null after tax;
update employee_payroll set department = 'Sales' where name = 'Terisa';
insert into employee_payroll (name, department, gender, basic_pay, deductions, taxable_pay, tax, net_pay, startDate) values
('Terisa', 'Marketting', 'F', 3000000.00, 100000.00, 200000.00, 500000.00, 1500000.00, '2018-01-03');
