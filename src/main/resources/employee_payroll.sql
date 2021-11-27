create database payroll_service
show databases
use payroll_service
Create Table employee_payroll (id int not null auto_increment,name varchar(100),salary double not null, startDate date not null ,primary key(id));
desc employee_payroll;
insert into employee_payroll(name,salary,startDate) values('Arafath',30000,'2021-11-25');
insert into employee_payroll(name,salary,startDate) values('Subham',30000,'2021-11-09');
insert into employee_payroll(name,salary,startDate) values('Kunal',33333.33,'2021-11-09');
select * from employee_payroll;
select * from employee_payroll where name = 'Arafath';
select * from employee_payroll where startDate between '2021-11-01' And date(now());
alter table employee_payroll add gender char(1) after name;
update employee_payroll set gender = 'M' where name ='Arafath';
update employee_payroll set gender = 'M' where name ='Subham';
update employee_payroll set gender = 'M' where name ='Kunal';
select SUM(salary) from employee_payroll where gender='M' group by gender;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select avg(salary) from employee_payroll;
select count(gender) from employee_payroll where gender = 'M';
select count(gender) from employee_payroll where gender = 'F';
select count(salary) from employee_payroll where gender = 'F';
select count(salary) from employee_payroll where gender = 'M';
alter table employee_payroll add (employee_phone long not null,address varchar(100) not null, department varchar(100) default null);
update employee_payroll set employee_phone=7986331895, department = 'Tech', address = 'Repalle' where name ='Arafath';
update employee_payroll set employee_phone=9440755022, department = 'Front End Developer', address = 'Mumbai' where name ='Subham';
update employee_payroll set employee_phone=9115513683, department = 'Full Stack', address = 'Delhi' where name ='Kunal';
alter table employee_payroll add (basic_pay double not null, deductions double not null, taxable_pay double not null, income_tax double not null, net_pay double not null, city varchar(100) not null, country varchar(100) not null);
update employee_payroll set basic_pay=30000, deductions=3000, taxable_pay=1500, income_tax=300, net_pay=28000, city = 'Repalle', country = 'India' where name ='Arafath';
update employee_payroll set basic_pay=30000, deductions=3000, taxable_pay=1500, income_tax=300, net_pay=28000, city = 'Mumbai', country = 'India' where name ='Subham';
update employee_payroll set basic_pay=33333.33, deductions=3333.33, taxable_pay=1666.665, income_tax=333.33, net_pay=30000, city = 'Delhi', country = 'India' where name ='Kunal';
insert into employee_payroll(name, gender, salary, startDate, employee_phone, address, department, basic_pay, deductions, taxable_pay, income_tax, net_pay, city, country) values('Terisa', 'F', 80000, '2020-03-23', 7878787878, 'Mumbai', 'Sales and Marketing', 80000, 8000, 4000, 800, 76000, 'Mumbai', 'India');