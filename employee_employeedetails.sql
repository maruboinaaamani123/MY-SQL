create table employee.employee(
id int primary key auto_increment,
name varchar(40) not null,
email varchar(40) not null
);

create table employee.employeedetails(
id int primary key auto_increment,
manager varchar(40) unique,
empid int not null,
constraint fk_employeedetails_employee_id foreign key(empid) references employee(id)
);

select * from employee.employee;
insert into employee.employee(name,email) 
values('chinni','c@gmail.com'),
('chintu','ch@gmail.com'),
('anji','a@gmail.com');


select * from employee.employeedetails;
insert into employee.employeedetails(manager,empid)
values('ravi',1),
('srinu',1),
('anji',2);
insert into employee.employeedetails(manager,empid)
values('ammu',3);
insert into employee.employeedetails(manager,empid)
values('sujatha',2);

select * from employee.employee as emp
join employee.employeedetails as empd on emp.id=empd.empid;

select * from employee.employee as emp
left join employee.employeedetails as empd on emp.id=empd.empid;

select * from employee.employee as emp
right join employee.employeedetails as empd on emp.id=empd.empid;
