drop  table zomato.user1;
create table zomato.user1(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) null,
phone int check(length(phone)=10),
country varchar(10) default('India')
);

select * from  zomato.user1;


#alter table to add column
alter table zomato.user1 add column gender varchar(10);

#alter table modify column(change data type or size);
alter table zomato.user1 modify gender varchar(6);

#alter table drop column
alter table zomato.user1 drop column gender;

#alter table add consraint
#add null constraint
alter table zomato.user1 modify name varchar(50) null;

#add not null consraint
alter table zomato.user1 modify name varchar(50) not null;

#add unique constraint
alter table zomato.user1 modify name varchar(50) unique;

#add unique constraint
alter table zomato.user1
add constraint unique_name unique(name);

#drop unique constraint
alter table zomato.user1
drop index unique_name;

#check constraint
alter table zomato.user1
add constraint chk_name_3 check(length(name)>=3);

#drop check constraint
alter table zomato.user1
drop check chk_name_3;