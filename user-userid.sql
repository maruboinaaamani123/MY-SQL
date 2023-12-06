create table zomato.user(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) null,
phone int check(length(phone)=10)
);

select * from zomato.user;
insert into zomato.user(id,name,email,phone)
values(1,'Aamani','a@gmail.com',1234567890),
(2,'Anji','a@gmail.com',1234345678);

create table zomato.useraddress(
id int primary key ,
street varchar(50) not null,
location varchar(50) not null,
city varchar(50) not null,
country varchar(10) default('India'),
userid int not null,
constraint foreign key useraddress_user_userid(userid) references zomato.user(id)
);
alter table zomato.useraddress modify userid int null;

alter table zomato.useraddress
add constraint fk_useraddress_user_id foreign key(userid) references zomato.user(id);

insert into zomato.useraddress(id,street,location,city,country,userid)
values(3,'ABstreet','hyderabad','ABC','india',1),
(5,'addagutta','kphb','hyderabad','india',2),
(6,'westtern hills','kp','hyderabad','india',null);

select * from zomato.useraddress;

select * from zomato.user as usr
inner join zomato.useraddress as usad on usr.id=usad.userid;

select * from zomato.user as usr
left join zomato.useraddress as usad on usr.id=usad.userid;

select * from zomato.user as usr
right join zomato.useraddress as usad on usr.id=usad.userid;





