show databases;
use mysql;
show tables;
use login
describe student;
show tables;
select * from student;
create database zensar_training;
use zensar_training;
describe zensar_training;
create table Batch1_Data(empid int,empname varchar(20),empage varchar(20),primary key(empid)); 
describe Batch1_Data;
create table Product(product_id int,product_name varchar(50),batch_no int,product_price int,primary key(product_id));
describe Product;
create table Customer(cust_id varchar(20),cust_name varchar(50),address varchar(50),pay_id int,primary key(cust_id));
create table Orders(order_id int,cust_id varchar(20),total_cost int,product_id int,primary key(order_id),foreign key(product_id)references Product(product_id),foreign key(cust_id)references Customer(cust_id));
show databases;
drop table Batch1_Data;
describe Customer;
describe Product;
describe ProductData;
describe Orders;
Alter table Customer add City varchar(20);
Alter table Customer drop column City;

alter table Product modify product_name varchar(20) not null;
Alter table Product change product_name prod_name varchar(30);
Alter table Product rename to ProductData;
show databases;
use login;
show tables;
select * from employee order by employee_name asc;/*this is comment*/#this is comment
select employee_id,designation,employee_name from employee;
select employee_id,designation from employee where employee_id=7;
select employee_id,designation from employee where employee_name="SHS";

select employee_id,designation from employee where salary="50000" order by city;
describe vehicle;

drop table parts;

create table parts(part_no int not null AUTO_INCREMENT,description varchar(40),cost DECIMAL(10,2)NOT NULL CHECK(cost>=0),price DECIMAL(10,2)NOT NULL CHECK(price>=0),CHECK(price>=cost),PRIMARY KEY(part_no));

create table Person(person_id int not null Auto_Increment,Lastname varchar(50)not null,firstname varchar(50), age int ,PRIMARY KEY(person_id));

insert into Person (lastname,firstname,age)values("maral","vikas",29);
select * from Person;
insert into Person (lastname,firstname,age)values("malhotra","sid",28);

create table supplier(supplier_id int Auto_increment,name varchar(100) not null,phone varchar(100)Unique,primary key(supplier_id));

insert into supplier(name,phone)values("AAA","10235482");
insert into supplier(name,phone)values("BBB","10235482");

select * from supplier;

create table age ( agecount int check (agecount>=18));
insert into age values(19);
select * from age;

CREATE TABLE vote (
    id INT,
    age INT,
    CONSTRAINT checkage CHECK (age > 18)
); 
insert into vote values(1,17);
select * from vote;

create table t1(c1 INTEGER CHECK (c1>0),c2 INTEGER CHECK (C2>0),c3 INTEGER,c4 INTEGER,CONSTRAINT c3_chk CHECK(c3>0),CHECK(c4>0),CHECK(c1+c2+c3+c4<9999),CHECK (c1+c3<5000));


create table ticket(id int,PRIMARY KEY(id),title varchar(20),priority enum('low','medium','high')not null);
insert into ticket values(102,"Second","medium");
select * from ticket;