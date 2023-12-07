create table employee.product(
id int primary key auto_increment,
name varchar(30) not null,
color varchar(20) not null
);

create table employee.productdetails(
id int primary key auto_increment,
item varchar(20) not null,
quality varchar(20) not null,
productid int not null,
constraint fk_productdetails_product_id foreign key(productid) references product(id)
);

select * from employee.product;
select * from employee.productdetails;

insert into employee.product(name,color)
 values('saree','skyblue'),
 ('dress','black'),
 ('cream','white');

insert into employee.productdetails(item,quality,productid)
values('dress','good',1),
('cream','better',2);
insert into employee.productdetails(item,quality,productid)
values('powder','bad',null);
alter table employee.productdetails modify productid int null;

select * from employee.product as pt
join employee.productdetails as pdt on pt.id=pdt.productid;

select * from employee.product as pt
left join employee.productdetails as pdt on pt.id=pdt.productid;

select * from employee.product as pt
right join employee.productdetails as pdt on pt.id=pdt.productid;

select * from employee.product
cross join employee.productdetails;


