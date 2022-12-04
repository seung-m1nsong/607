use carprice;

create table customer (
customerid int,
customer_name varchar(50),
customer_email varchar(50),
country varchar(50),
gender varchar(50),
age int,
primary key (customerid)
);

create table salary (
salaryid int null auto_increment primary key,
customerid int,
annual_Salary int,
foreign key (customerid)
references customer(customerid)
);

create table debt(
debtid int null auto_increment primary key,
customerid int,
credit_card_debt int,
foreign key (customerid)
references customer(customerid)
);

create table networth(
networthid int null auto_increment primary key,
customerid int,
net_worth int,
foreign key (customerid)
references customer(customerid)
);

create table carpurchaseamount(
carpurchseamountid int null auto_increment primary key,
customerid int,
car_purchase_amount int,
foreign key (customerid)
references customer(customerid)
);


select * from customer
select * from salary
select * from networth
select * from carpurchaseamount
select * from debt

drop table customer;
drop table salary;
drop table debt;
drop table networth;
drop table carpurchaseamount;

